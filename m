Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00746E00294
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 20:58:35 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so2637914pab.35
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 20:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:message-id:mime-version:subject:date:references
	:to:in-reply-to:x-mailer;
	bh=MGVc3SYXKx8xPCvboii11MqNnLPXvU0jiQE1q9riz/A=;
	b=id6xpkAIYY9pWfAxecAsm5cRnVg+LD0wf7XFo+QL/8QabZKmKSf+vEdyhuEdRHYQyg
	OvmodcCm5Ljfhya7YKAZ/DNEFf0ZC3SrS3UE7e5Ed0bVGR2wvFEtIyK4LW5CfQU/d7ZP
	crWexJv1yA9b29mkusslV1ZOszBSkszQi3l2Be1wV8RJe/J1scX8HuJs7MLQmqc/38m/
	cZIotLaOLL5AqDOsKbI9E8BZucaw7jRsbpHtmpivBSX9K7w87L0j6hpYTWFvL91uCpjQ
	iEuH7QcT5Tdrp+UWdZOtmBJBFqM2l79kqSCJXVcN9U8ZlHXTMymIf/s7DUAFdo3HgqG1
	yXfg==
Received: by 10.68.138.229 with SMTP id qt5mr35509863pbb.122.1350964715597;
	Mon, 22 Oct 2012 20:58:35 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id pj10sm6984363pbb.46.2012.10.22.20.58.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 22 Oct 2012 20:58:34 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <0C4325BA-1CE2-451F-A7CE-2C08721911CC@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
Date: Tue, 23 Oct 2012 07:58:29 +0400
References: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
In-Reply-To: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
X-Mailer: Apple Mail (2.1499)
Subject: Re: ERROR: Function failed: do_rootfs, poky commit id 8ce23f569584f195391bc5c68a780e1bf54e4360
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Oct 2012 03:58:36 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_15C61846-323B-4E51-82BD-FE13BF866029"

--Apple-Mail=_15C61846-323B-4E51-82BD-FE13BF866029
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
     =20
On Oct 23, 2012, at 12:22 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:

> | Configuring sysvinit.
> | Collected errors:
> |  * preinst_configure: Aborting installation of base-passwd.
> |  * opkg_install_cmd: Cannot install package packagegroup-core-boot.
> | ERROR: Function failed: do_rootfs (see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further information)
> ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1395 tasks of which 227 didn't need to =
be rerun and 1 failed.
> No currently running tasks (1395 of 1396)

The build appears to be failing because it cannot install =
packagegroup-core-boot. Has something changed recently in poky/master, =
that might be causing this?

Best regards,

Elvis Dowson=

--Apple-Mail=_15C61846-323B-4E51-82BD-FE13BF866029
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp;&nbsp;</div><div><div><div>On Oct 23, =
2012, at 12:22 AM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><font face=3D"Monaco" size=3D"2">| =
Configuring sysvinit.</font></div><div style=3D"font-family: Helvetica; =
font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><font =
face=3D"Monaco" size=3D"2">| Collected errors:</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><font face=3D"Monaco" size=3D"2">| &nbsp;* preinst_configure: Aborting =
installation of base-passwd.</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><font =
face=3D"Monaco" size=3D"2">| &nbsp;* opkg_install_cmd: Cannot install =
package packagegroup-core-boot.</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><font =
face=3D"Monaco" size=3D"2">| ERROR: Function failed: do_rootfs (see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further =
information)</font></div><div style=3D"font-family: Helvetica; =
font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><font =
face=3D"Monaco" size=3D"2">ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs) failed with exit code '1'</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><font face=3D"Monaco" size=3D"2">NOTE: Tasks Summary: Attempted 1395 =
tasks of which 227 didn't need to be rerun and 1 =
failed.</font></div><div style=3D"font-family: Helvetica; font-size: =
medium; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><font face=3D"Monaco" size=3D"2">No =
currently running tasks (1395 of =
1396)</font></div></blockquote></div><br></div><div>The build appears to =
be failing because it cannot install packagegroup-core-boot. Has =
something changed recently in poky/master, that might be causing =
this?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_15C61846-323B-4E51-82BD-FE13BF866029--
