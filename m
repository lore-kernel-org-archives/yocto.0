Return-Path: <abhishek.embsys@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC94FE00997; Wed, 15 Apr 2015 15:04:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (abhishek.embsys[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 920BAE00949
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 15:04:17 -0700 (PDT)
Received: by laat2 with SMTP id t2so43277456laa.1
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 15:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4qmQeSxVXZ0unIOKF6bPW3NQ3/iByQ8MKXNHWClzcQw=;
	b=yQ1hBCIGORb5BNlPMhodPQ2LuSnvBh8zA5+qkGQi1U8ixJeMdqgVxwlDqXXi4In5I2
	2z+94/wP0Ifp/gJlk3XnDTpwwkJKB2JRbs8YkejFudLglQXAcVS89lkJxusOomZKcMCI
	yX/gky7AvTMt02NlUWt+QOg/0WYsTWOwVMmBZZCTssg67FvNpk3UweUNIHbaG/cxPtNW
	az2wOUecznbkVzW4cR/6rTGd2b160g73b1pEzVfLtOxaN1Rcza6bkahc2kH+7f0OJK3b
	b7PoCnyoydJTAYhOTnuciIV8XdZSt9efofPVfz+jY3cmTHvhmnrRNsWzChTtlIK+UgY1
	ScUg==
MIME-Version: 1.0
X-Received: by 10.112.222.133 with SMTP id qm5mr25812400lbc.86.1429135455493; 
	Wed, 15 Apr 2015 15:04:15 -0700 (PDT)
Received: by 10.25.159.202 with HTTP; Wed, 15 Apr 2015 15:04:15 -0700 (PDT)
Date: Thu, 16 Apr 2015 03:34:15 +0530
Message-ID: <CAGj-b5JQK8D+3MjMLwF5SzpFFoe5DnYbcvRZtwAcJ=fForHRSA@mail.gmail.com>
From: abhishek srivastava <abhishek.embsys@gmail.com>
To: yocto@yoctoproject.org
Subject: error while inserting driver as recipe in raspberrypi kernel
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
X-List-Received-Date: Wed, 15 Apr 2015 22:04:22 -0000
Content-Type: multipart/alternative; boundary=001a11346db02923dc0513ca870a

--001a11346db02923dc0513ca870a
Content-Type: text/plain; charset=UTF-8

I am getting following error when i try to include driver as recipe in
raspberrypi kernel

NOTE: Executing write_package_manifest ...
| DEBUG: Executing python function write_package_manifest
| DEBUG: Python function write_package_manifest finished
| NOTE: Executing license_create_manifest ...
| DEBUG: Executing shell function license_create_manifest
| ls: cannot access
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/pkgdata/runtime-reverse/fbtft:
No such file or directory
| readlink: missing operand
| Try 'readlink --help' for more information.
| basename: missing operand
| Try 'basename --help' for more information.
| WARNING: exit code 1 from a shell command.
| DEBUG: Python function do_rootfs finished
| ERROR: Function failed: license_create_manifest (log file is located at
/home/abhi/yocto_new/build-dizzy/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1.0-r0/temp/log.do_rootfs.1262)
ERROR: Task 7
(/home/abhi/yocto_new/poky-dizzy-12.0.1/meta-raspberrypi/recipes-core/images/
rpi-basic-image.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3332 tasks of which 3324 didn't need to be
rerun and 1 failed.

please help me to identify the issue.

Thank you

--001a11346db02923dc0513ca870a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I am getting following error when i try to inclu=
de driver as recipe in raspberrypi kernel<br><br>NOTE: Executing write_pack=
age_manifest ...<br>| DEBUG: Executing python function write_package_manife=
st<br>| DEBUG: Python function write_package_manifest finished<br>| NOTE: E=
xecuting license_create_manifest ...<br>| DEBUG: Executing shell function l=
icense_create_manifest<br>| ls: cannot access /home/abhi/yocto_new/build-di=
zzy/tmp/sysroots/raspberrypi/pkgdata/runtime-reverse/fbtft: No such file or=
 directory<br>| readlink: missing operand<br>| Try &#39;readlink --help&#39=
; for more information.<br>| basename: missing operand<br>| Try &#39;basena=
me --help&#39; for more information.<br>| WARNING: exit code 1 from a shell=
 command.<br>| DEBUG: Python function do_rootfs finished<br>| ERROR: Functi=
on failed: license_create_manifest (log file is located at /home/abhi/yocto=
_new/build-dizzy/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1.=
0-r0/temp/log.do_rootfs.1262)<br>ERROR: Task 7 (/home/abhi/yocto_new/poky-d=
izzy-12.0.1/meta-raspberrypi/recipes-core/images/<a href=3D"http://rpi-basi=
c-image.bb">rpi-basic-image.bb</a>, do_rootfs) failed with exit code &#39;1=
&#39;<br>NOTE: Tasks Summary: Attempted 3332 tasks of which 3324 didn&#39;t=
 need to be rerun and 1 failed.<br><br></div>please help me to identify the=
 issue.<br><br></div>Thank you<br></div>

--001a11346db02923dc0513ca870a--
