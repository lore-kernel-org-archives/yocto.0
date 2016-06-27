Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF44CE00A75; Mon, 27 Jun 2016 09:36:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25F3DE009DC
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 09:36:37 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id z36so3813806qtb.3
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 09:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=5thLWRQVIKUaa0eAMWz6HrecuiYjojqMhO64I41nEis=;
	b=UNjg9KeIyo7/31cB5diG850BuoE/xT+DdFktzbSSdcrWu+49qUwfzWn5qYfwQMUOuO
	0Xy3NP2xlKkeDIzFTwANv93Jtl2STXcesV0MHSwKDsKAHNZK120y0ueIh12qhQtDCV2W
	gtWCofHg0QLZ7NO1Rx+U1szSjPqx/mtE7alZrdaazdcKFQSMhRAToxAw3jmwA+T9DQeJ
	2T/XvnZUXw/GRsVdbwIg9R2IWOVsZKhAJf3bkEjvrSEUlSLIE4DZ/DMhkoNuCtloen9Y
	Hs2CPbh22brm1PZhaBjF0FWvsKW3+oHYnvxg4uQym+K8U4LPbtW/7/J6SVos+VZazfIR
	ixZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=5thLWRQVIKUaa0eAMWz6HrecuiYjojqMhO64I41nEis=;
	b=Y3NW+d6CJzQ2hwbxXIBa6D+J0+BoJ4DA1OE/vevhTXJWyfNVRLChgAaHJ6oy4/xHfN
	GpyJuGMFxeBvBNSuu4v+kuElItwmourPsaSjaN/HOkrNEU1QPk0mfohkXBnh/77yWrB3
	CZyeC34Xw3ZuvfZT5lf6IrTkF/DfDYde6Xs406pIvivEgz9gOiPMmGsEBUJW00JEJAXl
	0+gPniHzJ1lRf8R5HSoeepmuZhoCXWSx389FyElj743/dD7kr6YL1Od6Pwd5bCZbAET3
	cLDP76v3DhOnwRp+Gr8/MHqgZ5S0SgsVU8Z41DRuetEA4T5zqfhk6aJ40Zv0sbl56IcY
	3Csw==
X-Gm-Message-State: ALyK8tLoEE0IbdnCErjvoCyiANw2C+etqrgFP0EMWUA9Nwa5PcZ0wwuSMLqyBBjzJCHKlPfSoyN3AGAlTqb7ZQ==
X-Received: by 10.200.42.43 with SMTP id k40mr24660156qtk.98.1467045397191;
	Mon, 27 Jun 2016 09:36:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Mon, 27 Jun 2016 09:36:07 -0700 (PDT)
In-Reply-To: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 27 Jun 2016 09:36:07 -0700
Message-ID: <CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to cross compile kernel with Yocto toolchain
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
X-List-Received-Date: Mon, 27 Jun 2016 16:36:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 27, 2016 at 1:16 AM, Zhenhua Luo <zhenhua.luo@nxp.com> wrote:
> Hello all,
>
>
>
> I generate the Yocto toolchain by =E2=80=9Cbitbake meta-toolchain=E2=80=
=9D, and use this
> toolchain to cross-compile kernel, I met the following error. Is this a b=
ug
> or I missed something? My host Linux is Fedora 22.

its better to start using bitbake -cpopulate_sdk <image name> to generate S=
DKs.


>
>
>
> $ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-linux
>
> $ cd linux/
>
> $ make corenet32_smp_defconfig
>
>   HOSTCC  scripts/kconfig/conf.o
>
> ccache: error: Could not find compiler "gcc" in PATH

did you see if gcc is in your path after sourcing SDK env script ?


>
> scripts/Makefile.host:108: recipe for target 'scripts/kconfig/conf.o' fai=
led
>
> make[1]: *** [scripts/kconfig/conf.o] Error 1
>
> Makefile:541: recipe for target 'corenet32_smp_defconfig' failed
>
> make: *** [corenet32_smp_defconfig] Error 2
>
>
>
>
>
> Best Regards,
>
>
>
> Zhenhua
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

