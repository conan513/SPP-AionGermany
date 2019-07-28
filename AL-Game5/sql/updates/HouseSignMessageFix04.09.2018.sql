ALTER TABLE `houses`
MODIFY COLUMN `sign_notice` text CHARACTER SET utf16le NOT NULL AFTER `sell_started`;
UPDATE houses SET sign_notice = 'None' WHERE sign_notice = '';