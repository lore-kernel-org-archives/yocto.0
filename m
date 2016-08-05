Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C786E00E21; Thu,  4 Aug 2016 19:20:57 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D771CE00E0F
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 19:20:56 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id g202so19308983pfb.1
	for <yocto@yoctoproject.org>; Thu, 04 Aug 2016 19:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=+R+nmJzgqVcHo2FKWc4hs0UD3ur+KFaz1LDiOkAlDxk=;
	b=oH0j7gaP72vG5qVbMowTrogb6Bxdt5tOd3+CrHgFzJqZt+r2uzp8cbxmOJZlynyPii
	uT2ay8aaydmp95RETPH3v7Ui/JXa4CH3HsrxA83MJKL8yItkCo5Iw8W7K5rsCV/F32dG
	JumhEjcGIURs5RuwYW2z6tgypNO+6h55wyNYUbKu9uXwczk5RT5IOM8dfIuK+s0w/+7c
	PDenpRmJCKB3D1njZ2vs1vtYhhyWlU/iRp84DSOz4rknGK8B7KTRTdigzwX2R3S1n/Gc
	Oi/yyXQaFd4etGRft05UiwtTmoTukQqvnLNVA4U6Bb6oFeO1kL24Phwrzp8kzECz2RO0
	AOkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=+R+nmJzgqVcHo2FKWc4hs0UD3ur+KFaz1LDiOkAlDxk=;
	b=VGUCDzE4rUYNxqvklP/P1lGxq2z9IJPFla5gIixIynP7GSy7U5nFsJLNs7ACxdhU0o
	iwu7fBP4afWIDsg7RmCHxz3hbRyEe57Y75dcK8qUAP5GPZXUK01PIgZMEquMY6mrpga9
	r1ER1f8UGsu+2RZ9REKSvZgIX5o4WwIjSnewne2ulZRShiEtcMtDbgPadrcL4lSD13YV
	890iOm2q1803RhQWtm0ZgK868Za+HmOA/NZZAUmVDU/vNIy9UIok1ucoF0AZSbiRO9V/
	S0dlFDxva4YP4wXvvreAdyt5XE6ZWZ/HqK9gh+VcpZ6J/oQ+EJ3QQNG9G9op/tAoFcZe
	r4aQ==
X-Gm-Message-State: AEkooutH7NGgzkbnGf6YpR5bY/b9CT6edta9F7EVr+dTDehtS7nh6qXDvgbSygY2ktmaNg==
X-Received: by 10.98.77.70 with SMTP id a67mr129936338pfb.151.1470363656335;
	Thu, 04 Aug 2016 19:20:56 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:4ce8:4a2:83d6:3a55])
	by smtp.gmail.com with ESMTPSA id
	d72sm23276526pfj.15.2016.08.04.19.20.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Aug 2016 19:20:55 -0700 (PDT)
To: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DB6PR0601MB26639479A0DD3507DB733BF1CF070@DB6PR0601MB2663.eurprd06.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <c56c57d7-833e-d1d2-7587-3bf073f59465@gmail.com>
Date: Thu, 4 Aug 2016 19:21:13 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <DB6PR0601MB26639479A0DD3507DB733BF1CF070@DB6PR0601MB2663.eurprd06.prod.outlook.com>
Subject: Re: Layer priorities & package selection
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
X-List-Received-Date: Fri, 05 Aug 2016 02:20:57 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 8/4/16 12:28 AM, Gujulan Elango, Hari Prasath (H.) wrote:
> Hello all,
> 
> 
> We are having two yocto layers in our project. One is SoC specific layer
> and the other is the meta-ivi. Now we have two packages provided by both
> these layers. wayland_1.9.0 & weston_1.9.0. We want both these packages
> from the SoC specific layer and not the ones that are coming from
> meta-ivi. The reason being that the SoC vendor has done some
> modifications for hw acceleration and stuff like that. Since meta-ivi is
> having higher priority( Priority: 7) than the SoC specific
> layer(Priority : 6) , naturally these packages are provided by meta-ivi
> and not the Soc layer which we actually want.
> 
> 
> How to modify the layer priority without touching the layer specific
> conf file ? Can we have a append to the layer conf file ?

bbappends only work for recipe metadata not for config metadate space,
so no it wont be possible. You might BBMASK off the meta-ivi recipes.
ideally, its better if SOC layers append to such recipes from common
layers. So you might want to see if that is doable with your SOC layer
then you should propose a patch for your SOC layer to do so.

> 
> 
> 
> _meta-ivi:_
> 
> [mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-ivi$]hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-ivi$
> find . -name "wayland*"
> ./meta-ivi/recipes-graphics/wayland
> ./meta-ivi/recipes-graphics/wayland/wayland_1.9.0.bb
> 
> 
> [mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-ivi$]hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-ivi$
> find . -name "weston*"
> ./meta-ivi/recipes-graphics/wayland/weston
> ./meta-ivi/recipes-graphics/wayland/weston/weston.png
> ./meta-ivi/recipes-graphics/wayland/weston/weston.desktop
> ./meta-ivi/recipes-graphics/wayland/weston_1.9.0.bb
> ./meta-ivi/recipes-graphics/wayland/weston_1.9.0.bbappend
> ./meta-ivi-bsp/recipes-graphics/weston
> 
>  
> 
> _meta-renesas:_
> 
>  
> 
> [mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-renesas$]hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-renesas$
> find . -name "wayland*"
> ./meta-rcar-gen3/recipes-graphics/wayland
> ./meta-rcar-gen3/recipes-graphics/wayland/wayland_1.9.0.bb
> 
>  
> 
> [mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-renesas$]hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-renesas$
> find . -name "weston*"
> ./meta-rcar-gen3/recipes-graphics/wayland/weston.inc
> ./meta-rcar-gen3/recipes-graphics/wayland/weston-init.bbappend
> ./meta-rcar-gen3/recipes-graphics/wayland/weston
> ./meta-rcar-gen3/recipes-graphics/wayland/weston/weston.png
> ./meta-rcar-gen3/recipes-graphics/wayland/weston/weston.desktop
> ./meta-rcar-gen3/recipes-graphics/wayland/weston_%.bbappend
> ./meta-rcar-gen3/recipes-graphics/wayland/weston-init
> ./meta-rcar-gen3/recipes-graphics/wayland/weston-init/weston.service
> ./meta-rcar-gen3/recipes-graphics/wayland/weston_1.9.0.bb
> ./meta-rcar-gen3/recipes-graphics/wayland/weston_1.9.0.bbappend
> 
> 
> 
> Thanks & Regards,
> 
> Hari Prasath
> 
> 
> 

