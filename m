Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACAEEE00BC8; Fri,  9 Jun 2017 04:25:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A376E00B57
	for <yocto@yoctoproject.org>; Fri,  9 Jun 2017 04:25:26 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id m47so1295909iti.1
	for <yocto@yoctoproject.org>; Fri, 09 Jun 2017 04:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AL5J2kC654qGvYfpJXSIVlWYPA9b+kGj1ozkz1H3j4I=;
	b=jqS/FsYcViVgVCvwqkXKjs9AeMKCZzHKgPLT9GilLgqU6oQWtoZrAQbDC5q+kZ51Np
	vo0RpuFPHPzUhUqLa7mUhmpIl0w/a//Z8wuaMiy912W9BrY8z5/k3zrLpnAyg/eAOwj/
	RHenz2r7sN+dwhn8ftiPWnGtxTzJ/LRX4zLzsE9vD3Z/EWMsW0SXfUBeGtvTKUKR7I8/
	MBCL07mbp0YQty8mzo0Sidm6TEABEYIUJpfkx0FnSS3A0cw8Za8aG9Y1fqQVI6z2guQs
	qOkjiDlK3wZqf5TgCT4FghIGcSGMqJKbF2ZhWD9Zq4mXDaZDUo3Jzo2QVJcCrwOiix7m
	ufDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AL5J2kC654qGvYfpJXSIVlWYPA9b+kGj1ozkz1H3j4I=;
	b=Qo31Vm/Yj1KcqFVk3VQsq4sWDLs2Rm+zbx2J0sAi3zi9vTD3tZ5J7R3PKR0q6rplyP
	BUMI5+acrCKQ/EL9cHxhcvdPJw3Njg9o8119ND5IwckBNmNrEDa5zcI8uIlGwRlankcH
	oXcdWw/a8AvHtVkmhsZj5pfG8hmzUEybc/pxOKO4IjIAG2URaAK3c2zG0WO0Rmnspudc
	h0QzZ1i22TA8zRAQd5yxcKzI2pyC1rikgkhh9VBDm4dS2GN6tbec0BfSxVJ7MPzStRNt
	SVFBAIYOBAyXUfaBCD5SMv0mIocYJWFoJcw5LMl4yXRjYSJqYTgs4oY0VesN1J3FAmNI
	4F6g==
X-Gm-Message-State: AODbwcBle24XT46dVpamPNabnRfzQ+xM5iOjF6jubdRt7jtmromgHdeR
	NdEV/YT13POlsHbLSUUcm6LrggfCHkprJuKkSg==
X-Received: by 10.36.147.2 with SMTP id y2mr9255560itd.43.1497007525762; Fri,
	09 Jun 2017 04:25:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.33.129 with HTTP; Fri, 9 Jun 2017 04:24:45 -0700 (PDT)
X-Originating-IP: [86.186.204.183]
In-Reply-To: <1496932757-14369-1-git-send-email-petter@technux.se>
References: <1496932757-14369-1-git-send-email-petter@technux.se>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 9 Jun 2017 12:24:45 +0100
Message-ID: <CAK18fxEFaddyHEf0oQ1=nAOTLDut6HSur-w-CeaFETk9EY_3wg@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] pi-blaster: update to include proper rpi3 support
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
X-List-Received-Date: Fri, 09 Jun 2017 11:25:29 -0000
Content-Type: multipart/alternative; boundary="94eb2c089e1cccb6d405518539fe"

--94eb2c089e1cccb6d405518539fe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 8, 2017 at 3:39 PM, Petter Mab=C3=A4cker <petter@technux.se> wr=
ote:

> Update to latest available revision, in order to include proper rpi3
> support as well as latest fixes.
>
> LIC_FILES_CHKSUM for the license text in README.md is changed to handle
> fixes of whitespace and newlines in the license text, introduced by the
> pi-blaster commit: '0e1a1df Cleaning up the README'.
>
> Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> ---
>  .../files/remove-initscript-lsb-dependency.patch   | 37
> ++++++++++++++++------
>  recipes-devtools/pi-blaster/pi-blaster.inc         |  2 +-
>  recipes-devtools/pi-blaster/pi-blaster_git.bb      |  2 +-
>  3 files changed, 30 insertions(+), 11 deletions(-)
>

Merged to master Petter. Thanks for this.

--
Andrei Gherzan

--94eb2c089e1cccb6d405518539fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote">On Thu, Jun 8, 2017 at 3:39 PM, Petter Mab=
=C3=A4cker <span dir=3D"ltr">&lt;<a href=3D"mailto:petter@technux.se" targe=
t=3D"_blank">petter@technux.se</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><span class=3D"gmail-">Update to latest av=
ailable revision, in order to include proper rpi3<br>
support as well as latest fixes.<br>
<br>
</span>LIC_FILES_CHKSUM for the license text in README.md is changed to han=
dle<br>
fixes of whitespace and newlines in the license text, introduced by the<br>
pi-blaster commit: &#39;0e1a1df Cleaning up the README&#39;.<br>
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br>
Signed-off-by: Petter Mab=C3=A4cker &lt;<a href=3D"mailto:petter@technux.se=
">petter@technux.se</a>&gt;<br>
---<br>
=C2=A0.../files/remove-initscript-<wbr>lsb-dependency.patch=C2=A0 =C2=A0| 3=
7 ++++++++++++++++------<br>
=C2=A0recipes-devtools/pi-blaster/<wbr>pi-blaster.inc=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 2 +-<br>
=C2=A0recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" rel=
=3D"noreferrer" target=3D"_blank">pi<wbr>-blaster_git.bb</a>=C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 2 +-<br>
=C2=A03 files changed, 30 insertions(+), 11 deletions(-)<br></div></div></b=
lockquote><div><br></div><div>Merged to master Petter. Thanks for this.</di=
v><div><div><br></div><div>--</div><div>Andrei Gherzan</div></div></div></d=
iv></div>

--94eb2c089e1cccb6d405518539fe--
