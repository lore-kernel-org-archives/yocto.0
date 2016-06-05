Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63F94E00D85; Sun,  5 Jun 2016 14:16:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D999BE00D68
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 14:16:02 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id n126so9589702itd.1
	for <yocto@yoctoproject.org>; Sun, 05 Jun 2016 14:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gPOpP6vE3sao4s12zfM7nsQgTsZyaRZbktIpSBSLi3o=;
	b=nzQwJHoxrne5RgytvpsCRoh4k+Q7NH743eS305SjGko7sOm8HmRGCB5svk+cAHjkPq
	OY1Hcza0YxSkYjaZpl1ZnSe3BHOJmH/JQSIbgeT+wq0it5YiyUICp3v0TbuK7X157as+
	N5CmtszzJvuO33Ep9Ir1cPB7p9wOriShiWL8vXNNsjQoL9YmZ72koj3UmlJu8kySleLC
	qjXAPgm/AHVpt0VPsCHyxAu4nE7fxHVFD18ZQVvgDrRVIcONCPSI7mx+tuChaWBwYE6f
	N8Cd1KIwARf8woMTeIjruHvwNRVZ5bTjKwd7E1ptG4OyIZ+2lbIq1Euc/pDpf0QOVkFd
	443Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gPOpP6vE3sao4s12zfM7nsQgTsZyaRZbktIpSBSLi3o=;
	b=B8E9SIPMxXSNLmCDFdimXZDHUMnAgEbgbtxlwchtJcIuPNsdWi3K0hoZqbXE+X9FXB
	qfJ8PzRdrvZbUDGjYUhPMUiclRh90QdgLhYaZFOIKy+JP7h1OXlQrpiRXO8I1UQ9VYXz
	iJ6s8UyxQP0wiX1IZc8trx4q+7KhvRRj1S9pfC3CVY9j+p45Yml+6Q+ulR6J0yd/HU86
	jo6QkM8h+/YYPa+25wqf8kR+E/aRb5RLySNUrAGQ0hOlcJS3DpU8rTkcW+3Ie1wLdHjD
	I/N7E235sRmB3MkfgDDRyO29d2U6PhiIdTpwDiLrSBO0pAEi5mfdyfyUjvpbe/XzUFnS
	Wofg==
X-Gm-Message-State: ALyK8tKPA6tevaBoxOCsMXyZx+69UqMBj4kuyggJK8oANDG7ns+EPvppAMCwFAMpkXdSCNNbxJ9FOReXV44Cj/od
X-Received: by 10.36.246.75 with SMTP id u72mr12802766ith.38.1465161362058;
	Sun, 05 Jun 2016 14:16:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Sun, 5 Jun 2016 14:15:42 -0700 (PDT)
In-Reply-To: <1464732695-28729-2-git-send-email-contact@jgueytat.fr>
References: <1464732695-28729-1-git-send-email-contact@jgueytat.fr>
	<1464732695-28729-2-git-send-email-contact@jgueytat.fr>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 5 Jun 2016 22:15:42 +0100
Message-ID: <CAJTo0LbcSVF9NX2yojP+CgE1=GHwbq1eyRNVyTxN7F19ucb4Rg@mail.gmail.com>
To: Julien Gueytat <contact@jgueytat.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [psplash][PATCH v2 2/2] Add --fbdev option to psplash like --rotation.
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
X-List-Received-Date: Sun, 05 Jun 2016 21:16:03 -0000
Content-Type: multipart/alternative; boundary=94eb2c11898086442605348e769c

--94eb2c11898086442605348e769c
Content-Type: text/plain; charset=UTF-8

On 31 May 2016 at 23:11, Julien Gueytat <contact@jgueytat.fr> wrote:

> A new fbdev file is needed and should be overrided if needed.
> The number contained in fbdev will be used as X in /dev/fbX.
>
> By overriding fbdev you can have a splash screen on another
> framebuffer than /dev/fbO.
>
> The getenv(FBDEV) line has been replaced by this option since
> the environment variables are not read yet when psplash starts.


These have been pushed to psplash master, thanks Julien.

Ross

--94eb2c11898086442605348e769c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 31 May 2016 at 23:11, Julien Gueytat <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:contact@jgueytat.fr" target=3D"_blank">contact@jgueytat.fr</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">A new fbdev f=
ile is needed and should be overrided if needed.<br>
The number contained in fbdev will be used as X in /dev/fbX.<br>
<br>
By overriding fbdev you can have a splash screen on another<br>
framebuffer than /dev/fbO.<br>
<br>
</span>The getenv(FBDEV) line has been replaced by this option since<br>
the environment variables are not read yet when <span class=3D"il">psplash<=
/span> starts.</blockquote></div><br>These have been pushed to psplash mast=
er, thanks Julien.</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">Ross</div></div>

--94eb2c11898086442605348e769c--
