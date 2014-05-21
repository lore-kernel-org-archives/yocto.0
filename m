Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C1DBE00B1E; Wed, 21 May 2014 01:52:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f51.google.com (unknown [209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05AECE009E7
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 01:52:35 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id q107so2714610qgd.10
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 01:52:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=R2No/Gx+7cgs4Twa33Tk3x/ZrjETaqGBdqVXg4Jj9w4=;
	b=TDl0v6nuRnqU6ZgFc8HYJyc9/sMxYQztB9Z1ft3C8vhLRHMhSS37yDRaZuPZTyBUf0
	bQKwXOhYgMXRoTIu8GJL5QWhdMQE4HRLwIxu+ih+ksU8KvZ8CKWofr7cE9W+bv1dli/h
	qzZgSQyl22IIGoisu7Ii77sStKlm9V7L6j/wAR40MpATesb5ct9UHGSY3/G6tghG69OJ
	GsevNcns8Fm9sXTFXX40nK4IZlS/shDLiRwRIvK7w04av5n30RxJOyyPFhOevsb7q7MR
	sYcSaWs1+A7yyHcNIJbEhZCOzLiS/tlHLRo9tPIPVzWD1qn7NxXwcN0LrLpkeNAessvh
	wdWg==
X-Gm-Message-State: ALoCoQkZ4u1Y3s3c/4og08PPVGisdAsaJ8A256ZkWe2zc3KqN8VOqi1nOz4rf7hgqePlXpgQuCm/
X-Received: by 10.229.213.66 with SMTP id gv2mr35753893qcb.13.1400662354547;
	Wed, 21 May 2014 01:52:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 21 May 2014 01:52:14 -0700 (PDT)
In-Reply-To: <20140520144423.8c4e4b9406b77e1e78d5069819454ed7.8cac11663f.wbe@email14.secureserver.net>
References: <20140520144423.8c4e4b9406b77e1e78d5069819454ed7.8cac11663f.wbe@email14.secureserver.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 May 2014 09:52:14 +0100
Message-ID: <CAJTo0La2_WU=gg--xFz1JEST87qWKX-8x1pGDL_EcVhTTPaihA@mail.gmail.com>
To: ezekiel@sanborndeasis.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: headers only recipe
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
X-List-Received-Date: Wed, 21 May 2014 08:52:38 -0000
Content-Type: text/plain; charset=UTF-8

On 20 May 2014 22:44,  <ezekiel@sanborndeasis.net> wrote:
> I have a recipe that only produces dev headers (macros, constants, etc).
> Builds fine, and recipes dependent on these headers are fine as well. The
> problem is that only a dev and dbg ipkg get produced for deploy (makes
> sense, there is no device side content). But then do_rootfs fails because it
> expects an ipkg for this recipe
>
> opkg_install_cmd: Cannot install package foobar
>
> I am working around it by throwing down a dummy conf file as output from
> this recipe so there is something to build an ipkg around. But how do I
> indicate that there is no normal device side content from this recipe.

Whilst using ALLOW_EMPTY works, to me using that is a kludge.  This
isn't like package groups where the empty package serves a purpose,
the empty foobar package's sole purpose is to satisfy the foobar
dependency in foobar-dev.  This dependency is a default dependency
from bitbake.conf and is trivially removed in your recipe:

RDEPENDS_${PN}-dev = ""

Ross

