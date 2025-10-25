/*
  Warnings:

  - The `hobbies` column on the `StudentData` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Added the required column `instructor` to the `StudentData` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `level` on the `StudentData` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `major` on the `StudentData` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "StudentData" ADD COLUMN     "dateEnrolled" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "instructor" TEXT NOT NULL,
DROP COLUMN "hobbies",
ADD COLUMN     "hobbies" TEXT[],
DROP COLUMN "level",
ADD COLUMN     "level" TEXT NOT NULL,
DROP COLUMN "major",
ADD COLUMN     "major" TEXT NOT NULL;
