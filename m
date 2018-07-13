Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61728E010FE; Fri, 13 Jul 2018 00:53:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE429E00E47
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 00:53:24 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id r16-v6so60697167oie.3
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 00:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=b9vIFTVdRSaZAlHRbYQAbHLTYOwFMPqHFAFjHCgWfww=;
	b=wzjOre2s3LavYdc+n3h4NMPg8OMWdsVfRphuqIw4tiYubsWjHl4nSmgWfFvm3twTVx
	4XPUToPrJniyZUD2HA3yqdMmNETrZ5Nu11CYHnjxY6wwKN20/yMgkRXJ5IjoijxDmQgs
	RtFn4YqsvTWKCslZ36ApmIZQ9uSt5MLpCLoPmu6PcaA70Iqa4jUWTPQPvZIH6T+F131L
	MIip2JLKMecuJ/0udYeaNLGCerCCN9SsouY4tp57GKr0+O/vzHn5tDlhCBA2c9k/47Lj
	BQtkgzGRX7K6nem8/oAipUYc/LWMBlC9IZOi4KRm6jH/3Lw9YwGDfnc8WhXLkWEhs4kZ
	TTIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=b9vIFTVdRSaZAlHRbYQAbHLTYOwFMPqHFAFjHCgWfww=;
	b=J+LCDv8QCKNYS5yVnkbg+pAoIc9QwFsttYg+vwoTNEJoL60foSKmYG8iy/i5s60sMR
	hBpDgjduubM8JtqjFf0UAgvN0XsIS506Ah/1BHJ3y4k3SLX2RLam0eMpg1NH9v0Jcn1W
	KjNtcB6bRsbW//bE3vM+hUK1DQmb74xNxvYroDDNtDO+EZQ3KOD0XdJLUvabWrJ1mBh0
	SGvxvpPxG+mpUTXre/MO9VZikSBCqkDHUTmTAMYNfWhu6gollaqVgpg5H6TIfNWV4C9/
	1TnfrdZfLDAI2rjZkm6xqoDcKVcgfqAnV2V3sYeLXVWeOJxV88RioPSa3/zHxauFPKMd
	mrJQ==
X-Gm-Message-State: AOUpUlFnw0gpRuxKb+/FgjqdmKczDpObdsMOuQD1Fm8GnLwpvq4weiuO
	4VeyuMxcOOIp43CIT0qIqSet29XlPpf+PtiZoIrgKA==
X-Google-Smtp-Source: AAOMgpfxfoSeYchQNMYEitmbhDj7fR2T+D8WSA1i0gJJW1i9kZ+pO3Uh+GGpBkI3Cu9ElfVMuhMM9DP/NKUr0OJGdfw=
X-Received: by 2002:aca:5f56:: with SMTP id
	t83-v6mr6197623oib.115.1531468404008; 
	Fri, 13 Jul 2018 00:53:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Fri, 13 Jul 2018 00:53:03
	-0700 (PDT)
In-Reply-To: <CAFzUWG=hRfY9J0z1j-cy20pegF2iSKXbQb+vRrGUhtSGLYMPdw@mail.gmail.com>
References: <CAFzUWG=7Aam-5PAE_1cpw24Zd+PCj+0KyOziyWrbWYeFLk0EdQ@mail.gmail.com>
	<CAJTo0Lauvt-utgGQ8B++ytRt_UcRaUrRitv39WZ+mHCT14q6Mw@mail.gmail.com>
	<CAFzUWG=hRfY9J0z1j-cy20pegF2iSKXbQb+vRrGUhtSGLYMPdw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 Jul 2018 08:53:03 +0100
Message-ID: <CAJTo0Lb=AST-T62XPhq-1iY9MDc912p39CB-kDy6uVQS+S25Fw@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Writing a recipe that allows for extra depends, depending on the extra_oemake configurations
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
X-List-Received-Date: Fri, 13 Jul 2018 07:53:25 -0000
Content-Type: text/plain; charset="UTF-8"

On 12 July 2018 at 23:12, Giordon Stark <kratsg@gmail.com> wrote:
> Hi Ross,
>
> Thanks. I saw that but the documentation doesn't explicitly mentioned
> EXTRA_OEMAKE. Is that the same as EXTRA_OECONF?

EXTRA_OEMAKE is what is passed to 'make' calls.  Your recipe is using
cmake, so you're extending EXTRA_OECMAKE, which is passed to cmake
calls.

If you read the documentation you'll see that PACKAGECONFIG is parsed
and the appropriate enabled/disabled options are added to
PACKAGECONFIG_CONFARGS, which cmake.bbclass adds to EXTRA_OECMAKE for
you.

Ross

