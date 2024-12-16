using System;

namespace flodytriangle
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtRows.Text, out int rows) && rows > 0)
            {
                litResult.Text = GenerateAlphabetFloydsTriangle(rows);
            }
            else
            {
                litResult.Text = "<p class='error'>Please enter a valid number of rows!</p>";
            }
        }

        private string GenerateAlphabetFloydsTriangle(int rows)
        {
            char currentChar = 'A';
            string result = "<h3>Alphabet Floyd's Triangle:</h3><pre>";

            for (int i = 1; i <= rows; i++)
            {
                for (int j = 1; j <= i; j++)
                {
                    result += currentChar + " ";
                    currentChar++;
                    if (currentChar > 'Z')
                    {
                        currentChar = 'A';
                    }
                }
                result += "\n";
            }

            result += "</pre>";
            return result;
        }
    }
}
