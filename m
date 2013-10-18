Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AFB0E016DD;
	Fri, 18 Oct 2013 02:51:39 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id t60so3445769wes.40
	for <multiple recipients>; Fri, 18 Oct 2013 02:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=/2wMLUGt2OKi4dBLZjnFJ2CC6a3jWYMsJJo6iwu2n8Y=;
	b=aj1xcIApPMplITKvdk7/szYu+/5ZdxWYl1pPklVzvLlRzDgtJi81tzldbMmts1Irjh
	+Ab4kFTT6msUi7PZz/Nv/IwGzTrotGOv2zpgC6wbrt3GnzC6FDTZVSw1zWbGRZWA8LHn
	yXZV+CWcwgCthEsowXUXP5BHTBIloQe3TLX/hrNBGTf3Y+wmaBH8Ql+cbFb++WAv7XzN
	1uhszxgiQdTGRfR3U2OTFWetOyQsCRy6+PfAXBH/bsXUIRDtcyUI4i6s34qdvX9SGsRE
	PNw2dI0j43jx0k7DBLnggf0XCdz8+5xKZS94apd+pZKAwS+wISjP9CXu4CNgiln2sRhn
	yEow==
MIME-Version: 1.0
X-Received: by 10.194.94.101 with SMTP id db5mr593151wjb.67.1382089897952;
	Fri, 18 Oct 2013 02:51:37 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Fri, 18 Oct 2013 02:51:37 -0700 (PDT)
Date: Fri, 18 Oct 2013 15:21:37 +0530
Message-ID: <CABHD4K8THEdw4na-mODkXqPbh1KL+wSupa+N55at07bgnwyYTw@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>
Subject: Applying Patch to /etc/passwd file in Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Oct 2013 09:51:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

I wanted to apply a patch file /etc/passwd but after many attemps
din't get any success

Below is the file

poky/meta/recipes-core/base-passwd/base-passwd_3.5.26.bb

which is responsible for copying  the modified passwd file to
/etc/passwd in my final image

install -p -m 644
${STAGING_DIR_TARGET}${datadir}/base-passwd/passwd.master
${STAGING_DIR_TARGET}${sysconfdir}/passwd

I believe above line copying the passwd file to /etc/passwd in my final image.

Now I need to modify this passwd furthur, so write a patch for it
belwo is my patch.

--- rootfs/etc/passwd   2013-10-18 02:03:50.119529158 -0500
+++ rootfs/etc/passwd   2013-10-18 02:05:01.703249079 -0500
@@ -18,7 +18,7 @@
 nobody:x:65534:65534:nobody:/nonexistent:/bin/sh
 ftp:x:999:999::/var/lib/ftp:/bin/false
 fuwmshey:x:0:0::/user/fuwmshey:/bin/sh
-frfhsjk:x:998:998::/home/frfhsjk:/bin/sh
+frfhsjk:x:998:998::/home/frfhsjk:/bin/false
 quagga:x:997:997::/var/run/quagga:/bin/sh
 messagebus:x:996:995::/var/lib/dbus:/bin/false
 sshd:x:995:992::/var/run/sshd:/bin/false

Above is my patch

Exact patch of file to be patched is

/tmp/work/k2-poky-linux-gnueabi/image-k2/1.0-r0/rootfs/etc/passwd

Now below error we are getting while applying patch


ERROR: Command Error: exit status: 1  Output:
Applying patch passwd_fix.patch
can't find file to patch at input line 4
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|
|---    rootfs/etc/passwd  2013-10-18 02:03:50.119529158 -0500
|+++ rootfs/etc/passwd 2013-10-18 02:05:01.703249079 -0500
--------------------------
No file to patch.  Skipping patch.
1 out of 1 hunk ignored
Patch passwd_fix.patch does not apply (enforce with -f)
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored in:   /
tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/base-passwd/3.5.26-r2/temp/log.do_patch.671
ERROR: Task 2059
(../poky/meta/recipes-core/base-passwd/base-passwd_3.5.26.bb,
do_patch) failed with exit code '1'

Thanks
Amit

