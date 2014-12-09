Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DA28E0086F; Tue,  9 Dec 2014 08:42:42 -0800 (PST)
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
	*      [209.85.214.171 listed in list.dnswl.org]
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 098A2E0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 08:42:38 -0800 (PST)
Received: by mail-ob0-f171.google.com with SMTP id uz6so732011obc.16
	for <yocto@yoctoproject.org>; Tue, 09 Dec 2014 08:42:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=tMuoPUQutepdsgZ4jg6+zq1HWFdLYeeKaHex2Kx3xP4=;
	b=Kf67bU0aD5YWwon8yiEVYbkwdPXCPdTYwwLpXpe/7qQtdakxnZLJxV3hFsgeTS8se1
	EZLxf0Tn1HqZIaFqoDp4J4eetJSqwzZFE5xdZ8ZaLG7nGvnVejwoU+l8CSxqrInJmHB9
	3FJRGyhUlizECpvvvMLGigMTiTI0gzEg0ULgo/poXaPmZ5OsnJIcRPb4uqrLBcQIIxvG
	RUggtrF/GvA760BwaaWs43FsGxmz+IgvOBrtVF40KX8lpBv2IQfT3e6f/EkQJFLNVbtD
	tt3jeX2dEZv1KvdcGpSMWXghT6KS+h2amvh0ndY/stjGNbEEkA1lY79ykHuL3nPYlorQ
	qgYA==
X-Gm-Message-State: ALoCoQnoTuTQRi00FupQrqK2Sqq513FwcZqyrR5OpgccIpSd1ZdUkEGkZR19/Ody0qO5iwh+6gOC
X-Received: by 10.202.228.136 with SMTP id b130mr7738773oih.128.1418143358260; 
	Tue, 09 Dec 2014 08:42:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.134.71 with HTTP; Tue, 9 Dec 2014 08:42:18 -0800 (PST)
From: "Damian, Alexandru" <alexandru.damian@intel.com>
Date: Tue, 9 Dec 2014 16:42:18 +0000
Message-ID: <CAJ2CSBtOSTYuXDyn885Z2o-h05Rob-R2Q6CB85BEJVbXhtcdjw@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	Elizabeth Flanagan <elizabeth.flanagan@intel.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: RFC - enable toaster on the autobuilder
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
X-List-Received-Date: Tue, 09 Dec 2014 16:42:42 -0000
Content-Type: multipart/alternative; boundary=001a114038b81c39980509cb3b80

--001a114038b81c39980509cb3b80
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I'm sending a patchset to enable Toaster logging for the autobuilder - can
you please review and comment ?

I have pending Bitbake patchset (*poky-contrib:adamian/devel-settings*)
Bitbake that adds two toaster-on-autobuilder related features:
1. build event logging flag (-w) will write an UI event log file
2. toaster end point that receives a log file over a HTTP POST request and
loads the data in the toaster database

Based on this approach, I've created an autobuilder patchset that enables
1. at all times, and 2. uploads the data to a Toaster server if such server
is specified in the build configuration

Can you please review:

*poky-contrib: adamian/autobuilder-enable-toaster*


=E2=80=8BThanks,
Alex=E2=80=8B

--=20
Alex Damian
Yocto Project
SSG / OTC

--001a114038b81c39980509cb3b80
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Hello,<br><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:tahoma,sans-serif">I&#39;m sending a patchset to enable Toaster loggi=
ng for the autobuilder - can you please review and comment ?<br><br></div><=
div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">I have =
pending Bitbake patchset (<b>poky-contrib:adamian/devel-settings</b>) Bitba=
ke that adds two toaster-on-autobuilder related features:<br>1. build event=
 logging flag (-w) will write an UI event log file<br>2. toaster end point =
that receives a log file over a HTTP POST request and loads the data in the=
 toaster database<br><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:tahoma,sans-serif">Based on this approach, I&#39;ve created an autobu=
ilder patchset that enables 1. at all times, and 2. uploads the data to a T=
oaster server if such server is specified in the build configuration<br></d=
iv><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br=
></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"=
>Can you please review:<br></div><div class=3D"gmail_default" style=3D"font=
-family:tahoma,sans-serif"><br><b>poky-contrib: adamian/autobuilder-enable-=
toaster</b><br clear=3D"all"></div><br><br><div class=3D"gmail_default" sty=
le=3D"font-family:tahoma,sans-serif">=E2=80=8BThanks,<br>Alex=E2=80=8B</div=
><br>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr">Alex Damian<div=
>Yocto Project<br></div><div>SSG / OTC=C2=A0</div></div></div>
</div>

--001a114038b81c39980509cb3b80--
