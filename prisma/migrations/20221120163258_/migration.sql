-- CreateEnum
CREATE TYPE "Post" AS ENUM ('GUARD', 'FIELD_OFFICER', 'SUPERVISOR', 'MANAGEMENT');

-- CreateTable
CREATE TABLE "Employee" (
    "emp_code" BIGINT NOT NULL,
    "name" TEXT NOT NULL,
    "salary" BIGINT,
    "aadhar_number" BIGINT NOT NULL,
    "post" "Post" NOT NULL,
    "company_id" INTEGER NOT NULL,

    CONSTRAINT "Employee_pkey" PRIMARY KEY ("emp_code")
);

-- CreateTable
CREATE TABLE "Company" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Company_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Employee_emp_code_key" ON "Employee"("emp_code");

-- CreateIndex
CREATE UNIQUE INDEX "Employee_aadhar_number_key" ON "Employee"("aadhar_number");

-- CreateIndex
CREATE UNIQUE INDEX "Company_id_key" ON "Company"("id");

-- AddForeignKey
ALTER TABLE "Employee" ADD CONSTRAINT "Employee_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "Company"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
