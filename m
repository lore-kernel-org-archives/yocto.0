Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.12803.1616420272368733481
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 06:37:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=nHo1ZJDq;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd04132.aruba.it (smtpcmd04132.aruba.it [62.149.158.132])
	by mail.yoctoproject.org (Postfix) with ESMTP id CBECC38C06FF
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 13:37:49 +0000 (UTC)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id OKkMl5JkmnsTeOKkclQjz9; Mon, 22 Mar 2021 14:37:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1616420267; bh=wjQ2cPAqBaLCsRww61KIOcsixPX7F0IoNG6cyyYypEc=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=nHo1ZJDq8tW/NewEsi68v3Au0pOonnZKQxbuxpgDl6o74voBWsJQ9QqxRYBfXnY0A
	 LMASMGB6ehVOE8agAHa6T+JZriev27h3WmiwBS1abGcKGrPdj/bPTwpH2apOt4dGHg
	 z8i47xSx8f3SOgwVZlg5yLJUGHTlL5jKBZnuJDnQ2WhosYY6SUTEM+e6+GC10Tb7TI
	 6lpejo05SLWZ8CvjPWyjyi5nw7lecnTEnZErawul8VtjMptRFMIIKb2iLxClaisiCP
	 FzRAmavbhoxqz5iRZKnAyV8TTv+TvhOqh/K+mOUXj0s1egDmNNCjA2lZEIW3VtLcb4
	 p7qXai8+XUMfA==
Date: Mon, 22 Mar 2021 14:37:22 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <8FCE0664-661D-43F8-AF73-BD8D5623E6AF@getmailspring.com>
In-Reply-To: <20210316155630.wicookhtcfdvita4@qschulz>
References: <20210316155630.wicookhtcfdvita4@qschulz>
Subject: Re: [yocto] Which recipes put qtwebkit in my image?
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfPOOWJW1nonwv7ISofjILIwaJDqTBT6ymW4nI4NopPc/vXAzIQLnVmhMjY18x0z1hxFrHwa8jHi+3eLLA88vrvXVzanf6+Jt21tZ6yKhzY/E89EX0AGY
 yuArFaoC3IwLyThp171/TmaG7ou3xkHEH4xkSifhSrbxLCpsLX+2/MYRhIQD+3FS+blNPvqLGIrvWlomkCIWehr3bdUjBvoURiU=
Content-Type: multipart/alternative; boundary="60589d92_7f9c9671_123d"

--60589d92_7f9c9671_123d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hello.
I find it.
Inside a software there two executables programs which need QtWebKit.
So yocto warn me to include QtWebKit in the imge.

MZ
Sent from Mailspring (https://getmailspring.com/), the best free email app for work
On mar 16 2021, at 4:56 pm, Quentin Schulz <quentin.schulz@streamunlimited.com> wrote:
> Hi Mauro,
>
> On Tue, Mar 16, 2021 at 04:50:44PM +0100, Mauro Ziliani wrote:
> > Hi all.I need to find which recipe installs qtwebkit in my final image.
> >
> > I look in on every recipes I make but I don't find who put qtwebkit in my image.
> > I have the same matter with *-dev packages
> >
> > I use bitbake -g but I don't find the "source" of qtwebkit.
> >
>
> oe-pkgdata-util lookup-recipe qtwebkit
> could help. Or if you know which file you don't want in your fs and want
> to know which package is installing it:
>
> oe-pkgdata-util find-path '*qtwebkit*'
> (provided the file you're looking for has qtwebkit in its filename)
>
> Hope this helps,
> Cheers,
> Quentin
>


--60589d92_7f9c9671_123d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hello.</div><div>I find it.</div><div>Inside a software there two ex=
ecutables programs which need QtWebKit.</div><div>So yocto warn me to inc=
lude QtWebKit in the imge.</div><br><div>MZ</div><br><div><signature id=3D=
=22initial=22><div><div>Sent from <a href=3D=22https://getmailspring.com/=
=22>Mailspring</a>, the best free email app for work</div></div></signatu=
re></div><div class=3D=22gmail=5Fquote=5Fattribution=22>On mar 16 2021, a=
t 4:56 pm, Quentin Schulz &lt;quentin.schulz=40streamunlimited.com&gt; wr=
ote:</div><blockquote><div><div>Hi Mauro,</div><br><div>On Tue, Mar 16, 2=
021 at 04:50:44PM +0100, Mauro Ziliani wrote:</div><div>&gt; Hi all.I nee=
d to find which recipe installs qtwebkit in my final image.</div><div>&gt=
;</div><div>&gt; I look in on every recipes I make but I don't find who p=
ut qtwebkit in my image.</div><div>&gt; I have the same matter with *-dev=
 packages</div><div>&gt;</div><div>&gt; I use bitbake -g but I don't find=
 the =22source=22 of qtwebkit.</div><div>&gt;</div><br><div>oe-pkgdata-ut=
il lookup-recipe qtwebkit</div><br><div>could help. Or if you know which =
file you don't want in your fs and want</div><div>to know which package i=
s installing it:</div><br><div>oe-pkgdata-util find-path '*qtwebkit*'</di=
v><div>(provided the file you're looking for has qtwebkit in its filename=
)</div><br><div>Hope this helps,</div><div>Cheers,</div><div>Quentin</div=
></div></blockquote>

--60589d92_7f9c9671_123d--
