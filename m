Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9308E00566; Tue, 26 Aug 2014 10:10:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78DC2E004F5;
	Tue, 26 Aug 2014 10:10:07 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id n15so1758120lbi.27
	for <multiple recipients>; Tue, 26 Aug 2014 10:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=gh9kIe8/t4NFMtDCjNPgdovAalzn8Yngy8oGdjujGkw=;
	b=ywNK79ycNWzDLZxmAfRtGgipKcGmJKPrFvgK9+yaIR0+eAimghny1cjueOvh+T+NZh
	wlxDtqB5GKq876tfX6WhpC34CoyFm1brv9AyEUyVHNBRkO3i0yda56lNUts5Uk6o0RhP
	HACWLb0DiHqN79RS8Uj4ieMbAgIaobYrvX9AkCSrJlwIFc23PHZaC98v1Luli2Zkpm0c
	sh/NIbgCwy6aF7US4yvka2l2PnJuyGdLJ+KrXJlGNIq6+Hs3t4wpBij5ds3xBpzaGkDQ
	sFB88PqJvmSKAH5im2kvGsfImlFVc8DrHKXye8MCUwWG4Ln4Bi3tGaD+mNfYOFRMltIM
	mOxw==
X-Received: by 10.112.209.36 with SMTP id mj4mr27848509lbc.26.1409073005812;
	Tue, 26 Aug 2014 10:10:05 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.43.42 with HTTP; Tue, 26 Aug 2014 10:09:45 -0700 (PDT)
In-Reply-To: <20140826164742.GD18989@haswell>
References: <CAP3RZoguYp0g+oWc7Fx4qghYv4L3=Zp_NVCY5G1f149-AxWmJQ@mail.gmail.com>
	<20140826164742.GD18989@haswell>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 26 Aug 2014 10:09:45 -0700
X-Google-Sender-Auth: O3Swy0IaMosULAqvoHWmcPwSH4c
Message-ID: <CABcZAN=V_6+_ARKC6vHAUW2ajSD1+b-rcKYZ6Y0M3BUeeTrpJA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: jags gediya <jags.gediya@gmail.com>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] Remove Bluez4 and add Bluez5 in core-image-base
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
X-List-Received-Date: Tue, 26 Aug 2014 17:10:12 -0000
Content-Type: multipart/alternative; boundary=001a11c25ebaf9634105018b5fa0

--001a11c25ebaf9634105018b5fa0
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 26, 2014 at 9:47 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On 14-08-26 20:18:36, jags gediya wrote:
> > I am using yocto project for imx6sl evolution kit based custom board.
> > I want to use core-image-base as basic image and put other packages on
> that.
> > By default , core-image-base have Bluez4, but i want to use Bluez5.
> > How can i remove default Bluez4 from core-image-base?
>
> PREFERRED_PROVIDER_bluez4 ?= "bluez5"
> and have 'bluetooth' in DISTRO_FEATURES


Afaik bluez5 is not a provider of bluez4, so oe-core doesn't provide a way
to swap between the two at this time.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c25ebaf9634105018b5fa0
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div class="gmail_extra"><br><div class="gmail_quote">On Tue, Aug 26, 2014 at 9:47 AM, Khem Raj <span dir="ltr">&lt;<a href="mailto:raj.khem@gmail.com" target="_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="">On 14-08-26 20:18:36, jags gediya wrote:<br>
&gt; I am using yocto project for imx6sl evolution kit based custom board.<br>
&gt; I want to use core-image-base as basic image and put other packages on that.<br>
&gt; By default , core-image-base have Bluez4, but i want to use Bluez5.<br>
&gt; How can i remove default Bluez4 from core-image-base?<br>
<br>
</div>PREFERRED_PROVIDER_bluez4 ?= &quot;bluez5&quot;<br>
and have &#39;bluetooth&#39; in DISTRO_FEATURES</blockquote></div><br></div><div class="gmail_extra">Afaik bluez5 is not a provider of bluez4, so oe-core doesn&#39;t provide a way to swap between the two at this time.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--001a11c25ebaf9634105018b5fa0--
