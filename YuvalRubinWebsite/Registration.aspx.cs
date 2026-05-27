using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegistrationResult.InnerText = "";

        if (IsPostBack)
        {
            if (Form_Validation() && Insert_Into_Database())
            {
                RegistrationResult.InnerText =
                        firstName.Value + "Signup complete.";
            }
        }
    }

    private bool Form_Validation()
    {
        return
            First_Name_Validation() &&
            Last_Name_Validation() &&
            User_Name_Validation() &&
            Password_Validation() &&
            ID_Validation() &&
            Phone_Validation() &&
            Email_Validation() &&
            Approval_Validation();
    }

    private bool First_Name_Validation()
    {
        string fname = firstName.Value;

        if (fname.Length < 2)
        {
            RegistrationResult.InnerText += "First name must be at least two letters. ";
            return false;
        }

        return true;
    }

    private bool Last_Name_Validation()
    {
        string lname = lastName.Value;

        if (lname.Length < 2)
        {
            RegistrationResult.InnerText += "Last name must be at least two letters. ";
            return false;
        }

        return true;
    }

    private bool User_Name_Validation()
    {

        string lname = userName.Value;

        if (lname.Length < 3)
        {
            RegistrationResult.InnerText += "User name must be at least two letters. ";
            return false;
        }
        else if (lname.Length > 10)
        {
            RegistrationResult.InnerText += "User name must be less then two letters. ";
            return false;
        }

            return true;
    }

    private bool Password_Validation()
    {
        string password = pswd.Value;
        string pswdV = pswdValidate.Value;

        // קוד שמוודא שהסיסמה בין 6 ל-10 תווים בלבד
        if (password.Length < 6 || password.Length > 10)
        {
            RegistrationResult.InnerText += "Password must be between six to ten characters. ";
            return false;
        }

        // קוד שמוודא שהסיסמה מכילה אותיות ומספרים
        bool letterExist = false;
        bool numberExist = false;
        for (int i = 0; i < password.Length; i++)
        {
            // בדיקת קיום אותיות
            if (password[i] >= 'a' && password[i] <= 'z' || password[i] >= 'A' && password[i] <= 'Z')
                letterExist = true;
            // בדיקת קיום מספרים
            else if (password[i] >= '0' && password[i] <= '9')
                numberExist = true;
        }
        if (!letterExist || !numberExist)
        {
            RegistrationResult.InnerText += "Password must contain letters and numbers. ";
            return false;
        }

        // קוד לוידוא סיסמה ווידוא סיסמה זהים
        if (password != pswdV)
        {
            RegistrationResult.InnerText += "Make sure that both passwords match. ";
            return false;
        }

        return true;
    }

    private bool ID_Validation()
    {
        // === משימה לתלמיד: וידוא תעודת זהות ===
        // 1. ודא שאורך תעודת הזהות הוא בדיוק 9 תווים
        // 2. ודא שכל התווים במחרוזת הם ספרות בלבד
        // כדי לעבור על כל התווים, תוכל להיעזר בלולאה שמופיעה בפעולה:
        // Password_Validation
        // 3. אם יש שגיאה, אל תשכח להוסיף הודעה אל:
        // RegistrationResult.InnerText
        // ולהחזיר:
        // return false;

        string ID = idNum.Value;
        bool numberExist = true;

        if (!(ID.Length == 9))
        {
            RegistrationResult.InnerText += "ID Must be nine characters long.  ";
            return false;
        }

        for (int i = 0; i < ID.Length; i++)
        {
            // בדיקת קיום מספרים
            if (!(ID[i] >= '0' && ID[i] <= '9'))
                numberExist = false;
        }

        if (!numberExist)
        {
            RegistrationResult.InnerText += "ID Must contain only numbers.  ";
            return false;
        }

        return true;
    }

    private bool Phone_Validation()
    {
        // === משימה לתלמיד: וידוא מספר טלפון ===
        // 1. ודא שאורך מספר הטלפון הוא בדיוק 10 תווים
        // 2. ודא שהתו הראשון במספר הוא הספרה אפס
        // 3. ודא שכל התווים במחרוזת הם ספרות בלבד
        // 4. במקרה שאחד מהתנאים לא מתקיים, עדכן את:
        // RegistrationResult.InnerText
        // וסיים את הפעולה עם:
        // return false;

        string num = phone.Value;
        bool numberExist = true;

        if (!(num.Length == 10))
        {
            RegistrationResult.InnerText += "Phone number must be ten characters long.  ";
            return false;
        }

        if (num[0] != '0')
        {
            RegistrationResult.InnerText += "Phone number must start with a 0.  ";
            return false;
        }

        for (int i = 0; i < num.Length; i++)
        {
            // בדיקת קיום מספרים
            if (!(num[i] >= '0' && num[i] <= '9'))
                numberExist = false;
        }

        if (!numberExist)
        {
            RegistrationResult.InnerText += "Phone number must contain only numbers.  ";
            return false;
        }

        return true;
    }

    private bool Email_Validation()
    {
        // === משימה לתלמיד: וידוא כתובת אימייל בסיסית ===
        // ודא שהתנאים הבאים מתקיימים:
        // 1. המחרוזת מכילה את התו שטרודל
        // 2. המחרוזת מכילה את התו נקודה
        // 3. הנקודה מופיעה אחרי השטרודל
        // רמז: כדי למצוא את המיקום של התווים, חפש ברשת איך להשתמש בפעולה:
        // IndexOf
        // במקרה שאחד התנאים לא מתקיים, הוסף הודעת שגיאה מתאימה והחזר:
        // return false;

        string email = mail.Value;

        int AtIndex = email.IndexOf("@");
        int DotIndex = email.IndexOf(".");

        if (AtIndex == -1 || DotIndex == -1 || DotIndex < AtIndex)
        {
            RegistrationResult.InnerText += "Email adrress is false.  ";
            return false;
        }

        return true;
    }

    private bool Approval_Validation()
    {
        if (!approval.Checked)
        {
            RegistrationResult.InnerText += "You must confirm the Terms and Conditions. ";
            return false;
        }

        return true;
    }

    private bool Insert_Into_Database()
    {
        string dbPath = this.MapPath("App_Data/Database.mdf");
        DAL dal = new DAL(dbPath);

        string sqlQuery = "SELECT * FROM Users WHERE user_name = '" + userName.Value + "'";
        DataTable dt = dal.GetDataTable(sqlQuery);

        if (dt.Rows.Count > 0)
        {
            RegistrationResult.InnerText = "User name is already found in the system.";
            return false;
        }

        sqlQuery = "INSERT INTO Users VALUES (" +
        "'" + firstName.Value + "', " +
        "'" + lastName.Value + "', " +
        "'" + userName.Value + "', " +
        "'" + pswd.Value + "', " +
        "'" + idNum.Value + "'," +
        "'" + phone.Value + "'," +
        "'" + mail.Value + "'," +
        "'" + Request.Form["gender"] + "'," +
        "'" + DateTime.Now.ToString("yyyy-MM-dd") + "', 0);";

        dal.UpdateDB(sqlQuery);

        return true;
    }


}