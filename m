Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D7E7E00BBC; Sat, 23 Feb 2019 07:29:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6802DE009AA
	for <yocto@yoctoproject.org>; Sat, 23 Feb 2019 07:29:25 -0800 (PST)
Received: by mail-wm1-f51.google.com with SMTP id t15so4405531wmi.5
	for <yocto@yoctoproject.org>; Sat, 23 Feb 2019 07:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=lRvelicONmcXqfIxLKTDHIuD+IHSl2Vc6aale6VUZCE=;
	b=Tb6b2WESa39u3yiKIZ/p8a9mbYNlBA623kPlOgMmBGpBCmR3BgzozhHsyd54FfBHcp
	tnZ6m69P08Dt4u1f325L6cwipP5ArKaY8xN+PVjc7/VNYR75TOn6c5IT0cImAOvOYClq
	/tGqcBi4ml0g6B13dFq5z95GfmRHqpVVESPuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=lRvelicONmcXqfIxLKTDHIuD+IHSl2Vc6aale6VUZCE=;
	b=Gd+NefFMtKmlhe0abEAR19fE3r4N10alJvKCSM9KFxkIIpEKvBZ+kkOd4/d9TK58re
	3tXkLplusH/NUATSChUwETk5qQu7KZHI+e/hVr3MEOQc993FlFbwfKZNhR1ee0vaVg3w
	eRmrlol75gWI4YDAfN1OEYPhx4yHDAkJW6Tu+OdPZHepbLJGAwcp9r1u+S431eweBg4I
	+jy9w/vLZqS+FzPU52IB/mMw1+m+/4/CHLfI9EaAWPoyAeX3crxB/ObxoLp2pttZOigC
	RbiYR5q+zl4vXWc6VKDuhduBpcABULtrmTJPw5GCl0cz2DT7LWPiHwlMwX5BSYnSfhDQ
	rDLA==
X-Gm-Message-State: AHQUAuYhpyadnsbO7dr8u0lShU5dE/rp3GHB689sSEyU6JvEDghq5sau
	3Ltcw5tGUSxLZ88l+iGt+ZDjwQ==
X-Google-Smtp-Source: AHgI3IavkM9PIEPwc0BTY1bBefEjEKwwVeejxgLYiFqiUPAMDA5rkli8mdAE+Cs3nwhr/96UrARSzg==
X-Received: by 2002:a7b:cc93:: with SMTP id p19mr5743892wma.113.1550935764383; 
	Sat, 23 Feb 2019 07:29:24 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id w10sm5898342wru.5.2019.02.23.07.29.22
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sat, 23 Feb 2019 07:29:23 -0800 (PST)
Message-ID: <2c3baa056663af88ed9e15b89128802cfc686b4e.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>, Stephen Lawrence
	<stephen.lawrence@renesas.com>, Hongxu Jia <hongxu.jia@windriver.com>, 
	"mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>,
	"ross.burton@intel.com" <ross.burton@intel.com>, "raj.khem@gmail.com"
	<raj.khem@gmail.com>, "paul.eggleton@linux.intel.com"
	<paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sat, 23 Feb 2019 15:29:22 +0000
In-Reply-To: <BYAPR02MB600561B688584916C429A316B97F0@BYAPR02MB6005.namprd02.prod.outlook.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<BYAPR02MB600561B688584916C429A316B97F0@BYAPR02MB6005.namprd02.prod.outlook.com>
User-Agent: Evolution 3.31.90-1 
MIME-Version: 1.0
Cc: "lpd-cdc-core-dev@windriver.com" <lpd-cdc-core-dev@windriver.com>,
	"Zhangle.Yang@windriver.com" <Zhangle.Yang@windriver.com>
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Sat, 23 Feb 2019 15:29:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-02-22 at 20:49 +0000, Manjukumar Harthikote Matha wrote:
> > 
> > You might be interested in the yocto layers for tensorflow,
> > tensorflow-lite and
> > caffe2 on github here [1]. I'm not part of the team that developed
> > that work but I
> > forwarded your announcement to them. Perhaps there is the
> > opportunity for some
> > collaboration on the platform independent parts. The maintainer
> > details are in the
> > readme.
> > 
> 
> Thanks for the layer Hongxu. I agree with Steve, it would be good if
> you could collaborate with meta-renesas-ai and introduce the layer as
> meta-ai under meta-openembedded. 

Please don't do the meta-openembedded part!

I believe that meta-oe is too large to be maintainable and that we need
a larger number of smaller layers.

Having tensorflow in its own layer which as a specific purpose and its
specific maintainers who understand it is in my view much more
desirable and sustainable.

Cheers,

Richard


