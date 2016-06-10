Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20AA3E00CD9; Fri, 10 Jun 2016 01:37:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A641E00CC0
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 01:37:06 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id a5so59033277ita.1
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 01:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ev4DQPLB0v5UPjm0Coxpzsz3Pci+qC6J4FuxqKeQjdI=;
	b=rpK6FGvELw61ujJ26g/OK/iBQTyT3/n+6uIn72PyxIxanIlfduq8bIBEoEjaNAKTb1
	/Q8Ak2x1q879lW23/cxvfLzZ6Xmp5lDhgNL6AzOVVwjiqnahyp4EZ9X0lp0aHgmDhEul
	ci+zqEM7UcYLhsFvJF8nqWceX5+Au7VYRzLf+oxArLeR4LBXCwaJ/v3VnnSX5govydrP
	GPTAihyYt491y6ZZvOVufZHl9erWOH22DMhMqxcrQucF2agiXqY/GaL+tFktrkBoya6l
	C9bYTEdh/vSHltWCyVysw93pJGMOG1wjk8lk6M0Yl400t7fkeeO/vwpwLIe+3AQIOZ5o
	GHuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ev4DQPLB0v5UPjm0Coxpzsz3Pci+qC6J4FuxqKeQjdI=;
	b=MjktnjtelGLJ7afS/4jIbdCAhziUk7awtN0gyXh/HA9AHVp/wezd1lz+DPYFNoX+74
	7cHp6/5fGmLbgMic1iYFVZGSbJlIDZVYWE1yMxvfWG6ONxvqgcUZoMLA/vsriAmsXi6w
	Hy27b8QovUKE43NNMN/NancHSKtXSboUsq9Z9WWUZjDbwFl5KEd070UnrtJTUircKaUk
	eP5BwghC7K9nGXieTjQhgfeGVTIdzYKAD/OvgISDju25lDWKqewwrpUFEJu0jscpsu2p
	cXwofpSWR33wet/6glMbEdi5Aw2n/jLZegnzmxuppIFd/EqwyW8o5FivJltR6fDE5Vol
	YZGA==
X-Gm-Message-State: ALyK8tKtGxFZmAxG+QmgbKZvdZAkU7UB+D8UkSjKcZRdslUe6uPrB3Kz3/cD8bKRCxVVEid6T2ksoNotOGW1EJoU
X-Received: by 10.36.2.71 with SMTP id 68mr30029958itu.38.1465547826255; Fri,
	10 Jun 2016 01:37:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 10 Jun 2016 01:36:46 -0700 (PDT)
In-Reply-To: <575A7B40.9050509@mlbassoc.com>
References: <575A7B40.9050509@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 10 Jun 2016 09:36:46 +0100
Message-ID: <CAJTo0LbqtWQXN91MuUXpwtgiaGCC19ubbKw3CHN8Fq2Lip6jog@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another python3 error?
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
X-List-Received-Date: Fri, 10 Jun 2016 08:37:09 -0000
Content-Type: multipart/alternative; boundary=001a1144b1d095eef30534e871e5

--001a1144b1d095eef30534e871e5
Content-Type: text/plain; charset=UTF-8

On 10 June 2016 at 09:33, Gary Thomas <gary@mlbassoc.com> wrote:

> bitbake -g by itself works fine.  Is this a [new] issue with my
> build host, or just the change over to python3?
>

That's missing packages on your build host.

Ross

--001a1144b1d095eef30534e871e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 June 2016 at 09:33, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":3p6" class=3D"a3s aXjCH =
m15539730e6a2cc32">bitbake -g by itself works fine.=C2=A0 Is this a [new] i=
ssue with my<br>
build host, or just the change over to python3?<div class=3D"yj6qo ajU"><di=
v id=3D":wu" class=3D"ajR" tabindex=3D"0"></div></div></div></blockquote></=
div><br>That&#39;s missing packages on your build host.</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1144b1d095eef30534e871e5--
