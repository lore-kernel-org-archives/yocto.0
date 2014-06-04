Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D07FE00BDF; Wed,  4 Jun 2014 01:28:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D97F2E00B20
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 01:28:01 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id j107so14838404qga.6
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 01:28:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=eqAJRxQ/61VuoTr2W18KTpyAdUU/8NHdarXYyiePgy4=;
	b=AD4BKYSTXhMpMdPFnCxyhYRMYG3gHariy2jMT/HSomqv9f6CfpL294bcTp2n/73oxr
	tRe7H/sHc2Qe9tS2/1dg1sIhHLTNjP5XLHq7Xra2iB0tGn+OwxtnIaOSBwtufmBvMTGT
	TSk3z04N5jWYz+SPvbDsWw4JE2s6RVomTdKIFMGh1tLkw2TRr/bshPBZCP1ScIKdVghn
	FdQl81xqCWw+6PB5kXb/IqMyupSfia+pvJBgvXK2xc8xAAic3BOHKflUpaIwYc1zwe5p
	x2GCvu5NkdnqbteWoO6z+4UQ/06DXP4TDbdHndsA6lu1jZzV8AWDcITdlZ38hxGJApu/
	y+5Q==
X-Gm-Message-State: ALoCoQkC1S9mpmlEeUcKvsfNIkHeLOnCTKiwpComoy47JCDf2/KFqcecfvBNFJGphRc3NlpvRIw+
X-Received: by 10.224.121.72 with SMTP id g8mr3412251qar.79.1401870481259;
	Wed, 04 Jun 2014 01:28:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 4 Jun 2014 01:27:41 -0700 (PDT)
In-Reply-To: <538ECF10.1060300@wp.pl>
References: <538ECF10.1060300@wp.pl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Jun 2014 09:27:41 +0100
Message-ID: <CAJTo0LYTvFdLiq23rS=tvbwodTosgb12se-0d5KQmaj3JrSYEg@mail.gmail.com>
To: Marek Andrus <marek.andrus@wp.pl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: creating sdk for my own packages - how?
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
X-List-Received-Date: Wed, 04 Jun 2014 08:28:09 -0000
Content-Type: text/plain; charset=UTF-8

On 4 June 2014 08:47, Marek Andrus <marek.andrus@wp.pl> wrote:
> I believe I'll be able to create the sdk with command like bitbake
> <my_application> -c populate_sdk. I added "inherit populate_sdk_base" to
> <my_application>.bb. Is that a correct way?

You use -c populate_sdk on an *image* recipe so that your SDK contains
everything that is in the corresponding image.  You don't need to do
anything to the image recipe itself.

Ross

