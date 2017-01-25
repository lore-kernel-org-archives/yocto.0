Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFC00E00961; Wed, 25 Jan 2017 07:23:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23973E00953
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 07:23:29 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id q20so2187300ioi.3
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 07:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5rycaqrdRQTWKQBMerzSHLLO/ncfBb/6E7gvM1SeQ9c=;
	b=KNQU1f+23fByIzU4tLPYDH06UvgFjXPO9yYKszOAiAGWlOxkmuiRX0VnjogYOrGbvr
	b0kuP4ymjYJBdqXmxlGq9fhWcvs/7tfFsgUAco+ViojEmGH5Bvsbd5ghyUzapI8zXPV0
	onLp/TmMYZ5Cc0bvKeecnysx7tHoPS/uHfGyW+W8FeLuVlT75awNDyaCA4XpbldVtWOM
	ykUxPRFXacRDpfj9vz3soqmF2x2rcioyNdaZ7gCZkYz8okekgSiO1NkJmaB5mBS3UUPe
	d/HNU1+4a5GZkPIp6XcuV6e3G81NzhtYuC2Y24WRPwoBiRt8FUEFmoMKK7C9oLNlVNNK
	KvuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5rycaqrdRQTWKQBMerzSHLLO/ncfBb/6E7gvM1SeQ9c=;
	b=d5jV97Ase+93FxZ9liVz7puGu7URs6uGYK7+4mBWZeDTPPqwnguh/y9z9eREC9OZVg
	FXcrNd/zbRcuXO+78aaSfyYzH9OhNfLitXxpNf7C0eWvpzT28RLHMR64MtYTJBbMwtn6
	4nkxc6a/gQJ/ncDNS1QEm4kccma6LFCIaWYuQOciuzrAN8WQRnAsu/pRm6NsV4ees6wv
	Iu/PLmh2qD4zaZwewhGHKOgOXFYySAAu/tUQwogbyD9HGseSbkxIdsefH/1lhAnZTs92
	uX3GyFEZd622dRsC1lX2DGhEGQcZ0R71gpqGkKGOsBVpYGvM5RymN8zQtVWIdqFWiJaZ
	lxzA==
X-Gm-Message-State: AIkVDXKp+tjdH2w1ZZz+gmmQQ5bXJsdI+7jZ9W0sCcORpFBBsyzyyrQ4lub01x3P2Snf6GGMm5T1tuSUZ2BYFQ==
X-Received: by 10.107.147.6 with SMTP id v6mr37993152iod.235.1485357808861;
	Wed, 25 Jan 2017 07:23:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.195.69 with HTTP; Wed, 25 Jan 2017 07:22:48 -0800 (PST)
X-Originating-IP: [82.22.166.118]
In-Reply-To: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
References: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 25 Jan 2017 15:22:48 +0000
Message-ID: <CAK18fxF+06wH+te=nSOUu8hf7ap+wqJ4YTq3Vhk-q0FaA29CVw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/5] raspberrypi-cm.conf: Add dummy machine for CM1 (alias for RPi1)
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
X-List-Received-Date: Wed, 25 Jan 2017 15:23:30 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 20, 2017 at 7:16 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/raspberrypi-cm.conf | 6 ++++++
>  1 file changed, 6 insertions(+)
>  create mode 100644 conf/machine/raspberrypi-cm.conf
>
> diff --git a/conf/machine/raspberrypi-cm.conf b/conf/machine/raspberrypi-cm.conf
> new file mode 100644
> index 0000000..2da7d50
> --- /dev/null
> +++ b/conf/machine/raspberrypi-cm.conf
> @@ -0,0 +1,6 @@
> +#@TYPE: Machine
> +#@NAME: RaspberryPi Compute Module (CM1)
> +#@DESCRIPTION: Machine configuration for the RaspberryPi Compute Module (CM1)
> +
> +MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
> +include conf/machine/raspberrypi.conf
> --
> 2.7.4
>

Merged the entire patch set in master.

--
Andrei Gherzan

