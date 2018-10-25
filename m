Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74FA7E00994; Thu, 25 Oct 2018 08:27:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4391E008E3
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 08:27:01 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id e5-v6so8875601eds.6
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 08:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xxc0li/mgKcfrIo5Bzji8zPTS7Z0pUPNeeVQfMOj3zU=;
	b=R7IfZYaeP6pTy+vOjmzO11IgPYDV6g8lTAlRQNghkbL75O0spBURhHFj4Jtp1KFNkP
	Eqd4PQv/r/phPMrjGNFVdolfUTUJf3CMeEeVvEoYtqArPCAtvEohtNxqYNKDBvivZ3PY
	TM8AVrpPTYSmOk0DG/3GbiyVUMkR52PiuBnlZMgtVaXp6anAeq6LdSgAFDNvmqZI+Ca7
	Sk+iwJ77qFDLAl8XTnLl6Qkq15Dp8kHvsAL8oseYEcURorfwDU3BcSQkGTMVJMNUnfqV
	CmxtaZZW60ZGlGyLs0z4WF+q0ap8TcZpRYmnyo2S5DtZjTKxQhYsBFcXOpaBM9tIZPEL
	Vvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xxc0li/mgKcfrIo5Bzji8zPTS7Z0pUPNeeVQfMOj3zU=;
	b=So8pGdih8ESa28Ls2DjbKGKVsN5VOKx/6T8nl32n/bx6DybkANM2Usq21byXiOYq4X
	Cfiw+nZyfFqlkNBKcGAv3fqaYTacoWlbAJxsv+kfyc8p9Wi67jb3uywn5W3gI+3ZLgCH
	bNYvNuEUmpBz1nMW7BiNcNB0/ycyek8hqfo7W1Tx4G+Zl/i4Xd6BytxKU3QggJFax7By
	fsXEE25sVpLhtGjARXpNxiqGskQ82d+oVTejlZFojVLNInl8oMYYZXiIVTKIf3AmuNJp
	K/P8S7qBnouucP+j0d7mGNYnQF7a/gi8fmis2T//+B8Rp7GeB2xotFiALzyDYBKYyarB
	P0Cw==
X-Gm-Message-State: AGRZ1gLjTe/bRlgfMQ/Ju8ALRUAxhSoAWllaq/MvVyRisPNykcGg+xnm
	yyKLD5t1jKpKA43TKyplDCsOp1XIHbU8RIjXl3U=
X-Google-Smtp-Source: AJdET5eWq7kT4G1SYdtUUZRtAeefD9v0qUbjEPm40pwvwrRbz9xwPw0XMDw3BNjb2rQeXy0sYiMZM7zVpTozM+OY+is=
X-Received: by 2002:a50:a955:: with SMTP id
	m21-v6mr1758709edc.234.1540481220729; 
	Thu, 25 Oct 2018 08:27:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAC4hrmo3G1FGCT40+oX-v1kU8M6ew-XG_xm6Aq6X04fOFFF1Rw@mail.gmail.com>
In-Reply-To: <CAC4hrmo3G1FGCT40+oX-v1kU8M6ew-XG_xm6Aq6X04fOFFF1Rw@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 25 Oct 2018 08:26:49 -0700
Message-ID: <CAFNP8Oufyf8o6eosni5CCSRMOnf9MBC5oLRu=bDs8G52y67qrg@mail.gmail.com>
To: bhavin.maru@vvdntech.in
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Need Help To Solve Errors while build of Yocto Project
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
X-List-Received-Date: Thu, 25 Oct 2018 15:27:02 -0000
Content-Type: multipart/alternative; boundary="000000000000f1de5b05790f3b20"

--000000000000f1de5b05790f3b20
Content-Type: text/plain; charset="UTF-8"

Hi,

I am not a developer but according to that manual, one of the requirements
is Python 3.4 or greater.  I see Python2 stuff in the attached screen
shots.  Someone else could probably be more definitive.  That might not be
the reason but you could try with Python 3.

https://www.yoctoproject.org/docs/2.5.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html#brief-compatible-distro

Scott

On Thu, Oct 25, 2018 at 8:13 AM Bhavin Dharmendrabhai Maru <
bhavin.maru@vvdntech.in> wrote:

> Hi Support Team,
>
> I am new to yocto project and start to build yocto project by the steps
> provided in below link:
>
> https://www.yoctoproject.org/docs/2.5.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
>
> I am getting errors when i give *$ bitbake core-image-sato *command.
> details screenshot of errors are attached with this email for your
> reference.
>
> Kindly help me to solve these errors. Any help in this will be appreciated.
>
> Thanks and Regards,
> Bhavin Maru
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000f1de5b05790f3b20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>I =
am not a developer but according to that manual, one of the requirements is=
 Python 3.4 or greater.=C2=A0 I see Python2 stuff in the attached screen sh=
ots.=C2=A0 Someone else could probably be more definitive.=C2=A0 That might=
 not be the reason but you could try with Python 3.<br></div><div><br></div=
><div><a href=3D"https://www.yoctoproject.org/docs/2.5.1/brief-yoctoproject=
qs/brief-yoctoprojectqs.html#brief-compatible-distro">https://www.yoctoproj=
ect.org/docs/2.5.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html#brief-com=
patible-distro</a></div><div><br></div><div>Scott<br></div></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Oct 25, 2018 at 8:13 AM=
 Bhavin Dharmendrabhai Maru &lt;<a href=3D"mailto:bhavin.maru@vvdntech.in">=
bhavin.maru@vvdntech.in</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Support Team,<div><br></div><div>I=
 am new to yocto=C2=A0project and start to build yocto=C2=A0project by the =
steps provided in below link:</div><div><a href=3D"https://www.yoctoproject=
.org/docs/2.5.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html" target=3D"_=
blank">https://www.yoctoproject.org/docs/2.5.1/brief-yoctoprojectqs/brief-y=
octoprojectqs.html</a></div><div><br></div><div>I am getting errors when i =
give=C2=A0<span style=3D"color:rgb(51,51,51)"><b>$ bitbake core-image-sato=
=C2=A0</b>command. details screenshot of errors are attached with this=C2=
=A0email for your reference.</span></div><div><br></div><div>Kindly help me=
 to solve=C2=A0these errors. Any help in this will be appreciated.</div><di=
v><div><br></div></div><div>Thanks and=C2=A0Regards,</div><div>Bhavin Maru<=
/div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000f1de5b05790f3b20--
