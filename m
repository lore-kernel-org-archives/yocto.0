Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B752FE00B85; Thu, 15 May 2014 02:58:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f176.google.com (unknown [209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 173FAE009A7
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 02:58:21 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id r5so1340205qcx.21
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 02:58:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=dUBnf6Ob4kHUXrKBvjg/t1FxR8y+n4wpN4/qfl6yTCE=;
	b=f21r2Qfirx6Dxv48X1X7wuPGX263C0YuVg1iRqRDj2ib+TCs4tk9MS6Q+H/WB7aERa
	zNvGWzOYxvWqLUcqwtS+ch641J7wBr8EPcAesyf0WZl9Xv1FyhledK1zDqq/Ci28KE+M
	5QA75qeIv27M1uVDSc54VCqD+CKZdA5O82x00HPBCoG4CPIsoaWVEb06NX9WjQTTGuv3
	h43jhN4g6ipSLjxTpSify2n2qrKnGw8FoAc44OBV0Hj++ihmtaHCm4tdvZpJ36PVxSC1
	kY188zSVT5uVlVyDNPcfl1EvHTbdvyAspsi9O56c2hqqk7mMupgf7JvrsbLjtxGj8ko2
	FUjQ==
X-Gm-Message-State: ALoCoQld50j+RniT5BSqJ+qeVveCCBfgUYcavn24QAwrCDUWjnRiUoiuhdfqGSSkRIuYuVBHr85f
X-Received: by 10.224.32.138 with SMTP id c10mr1710837qad.35.1400147899187;
	Thu, 15 May 2014 02:58:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Thu, 15 May 2014 02:57:58 -0700 (PDT)
In-Reply-To: <5373E26A.6060509@linux.intel.com>
References: <CAK4xyAmvGw7dYHhMEcUCHxBSzMiM+9Hk_SedN5huG5hc=BHcNg@mail.gmail.com>
	<5373E26A.6060509@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 May 2014 10:57:58 +0100
Message-ID: <CAJTo0LaEm3_JXSe=XXfsYUyZPgceSRZfP0+_5zDpvuhcZSzdJQ@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: meta-web-kiosk: bad fonts in high resolution
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
X-List-Received-Date: Thu, 15 May 2014 09:58:24 -0000
Content-Type: text/plain; charset=UTF-8

On 14 May 2014 22:38, Saul Wold <sgw@linux.intel.com> wrote:
>> I'm new to Yocto, and I made an Image meta-web-kiosk, and when I run it,
>> the fonts in browser  are getting messed up, as you can see in these
>> images:
>>
>>
>> https://drive.google.com/folderview?id=0Bw1B-mbeX0tbRnc0OHZSaDVuQlE&usp=sharing
>>
>> This happened in FullHD output.  But when I low the resolution to VGA,
>> fonts are totally ok.

It would be interesting to see the output of xdpyinfo and xrandr, to
check that X isn't being lied to about the screen.

Ross

