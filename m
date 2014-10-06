Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 338C3E0088A; Mon,  6 Oct 2014 05:26:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_RHS_DOB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	*  1.5 URIBL_RHS_DOB Contains an URI of a new domain (Day Old Bread)
	*      [URIs: ge.com]
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD07BE00874
	for <yocto@yoctoproject.org>; Mon,  6 Oct 2014 05:26:05 -0700 (PDT)
Received: by mail-la0-f50.google.com with SMTP id s18so4207648lam.23
	for <yocto@yoctoproject.org>; Mon, 06 Oct 2014 05:26:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Bb6W9Fnm1NXHq8/mbppJn8WmmgllTUc79qycdtCxRsw=;
	b=i4+R1Wrtt16x+M8jneNEUiuN2qVxa0wzlUp3mybKlLmlz8IRqq5QlMbTdqBZGlPjiE
	H0lwUQvY410ZvwiST4cfhFt4g4D8nV2OPruuZnoum9zle7Sn1ewoiyw/msNPWf2jyKVf
	YXxD02fifieandgoeXipJOjxgxScyy0HiiOkrUvXJkIR9gc+bfmTiWzoU0W3C9wocTke
	0uUVX2m9zaMGktsGVpga79TZfWaS3bcSciwLqj2Ao5LnSm0b/PzGPIvKbzHg3oUCJ7jh
	CuGoZbRBINTCXMCQ2OcE/OVGAuP0NTr6A45inc4VX12IEfUmVx4umY54GFtCQfXb8tcx
	1gwQ==
X-Gm-Message-State: ALoCoQma4gen8hC7988wUBdi/NfLCfE0zIg3Qk6eTKJVu1jtkhftQIvSiv9PzHLzlWts3/q8XYFp
X-Received: by 10.152.163.66 with SMTP id yg2mr24535388lab.38.1412598363852;
	Mon, 06 Oct 2014 05:26:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.65.103 with HTTP; Mon, 6 Oct 2014 05:25:43 -0700 (PDT)
In-Reply-To: <542945DD.2010800@ge.com>
References: <542945DD.2010800@ge.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 Oct 2014 13:25:43 +0100
Message-ID: <CAJTo0LYNSGpdRhh7qfjDjE_rJca80XgGJDmzpgpTQqFteit-3A@mail.gmail.com>
To: "Carr, Chris (GE Intelligent Platforms)" <chris.carr@ge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issues removing RRECOMMENDS packages with BAD_RECOMMENDATIONS
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
X-List-Received-Date: Mon, 06 Oct 2014 12:26:16 -0000
Content-Type: text/plain; charset=UTF-8

On 29 September 2014 12:43, Carr, Chris (GE Intelligent Platforms)
<chris.carr@ge.com> wrote:
> Basically the BAD_RECOMMENDATIONS that I have defined is not removing/preventing
> the installation of the RRECOMMENDS packages. This is using opkg as the package
> manager.

Would you mind briefly switching to the RPM package manager and seeing
if that changes what gets installed?

Ross

