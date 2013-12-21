Return-Path: <bewithsathish@gmail.com>
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A3C0E00803
	for <yocto@yoctoproject.org>; Sat, 21 Dec 2013 06:28:16 -0800 (PST)
Received: by mail-pd0-f174.google.com with SMTP id x10so3616892pdj.19
	for <yocto@yoctoproject.org>; Sat, 21 Dec 2013 06:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:content-type;
	bh=MYCD5OQTxeKyrNhQf1MJEzPp8B6Lk4e3JnNcuXf5mJQ=;
	b=EhYTnvZJU0Ag1YaIPxSKam2tvpGxmTYUGb5kNIRbXai53hf/+APtwpHY+5kDCZtu6Z
	4yehn/apuDAOMmEQPJv5gvvgGQlJ2m7mQcaOOA6ERO4GdBXVg4omV1N7s5bRxeMPIBL7
	4AUDtI4aLG5m1gWKPDUnc5a7sU9NbmKVExotD58aueIRIcg/CfONlZFI/H8Lr1tV9FcN
	XMH0A8OoTEnhk7zswcBq2pwaCjaJOaZ4chxbQ95n2uKZ4mjisNb/0eOmkY84hCcY2ZDT
	ZrK8mqyRGy2Kq3Vd/AD8ZiUEzHK2ENC0aYcExkv2Cr6sS1O9yX9ru8fglNIAytZJZPfo
	iOfw==
MIME-Version: 1.0
X-Received: by 10.66.155.102 with SMTP id vv6mr15200659pab.89.1387636095809;
	Sat, 21 Dec 2013 06:28:15 -0800 (PST)
Sender: bewithsathish@gmail.com
Received: by 10.68.36.138 with HTTP; Sat, 21 Dec 2013 06:28:15 -0800 (PST)
In-Reply-To: <1161C063FEBDA543A6BFB93ABED841421B4AF870C1@SGPMBX05.APAC.bosch.com>
References: <1161C063FEBDA543A6BFB93ABED841421B4AF870C1@SGPMBX05.APAC.bosch.com>
Date: Sat, 21 Dec 2013 19:58:15 +0530
X-Google-Sender-Auth: X6kgYS8kKdagOHArw6u3FxTmRqw
Message-ID: <CANJvwR8ADbGvMcZUxOyWwUtqqa6tsCohE8cSqxVS6GDXiMGQ1Q@mail.gmail.com>
From: Sathishkumar Duraisamy <sathishkumar.duraisamy@yahoo.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Build fails for eglibc
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
X-List-Received-Date: Sat, 21 Dec 2013 14:28:21 -0000
Content-Type: multipart/alternative; boundary=047d7b86e3a8917daa04ee0c34b8

--047d7b86e3a8917daa04ee0c34b8
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

 Hi,

I using Poky-dora-10.0.0. configured for qemuarm. I am getting failed for
eglibc with following errors. Any idea to fix this?

ERROR: debugedit failed with exit code 256 (cmd was
'/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//sysroots/=
i686-linux/usr/lib/rpm/bin/debugedit'
-b
'/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/armv=
5te-poky-linux-gnueabi'
-d '/usr/src/debug' -i -l
'/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/armv=
5te-poky-linux-gnueabi/eglibc/2.18-r0/debugsources.list'
'/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/armv=
5te-poky-linux-gnueabi/eglibc/2.18-r0/package/lib/
libm-2.18.so'):
/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp/sysroots/i6=
86-linux/usr/lib/rpm/bin/debugedit:
canonicalization unexpectedly shrank by one character
ERROR: Function failed: split_and_strip_files
ERROR: Logfile of failure stored in:
/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/armv5=
te-poky-linux-gnueabi/eglibc/2.18-r0/temp/log.do_package.516
ERROR: Task 12
(/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/meta/recipes-core/eg=
libc/
eglibc_2.18.bb, do_package) failed with exit code '1'


Mit freundlichen Gr=FC=DFen / Regards
Sathishkumar D

--047d7b86e3a8917daa04ee0c34b8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><br>






<div>
<font face=3D"Arial, sans-serif">
<div>Hi,</div>
<div>=A0</div>
<div>I using Poky-dora-10.0.0. configured for qemuarm. I am getting failed =
for eglibc with following errors. Any idea to fix this?</div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div>ERROR: debugedit failed with exit code 256 (cmd was &#39;/home/sdu2cob=
/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//sysroots/i686-linux/usr=
/lib/rpm/bin/debugedit&#39; -b &#39;/home/sdu2cob/workspace/YoctoProject/po=
ky-dora-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi&#39;
-d &#39;/usr/src/debug&#39; -i -l &#39;/home/sdu2cob/workspace/YoctoProject=
/poky-dora-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi/eglibc/2.18-r0=
/debugsources.list&#39; &#39;/home/sdu2cob/workspace/YoctoProject/poky-dora=
-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi/eglibc/2.18-r0/package/l=
ib/<a href=3D"http://libm-2.18.so" target=3D"_blank">libm-2.18.so</a>&#39;)=
:</div>


<div>/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp/sysroo=
ts/i686-linux/usr/lib/rpm/bin/debugedit: canonicalization unexpectedly shra=
nk by one character</div>
<div>ERROR: Function failed: split_and_strip_files</div>
<div>ERROR: Logfile of failure stored in: /home/sdu2cob/workspace/YoctoProj=
ect/poky-dora-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi/eglibc/2.18=
-r0/temp/log.do_package.516</div>
<div>ERROR: Task 12 (/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/=
meta/recipes-core/eglibc/<a href=3D"http://eglibc_2.18.bb" target=3D"_blank=
">eglibc_2.18.bb</a>, do_package) failed with exit code &#39;1&#39;</div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Bosch Office Sans, sans-serif">Mit freundlichen Gr=FC=DF=
en / Regards</font></div>
<div><font face=3D"Bosch Office Sans, sans-serif">Sathishkumar D</font></di=
v>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
</font>
</div>

</div><br></div>

--047d7b86e3a8917daa04ee0c34b8--
