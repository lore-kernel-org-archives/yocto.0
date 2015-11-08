Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51B57E00AB7; Sun,  8 Nov 2015 08:51:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4913E006F6
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 08:51:44 -0800 (PST)
Received: by lbces9 with SMTP id es9so15115017lbc.2
	for <yocto@yoctoproject.org>; Sun, 08 Nov 2015 08:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan_ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=oKaeCztBkbAXXUijmszCEoPQX6udBlRpAYNjbBu/VNE=;
	b=bluQeHyVQBKw4VHFm78UnBa+e3E68pk5pC+FqG0LaQ51XGQ1srXGngONkOYqMZhfRC
	sV1k+3LZgCNIsObyIDPd8z077QzqaG8qkpf/tFNbw5wmMGssQYczr652ZsWEtb5dG0su
	TMxJSA0ToquM8+exzr3yTF8uiMpsQknHFOaC+UBS0yLvEtBucmNKPdbYZJ9JJBXUjc7m
	ZbEQy0/yPVybFEzlccqGfRQ2zn6MEL8mCk0vA7Mgz27Uqim3bvpkmN3mnM/BiXmEXyc0
	4JKcFRClaoMFigM9MoSUHSG+krBZ0N06eqPpaPktnXv/Dar4VUNKvf2kcqrrZXPCIxlQ
	SSfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=oKaeCztBkbAXXUijmszCEoPQX6udBlRpAYNjbBu/VNE=;
	b=YGr95tfz5Sxbf3o8+RvQSBjNBx9PCTc/33RXbevhqRdyGpNLGn6mCWDPrNnHWWMCAP
	QkT3+7HOfV7potCqXsfPq36dw0mPXgUaUkFmnJYbitETIFgdrPRO9pXMk054K1SoEJct
	7qMhHdktWruiEJCrolZGiXMoYxdLsSQpsq9TNcThUzZS+O5d7E2RNRyd6dqFCnpsOlp1
	l+rncWaGxKkBYoSJWH5ntTxxx5xhfOQFm2STgtf4wXZQBjJcAyFTzGgODefPmtyASzzt
	QbRNeP2QiQfM0HsEnuMRRpaqBYnXtzmVIpoKTMabAF0fSl4YWdlxD1arsUFhcrxRpm3O
	FYfQ==
X-Gm-Message-State: ALoCoQkrmA3dlhO1kEwHudBbLzBt9cJik8TpYWzfQRL5qwu5XUXVilV5tQy1S7QazcbCRFt+s4WW
X-Received: by 10.112.130.195 with SMTP id og3mr11368825lbb.69.1447001503818; 
	Sun, 08 Nov 2015 08:51:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.61.195 with HTTP; Sun, 8 Nov 2015 08:51:04 -0800 (PST)
X-Originating-IP: [92.217.115.210]
In-Reply-To: <CAG=op9dkEo6fn-dPqNHLgnoO6b=sfYJju6Exm6vXdViLsOk6Rw@mail.gmail.com>
References: <CAG=op9dOD9-phw9V+ceuvLhDxuPYQJPmNUJrrneC9_ywS+f5aw@mail.gmail.com>
	<CAMKF1srraL3_z6_AOG9Yo+P_5FY3E9Lv-ZywyQd+CGt7UsK77w@mail.gmail.com>
	<CAK18fxFTcYS0YLAbPnEycfUBBD3GxdRF_BbGX=332fnYd=eJLQ@mail.gmail.com>
	<CAG=op9c3ZCzppmDx__AMqTrv09Yf73F3830h-Ji7OqwxTZAOsQ@mail.gmail.com>
	<CAK18fxExsnDc9rGVcjNNp5uELfy8eWNg3ZfUS=e7kCog33bLCA@mail.gmail.com>
	<CAG=op9dkEo6fn-dPqNHLgnoO6b=sfYJju6Exm6vXdViLsOk6Rw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 8 Nov 2015 17:51:04 +0100
Message-ID: <CAK18fxEbyjkGszgtCr=KzL=uK_K-HrCuNm2RDfnM2z9XUxATSg@mail.gmail.com>
To: Chaitanya Dhere <dherechaitanya@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Missing config.txt in rpi-basic-image.bb
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
X-List-Received-Date: Sun, 08 Nov 2015 16:51:51 -0000
Content-Type: multipart/alternative; boundary=047d7b3a83aaa0001e05240a4aaa

--047d7b3a83aaa0001e05240a4aaa
Content-Type: text/plain; charset=UTF-8

Hi,

On Sat, Nov 7, 2015 at 12:17 PM, Chaitanya Dhere <dherechaitanya@gmail.com>
wrote:

> Hello,
>          Thanks for your input. After doing a loopback mount, I was
> able to locate the config.txt in that first partition. I modified that
> config.txt as required and it worked. But the same modification when
> done in the config.txt file which I created under boot directory
> didn't work. Seems that only the config.txt in the first partition is
> being read during boot-up.
>

Indeed. The boot partition is mounted as read-only. Good that you got it
fixed.

--
Andrei Gherzan

--047d7b3a83aaa0001e05240a4aaa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,<br>
<br><div class=3D"gmail_quote">On Sat, Nov 7, 2015 at 12:17 PM, Chaitanya D=
here <span dir=3D"ltr">&lt;<a href=3D"mailto:dherechaitanya@gmail.com" targ=
et=3D"_blank">dherechaitanya@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left=
:1ex">Hello,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thanks for your input. After doing a loop=
back mount, I was<br>
able to locate the config.txt in that first partition. I modified that<br>
config.txt as required and it worked. But the same modification when<br>
done in the config.txt file which I created under boot directory<br>
didn&#39;t work. Seems that only the config.txt in the first partition is<b=
r>
being read during boot-up.<br></blockquote><div><br></div><div>Indeed. The =
boot partition is mounted as read-only. Good that you got it fixed.</div><d=
iv><br></div><div><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div></div></div></div></div=
></div></div>

--047d7b3a83aaa0001e05240a4aaa--
