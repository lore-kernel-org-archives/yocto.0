Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C4EDE00E6F; Mon,  1 Aug 2016 06:55:52 -0700 (PDT)
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
	*      [209.85.220.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 886ABE00E67
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 06:55:50 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id x189so3840015qkd.0
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 06:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DF6+LJfqVY0DEH8wNBf655nq+BelSv1iK4TMoFplEfY=;
	b=w+TodkVyGTpRtmDz1ihPLjX2EalRseigCsqFi+V7bZWC5kh8xThEHgp/TJWKX/VmxL
	pkU5SGJs/pL56WQjwIsolReGOHQH2mXMHnn59xaec8c8+CYF8V8ZKkCIjDmkfovHA3R2
	rWVWW67vT5qGxm/RGuOHGreodAwMmISieS0XXEo6CccCOKg7XQX11eNnggUM0NYcFcS3
	Rf2ECNhTQI+baP6Hn26MvTDTbbmcs68dyjmBd8V/a1tgzoI7zjGHbXa6ORxLa2wGKczf
	TDEOKCQQjW5RP+rI7ZLyuARL2Bo47dGX7KyaVokeFag1Fer5GSP1hI+9m1weVK8//BYz
	jvog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DF6+LJfqVY0DEH8wNBf655nq+BelSv1iK4TMoFplEfY=;
	b=GdhDu0ZF+8+xj62n+EQa21zbKa1SaLsWnwDYeXgLdK7X/cnv6MZpcwVyqA7hijTgmA
	nlTKJHudAXCSIveQIYCHW6ZcS0aVY9/9UD3sNseKJ3DyUMXjt+LrajbbNFtU5Z0cWV/2
	MFynjT+wFxZhG8gVCkCai7DdDcWtGsHq2D8ERvFOtdkwBzhE/BIeHFYcaUDybVU3z5fx
	NNzPyZ8+NVunhKFC0mi+C4gEiJzwkB/M9sp2Uy0+U/Ua9bC3wjbC+bAaNk8UsbdsFSl1
	Z344KPPbIhKPM61Jckm08JhErAbE2KG/j1sba9IJ0xBDdxJnGh55ypNvhUWHOPGpQkqJ
	c0UA==
X-Gm-Message-State: AEkoouuONYbYqeDJjdpbm4WPJq5xEaILn2llIApLYa0OckszcLWo3t8NiMv52ELAv5sz6LPpK97QMZh6k2bR9g==
X-Received: by 10.55.74.17 with SMTP id x17mr1777869qka.26.1470059749645; Mon,
	01 Aug 2016 06:55:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.215.13 with HTTP; Mon, 1 Aug 2016 06:55:19 -0700 (PDT)
In-Reply-To: <7603e18c-345c-ddcf-cd95-14df64b60077@gravedo.de>
References: <7603e18c-345c-ddcf-cd95-14df64b60077@gravedo.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 1 Aug 2016 07:55:19 -0600
Message-ID: <CAMKF1sqhL-beKuV1bTb_srgEh_bj+mm3BkgwNY_JxTEe=d04nw@mail.gmail.com>
To: Simon Fels <morphis@gravedo.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Snaps on Yocto/OpenEmbedded
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
X-List-Received-Date: Mon, 01 Aug 2016 13:55:52 -0000
Content-Type: text/plain; charset=UTF-8

Simon

On Mon, Aug 1, 2016 at 5:32 AM, Simon Fels <morphis@gravedo.de> wrote:
> Hey everyone,
>
> I've worked on a new layer recently which brings snaps to any
> Yocto/OpenEmbedded based system.
>
> If you have never heard about snaps yet you will find most details at
> http://snapcraft.io/ but generally snaps are a new packaging format made
> with security and fast updates in mind and allows applications to be
> packaged once but run everywhere no matter of the distribution used or a
> particular device type.
>
> The layer is currently named meta-snappy and is available at
> https://github.com/morphis/meta-snappy
>
> It comes with some basic instructions how to get quickly started. A
> basic tour through the snap system and how to use it is available at
> http://snapcraft.io/
>
> If you have any questions, bugs or contributions feel free to get in
> contact with me.

Thank you for announcing your layer, I would also suggest that you
publish the layer
to layerindex as well. at layers.openembedded.org

since thats where most of folks go to find layers.

>
> regards,
> Simon
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

