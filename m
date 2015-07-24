Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 738C4E009EB; Fri, 24 Jul 2015 00:21:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E424E00530
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 00:21:14 -0700 (PDT)
Received: by igbij6 with SMTP id ij6so9965220igb.1
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 00:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to:content-type;
	bh=gGCwFyKUdblfoz5WDfipSSPK7UZYZbDA9dIHToq1Ono=;
	b=bsH+jHU3T+42Zt7cXMU1x9ze1rzK2wM41gayCeD5jf844FvobnBWjfMMsUKEUVWm11
	sLVXJqz4fuH+/N+wMoGVe4duHGY/vTMvijPeFtInseeTz+5lJKadwBBXWrohuQpMDANG
	5g3N/N88sldn/NlgV7gLJ5Z0vmg3+MIAJdde7uZf3ws9iceugR5RuPalvMUgFSrZzP7f
	zaJ4kEFxKPb8bmyPCiIdkM49PDIks1+O/c9boyWiQiBkGLkIc5WSqyF8O0tY+j26qkKh
	pXkyALCQtlP2YSSFP89sak5atjvWkDHWs4IrIKMNksM7Zug2HVEljH1vnS6O3Ofj/ym5
	0N5A==
X-Gm-Message-State: ALoCoQmOyw49WezNTKBWQU9BEK46GjhqNpKDI00KQdVqNJfT5c9ZELq/6MIhjpTSPyq7YcI5cyhf
MIME-Version: 1.0
X-Received: by 10.107.10.17 with SMTP id u17mr19732242ioi.16.1437722474027;
	Fri, 24 Jul 2015 00:21:14 -0700 (PDT)
Sender: sarayu@tanmic.co.in
Received: by 10.107.186.10 with HTTP; Fri, 24 Jul 2015 00:21:13 -0700 (PDT)
Date: Fri, 24 Jul 2015 12:51:13 +0530
X-Google-Sender-Auth: -3NlUZsmji4HyxJ-_J8YnlKyl0c
Message-ID: <CAF5S8SM5YF+w-UiJwteD4+PFz3NyEekqFZeqoqKZ=O9Y9D3jgw@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: yocto@yoctoproject.org
Subject: QorIQ-SDK-V1.8 fsl-toolchain generation misses libuuid
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
X-List-Received-Date: Fri, 24 Jul 2015 07:21:21 -0000
Content-Type: multipart/alternative; boundary=001a113ee77e59ce5e051b99d921

--001a113ee77e59ce5e051b99d921
Content-Type: text/plain; charset=UTF-8

Hi all ,

I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for my ARM
board . I followed the instructions in
http://www.freescale.com/infocenter/topic/QORIQSDK/6735542.html and was
able to successfully generate the toolchain and install the same.

I was also able to cross compile my hello world program and run the same on
my board . But when i wanted to test my other programs , i figured that
they were using the libuuid which was not present in the toolchain since it
was throwing errors for the uuid.h reference in my code.

I verified that the SDK had the util-linux recipe in the recipies-core
folder and also this was in the BBLAYER path as well. I saw that the
packages were also defined right and this recipe was being parsed also when
i tried to build it .

I used bitbake to run the util-linux_2.24.1.bb file separately and saw that
it was able to generate the libuuid but for some reason it is not being
built as part of the toolchain .

Can you please let me know what changes are required to include it along
with the toolchain build .

Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

--001a113ee77e59ce5e051b99d921
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">Hi all ,=C2=A0</div><div class=3D"gmail_default" style=3D=
"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:comic sans ms,sans-serif">I am using the=C2=A0QorIQ=
-SDK-V1.8 SDK for the toolchain generation for my ARM board . I followed th=
e instructions in =C2=A0<a href=3D"http://www.freescale.com/infocenter/topi=
c/QORIQSDK/6735542.html">http://www.freescale.com/infocenter/topic/QORIQSDK=
/6735542.html</a> and was able to successfully generate the toolchain and i=
nstall the same.=C2=A0</div><div class=3D"gmail_default" style=3D"font-fami=
ly:comic sans ms,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif">I was also able to cross compile =
my hello world program and run the same on my board . But when i wanted to =
test my other programs , i figured that they were using the libuuid which w=
as not present in the toolchain since it was throwing errors for the uuid.h=
 reference in my code.=C2=A0</div><div class=3D"gmail_default" style=3D"fon=
t-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:comic sans ms,sans-serif">I verified that the SDK had t=
he util-linux recipe in the recipies-core folder and also this was in the B=
BLAYER path as well. I saw that the packages were also defined right and th=
is recipe was being parsed also when i tried to build it .=C2=A0</div><div =
class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif"><br>=
</div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-=
serif">I used bitbake to run the <a href=3D"http://util-linux_2.24.1.bb">ut=
il-linux_2.24.1.bb</a> file separately and saw that it was able to generate=
 the libuuid but for some reason it is not being built as part of the toolc=
hain .=C2=A0</div><div class=3D"gmail_default" style=3D"font-family:comic s=
ans ms,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:comic sans ms,sans-serif">Can you please let me know what changes are r=
equired to include it along with the toolchain build .</div><div class=3D"g=
mail_default" style=3D"font-family:comic sans ms,sans-serif"><br></div><div=
><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><fon=
t face=3D"comic sans ms, sans-serif">Thanks and Regards,</font><div><font f=
ace=3D"comic sans ms, sans-serif">Sarayu K S=C2=A0</font></div><div><font f=
ace=3D"comic sans ms, sans-serif">Tech Lead=C2=A0</font></div><div><font fa=
ce=3D"comic sans ms, sans-serif">Zaikenn Technologies</font></div></div></d=
iv></div></div></div>
</div>

--001a113ee77e59ce5e051b99d921--
