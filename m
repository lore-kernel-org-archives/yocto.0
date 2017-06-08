Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17B6DE00BF8; Thu,  8 Jun 2017 05:31:37 -0700 (PDT)
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
	*      [209.85.216.176 listed in list.dnswl.org]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2861E00BF7
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 05:31:25 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id u19so39080607qta.3
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 05:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cB+HzSJHCLgpjDuXIEacJB+b8ProTCGgTOSF67UWIWE=;
	b=icfp4tinmBDk+szRHIn5d/3s7Cee08dD9nvNOGWOp+PPkDJSwORRFnIbccUqV0urSN
	n3b/VZu8U/O3HopDkav7MsX37x2kUGeDe1n0wSzAAgvPeNqBRPwgCL2U9S+vKxpcSstJ
	XibrwLwAKeLKe7Z8eq9GY80aHIk6KzRSCWsunn0xD1s1W9HArbJ0XGbL+EjmoSoD5BhO
	Zoql5ntE+evWMMPbVfLUDeGnCZDcRMeKqN/G4OOzd0R6ovGlVJZEyfU9bd5h2fF42AbP
	a8lkGHwbGwbmbpcCpyzOXo1JTQu/HgtJejx61OT4WP/otfDJs1Rr6YO5AHUkak7nFQjq
	jfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cB+HzSJHCLgpjDuXIEacJB+b8ProTCGgTOSF67UWIWE=;
	b=sYJoh4sRDTaBgFuCNtKa0j/XlLB5x8Mwm0tj3ArJ6CXMTGsE/hjo2Az5OuJLMzkJlv
	nNvcwAByubQ8hZZFEcOvhMywQedYMz+dNnSXXEr13tasQh6qfjt7iUHnp1a+kYPSTJM8
	C1P4NDVC34OdLHGMY25jNJRTkdboDxfF8Q0caZXnXFW+uPiHeyTMUdkGCzfnpSCHgLzX
	Q1+E7K0HZKz/BYAseKIv/yylbaVIOGiwh3q1FU1qLsFhLZmETsCmheXP2ERMdCOawTUY
	MKorqgSIxCAC/3LuufCJmJY/MYPancfWN7uvg1j9/PTiC4I1V4xAPAiKwuO91WHBBt1C
	brIg==
X-Gm-Message-State: AKS2vOzcc+ruBbSKm9vkux7pzX57iH6c1rwmTeNUczPcs5+fGPzfWuQc
	eQMYDRgYgrA2I0/Vl66GWrUhKm9AGKqP
X-Received: by 10.55.197.202 with SMTP id k71mr24213917qkl.54.1496925084781;
	Thu, 08 Jun 2017 05:31:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Thu, 8 Jun 2017 05:31:04 -0700 (PDT)
In-Reply-To: <9abcba55-d1f5-c0a6-86f2-316367f419a7@mlbassoc.com>
References: <395f03fe-7c6c-820b-5562-f98388cae49a@mlbassoc.com>
	<CAJTo0LZysn_2MJO9ffhKBrweHC6i+cDnYn0unSqRB_P549D0cg@mail.gmail.com>
	<9abcba55-d1f5-c0a6-86f2-316367f419a7@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 Jun 2017 13:31:04 +0100
Message-ID: <CAJTo0LZH4f5T4r7Ltnth-9_3QdSX5ZXJ2zC6rm6UfAR-DASZ+w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What's up with python3
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
X-List-Received-Date: Thu, 08 Jun 2017 12:31:37 -0000
Content-Type: multipart/alternative; boundary="001a1149a4beef25d205517207c4"

--001a1149a4beef25d205517207c4
Content-Type: text/plain; charset="UTF-8"

On 8 June 2017 at 13:10, Gary Thomas <gary@mlbassoc.com> wrote:

> What would I lose by do this, in general, as it's pretty obvious
> that python3 is not needed by any of the recipes I use?
>

It's the scripts in opkg-utils, so if you're not installing that in your
image then you won't notice at all.

(looks like the recipe should respect the python PACKAGECONFIG and delete
the python scripts so they can't get packaged)

Ross

--001a1149a4beef25d205517207c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 June 2017 at 13:10, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":zt" class=3D"a3s aXjCH m1=
5c879d85017add4">What would I lose by do this, in general, as it&#39;s pret=
ty obvious<br>
that python3 is not needed by any of the recipes I use?<br></div></blockquo=
te><div><br></div><div>It&#39;s the scripts in opkg-utils, so if you&#39;re=
 not installing that in your image then you won&#39;t notice at all.</div><=
div><br></div><div>(looks like the recipe should respect the python PACKAGE=
CONFIG and delete the python scripts so they can&#39;t get packaged)</div><=
div><br></div><div>Ross</div></div><br></div></div>

--001a1149a4beef25d205517207c4--
