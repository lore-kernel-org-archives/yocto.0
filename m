Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EC3CE00857; Wed, 24 Sep 2014 15:15:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 495BBE00848
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 15:15:09 -0700 (PDT)
Received: by mail-qc0-f177.google.com with SMTP id x13so4282101qcv.36
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 15:15:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mrNneFRPn7WX6mSEDtgen4qdTrmFDEOXN7n60rcoCQs=;
	b=Fh+WINZhabMaTuJ5czSC4rPPKeYfBW8blnYC3frGAzFFAPO34HjvPZGyhn1dgh8J0X
	ALtGtQgQ2OoB+SASZjSl5VGlkVgSJfLw5vAsUKgaxvN79ETN1jSvhpwiSAorQ/O0JFco
	9El5szi1PIvuR8G6RTAPGvKUfDdaKwtAvJWnvlYR5TGB9isLtoXTYV1UTMfAoITMzvf1
	0SMvvJtMUtiYRWuH2BI/PiZs10KvWjaK3P137INCNhkcFRP+VyWUnpog2zXl0g0j7Mts
	zIDh6mMkHa56NePbkzFBs+3K8Pg5YhfwRV21p66sH2VwfcYNkpHYyILw5ZqEZemMCRGk
	OTBg==
X-Gm-Message-State: ALoCoQlbh+yqbOVwWBPgGkEw+tXHq+JlcLi5zHDhWKhsMZZYFtE2PfRasOmKbNbCLxceqEtB3a2f
X-Received: by 10.224.121.80 with SMTP id g16mr8856330qar.64.1411596908850;
	Wed, 24 Sep 2014 15:15:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Wed, 24 Sep 2014 15:14:48 -0700 (PDT)
In-Reply-To: <CALb2249ipWUiPNwyRiDUpJeqaq0DELAz20ZRZeroJuf2CxQhPQ@mail.gmail.com>
References: <CALb2249ipWUiPNwyRiDUpJeqaq0DELAz20ZRZeroJuf2CxQhPQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Sep 2014 23:14:48 +0100
Message-ID: <CAJTo0LYtKPucd9omjGEyDTpjgwpuweVfgygB0bzu8nx=VcEzaQ@mail.gmail.com>
To: Leo Schwab <lschwab@sensity.com>
Cc: yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 24 Sep 2014 22:15:16 -0000
Content-Type: text/plain; charset=UTF-8

On 24 September 2014 23:04, Leo Schwab <lschwab@sensity.com> wrote:
> We have written recipes for various goodies -- both .bb and .bbappend forms
> -- where SRC_URI points to a Git repository, and SRCREV names a commit ID
> (not a tag or a branch name).  When we update the SRCREV to something newer,
> 'bitbake' goes through the motions of rebuilding the recipe but, when we
> look at the result, the thing it built is still the old revision.  This is
> confirmed when we look at the file 'log.do_unpack' in the build directory,
> where it is clearly checking out the wrong commit ID.

I've never seen this before and there's many git-based recipes in
oe-core that the fetcher appears to be working for.  Can you replicate
this behaviour with a minimal recipe that you could share?

Ross

