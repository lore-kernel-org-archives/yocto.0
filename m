Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC0E1E00830; Fri, 24 Oct 2014 04:15:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yh0-f54.google.com (mail-yh0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1119E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:15:17 -0700 (PDT)
Received: by mail-yh0-f54.google.com with SMTP id 29so403600yhl.41
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:15:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=s5bw1FgKDsJ7+ZQOY5EHl60sWfq32KPQAItg446fcZ8=;
	b=OPxlPe//7/ZWXAAdlM1Fez5Kn6F1tz0jMT2oCkiOUmhuBHRNc/20VLlwYcZa3NTZma
	TcLbq+iLpAtNkpLI6yLIOhc/aXZV0f5m34h4vKtpY3oo83j7RvRcLVHCw+4ESz48kSRf
	ixbcfbq60Uzp2bYS3spsVXRoSLeSjXqix0YfTerRrBLRASaDwEwHvydtb5PHZoH81OuX
	a87uex2OJeLtkfryHnSp98Mf7GjWG3/iHN8D2W9vBEIpMSSk36RvDQWsFIBUQAko1LO3
	ypkWKxiu3b0LLgmmHlgsw1x/hCjjaVQp8mT6lRDWgYPzOMjJofQK6Cc+gKtipHWUE45A
	PRNA==
X-Gm-Message-State: ALoCoQn3B8I7pk5Uif/W29UAodwNit2gmKlmDaGHfF8NtGLWWARJwBgzkzhL/KtFJce6PQ8fajx1
X-Received: by 10.170.37.10 with SMTP id 10mr5582271ykf.99.1414149314754; Fri,
	24 Oct 2014 04:15:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.93.65 with HTTP; Fri, 24 Oct 2014 04:14:54 -0700 (PDT)
In-Reply-To: <CAJTo0LYXgprW_13tW-tUrObA4B0sLcTSSBFTiKiFWUpxrwzNoA@mail.gmail.com>
References: <5449BD8D.3070907@gmail.com> <1414139646.30118.4.camel@ted>
	<544A24BB.5020604@gmail.com>
	<802B8E31E3519842A6CEE1B497E861B164F20D@IRSMSX108.ger.corp.intel.com>
	<CAJTo0LYXgprW_13tW-tUrObA4B0sLcTSSBFTiKiFWUpxrwzNoA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Oct 2014 12:14:54 +0100
Message-ID: <CAJTo0La=rM=_=sjWf4hGq=e-eCPtVCiwGRtikatOaY795aCOXA@mail.gmail.com>
To: "Mihail, StanciuX" <stanciux.mihail@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	nick <xerofoify@gmail.com>
Subject: Re: Failing Build
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
X-List-Received-Date: Fri, 24 Oct 2014 11:15:27 -0000
Content-Type: multipart/alternative; boundary=001a11378d5a90c9630506294b0f

--001a11378d5a90c9630506294b0f
Content-Type: text/plain; charset=UTF-8

On 24 October 2014 12:12, Burton, Ross <ross.burton@intel.com> wrote:

> On 24 October 2014 12:00, Mihail, StanciuX <stanciux.mihail@intel.com>
> wrote:
>
>> Looks to me that the core-image-rt-sdk recipe includes both the rt-kernel
>> and the normal kernel, and maybe it shouldn't?
>
>
> FWIW, I appear to be able to replicate this with just core-image-rt.
>

This is a case of RTFM.

"""
In order to build the image with the linux-yocto-rt kernel, be sure to
include the following line in your
local.conf, bblayers.conf, or your $MACHINE.conf.

PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
"""

Ross

--001a11378d5a90c9630506294b0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
4 October 2014 12:12, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:=
ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-=
style:solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><=
span class=3D""><div class=3D"gmail_quote">On 24 October 2014 12:00, Mihail=
, StanciuX <span dir=3D"ltr">&lt;<a href=3D"mailto:stanciux.mihail@intel.co=
m" target=3D"_blank">stanciux.mihail@intel.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex">Looks to me that the core-image-rt-sdk recipe includes both t=
he rt-kernel and the normal kernel, and maybe it shouldn&#39;t?</blockquote=
></div><br></span>FWIW, I appear to be able to replicate this with just cor=
e-image-rt.</div></div></blockquote><div><br></div><div>This is a case of R=
TFM.</div><div><br></div><div>&quot;&quot;&quot;</div><div>In order to buil=
d the image with the linux-yocto-rt kernel, be sure to include the followin=
g line in your</div><div>local.conf, bblayers.conf, or your $MACHINE.conf.<=
/div><div><br></div><div>PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-=
yocto-rt&quot;=C2=A0</div><div>&quot;&quot;&quot;</div><div><br></div><div>=
Ross</div></div></div></div>

--001a11378d5a90c9630506294b0f--
