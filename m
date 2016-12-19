Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06B8EE00C82; Mon, 19 Dec 2016 04:37:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A864CE00C7A
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 04:37:50 -0800 (PST)
Received: by mail-qt0-f173.google.com with SMTP id c47so145280166qtc.2
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 04:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LyNQFbkgyATKYptRYxLxETJVGXmg6qXt+a+5wzdOXWs=;
	b=eOlUZ5c1Pkrb68zqcqQXdWZ1VH8dc5n9ZOlfjwAyHmxD4Zn6Mgslflmx5kQ2viJMY1
	L63rRejv6qiHa1pnj7xrEiU7Dvw2xTOOP3cioDt1A4394yX9s7MRqnlpmNoCiVRia05S
	09VaQXfUeNAhpVyp8fCgofaNA/uHnRj/5jZymLYr++wL8UnbPgOpiOZZkTJTYb0v4Qyc
	EagdOSDs6WgsaqMhL00gHty7SbAjjbf+jSs3BdXtyzLEABvyAz5td/FNOa56HZTQ66jv
	dMlqA2W5kyLYTSmGBd5GHqe58Fe24VmHtCtXL3w1u+IZ0IAccbRS1cl6W2u1R47TPFBC
	ngCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LyNQFbkgyATKYptRYxLxETJVGXmg6qXt+a+5wzdOXWs=;
	b=JIpXvJCJ572cn20PQJd+SD3m/6ilD4uVTsxROlCfkxMbv1CgGRVtnVe3ZAE2fBmMw0
	zFCII/mgDhHtKYru0dg8MosJYVWG/uZWtYFscDNdSFhKjsLPrEi1qsPcbNEBrDJkZRHa
	lxeAR4oNlPd7o6868JItyKqW3KeSw9Vxo+ftBKziv8msJUQhV2bYPyp1kWtvCkKReEhY
	GPhBx1UjXxjGrOaJ3p9eAk+4xPUiyGh9OxuD/m8VlmkAEn4N33bwcAy4PBWVUeirSATW
	p+9TicL3YQ5DtdDmUguc2NFlYrsfKzNeBFYNVz9tRmSeP8R8D4JqOcNFlqpyZxyjaWya
	G2UA==
X-Gm-Message-State: AIkVDXLZ5qXy4s78hudjz8qEkzOw8NNdbjCHa7TLDn5ToB6W9jKban6sUsKlHHZE05a9SkjO9znlPiG178jR9KOG
X-Received: by 10.237.37.77 with SMTP id w13mr16293031qtc.197.1482151069585;
	Mon, 19 Dec 2016 04:37:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Mon, 19 Dec 2016 04:37:29 -0800 (PST)
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E80F585@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3E80F585@AZ-FFEXMB01.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 19 Dec 2016 12:37:29 +0000
Message-ID: <CAJTo0LbpctwsQ7hyDwmY+sgcPajXY=VKNSk5rutB45bNQLKGbQ@mail.gmail.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build one package from a split package recipe
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
X-List-Received-Date: Mon, 19 Dec 2016 12:37:52 -0000
Content-Type: multipart/alternative; boundary=001a114108ea01aab80544023030

--001a114108ea01aab80544023030
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 19 December 2016 at 11:24, Bipnesh, Abhinav (Abhinav) <
abhinavbipnesh@avaya.com> wrote:

> Now when I fire a bitbake command like =E2=80=9Cbitbake test=E2=80=9D all=
 the packages
> listed into the recipe get build. But sometime I need to build only one
> package say test1.
>
>
>
> How that can be achieved as when I tried =E2=80=9Cbitbake test1=E2=80=9D =
its reports below
> error
>
> ERROR: Nothing PROVIDES test1'
>
>
You can't do this.  If you have a source that is sufficiently large and
slow to build that it this is a problem, considering splitting the recipes
up.

Ross

--001a114108ea01aab80544023030
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 December 2016 at 11:24, Bipnesh, Abhinav (Abhinav) <span dir=3D"ltr">=
&lt;<a href=3D"mailto:abhinavbipnesh@avaya.com" target=3D"_blank">abhinavbi=
pnesh@avaya.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p =
class=3D"MsoNormal">Now when I fire a bitbake command like =E2=80=9Cbitbake=
 test=E2=80=9D all the packages listed into the recipe get build. But somet=
ime I need to build only one package say test1.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">How that can be achieved as when I tried =E2=80=9Cbi=
tbake test1=E2=80=9D its reports below error<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: Nothing PROVIDES test1&#39;<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>You can&#39;t do this.=C2=
=A0 If you have a source that is sufficiently large and slow to build that =
it this is a problem, considering splitting the recipes up.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114108ea01aab80544023030--
