Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79A7DE0094C; Tue, 18 Apr 2017 04:10:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.193 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D4BE00839
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 04:10:48 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id c45so22311423qtb.0
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 04:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=scDNiR0L84GP1ytWe8eo1Y9VlHemD72/ZiVM0f5cdlw=;
	b=CCzngRq/WcDTXQeYO92A264VAhARtFDg4fEeznEJRKlInJogcJZ6XJ5HF6lq7A4Hpd
	2xPN3GO9mrDqqjbSgWARZLSgOwxYIwHWjD9cpeOhNvPjHc/CmPG49hc8dURK+NF9lF/z
	jo1ts6cNSg4L+oexktMSlDTjxvtNxWE+KyyQdUauC7uMWfOEr5heFebebjGcU2QJl91u
	Av06zew92hbMk9/bzPP+++uNwq7RqV3IxmBZtElzxdivZQNVKFfQgcqWzNzJAF6naWWP
	mll0uK1n2+Llx66Y9lP2N2e5Gt+ZWp0KsSiTipPp1TXVSCaG07FI5APQ03mKlpTv1r8b
	CHoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=scDNiR0L84GP1ytWe8eo1Y9VlHemD72/ZiVM0f5cdlw=;
	b=NFq5ozAgVrrTT0ZtQ5HS+XnYO06PYVBbSUaX8XLmq0kqMkG+Y7sOO0vXV86RyGWVgu
	9dpnoMdUxkXGM9OUMFq2mapIR8zP2AeefemHP1f8rUVFQuQ5+EpOuCLb0x2iCsAfxOqt
	ZURZDsBMNmFQ7lGpn0AxDpGSq70UyUTsUP2jHkJSmDviyY9HbgHpaC+TKj/+9HqQVBOm
	cG1RoikT6MA4koux/71hTguqJgunJrwI681dKwES0AyH0K3kxib+ykYz+qP6W05tBLkI
	Yl6mX99V7fdbMbBXnD90DMU2fznOt/0bRkWaNrfJMM24VDc7mgM/8ioQI2u6vp8sw8xr
	vf0A==
X-Gm-Message-State: AN3rC/532npfnw+r6G/+Fh+IyQpD+7xXcNMXfVlv/2tiSBDdyiIYtosr
	h8ROlVqJ8eE4fc/qiMeA9Eo00+fFTw==
X-Received: by 10.200.43.17 with SMTP id 17mr12211216qtu.199.1492513848360;
	Tue, 18 Apr 2017 04:10:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.116 with HTTP; Tue, 18 Apr 2017 04:10:47 -0700 (PDT)
X-Originating-IP: [85.255.233.152]
In-Reply-To: <20170414201313.3138-4-andrei@gherzan.ro>
References: <20170414201313.3138-1-andrei@gherzan.ro>
	<20170414201313.3138-4-andrei@gherzan.ro>
From: Paul Barker <pbarker@toganlabs.com>
Date: Tue, 18 Apr 2017 12:10:47 +0100
Message-ID: <CAPyrkgx4stTPY-kEV5rMtJYyXwPkag47bP8N8KaRLCnAf3wWeA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/7] linux-raspberrypi_4.9: Bump to 4.9.21
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
X-List-Received-Date: Tue, 18 Apr 2017 11:10:51 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 14, 2017 at 9:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> index 3aba67b..c0e8b83 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.9.13"
> +LINUX_VERSION ?= "4.9.21"
>
> -SRCREV = "28ea32b9afb5d813986c4ab940c26fe298d80ed2"
> +SRCREV = "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
>  "
>  require linux-raspberrypi.inc
> --
> 2.12.1
>

I'm going to backport this to morty and test this week. Any other
patches worth testing for morty at the same time?

Cheers,
Paul

