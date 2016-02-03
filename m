Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D08BE00AB6; Wed,  3 Feb 2016 07:40:54 -0800 (PST)
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
	*      [209.85.213.180 listed in list.dnswl.org]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32A6DE00948
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 07:40:45 -0800 (PST)
Received: by mail-ig0-f180.google.com with SMTP id hb3so13646848igb.0
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 07:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=lqh0hEQpxi/JXJwqSjNNlmEu4xFV5gJea6e80rzyxSU=;
	b=d4qipRlZVnuzPIDCujAO5mqKTRKxnxOFyogRApCpaVO9ZVB1PFiKIbjbf8pS9i6FZ9
	pV1KpVO2OUoj9AosfVs29HQ4KSRQOkUCBdAgehJYYl20LQLnGMoMH9AwxkmX4gyZ+WUn
	caDFL4K6341fZGxdj3wdwUuyUDmt1rdIZHcLpgQSl4xu/ng2gJ+VmojOEf1VoThj0in6
	8LKuA/BuGY//RDHoXzuN2JdW1l5pxteP8WY114LqPITCJcD5tszuusQWRBKKrwFCiGic
	ipj3K9rw6XtjLl1+czbqMrm7FSu8Z+u3chd0s8TdVXPgLkYgBGMxrItwIMwXJBkhXC85
	geaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=lqh0hEQpxi/JXJwqSjNNlmEu4xFV5gJea6e80rzyxSU=;
	b=eiU2MVR/lqhVAEKO75Eu9rF+USTP/c9ndxlHUBDIacQRpObKH45Zbbj+b0F9+iB8O2
	gfy9QbSmGfUNIDl4h45kwnXu4a6jeswKQkX9vHtjrJGtz3sIo1hkRxv2trL+xXlr8YxJ
	WJYWATIvyizFaqJ+XUmWSzVBCjfLTY8x+UUgDWLC1a2y3QFqsncW+bxKR8RO91babcA0
	ZOxXWZNkHBr54nbOpTxDi+Ell7FgcPo4GTDoJs+DZYtfOUEqa3tNQ/2DR7Dos7bmuvTf
	FlFYCugTR7sTrAFD4pbsDTIiUtWGxjImDGRhk2Znxoj8kJ4GwonAgRXL8jH2Ptxbdg0J
	U4tw==
X-Gm-Message-State: AG10YORSZucxRFiUlQNB3O4UapYDu93mNLA3NxU2rjKwvRIBL1W4ZAODgvZuVel0OPzz5IVXOrEPYQuWrZ47NUMq
X-Received: by 10.50.126.8 with SMTP id mu8mr4074838igb.52.1454514044435; Wed,
	03 Feb 2016 07:40:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 3 Feb 2016 07:40:25 -0800 (PST)
In-Reply-To: <56B20BA1.2060004@nokia.com>
References: <56B1D2D1.5010508@nokia.com>
	<CAJTo0LayhHP7wbcbLf7TOu8e=6-ERg90VdJu_Av9EfmBBFEmAg@mail.gmail.com>
	<56B20BA1.2060004@nokia.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Feb 2016 15:40:25 +0000
Message-ID: <CAJTo0LZFBBoAzRd5wGzg2h+yxR=vPNKBavwe=hhziNYvMXpDsA@mail.gmail.com>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where should I append Yocto bitbake task to create work folder symlink ?
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
X-List-Received-Date: Wed, 03 Feb 2016 15:40:54 -0000
Content-Type: multipart/alternative; boundary=047d7b1635bff0c2eb052adf70d1

--047d7b1635bff0c2eb052adf70d1
Content-Type: text/plain; charset=UTF-8

On 3 February 2016 at 14:16, Woronicz, Bartosz ( NSN - PL/Wroclaw) <
bartosz.woronicz@nokia.com> wrote:

> But I need to the sysroot cleanup deliberately, right ?
>

No, that happens on startup (in master and the jethro release).

Ross

--047d7b1635bff0c2eb052adf70d1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 February 2016 at 14:16, Woronicz, Bartosz ( NSN - PL/Wroclaw) <span di=
r=3D"ltr">&lt;<a href=3D"mailto:bartosz.woronicz@nokia.com" target=3D"_blan=
k">bartosz.woronicz@nokia.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">But I need to the sysr=
oot cleanup deliberately, right ?<br></div></blockquote></div><br>No, that =
happens on startup (in master and the jethro release).</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7b1635bff0c2eb052adf70d1--
