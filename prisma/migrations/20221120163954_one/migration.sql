-- AlterTable
CREATE SEQUENCE "company_id_seq";
ALTER TABLE "Company" ALTER COLUMN "id" SET DEFAULT nextval('company_id_seq');
ALTER SEQUENCE "company_id_seq" OWNED BY "Company"."id";

-- AlterTable
CREATE SEQUENCE "employee_emp_code_seq";
ALTER TABLE "Employee" ALTER COLUMN "emp_code" SET DEFAULT nextval('employee_emp_code_seq');
ALTER SEQUENCE "employee_emp_code_seq" OWNED BY "Employee"."emp_code";
