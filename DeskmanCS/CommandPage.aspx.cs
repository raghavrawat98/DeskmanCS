using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DeskmanCS
{
    public partial class CommandPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void CommandTextBox_TextChanged(object sender, EventArgs e)
        {
            string string_CommandTextBox = CommandTextBox.Text;
            if (!CustomeBalancedParenthesis(string_CommandTextBox))
            {
                TestLabel.Text=@"Sorry expression not balaned :/";
                return;

            }
            string[] DelimitedStrings = string_CommandTextBox.Split('{', '}');

            // Get Param List
            int bracketCounter = 0;

            List<string> paramStrings = new List<string>();

            StringBuilder sb = new StringBuilder();
            foreach (string s in DelimitedStrings)
            {
                bracketCounter++;
                if (bracketCounter % 2 == 0)
                {
                    sb.AppendLine(s);
                    paramStrings.Add(s);
                }
            }
            TestLabel.Text = sb.ToString().Replace(Environment.NewLine, "<br />");

            DataTable GridViewDt = GetDataTable(paramStrings);

            PV_Table.DataSource = GridViewDt;
            PV_Table.DataBind();
        }
        protected DataTable GetDataTable(List<string> paramStrings) {
            DataTable dt = new DataTable();
            dt.Columns.Add("Col1",typeof(String));

            foreach (string s in paramStrings) {
                dt.Rows.Add(s);
            }
            return dt;
        }
        protected Boolean CustomeBalancedParenthesis(string exp)
        {
            // Declare an empty character stack */
            Stack<char> st = new Stack<char>();

            // Traverse the given expression to
            //   check matching brackets
            for (int i = 0; i < exp.Length; i++)
            {
                // If the exp[i] is a starting
                // bracket then push it
                if (exp[i] == '{' || exp[i] == '(' || exp[i] == '[')
                    st.Push(exp[i]);

                //  If exp[i] is an ending bracket
                //  then pop from stack and check if the
                //   popped bracket is a matching pair
                if (exp[i] == '}' || exp[i] == ')' || exp[i] == ']')
                {

                    // If we see an ending bracket without
                    //   a pair then return false
                    if (st.Count == 0)
                    {
                        return false;
                    }

                    // Pop the top element from stack, if
                    // it is not a pair brackets of
                    // character then there is a mismatch. This
                    // happens for expressions like {(})
                    else if (!isMatchingPair(st.Pop(), exp[i]))
                    {
                        return false;
                    }
                }
            }

            // If there is something left in expression
            // then there is a starting bracket without
            // a closing bracket

            if (st.Count == 0)
                return true; // balanced
            else
            {
                // not balanced
                return false;
            }
        }
        protected Boolean isMatchingPair(char character1,char character2)
        {
            
            if (character1 == '{' && character2 == '}')
                return true;
            //else if (character1 == '(' && character2 == ')')
            //    return true;
            //else if (character1 == '[' && character2 == ']')
            //    return true;
            else if (character1 == '<' && character2 == '>')
                return true;
            else
                return false;
        }

        protected void ConvertButton_Click(object sender, EventArgs e)
        {
            StringBuilder stb = new StringBuilder();
            string a = "";
            string b = "";

            Dictionary<string, string> myDictionary = new Dictionary<string, string>();

            foreach (GridViewRow row in PV_Table.Rows)
            {
                int tvar = 0;
                for (int k = 1; k < row.Cells.Count; k++)
                {
                    if (tvar < 1)
                    {
                        tvar++;
                        continue;
                    }
                    a = row.Cells[k].Text;
                    TextBox t = (TextBox)row.Cells[k].FindControl("TextBox1");
                    b = t.Text;

                    stb.AppendLine("a is " + a);
                    stb.AppendLine("b is " + b);

                    myDictionary.Add(a, b);
                }
            }
            TestLabel.Text = stb.ToString().Replace(Environment.NewLine, "<br />");


            string firstText = CommandTextBox.Text;
            foreach (KeyValuePair<string, string> entry in myDictionary)
            {
                // find key Enter value
                string key= entry.Key;
                string value= entry.Value;

                int indexS = firstText.IndexOf(key);

                int initial = indexS - 1;
                int final = initial + 1 + key.Length + 1;


                firstText = firstText.Insert(final, value).Remove(initial, final - initial);
            }
            ResultTextBox.Text = firstText;
        }
        
    }
}