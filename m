Return-Path: <davide.soldan@kynetics.it>
Received: from mail-bk0-f52.google.com (mail-bk0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3015E016FB
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 03:02:27 -0700 (PDT)
Received: by mail-bk0-f52.google.com with SMTP id e11so3023888bkh.39
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 03:02:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:user-agent
	:mime-version:content-type:content-transfer-encoding;
	bh=JsotSfmku2FnO4YIE+sUo5O3832Gd5CqeAg79/ryxj8=;
	b=YhQLuii5wazHWjzGmHyU1R31oMWm3YdYdHqWy7k75QcyoVGwkaUKnpIrgm6sV3pRBP
	bE9N6YTqe1KMy4Exc9uViZX5PUSLLxfDWYjy6030L48E2NWPZKk0Cj0z0v2Ae+JZ/UIQ
	J5aq/lecqNW+31bRGllq6VWlBWFJDwsXENhaTufFDSA5jR2UOg16Nm/2P3d8DJ8Vyi+T
	FCPUPgUqg0Ua5MhWLbPHiPQPKnawmBpGsBf0fcUwGYOywvdvyyzBKFm9zyQIImLyOMbV
	g+YnRlySW71NafKwemyns1D8M9+G9a1oRUZnbbXswEzcraSxc7rlZLktE0gQgIJeKegx
	+uyw==
X-Gm-Message-State: ALoCoQmSmAdRCxHxfr7J33QQILqWAhTuI8ipiHsKWofZwQC+gleWfpizoD8MBM9rtUF5sFCusc68
X-Received: by 10.204.168.197 with SMTP id v5mr34470708bky.24.1381831345734;
	Tue, 15 Oct 2013 03:02:25 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id w9sm43043191bkn.12.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 15 Oct 2013 03:02:24 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 15 Oct 2013 12:02:20 +0200
Message-ID: <2654026.GvoHhChOvl@fedora-fisso>
User-Agent: KMail/4.11.2 (Linux/3.11.3-201.fc19.x86_64; KDE/4.11.2; x86_64; ; )
MIME-Version: 1.0
Subject: preserving file owners in do_package
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
X-List-Received-Date: Tue, 15 Oct 2013 10:02:29 -0000
Content-Type: multipart/alternative; boundary="nextPart2923178.HTJDXMPFEL"
Content-Transfer-Encoding: 7Bit

--nextPart2923178.HTJDXMPFEL
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi to all,
in my recipe I want to change owner and permission of a file, so I wrote:

do_install() {
        ls -la ${D}/opt/user
        chown -R user ${D}/opt/user
        chgrp -R user ${D}/opt/user
        ls -la ${D}/opt/user
        chmod 754 ${D}/opt/user/user.sh
        ls -la ${D}/opt/user
}

the output of ls commands is: 

drwxr-xr-x 8 root root   4096 Oct 15 11:13 .
drwxr-xr-x 3 root root   4096 Oct 15 11:13 ..
-rw-r--r-- 1 *root root*  55753 Aug  2 08:48 user.sh

drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
-rw-r--r-- 1 *user user*  55753 Aug  2 08:48 user.sh

drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
*-rwxr-xr--* 1 user user  55753 Aug  2 08:48 user.sh

So the change of owner and permission works fine in do_install phase.
Opening the final rootfs tarball, however, the file user.sh has still 754 permission but root as owner...so do_package doesn't preserve owner change done in do_install? Or maybe I'm doing something wrong in changing file owner? Any ideas?
Thanks to all!

--nextPart2923178.HTJDXMPFEL
Content-Transfer-Encoding: 7Bit
Content-Type: text/html; charset="us-ascii"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:10pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hi to all,</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">in my recipe I want to change owner and permission of a file, so I wrote:</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">do_install() {</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">        ls -la ${D}/opt/user</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">        chown -R user ${D}/opt/user</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">        chgrp -R user ${D}/opt/user</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">        ls -la ${D}/opt/user</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">        chmod 754 ${D}/opt/user/user.sh</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">        ls -la ${D}/opt/user</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">}</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">the output of ls commands is: </p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">drwxr-xr-x 8 root root   4096 Oct 15 11:13 .</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">drwxr-xr-x 3 root root   4096 Oct 15 11:13 ..</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">-rw-r--r-- 1 <span style=" font-weight:600;">root root</span>  55753 Aug  2 08:48 user.sh</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">drwxr-xr-x 8 user user   4096 Oct 15 11:13 .</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">-rw-r--r-- 1 <span style=" font-weight:600;">user user</span>  55753 Aug  2 08:48 user.sh</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">drwxr-xr-x 8 user user   4096 Oct 15 11:13 .</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><span style=" font-weight:600;">-rwxr-xr--</span> 1 user user  55753 Aug  2 08:48 user.sh</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">So the change of owner and permission works fine in do_install phase.</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Opening the final rootfs tarball, however, the file user.sh has still 754 permission but root as owner...so do_package doesn't preserve owner change done in do_install? Or maybe I'm doing something wrong in changing file owner? Any ideas?</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Thanks to all!</p></body></html>

--nextPart2923178.HTJDXMPFEL--
