Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 854EBE009E7; Thu, 12 Jun 2014 02:27:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.52 listed in list.dnswl.org]
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A15AE0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 02:27:41 -0700 (PDT)
Received: by mail-qa0-f52.google.com with SMTP id w8so1266239qac.25
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 02:27:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=HPHsMYIGcFb4o21wiz2FAm55ICy2SeyLi3w0UhH+SkA=;
	b=VjuI48Hcw5HC5LA0CIlb1RLSvkdDxV25cZb50kmP2y61QGtvPRNTlGVOXuELC3o8O6
	4mrDp/mSzkEKBTDQXQ4sNjeP/wKSEESIStfcT5AVVNBd3W5/wlo44nJ03zQcNjh4de4K
	/nNz114Qh/t9T9EoF+MmDaRv1cIzQmAkJfEu91yqMOnWhoyPIPpOdVsc/adVLTcz2Y3A
	WCR8RRyUUGW/u8HobhXf9LytpTqQQj4UrONrw7j3X43ZyorTyyAmtbN5p/IL4kkvoB4n
	nDBE/9E70VAqm7WJBOhqGl3Bjz6Ii6ACI6toT4y7kPrSJu4xQMH0OQSlstXxfN0fPcOX
	m6GA==
X-Gm-Message-State: ALoCoQmU40WGFcAGM2Mw2Q7UYQaE9HS5Ujs0zj+Rm5P+OlJuP2VzpOU0i6NfeJM3cPxFbO7q+fl5
X-Received: by 10.140.89.202 with SMTP id v68mr20798475qgd.71.1402565260658;
	Thu, 12 Jun 2014 02:27:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.91.138 with HTTP; Thu, 12 Jun 2014 02:27:20 -0700 (PDT)
In-Reply-To: <20140612085627.GD2428@jama>
References: <1402543617-25861-1-git-send-email-yaoxp@cn.fujitsu.com>
	<20140612085627.GD2428@jama>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jun 2014 10:27:20 +0100
Message-ID: <CAJTo0LZt+i_3rbmrjxgP6b5RgNsEFEvaQ6aEd2kX-qVMiUjR+g@mail.gmail.com>
To: Yao Xinpan <yaoxp@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] add recipe cim-schema, cim-schema-docs and license file DMTF.
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
X-List-Received-Date: Thu, 12 Jun 2014 09:27:54 -0000
Content-Type: text/plain; charset=UTF-8

On 12 June 2014 09:56, Martin Jansa <martin.jansa@gmail.com> wrote:
> Why is this recipe needed in oe-core layer? Wouldn't meta-networking be
> more suitable?
>
> The patch also belongs to oe-core ML not yocto.

Agreed, unless there's a strong reason then this should go to
meta-networking (so send to the openembedded-devel list).

Ross

