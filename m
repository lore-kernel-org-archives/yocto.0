Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 772FFE002A6; Mon, 14 Jul 2014 07:32:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C54F5E002A6
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 07:32:29 -0700 (PDT)
Received: by mail-qa0-f44.google.com with SMTP id f12so3174030qad.17
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 07:32:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mhcdkI3dvteMTVCkZBTtaDPKrYGH6RcfqY+QjkSAa6M=;
	b=isMXZarKv1ZWYgSEZzYIzq8wP4dT+Uv2cBFP9qGADhiWh4114ivz6bg1xE3BBnR3Lt
	wlHCI/cTAHcr4JnZ+4zrJEOTszmE86SZaVt6II9BCV5Omwjdjrfq8SOoT4xKsNiAhLoc
	8wp3mDZXV5hrlki7ky0sprFguBCyL4SVcjyczt067OW6N+phAdTGzaaDPnn24o0eN/bB
	2zcjQwxZ0CVtsuQyO2INQHvaQig9/Ya0GMG9WZx5umOwEcFKV1dgWeVD4qaviX75rA1m
	iTX0kwIrd1W5LY3dTl8VZVAeJ+NbTFVFiW3C5lcJbOjdft3LRRb1j4eCwrzXZK6Q8yQg
	wNfA==
X-Gm-Message-State: ALoCoQnA+WZ4NhLcp38cLPS3ihdr4zaq5OxzWcvgfougacJekdDlrsik/9MWRTrX1BvnGP63FIjg
X-Received: by 10.224.73.197 with SMTP id r5mr22690818qaj.34.1405348348802;
	Mon, 14 Jul 2014 07:32:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Mon, 14 Jul 2014 07:32:08 -0700 (PDT)
In-Reply-To: <tencent_008BC33E036646E367F5CFCE@qq.com>
References: <tencent_008BC33E036646E367F5CFCE@qq.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 14 Jul 2014 15:32:08 +0100
Message-ID: <CAJTo0LYuYjzGZvbHb5ivtziBo5L2OGVWBewvyHDSYSJOB2Tx-Q@mail.gmail.com>
To: TonyZhao <tonyzhao414@foxmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to install .deb file in Yocto on Intel Galileo
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
X-List-Received-Date: Mon, 14 Jul 2014 14:32:30 -0000
Content-Type: text/plain; charset=UTF-8

On 14 July 2014 08:55, TonyZhao <tonyzhao414@foxmail.com> wrote:
> I tried dpkg -i <package>, but it said no such command.

You probably meant to use opkg.

Ross

