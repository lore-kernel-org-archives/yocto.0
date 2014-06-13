Return-Path: <akini@synapticon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAD4CE00BEA; Fri, 13 Jun 2014 01:14:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2214E00BB3
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 01:13:55 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id k15so3080349qaq.30
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 01:13:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=i0bTsOAzZmP8MS7LgmIwnUSNpS2lY6q3QGB02cdjMeY=;
	b=i10eEWs5qaFVdz92iYCWwg+gyX600mIu54MmakUA5jrhqpx7Jm9PaLCiJ9iVi7s5+7
	SihThJroUR89fHVzW8mE8LE3cS6E7mv2JJk7LrbEabx3x03XcvFNN+qSHggw6tYG8B5j
	tb+h4PfTgY81KacAmpDYg+D9ihW/k5xcLs42l5Bv5g9Hs/73/s1z6u2Q2VnQxrvqgZ/l
	truX3Ik2pyHnRDTQhqa6YknKOeS9BonZXje365LxEPNM1VdEWZED9GGLyAGYZ4WkPpHo
	t1TcBMa6euYulXf1qMiMCXCAzN8fHf9hWxmxwjdx5Qp2xX7wOdkI6wRiA1bsB9m68pWL
	YaIg==
X-Gm-Message-State: ALoCoQm33SjUmAw+/J4io9+zilLiPpWg46AGPGqPHH8h/gsCVaDAxyC65H/sVURDJdxpORN3yMjG
MIME-Version: 1.0
X-Received: by 10.140.81.16 with SMTP id e16mr841202qgd.110.1402647234847;
	Fri, 13 Jun 2014 01:13:54 -0700 (PDT)
Received: by 10.140.93.244 with HTTP; Fri, 13 Jun 2014 01:13:54 -0700 (PDT)
Date: Fri, 13 Jun 2014 10:13:54 +0200
Message-ID: <CAKS01o=UeW1WYTAkAnKrvazMV+4kSgULOJW17tG+3M1RxmDgtg@mail.gmail.com>
From: Anup Kini <akini@synapticon.com>
To: yocto@yoctoproject.org
Subject: building armhf deb with Yocto Daisy
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
X-List-Received-Date: Fri, 13 Jun 2014 08:14:06 -0000
Content-Type: multipart/alternative; boundary=001a11c119e22dbd3f04fbb342bc

--001a11c119e22dbd3f04fbb342bc
Content-Type: text/plain; charset=UTF-8

Dear All,

I am currently trying to build armhf debs using Yocto.

I use the machine tune = "cortexa9hf-neon" for an iMX6 Dual Lite Dev board.
All the debs built in the build/tmp/deploy/deb/ folder are XYZ_armel.deb

How do i build XYZ_armhf.deb using Yocto ?

Any suggestions or pointer will be helpful.



Thanks & Regards
-- 


*Anup Kini*Systems Engineer
*------------------------------*

*Synapticon*  |  Cyber-Physical System Solutions

--001a11c119e22dbd3f04fbb342bc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear All,<div><br></div><div>I am currently trying to buil=
d armhf debs using Yocto.</div><div><br></div><div>I use the machine tune =
=3D &quot;cortexa9hf-neon&quot; for an iMX6 Dual Lite Dev board.</div><div>=
All the debs built in the build/tmp/deploy/deb/ folder are XYZ_armel.deb</d=
iv>
<div><br></div><div>How do i build XYZ_armhf.deb using Yocto ?</div><div><b=
r></div><div>Any suggestions or pointer will be helpful.</div><div><br></di=
v><div><br></div><div><br></div><div><div>Thanks &amp; Regards</div>-- <br>
<div dir=3D"ltr"><p style=3D"margin:0px;color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:13px;background-color:rgb(255,255,255)"><b><span st=
yle=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Anup Kin=
i<br>
</span></b><span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=
=3D"EN-US">Systems Engineer</span><span lang=3D"EN-US"><u></u><u></u></span=
></p><div style=3D"margin:0px;color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:13px;background-color:rgb(255,255,255);text-align:center" ali=
gn=3D"center">
<b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S"><hr align=3D"center" size=3D"2" width=3D"100%"></span></b></div><p style=
=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:13px;background-color:rgb(255,255,255)">
<b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S">Synapticon</span></b><b><span style=3D"font-size:12pt;font-family:&#39;T=
imes New Roman&#39;,serif" lang=3D"EN-US">=C2=A0</span></b><span style=3D"f=
ont-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-US">=C2=A0|=C2=A0=C2=
=A0</span><span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=
=3D"EN-US">Cyber-Physical System Solutions</span><span style=3D"font-size:1=
0pt;font-family:Verdana,sans-serif" lang=3D"EN-US">=C2=A0</span></p>
</div>
</div></div>

--001a11c119e22dbd3f04fbb342bc--
