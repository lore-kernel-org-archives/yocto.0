Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36BA0E00BE8; Mon, 19 May 2014 02:33:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f46.google.com (unknown [209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09414E00A13
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 02:33:11 -0700 (PDT)
Received: by mail-qg0-f46.google.com with SMTP id q108so8262450qgd.33
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 02:33:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=f4+dSPE4d4s9zpZoLomUUt+1R11u0Ks3J605uX3FvLE=;
	b=jJhASQ8fx4FdTrDsrY8Z7oeoVFCBTowfDcTnErEzqy0xZzJU5GW4oWp2ozU1TXm1eR
	QbeuD3ybRMP7GIyklrvZ3stRYAOWbidQXPyZSRdTWNm+7ghEpgBPGhKEfEyMWMFjAjZv
	37bjPW/gg80GD8WP+z4lbvDjrtyvcFGrfIel0q/tVpmsp8IgP0M6iPR0rZoKKIu/n58D
	HH4Xxnwfd8rP8JoWquvpanBWQypuNTsvz1HTgB6gKbO4q0pwlpBkLOwXGOkza55/CuQG
	ZhG53B1ISIpaM6kTMfvNVx3Vmy/Ft7PtlnN4FQgDCZyeOOpzT9XrvGRDs/1crVWbAcZd
	9hcQ==
X-Gm-Message-State: ALoCoQl3CBMcTrRkDuW4lHq2jC5sCViaTZwNkEr9CCOsdKVJLFjYL0Aj2Vp7jWsiTkQZct4xpHVA
X-Received: by 10.140.28.3 with SMTP id 3mr45769662qgy.71.1400491990742; Mon,
	19 May 2014 02:33:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Mon, 19 May 2014 02:32:50 -0700 (PDT)
In-Reply-To: <llcim8$3rn$1@ger.gmane.org>
References: <llcim8$3rn$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 19 May 2014 10:32:50 +0100
Message-ID: <CAJTo0Laf+EEiBAcmKwtU08LLPYynDavNbfuC3TaGKLe2oBtR+w@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange certificate problem with wget
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
X-List-Received-Date: Mon, 19 May 2014 09:33:15 -0000
Content-Type: text/plain; charset=UTF-8

On 19 May 2014 10:25, Neuer User <auslands-kv@gmx.de> wrote:
> I need to use wget with https support in my image. So I added "wget" to
> my packages.
>
> The problem is that it doesn't seem to find the installed certificates:

By "installed certificates" you mean that you installed
ca-certificates into the image, right?

Ross

