Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46E6AE00C14; Tue, 29 Aug 2017 10:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EA17E00B8B
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 10:38:14 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id k77so33107104oib.2
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 10:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Gni5YMPR40PYzc4moKmbhUbYv1d3YiMuZgXfWPlsNkM=;
	b=S+U3a8oqxsP++iI4euysS7hsWv4M8k9c+qKI4fm+hIDbHGArJxULR8qjrvcDDbEnFS
	XsR3y9MhpCiO9WY8FrXc1QfBhQnp1hagMqWsfAXKfdX5IJ1mYU8NlEck7XojUvJJ/vSI
	lVkBA8wPdKrv8fUvdki3j76xMacMC8u+SQ5kbaSF4be5jU8zpwMai2CCPFiv46QJWHMO
	yJo8YkvcScRXbg373y4ZkLcuzx2kQ87yBM9edlUJzimL86cIJAZm4vWBCsYDZm2+4bMf
	SD1C38tMMDl6MC3nyIGnv0F7P4t8VLn4GDA+kM8BwwTsfMnTdKzouhEEHmhMPh80iR3V
	ENBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Gni5YMPR40PYzc4moKmbhUbYv1d3YiMuZgXfWPlsNkM=;
	b=p2m02Lort+exuKJhjg39bJtnphqBhUIIc2lUvgydkZH75+BY113z7DPSaX8BnF/e+a
	jVTEGaeTT6UY5EXaZQ1Rn4Rs/HYd/MtTxEr9/Ff6A9kT1a6eSiu5RonluzNXpy4gkhsx
	eVQ90HFdwWbF5YCJ8kLKHQU0CDi60EZ3lM3Gd3HJgZjVD+iPzwR1BAgk5FUnDhqH3s0Q
	lPhK5paWmT5wp2Uknuwhbvqb0xt/kTMkF1PyrsK7uTIEHy28sBBRv/mGAFNcgZV+TZ9h
	u2RYWxR5KbBWCp2k3Uaooi7IbBHvbzFU4wR5nS8Ky+j2EpBEztbnnWIIxsSR/kQsK7jf
	Jabw==
X-Gm-Message-State: AHYfb5h4fC5+USz1c+om/4Oj6opPxDmVWlp7DmRSodAMWNsDR9NeiWEe
	UXXQN0lkJ/e9cJ21+Is83woTkQYQRs4R
X-Received: by 10.202.206.208 with SMTP id e199mr1051675oig.253.1504028293313; 
	Tue, 29 Aug 2017 10:38:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.131 with HTTP; Tue, 29 Aug 2017 10:38:12 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Tue, 29 Aug 2017 19:38:12 +0200
Message-ID: <CABFXn3GQ4-MXfmgBVmi0OwhP0YjJb_2UHf51f_oUTGbzS_b16A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: error in apt-key add
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
X-List-Received-Date: Tue, 29 Aug 2017 17:38:15 -0000
Content-Type: multipart/alternative; boundary="001a113ad52e27bada0557e7e0a2"

--001a113ad52e27bada0557e7e0a2
Content-Type: text/plain; charset="UTF-8"

I am building a linux image using yocto which support deb package
manager(apt-get). I created the repo with packages and i want to authorize
this repo to my target machine. i followed these steps
<https://help.ubuntu.com/community/CreateAuthenticatedRepository> for that
purpose. I created the keyFile successfully for the server (host). and when
transfer this keyFile to my target and execute apt-key add keyFile, it
promotes me the error

> /usr/bin/apt-key: line 352: comm: command not found



i use yocto pyro 17.0.1 and i built for core-image-sato plus adding the
recipe gnupg which exist in meta/recipes-support/gnupg

Why this error ? and possible ways to fix it ?

-- 
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113ad52e27bada0557e7e0a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/54cd11b=
ba47dbee722d03f53c2c2e61241c1f4fc.png?u=3D1822760"><div><div><span style=3D=
"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica=
,sans-serif;font-size:15px">I am building a linux image using yocto which s=
upport deb package manager(apt-get). I created the repo with packages and i=
 want to authorize this repo to my target machine. i followed=C2=A0</span><=
a href=3D"https://help.ubuntu.com/community/CreateAuthenticatedRepository" =
rel=3D"nofollow noreferrer" style=3D"margin:0px;padding:0px;border:0px;font=
-variant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:in=
herit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;ver=
tical-align:baseline;color:rgb(0,89,153);text-decoration:none">these steps<=
/a><span style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica Neu=
e&quot;,Helvetica,sans-serif;font-size:15px">=C2=A0for that purpose. I crea=
ted the keyFile successfully for the server (host). and when transfer this =
keyFile to my target and execute apt-key add keyFile, it promotes me the er=
ror</span></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span sty=
le=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica Neue&quot;,Helv=
etica,sans-serif;font-size:15px;background-color:rgb(255,248,220)">/usr/bin=
/apt-key: line 352: comm: command not found=C2=A0</span></blockquote><div>=
=C2=A0</div><div><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font=
-variant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:in=
herit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;ver=
tical-align:baseline;clear:both;color:rgb(36,39,41)">i use yocto pyro 17.0.=
1 and i built for core-image-sato plus adding the recipe gnupg which exist =
in meta/recipes-support/gnupg</p><p style=3D"margin:0px 0px 1em;padding:0px=
;border:0px;font-variant-numeric:inherit;font-stretch:inherit;font-size:15p=
x;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetic=
a,sans-serif;vertical-align:baseline;clear:both;color:rgb(36,39,41)">Why th=
is error ? and possible ways to fix it ?=C2=A0</p></div><div><div><br></div=
>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"lt=
r"><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-seri=
f,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Yahia Farghaly=C2=
=A0</span></font><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,=
Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></span><div><font colo=
r=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><span st=
yle=3D"font-size:13px">Graduated from Faculty of Engineering - Electronics =
and Communications Department at Cairo University.</span></font><br></div><=
div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont;font-size:16px"><div><a href=3D"https://linkedin.com/in/y=
ahiafarghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1=
" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=
=3D"font-size:13px">Linkedin</span></font></a><font size=3D"1" color=3D"#77=
7777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span s=
tyle=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://githu=
b.com/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font si=
ze=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><spa=
n style=3D"font-size:13px">GitHub</span></font></a></div></div></div></div>=
</div></div>
<br><br><br><div style=3D"display:inline">
            </div></div></div><div style=3D"display:inline">
            </div></div>

--001a113ad52e27bada0557e7e0a2--
