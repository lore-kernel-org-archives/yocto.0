Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10F04E00A08; Fri, 10 Mar 2017 17:40:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2F17E009B9
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 17:40:52 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id v190so12506595pfb.0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 17:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=GkvHWfboYCGZYjx1ANw2xklPjkborqJwW+TBvr61X8w=;
	b=khgG9zxFZluVdJHjHE2Jqa+CCpDhTE0u8Ck8xGUKk8ilBwbGPjdQYSL2M87nUTztre
	LNN+nUpPyX2BXmLUkM1KYXnTVZAl/9AZrKfFqxww1U9xPai+/jjgY1dPzrl/VAJD/2ol
	cLO7bcn2oNQ47W/jM17nMxTkkDSZVB3yGXpwBZ+l0ybGzHap1lZ2oicNRO+6YO7i4Xoa
	oqQ38yS/Ui4t1pCoW3VQXwKAUMRSDW697VZjR2t3Hvflz5puIs85PU9nodkSrRjHljbn
	snONKLbN+GQRkBmN3BQTTkHLlX/PJ8IIrCsMMuim4F5bgqKZGw6q2SLebszYvzqJWI1m
	WqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=GkvHWfboYCGZYjx1ANw2xklPjkborqJwW+TBvr61X8w=;
	b=IpGFEFDsP4ypAs/2lTi6qQwgGL/4md3DLwJN/unsUQFBypNqfgIbNf2nWsNLgJkTEB
	cv0OtJIS2B2vqmXpWTJMqsHQym3NeyjZ3WL+YWb1YQVZaL9+THKFPy55bJhso+xruFp3
	+iVYbaKpPvP+qpKANOUybW/vXVstl59tq8kefGk0ype5xhONEqM1Gj30O0sSeCJ2nGcv
	cXrdbXxS0rq3ATmVWgFzXY57ar6YrldvPOf+jSvjRFcCas4IX7A2xP5BxjrC6HKXnDQB
	ZaD30NXlzzMq/tYR6CaTxvRcUyfSXO+dLKfu5PNGrRWBOjFSc9MjTaqGRFkJzipeRu0O
	I8XA==
X-Gm-Message-State: AMke39nk8HqPkqUmdR7gM/ZMf+1Th+doyFEmZtNHOku0KO5kcnJJR9Xz8I+YHWrOHLexCg==
X-Received: by 10.98.33.129 with SMTP id o1mr24356962pfj.5.1489196451899;
	Fri, 10 Mar 2017 17:40:51 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:d16a:f79a:feb6:e660])
	by smtp.gmail.com with ESMTPSA id
	a8sm20849025pfa.30.2017.03.10.17.40.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 17:40:51 -0800 (PST)
To: yocto@yoctoproject.org
References: <cover.1488191415.git.maciej.borzecki@rndity.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <5e6848f2-bb91-fb0b-4345-2ae71d68979e@gmail.com>
Date: Fri, 10 Mar 2017 17:40:50 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <cover.1488191415.git.maciej.borzecki@rndity.com>
Subject: Re: [meta-raspberrypi] [PATCH 0/2] wic: fixes for wic support
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
X-List-Received-Date: Sat, 11 Mar 2017 01:40:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 2/27/17 3:46 AM, Maciej Borzecki wrote:
> A small series with 2 patches that enable using wic (once again).
> 
> The first patch moves sdimage-wks to ${LAYERDIR}/wic. This is already
> implemented in meta-yocto-bsp. The goal is to make wks files easier to
> find. Since Yocto is in general dumping custom image building methods in
> favor of wic, one would expect that wic is also usable with
> meta-raspberrypi.
> 
> The second patch adds support for KERNEL_DEVICETREE to IMAGE_BOOT_FILES.
> Currently, DTs will be copied over to boot partition when building
> rpi-sdimg. However, when building a wic image, none of this happens and
> once the process comlpetes, one will get an unbootable image. The patch
> adds proper entries to IMAGE_BOOT_FILES also taking care of proper file
> name transformation.
> 
> With these 2 patches, a wic image can be built by adding the following
> settings to conf/local.conf:
> 
>    IMAGE_FSTYPES_append = " wic"
>    # or with your favourite compression, eg. wic.xz
>    WKS_FILES = "sdimage-raspberrypi.wks"
> 

I have staged it in kraj/master and will test out image generation using
wic.

> 
> Maciej Borzecki (2):
>   wic: move sdimage-raspberrypi to toplevel wic location
>   rpi-base: wic: generate entries for device tree files
> 
>  conf/machine/include/rpi-base.inc                  | 32 +++++++++++++++++++++-
>  .../canned-wks => wic}/sdimage-raspberrypi.wks     |  0
>  2 files changed, 31 insertions(+), 1 deletion(-)
>  rename {scripts/lib/image/canned-wks => wic}/sdimage-raspberrypi.wks (100%)
> 

