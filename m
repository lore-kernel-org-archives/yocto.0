Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B491E00C2B; Tue,  7 Jun 2016 06:53:39 -0700 (PDT)
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
	*      [209.85.214.45 listed in list.dnswl.org]
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDF59E00C28
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 06:53:34 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id z189so86173350itg.0
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 06:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Jxp2koNKHLGfDvcYU9W/JzG3keGEMRpow9GrZFkJnNQ=;
	b=thv6ebgVlJ7T3Tdgzq0mDgZxoN11mR9d27HPqbyjm3aAjualazQP7m+md7oOUzHQub
	csz2mh0FCnMISVFLx8KUSJeV6IVTSimzZFhvuSfbWLHYVym4zCR3awDmSdjg/IYImna0
	rmFXf//k8iRG67eMtrOOSvZK748R6FDRMBryrERyXA4IWbasp8dU3rFZwJEUsKaOE0ZX
	BKmVV23PNzaW5wpev2RooWIzVgISk9Ab+mpUQ8ABKevTfNC7uBrqFk81b+VYA4SkV4QZ
	C5qJSWRkXxAWkkz+UOnZtp0+86vRl9jgWx1d3YHLHiLdkj3alHY9DEQkB6eGgss2UNPJ
	S5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Jxp2koNKHLGfDvcYU9W/JzG3keGEMRpow9GrZFkJnNQ=;
	b=XnBzTJrD8OQCXOmyIo3yAiV45WKnKRRVrQ5+c2+aAtxdIF6SnJnIpj8VpCj6GKK9ba
	/CemnTDN9Y1K6P+EwHCS6vUl2ZLFdq4oUoMSjazRvGFVJzYfVvjred/MBa78RM5JLpnc
	JomLtrk5eFLFS3m4v7q11Vvz5D0UeGb0KcNSR2nRSi3v8MACvPNUqEzkd+8WdCUqlOqH
	2SFm3/8FaqqZ2iOOH1+vXPE+TX+JGPqCoLGuub5J50KPaxpkgKGYxT2pPQwtZ60vFuwq
	bhK1y2tatBV6jByTv/xOOnNty90KiB4ldgG1gqTeyNEUNZ+gRNmSuS9ABY4CmWId+1Ns
	cBUQ==
X-Gm-Message-State: ALyK8tIf8fCiLiI1EIRQC5bedcZFGTpVipmk4opntE9DwcKW25EP8ZSR08oK4x44bkI7FoCjIsVNt2d0SU9D2bG6
X-Received: by 10.36.120.193 with SMTP id p184mr4166859itc.22.1465307613673;
	Tue, 07 Jun 2016 06:53:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 7 Jun 2016 06:53:14 -0700 (PDT)
In-Reply-To: <5756B9D2.3000700@elfin.de>
References: <5756B9D2.3000700@elfin.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Jun 2016 14:53:14 +0100
Message-ID: <CAJTo0LZa_9kevvq-P0qD21WtmYuVt7=ogt4VU2xCS6xX=LWetw@mail.gmail.com>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DISTRO_FEATURES modification from image recipe?
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
X-List-Received-Date: Tue, 07 Jun 2016 13:53:39 -0000
Content-Type: multipart/alternative; boundary=001a114aa428ccd71d0534b08362

--001a114aa428ccd71d0534b08362
Content-Type: text/plain; charset=UTF-8

On 7 June 2016 at 13:10, piotr.lewicki <piotr.lewicki@elfin.de> wrote:

> Is it possible to manipulate DISTRO_FEATURES from my image recipe file?
>

No.  You should control distro features in your distro configuration or if
they're for local tweaking in your local.conf.  Would it be helpful if you
explained why you want to enable systemd in some images but not others?  In
this case the systemd feature isn't exclusive with sysvinit, you can enable
both and pick on a per-image basis what init system is used.

Ross

--001a114aa428ccd71d0534b08362
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 June 2016 at 13:10, piotr.lewicki <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:piotr.lewicki@elfin.de" target=3D"_blank">piotr.lewicki@elfin.de</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":22a" class=3D=
"a3s aXjCH m1552ac731f87a60f">Is it possible to manipulate DISTRO_FEATURES =
from my image recipe file?<br></div></blockquote></div><br>No.=C2=A0 You sh=
ould control distro features in your distro configuration or if they&#39;re=
 for local tweaking in your local.conf.=C2=A0 Would it be helpful if you ex=
plained why you want to enable systemd in some images but not others?=C2=A0=
 In this case the systemd feature isn&#39;t exclusive with sysvinit, you ca=
n enable both and pick on a per-image basis what init system is used.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--001a114aa428ccd71d0534b08362--
