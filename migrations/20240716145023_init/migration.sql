-- CreateTable
CREATE TABLE "NotionFile" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "coverPhoto" TEXT NOT NULL,
    "icon" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "tags" TEXT NOT NULL,
    "parentFileId" INTEGER,
    "order" INTEGER NOT NULL DEFAULT 0,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    CONSTRAINT "NotionFile_parentFileId_fkey" FOREIGN KEY ("parentFileId") REFERENCES "NotionFile" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
