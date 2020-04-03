Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6874.1585903683252582357
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Apr 2020 01:48:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: bugfree.ch, ip: 140.211.169.56, mailfrom: yocto@bugfree.ch)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E70D2E0193F; Fri,  3 Apr 2020 01:48:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MISSING_HEADERS,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.0 MISSING_HEADERS Missing To: header
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www; Fri, 03 Apr 2020 01:48:00 PDT
Received: from bugfree.ch (ssl.bugfree.ch [5.35.246.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12615E01902
	for <yocto@yoctoproject.org>; Fri,  3 Apr 2020 01:48:00 -0700 (PDT)
Received: from anticat.ch ([::ffff:46.126.167.17])
  (AUTH: PLAIN outbox, TLS: TLSv1.3,256bits,TLS_AES_256_GCM_SHA384)
  by bugfree.ch with ESMTPSA
  id 00000000004A0062.000000005E86F711.00002904; Fri, 03 Apr 2020 10:42:57 +0200
Received: from MacBook.local (unknown [192.168.1.88])
	by anticat.ch (Postfix) with ESMTP id B7342627A5
	for <yocto@yoctoproject.org>; Fri,  3 Apr 2020 10:42:56 +0200 (CEST)
From: =?UTF-8?B?QW5kcmVhcyBEcsO2c2NoZXI=?= <yocto@bugfree.ch>
Subject: JFFS2 no udef, all char/block devices hardlinked to /dev/console
Cc: yocto@yoctoproject.org
Message-ID: <b2e24776-2ae8-e324-b0d8-e6547e4f97cb@droescher.ch>
Date: Fri, 3 Apr 2020 10:42:56 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-CH
Content-Transfer-Encoding: 7bit

Hi

I'm doing a Yocto Zeus build for a very old Linux Kernel (The Kernel is built
outside of Yocto). Since my target CPU, based on mips32 little endian, was
removed from Linux mainline I've opted to use musl to keep at least the
user space up to date.

I'm building a JFFS2 root fs using --devtable= since my kernel does not have
devfs/udev. The file looks like:
/dev/console    c   640      0       0        5      1       -       -       -
/dev/full       c   640      0       0        1      7       -       -       -
/dev/mtd        c   640      0       0       90      0       0       2       8
/dev/mtdblock   b   640      0       0       31      0       0       1       8
/dev/null       c   666      0       0        1      3       -       -       -
...

Running mkfs.jffs2 outside Yocto works. Running mkfs.jffs2 as part of the
default image build step breaks my char/block devices. All device files are
hard linked to the first one. Moreover the permissions are also reset.

Example Output of ls /dev/*:
crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/console
crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/full
crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtd0
crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtd1
...
crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtdblock0
crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtdblock1
..
crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtdchar
crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/null

It looks like add_host_filesystem_entry calls lstat for all files added to the
JFFS2 including files that do not exist. For some reason I do not yet understand
lstat returns garbage instead of just failing on my system (Ubuntu 18.04). This
in turn leads to the hard linking and permisson issues described above. I
suggest to disable lstat for device files to counter this issue:

---
  jffsX-utils/mkfs.jffs2.c | 8 ++++++--
  1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/jffsX-utils/mkfs.jffs2.c b/jffsX-utils/mkfs.jffs2.c
index 9afd920..2779706 100644
--- a/jffsX-utils/mkfs.jffs2.c
+++ b/jffsX-utils/mkfs.jffs2.c
@@ -219,14 +219,18 @@ static struct filesystem_entry 
*add_host_filesystem_entry(const char *name,
  		const char *path, unsigned long uid, unsigned long gid,
  		unsigned long mode, dev_t rdev, struct filesystem_entry *parent)
  {
-	int status;
+	int status = -1;
  	char *tmp;
  	struct stat sb;
  	time_t timestamp = time(NULL);
  	struct filesystem_entry *entry;

  	memset(&sb, 0, sizeof(struct stat));
-	status = lstat(path, &sb);
+
+	//Do not call lstat for char- and  block-devices
+	if (major(rdev) == 0) {
+		status = lstat(path, &sb);
+	}

  	if (status >= 0) {
  		/* It is ok for some types of files to not exit on disk (such as
-- 
2.17.1

Andreas






