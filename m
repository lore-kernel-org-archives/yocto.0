Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0E62E0076C; Thu, 25 Sep 2014 09:25:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F343E0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 09:24:56 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id z60so6487200qgd.15
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 09:24:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8ainTbOSXaxZGN4o7Z6Co8/8s+tl/4VHn4zseDu8UdQ=;
	b=NIZdoDpQK3cKvwlSQ2YbbvxosuDk5TUtgTJMCpVDWRFAiSPAVgD6mFnrswOaf1A3s7
	C2iyEgnBUZaxFq1MdtXUDPvlYqGZQhD46RJ01f3cXHK4WNCQwPLDe3ekASstGXEAY4We
	YeLrXxTLRpRAwxK6MYdOEL8qb3Ua2W/LrF4sFows2MJNEZlisiYsAFZoId0lROA1rkkw
	djje20lx+pAWt3GKTN3025NCwoJSm6KhaUVe0nKPKRoY4THbTB0rd9TAFxNk8q24v6ql
	92xFnu/nx/7KydERXIZPR3EpurWQY6V2CGGhj7WN7eP1hIndEjAGF9wCUuMNH+zm21o1
	YS8w==
X-Gm-Message-State: ALoCoQkzD/ZKgNXD8d2RTvA38HwMP9jOtNvSr93ONTkx1EjNl8Ugd2zGEhMqV56AHUE4xgVK4ZBB
X-Received: by 10.224.104.2 with SMTP id m2mr20902435qao.52.1411662295446;
	Thu, 25 Sep 2014 09:24:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Thu, 25 Sep 2014 09:24:35 -0700 (PDT)
In-Reply-To: <20140924234311.GL25706@jama>
References: <CALb2249ipWUiPNwyRiDUpJeqaq0DELAz20ZRZeroJuf2CxQhPQ@mail.gmail.com>
	<20140924234311.GL25706@jama>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Sep 2014 17:24:35 +0100
Message-ID: <CAJTo0Lb22KGZysRmjPwsMT1oEafjce+cBD56uVPjH+Nq5YS4Sw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, Leo Schwab <lschwab@sensity.com>
Subject: Re: Herp-a-Derp Alert: Changes to SRCREV Unpack Wrong Version
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
X-List-Received-Date: Thu, 25 Sep 2014 16:25:01 -0000
Content-Type: text/plain; charset=UTF-8

On 25 September 2014 00:43, Martin Jansa <martin.jansa@gmail.com> wrote:
> Include SRCPV in your PV, otherwise do_fetch signature won't be changed
> when you change just SRCREV so it won't update it for you.
>
> You can also add it explicitly
> do_fetch[vardeps] += "SRCREV"

As SRCREV does change the fetcher behaviour, shouldn't that be the default?

Ross

