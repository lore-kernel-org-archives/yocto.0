Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E746E015CB; Mon, 16 Jul 2018 02:27:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2281AE00D3D
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 02:27:24 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id i12-v6so73514553oik.2
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 02:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3NZVqwr2Jx3APkXPBUmJbR2m7lWCyx2WbE75A29EQhE=;
	b=pj9dlAxgwpXgFZ41nTjOOR4272z69ttXiVbP+qRPcTiXz6yUIR2mvmpw+pgKVmtSL3
	c9DZeHRrdzU/u9NxJRVG+nfLEmJRhaKp5qfBERvvCJied2a6jHALw933q+/NS0XNlLpC
	A2FPm5igx+2CKKN/udpWE++YiKbF9OWsTL9wvdu4cU/7K/XXwILrGSJ+jPg3df2UPArl
	oQJwIvCKXfZnwuHun69zHvlbcCLmkBthoa/9i+EK8SgpXwS+ROPbBxxvNuv7pO2LUhPS
	pT+PGVhrOXgG0tZ2xeHJSo1W7U81sXJUih+AZmID1ZXWiOQtTVDnR2/31FlTuHhXgajF
	8iGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3NZVqwr2Jx3APkXPBUmJbR2m7lWCyx2WbE75A29EQhE=;
	b=nJoW2IUG9eQL/eynX37pDt/XVOoi4wo8sYGMDo5Xl2+5z9QoAb5lfJIJAC2B0gB3JS
	z5TVVT90Aa0TYdm5nbAaHLP7ZztHv6PpZEcs0ROsyV+2JbQ+ZuGa5UgUqZzRRZmjx3XD
	OCNmGbh68W0BWKWga8aONHoODjTkO2UGSRTaGYzPMzI3kGhI2JeL6b7Jea6HB+dFEOmS
	l4gK0hBgN8BZH8JWGoSKvFIDlW92MTnLoFHb/1ltNgm2wmcviKQQHCRH3kQcl6BfRVd4
	I1Cof7kCnSqKS9EfXEwyHBnukVu2T7/hMMrD8qJq1Cl9oT7v2RawbNwGUqvwwuuS8THu
	QBfg==
X-Gm-Message-State: AOUpUlHYW8sD9j2sps8ggbs/OQpHYTXBcVu1DHA/FKjU6ro33td6D2KV
	zCGtN0Jpt4dhXDgdDwZTIkwQ9uhvjIR3CgyGyEV0Nw==
X-Google-Smtp-Source: AAOMgpc7Ewq6Cfnd037CwTILN6IXtOPAHkGHXx4j/pi4Ke4IqdN8vjBDlFWB3fG0teIIkcJbsiNN14KMsBtXNeJI1tM=
X-Received: by 2002:aca:4c8e:: with SMTP id
	z136-v6mr18489496oia.170.1531733244378; 
	Mon, 16 Jul 2018 02:27:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 16 Jul 2018 02:27:03
	-0700 (PDT)
In-Reply-To: <3d2df8a5ae76426ebc9562d88615fff3@BN3PR73MB0070.mgdir.irco.com>
References: <3d2df8a5ae76426ebc9562d88615fff3@BN3PR73MB0070.mgdir.irco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jul 2018 10:27:03 +0100
Message-ID: <CAJTo0LYak86JDDX_7-cgJYcbrXTzP=W-jjoz5cmCZZ6MpDkP1g@mail.gmail.com>
To: "S, Karthikeyan" <Karthikeyan.S@trane.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Regarding build Yocto offline
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
X-List-Received-Date: Mon, 16 Jul 2018 09:27:26 -0000
Content-Type: text/plain; charset="UTF-8"

What recipe is failing?  It's most likely to be a recipe which is
using a git tag instead of a git hash in the SRCREV.

Ross

On 13 July 2018 at 09:58, S, Karthikeyan <Karthikeyan.S@trane.com> wrote:
> Greetings,
>
>              Initially I was able to built with github access, but our
> requirement is to build offline(without Internet), I followed the steps
> given in
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_source_download_mirror_.3F
>
> I added following lines in conf/local.conf (Git enabled machine)
>
> SOURCE_MIRROR_URL ?= "file:///source_mirror/sources/"
>
> INHERIT += "own-mirrors"
>
>  BB_GENERATE_MIRROR_TARBALLS = "1"
>
> and copied download directory to network disabled system and added following
> in conf/local.conf(network disabled system).
>
> SOURCE_MIRROR_URL ?= "file:///source_mirror/sources/"
>
>  INHERIT += "own-mirrors"
>
>  BB_GENERATE_MIRROR_TARBALLS = "1"
>
>  BB_NO_NETWORK = "1"
>
> It was throwing error, saying that "Network is disabled through
> BB_NO_NETWORK=1" and build was failed. Please share me the exact procedure
> to build yocto offline.
>
>
>
>
>
> Thanks & Regards,
>
> Karthik S
>
>
>
>
> ________________________________
>
> The information contained in this message is privileged and intended only
> for the recipients named. If the reader is not a representative of the
> intended recipient, any review, dissemination or copying of this message or
> the information it contains is prohibited. If you have received this message
> in error, please immediately notify the sender, and delete the original
> message and attachments.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

