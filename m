Return-Path: <amittomer25@gmail.com>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8E49E0169D
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 04:04:52 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id cb5so2362900wib.10
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 04:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=rpMEOsUa7oijFU4y7I4poaBtWElmntEqatTSCyC/PhU=;
	b=Zm/grcK+xHKI6gZru2Bg6ZMk9ptP+mQkqA7ScW503VwZqBd0EklyAbmDTYAIxh8ZAF
	Tw/xomO20Rxhv2l+z/t8pD0sHOHiBHDAAhkjgKOPlZIyBQU6cQglHkHz+FgRii7jykdw
	DF96+P9pTJ9zy118+MUbwYECkpG9eRpIv4n4lHNwVhG+DqYh8K9bmvKbUqSE5+sYgKOr
	pRGLvBufVcXS8ra6TExiY1uDc2GFIqPOR3oweVztOAwG+z61saLf0UDcxW4RS77Af/M+
	5tLavfAFlV0YAyd1AjS9pVPOaWDgzuVB5lS5f73RMguPdWSkMm8TPYTaoLSP52B0FpJ0
	ynqA==
MIME-Version: 1.0
X-Received: by 10.180.187.51 with SMTP id fp19mr1938319wic.1.1380798291344;
	Thu, 03 Oct 2013 04:04:51 -0700 (PDT)
Received: by 10.227.196.7 with HTTP; Thu, 3 Oct 2013 04:04:51 -0700 (PDT)
In-Reply-To: <CABHD4K8q9q3Gb4B1E35G8qk+Bp=RLVW7ZhngNYvW=0ZV_v=RKA@mail.gmail.com>
References: <CABHD4K8q9q3Gb4B1E35G8qk+Bp=RLVW7ZhngNYvW=0ZV_v=RKA@mail.gmail.com>
Date: Thu, 3 Oct 2013 16:34:51 +0530
Message-ID: <CABHD4K8ggfe+MVzUDuK0dNs82=9dYT-iCyxGTOKNrLm8En2wGQ@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: OpenSSH pre login banner
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
X-List-Received-Date: Thu, 03 Oct 2013 11:04:54 -0000
Content-Type: multipart/alternative; boundary=001a11c37ba2a9841704e7d4279d

--001a11c37ba2a9841704e7d4279d
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: Amit Tomer <amittomer25@gmail.com>
Date: Thu, Oct 3, 2013 at 1:50 PM
Subject: OpenSSH pre login banner
To: "yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>


I am new to OpenEmbedded Yocto and have a requirement where OpenSSH pre
login banner
should come when do ssh from target board

Now I know I have to create a simple .txt file(banner) and put my banner in
to it and add the following to sshd_config

Banner /etc/ssh/banner

But now  wanted to know where should I keep my banner file in yocto so that
Yocto build infrastructure will pack banner file  to /etc/ssh/banner into
final image.

I do have receipes for openssh in meta-xyz/recipes-connectivity/openssh
 folder

Thanks
Amit

--001a11c37ba2a9841704e7d4279d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">---------- Forwarded me=
ssage ----------<br>From: <b class=3D"gmail_sendername">Amit Tomer</b> <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:amittomer25@gmail.com">amittomer25@gmai=
l.com</a>&gt;</span><br>
Date: Thu, Oct 3, 2013 at 1:50 PM<br>Subject: OpenSSH pre login banner<br>T=
o: &quot;<a href=3D"mailto:yocto-request@yoctoproject.org">yocto-request@yo=
ctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto-request@yoctoproject.o=
rg">yocto-request@yoctoproject.org</a>&gt;<br>
<br><br><div dir=3D"ltr">I am new to OpenEmbedded Yocto and have a requirem=
ent where=A0OpenSSH pre login banner<div>should come when do ssh from targe=
t board</div><div><br></div><div>Now I know I have to create a simple .txt =
file(banner) and put my banner in to it and add the following to=A0sshd_con=
fig</div>

<div><br></div><div>Banner /etc/ssh/banner=A0</div><div><br></div><div>But =
now =A0wanted to know where should I keep my banner file in yocto so that Y=
octo build infrastructure will pack banner file =A0to /etc/ssh/banner into =
final image.</div>

<div><br></div><div>I do have receipes for openssh in meta-xyz/recipes-conn=
ectivity/openssh =A0folder</div><div><br></div><div>Thanks=A0</div><span cl=
ass=3D"HOEnZb"><font color=3D"#888888"><div>Amit=A0</div><div>=A0</div><div=
><br></div>

<div><br></div></font></span></div>
</div><br></div>

--001a11c37ba2a9841704e7d4279d--
