Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 308A0E00A75; Tue,  4 Aug 2015 02:31:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0017DE00A49
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 02:31:24 -0700 (PDT)
Received: by iodd187 with SMTP id d187so11055402iod.2
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 02:31:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to:content-type;
	bh=cv/lNIgRE+Wvbq1l74EBoN45tPdkIvliBX69GQcOAX8=;
	b=U32KFqHBR4NKU6/CJRhi01DfFsik1up43wbtHBRQRMX+5qmkOAUog+zn7UIbo0ZFbI
	BB9VwTp/HYQ8iDuOcaIraAzXBPQOGS4aPZgTNxtySvw4NFtNkyQOYYkN3KC0F0GuW+b+
	G3erOA7dUyE2IvvMJ/1+6p0nihDOyI8lfklARUUL3GVjAEm8xXQTgisYe5rc0aZO9syg
	blOKHnbQSN0tabe6TgHj63wovLGlwyHWdCm4HCSMJbgm6v6ogLuBENGZIWR/qHFrrrDb
	v1eHFAbl11texKcSsHJaRlYmu1T7bNGdZu552nsHu6rgIBqY2DLpQcrRONg+QBK2Tv+P
	BPOg==
X-Gm-Message-State: ALoCoQnkn/hedqeEzLOHRsDbYw3wa8S7yfQ1X8QClxOJ5lj0WR+9Z3pJzah/ncPs08UkZYEN9R96
MIME-Version: 1.0
X-Received: by 10.107.134.78 with SMTP id i75mr2645325iod.88.1438680683835;
	Tue, 04 Aug 2015 02:31:23 -0700 (PDT)
Sender: sarayu@tanmic.co.in
Received: by 10.107.186.10 with HTTP; Tue, 4 Aug 2015 02:31:23 -0700 (PDT)
Date: Tue, 4 Aug 2015 15:01:23 +0530
X-Google-Sender-Auth: kTHFxyVyxA0pVAFz6jc3HMwpukE
Message-ID: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: yocto@yoctoproject.org
Subject: ADD GDB in FSL toolchain
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
X-List-Received-Date: Tue, 04 Aug 2015 09:31:31 -0000
Content-Type: multipart/alternative; boundary=001a113ecbba1b05d5051c78f335

--001a113ecbba1b05d5051c78f335
Content-Type: text/plain; charset=UTF-8

Hi all ,

I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for my ARM
board .  I wanted to build gdb along with the toolchain . I got some ideas
from google to add the gdb-cross in the fsl-toolchain.bb but on doing the
same it gave me some errors when trying to build .

Can you please let me know the right method to add gdb in the toolchain ?

Below is the error i got ,
*ERROR: gdb-cross not found in the base feeds (ls1021atwr
cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp
armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).*

Thanks in advance for your help.


Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

--001a113ecbba1b05d5051c78f335
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif"><span style=3D"font-size:12.8000001907349px">Hi all ,=C2=
=A0</span></div><div class=3D"gmail_default" style=3D"font-family:comic san=
s ms,sans-serif"><span style=3D"font-size:12.8000001907349px"><br></span></=
div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-se=
rif"><span style=3D"font-size:12.8000001907349px">I am using the=C2=A0QorIQ=
-SDK-V1.8 SDK for the toolchain generation for my ARM board .=C2=A0 I wante=
d to build gdb along with the toolchain . I got some ideas from google to a=
dd the gdb-cross in the <a href=3D"http://fsl-toolchain.bb">fsl-toolchain.b=
b</a> but on doing the same it gave me some errors when trying to build .=
=C2=A0</span><br clear=3D"all"></div><div class=3D"gmail_default" style=3D"=
font-family:comic sans ms,sans-serif"><span style=3D"font-size:12.800000190=
7349px"><br></span></div><div class=3D"gmail_default" style=3D"font-family:=
comic sans ms,sans-serif"><span style=3D"font-size:12.8000001907349px">Can =
you please let me know the right method to add gdb in the toolchain ?</span=
></div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans=
-serif"><span style=3D"font-size:12.8000001907349px"><br></span></div><div =
class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif"><spa=
n style=3D"font-size:12.8000001907349px">Below is the error i got ,=C2=A0</=
span></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><span style=3D"font-size:12.8000001907349px"><b>ERROR: gdb-cross not =
found in the base feeds (ls1021atwr cortexa7hf-vfp-neon cortexa7hf-vfp armv=
7ahf-vfp-neon armv7ahf-vfp armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any =
all).</b></span></font><br></div><div class=3D"gmail_default" style=3D"font=
-family:comic sans ms,sans-serif"><span style=3D"font-size:12.8000001907349=
px"><br></span></div><div class=3D"gmail_default" style=3D"font-family:comi=
c sans ms,sans-serif"><span style=3D"font-size:12.8000001907349px">Thanks i=
n advance for your help.</span></div><div class=3D"gmail_default" style=3D"=
font-family:comic sans ms,sans-serif"><span style=3D"font-size:12.800000190=
7349px"><br></span></div><div class=3D"gmail_default" style=3D"font-family:=
comic sans ms,sans-serif"><span style=3D"font-size:12.8000001907349px">=C2=
=A0</span></div><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><=
div dir=3D"ltr"><font face=3D"comic sans ms, sans-serif">Thanks and Regards=
,</font><div><font face=3D"comic sans ms, sans-serif">Sarayu K S=C2=A0</fon=
t></div><div><font face=3D"comic sans ms, sans-serif">Tech Lead=C2=A0</font=
></div><div><font face=3D"comic sans ms, sans-serif">Zaikenn Technologies</=
font></div></div></div></div></div></div>
</div>

--001a113ecbba1b05d5051c78f335--
