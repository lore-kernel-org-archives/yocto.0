Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 259FEE00AB6; Mon, 24 Apr 2017 12:15:52 -0700 (PDT)
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
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7334E0094C
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 12:15:48 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id h123so41076802qke.0
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 12:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4JifzCGxE+8Q6ZohpPNp3pWmu6O1liY1eSxcE7tqXng=;
	b=aK1RUQJftg/3i8zOpSiKWfexqZe6eiYQVALWBBAMcmSgdHbG1aJTQWqn4NjfGY8yIJ
	o839vIIaTiII2rZvdbxUyjoFoDJtvITzvq6jwJBIfPbu5LPunLzgtSvgDF8GXuNLSdcv
	b1E1arzZwIwD3p9q66zne+ODz1UlX3eNy1KZd07lL93rcdOTJfSjFS8LDzR0ZTLCcZDt
	iVwhIKkal5bbmG4mt4V65hT4fIsoJYmo3mjFk4O4G5SydY8lJGJ+2Er+5k13pg4J2syV
	CIVuu0PZ8bLPodZJASqN1cY/AlAIlSIMlmoejiuEcVvpsTXZYHroL0lzjkAjDHPiwaHN
	gqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4JifzCGxE+8Q6ZohpPNp3pWmu6O1liY1eSxcE7tqXng=;
	b=Uwf4kc2CSrj392UYHJAUrB2syTktasvT9mCRirNK9TZhyhO+ocJ8tFsfwxB3qD3XNX
	Br3ydob4HFmoAOG1T2+ZWqV44GG2MV6QkVyTI/6lUGhXAlwAl83p01NrC7gSNmBJwg3y
	wx+XnAYbgAfnGjBYqBX/sHrDT7s8mHLoJcoSVyiYSiA8SJFPvE1MQSqV+gEDZKcDL+Cv
	0ERM1QGitjQUJDlmR5iKN/S8HEQZMv1U6u4VaFC09fbzYRg6YW6kk3p2uq96boIcHAfR
	iE8kYRtp7ggFm2Xz958QrQzZP2kU4xsDDRTG0EGnrSThL+uJeet1NLx6iw11rcyUFqLm
	E+FQ==
X-Gm-Message-State: AN3rC/7eDCs06r6QR5aHnR15zYLyyPernXn0S3UZ/lUngViFxISWkP5o
	CsaFX66S+FLPb6Ep85Y4VFRkB90KPS/p
X-Received: by 10.55.115.65 with SMTP id o62mr26095676qkc.26.1493061348027;
	Mon, 24 Apr 2017 12:15:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 12:15:27 -0700 (PDT)
In-Reply-To: <CAMKF1spRYm9yYhOVzOcA+5BPjATW_gLZfKmBCkZgj0MKZX=YmA@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
	<CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
	<CAJTo0LaWkRxjaF4j1HHhUqFDYYTmGADTuiLo8zqPwR+wKSbY2A@mail.gmail.com>
	<CAJTo0LZJSZ-UJc7zTyYNf3YYKFD3mu=-zprQroZwxB1SZBQ+Bg@mail.gmail.com>
	<CAMKF1spRYm9yYhOVzOcA+5BPjATW_gLZfKmBCkZgj0MKZX=YmA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 20:15:27 +0100
Message-ID: <CAJTo0LbEu_PZ0WRTMK__8gjF-JVULoAA_qfLQXLCwSJpMksbPg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 19:15:52 -0000
Content-Type: multipart/alternative; boundary=001a114fdea24710c8054dee6fb3

--001a114fdea24710c8054dee6fb3
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 17:10, Khem Raj <raj.khem@gmail.com> wrote:

> thanks, yes I haven't been testing SDK yet, whats the gcc version on
> your build host ?
>

It's failing across the autobuilder so I'd suggest it's not specific to a
gcc version.

It also breaks on my personal machine, which is Debian Jessie(ish) with gcc
4.9.2

Ross

--001a114fdea24710c8054dee6fb3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 17:10, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":1t6" class=3D"a3s aXjCH =
m15ba0bb0313210b5">thanks, yes I haven&#39;t been testing SDK yet, whats th=
e gcc version on<br>
your build host ?<br></div></blockquote></div><br>It&#39;s failing across t=
he autobuilder so I&#39;d suggest it&#39;s not specific to a gcc version.</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">It also=
 breaks on my personal machine, which is Debian Jessie(ish) with gcc 4.9.2<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</=
div></div>

--001a114fdea24710c8054dee6fb3--
