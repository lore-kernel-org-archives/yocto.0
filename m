Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0398AE00D48; Mon, 20 Nov 2017 03:35:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66CDAE00D00
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 03:35:52 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id g73so15362035ioj.8
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 03:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=c4jgfzjJXpKYTDsHEYo+mNvJh9d3JzHLPU+KmnsWiRw=;
	b=zz4w/WYl2aCCkbs8oWFC2kRb1RKMyPuZ1ehO5hKbuH3IG6kHrmjwrztNvIJPa2W+Lt
	7/vFPpDVG3uwlOKCxyRPgB2IR7pQ7BI1sEFg2D7BvlLNtMTcVEoDK+qOpTHmMPPXrNAj
	tCRZ6Tn1agjVpF2fxGX13DlUh5+R5NvriRROG3abIWpc0PsiHt2REj8TkPz9IWQ2kTcL
	rPXFMvYpyTHVO2M287uz7c2UAgFfsmOzbt+WPFnicd8xNebL1DTUiCibTo/Hn422y27P
	u1vJ5iviPS8UG85eOEVCfWgpgQ3M3vwKZqwwrgQ4YgdrJBHUHweVNC2MKJfazOw2S2T5
	6CXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=c4jgfzjJXpKYTDsHEYo+mNvJh9d3JzHLPU+KmnsWiRw=;
	b=qalQHxPDiasAhheD1p6WV/CTKtWF3EJtn6Y8w3+vneLtjVpdkWvTVBQeSNqfJFTddd
	ZIV2rlrGuhAMXZhqTWF7x/a+UnhfDZWCeNC1ZNzY0FLWwPrulp4CVt1icFk3iRSe5Kue
	0ssRLAIJhf8dotKeUK7TPv9BSv1CL7lBoZVFHuhAWjPhwk4COH3pq52WCER7q3A0n5xl
	yI2wbXMHWne211Ct28hcE+H8HZ+baNc6rNsX76OGovf7lPS1Da5XqBjWktrDEEYcXmUy
	NMEB4xHEXZEuD9aza0LusY0pjFCh5ZKDmOWkCi37qQsxae1TwlKmjcJuW61yUIdeOsrT
	yzow==
X-Gm-Message-State: AJaThX4ippi5iryBhecmIzPaPUyaYEdbCYCH+oF42xvEgkqSXYHIUzqL
	BK/c26+nkQ5AkcNjxE8M5NECSTiD0NQgzKZxzx1PRg==
X-Google-Smtp-Source: AGs4zMZ+IKAstIGduW0wslBlQZQV6kHghecXN3M4jt0uzCFxNeRu3CjrGcoPmCb0jdfm7cMZRNLqHUAOpsciSCmpSLk=
X-Received: by 10.107.146.195 with SMTP id u186mr13349997iod.37.1511177752383; 
	Mon, 20 Nov 2017 03:35:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.132 with HTTP; Mon, 20 Nov 2017 03:35:31 -0800 (PST)
In-Reply-To: <5644f58b.9cec.15fd93414cf.Coremail.cddatemp@163.com>
References: <5644f58b.9cec.15fd93414cf.Coremail.cddatemp@163.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Nov 2017 11:35:31 +0000
Message-ID: <CAJTo0LZUwFBBNDW3Whew-DjwV1frffRknAPOGsSZfZj=6tuRkQ@mail.gmail.com>
To: cddatemp <cddatemp@163.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build a native python extension
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
X-List-Received-Date: Mon, 20 Nov 2017 11:35:55 -0000
Content-Type: multipart/alternative; boundary="94eb2c0553b21fad1c055e687dc7"

--94eb2c0553b21fad1c055e687dc7
Content-Type: text/plain; charset="UTF-8"

inherit native to make the recipe native.

Ross

On 20 November 2017 at 11:33, cddatemp <cddatemp@163.com> wrote:

> Hi,
>
> I add "inherit distutils" in my recipe.
> It will make my recipe depends on "python-native" and "python".
> Finally it use arm-gcc to build the python extension.
> But I want to use x86-gcc to build a native python extension.
> How to do this?
>
> Best Regards
> cddatemp
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c0553b21fad1c055e687dc7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">inherit native to make the recipe native.<div><br></div><d=
iv>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On 20 November 2017 at 11:33, cddatemp <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:cddatemp@163.com" target=3D"_blank">cddatemp@163.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div style=3D"line-height:1.7;color=
:#000000;font-size:14px;font-family:Arial"><div>Hi,</div><div><br></div><di=
v>I add &quot;inherit distutils&quot; in my recipe.</div><div>It will make =
my recipe depends on &quot;python-native&quot; and &quot;python&quot;.</div=
><div>Finally it use arm-gcc to build the python extension.</div><div>But I=
 want to use x86-gcc to build a native python extension.</div><div>How to d=
o this?</div><div><br></div><div>Best Regards</div><span class=3D"HOEnZb"><=
font color=3D"#888888"><div>cddatemp</div></font></span></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c0553b21fad1c055e687dc7--
