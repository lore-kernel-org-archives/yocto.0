Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99D45E00AE4; Sun, 10 Jan 2016 10:40:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53DFEE00912
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 10:40:41 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id l65so187713529wmf.1
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 10:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=9B1KEEsMCV3YhA2cG3zPplcUBkbNHOoJYPPHPNzU8oM=;
	b=s7HQS12f79/hAesoQfTnQHC5eXsXB90oLMQviM+bhBE7zjMpDbvRC7+ke3g6ZYpuKg
	Ir5tIh9VvBxnMtYBwJTYmWB3hqHsXuUYuYAiJ5lB1yK7M/Sv8CQokp7sj1r5oyQCsU/l
	6dn4+MbUgbi6k4MgmtfVOaJ+FSs+ntuy6YSE7wLjB1/a2FZ8cwzzCcl2g1P1vwxCx3O0
	CjSmMXCi+/UeJPvmfn1cS08a72/iit30nhyoYydNFgHJJ2E0j1Ij7SSxEGKv9AepaCTx
	6/Nmoze1u4jSP7qHU34dIc8ZuZkjWqaGw0Qr4v9KXW7QYVhTIFsto2L+HyAr8PYrtKIz
	cM+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=9B1KEEsMCV3YhA2cG3zPplcUBkbNHOoJYPPHPNzU8oM=;
	b=O2H9jIXZeIz+RgX2p9NFOpmWBm9D/2b21DtaE06x3IZDr4kFYLScfK2ehCjzCo531V
	Ps2QaMQDgMax/Av/YJUcCG/mUur0nSBsE7CmXX24+GJqjdnsoobZrBd5SgoX2Vb6iCc/
	ndleEu0DCUu8urrsm/E+eFES51wWl1Y2EfN7ZojS/ES81cSiyrCMricR13dVSNk/qn8v
	79JJ4uQczkyLDPecnvtlziiI5XUcD1NcE80nsvmtzoV6YZXCEiQQ2Vio2GDVggVrSLfq
	z3ljkDittvkh8qUrSt9lE6WFLa+cBasYqsZpmjtGE4NAqIg8sSWBqohX1dS/u8LAraaQ
	KpMQ==
X-Gm-Message-State: ALoCoQmr7ZcrRCyXkPO7WfKLxPJzlqLnSks/ntT0smbbPhrH0Jm8tDnXuScHBb2pp6HRYQK8RERQ5rMoznb0SaehJuNxpKWJ8w==
X-Received: by 10.28.145.204 with SMTP id t195mr9747069wmd.91.1452451240488;
	Sun, 10 Jan 2016 10:40:40 -0800 (PST)
Received: from resin (dslb-178-007-064-118.178.007.pools.vodafone-ip.de.
	[178.7.64.118]) by smtp.gmail.com with ESMTPSA id
	ka4sm16528283wjc.47.2016.01.10.10.40.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 10 Jan 2016 10:40:39 -0800 (PST)
Date: Sun, 10 Jan 2016 19:40:33 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: John Madieu <j.madieu@expemb.com>
Message-ID: <20160110184033.GA10098@resin>
References: <1452127495-10015-1-git-send-email-j.madieu@expemb.com>
MIME-Version: 1.0
In-Reply-To: <1452127495-10015-1-git-send-email-j.madieu@expemb.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] qt5: fixed raspberrypi support
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
X-List-Received-Date: Sun, 10 Jan 2016 18:40:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi John,

On Thu, Jan 07, 2016 at 01:44:55AM +0100, John Madieu wrote:
> Because EGL properties were not defined properly, we always had the following error
>      make: *** [egl] Error 1
>     | EGL disabled.
>     |  The EGL functionality test failed; EGL is required by some QPA plugins to manage cont
>     |  You might need to modify the include and library search paths by editing QMAKE_INCDIR
>
>     This bbappend definitively fix the bug
>
> Signed-off-by: John Madieu <j.madieu@expemb.com>
> ---

We had a similar patch before but this would mean adding a new dependency on a
new layer, right? I'm fine with this patch as long as it will include a similar
mechanism to what meta-fsl-arm does: add specific bb/bbappends based on the
included layers so we don't force every user from now on to add the qt5 layer.
Does it make sense? Can you add patches for this as I can merge them together?

Thanks,
--
Andrei Gherzan

