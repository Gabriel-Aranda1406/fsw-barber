/*
  Warnings:

  - You are about to drop the column `status` on the `Booking` table. All the data in the column will be lost.
  - You are about to drop the column `imageUrl` on the `Service` table. All the data in the column will be lost.
  - Added the required column `imageURL` to the `Service` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Booking" DROP COLUMN "status";

-- AlterTable
ALTER TABLE "Service" DROP COLUMN "imageUrl",
ADD COLUMN     "imageURL" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "image" TEXT,
ALTER COLUMN "name" DROP NOT NULL;
