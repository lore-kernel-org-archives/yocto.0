Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF27EE00347
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 13:42:45 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 16 Sep 2012 13:42:44 -0700
Received: by oagn16 with SMTP id n16so5588687oag.35
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 13:42:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=N14rkvnshCp9Ij7LmrRKbF3v4jT/iQsTIDkBUq76hUY=;
	b=LMHf5+NYVf2IyikfhcaY5QAVa0Ynp2MmxHXsng/ds1D6YRjzKt+dlNCeklXWRNTzBq
	qd9bRXdS3DiTpvbFQbg0iVld5b5BinRu7dqzPNtgW1wnxEK4458+Z3Trfgl3oytVbxSF
	UZMzidquTnDj4m3KMyJXL26UlrRqlkvPu2L/k1lkxzGYgFnn9xvzpJ3ETkY2O1nqmFXD
	GUgnL7hlcR1xmQ+q66QD795e56ZT3gOLdOJieiKqHjLuslLV798FfN54KHzbTht7Y6mi
	Y5POPiGAF77qjMAo/g1tRo6mR2Yfwq7Cf1aIOLXxsroOMgcH0wmKEEaHMfVCUTDB3/i2
	hA7g==
Received: by 10.60.30.168 with SMTP id t8mr7279904oeh.89.1347828163759; Sun,
	16 Sep 2012 13:42:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Sun, 16 Sep 2012 13:42:23 -0700 (PDT)
In-Reply-To: <9CB6FE0E-90A1-4627-B2CD-3DAD8090EB9C@keylevel.com>
References: <9CB6FE0E-90A1-4627-B2CD-3DAD8090EB9C@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 16 Sep 2012 21:42:23 +0100
Message-ID: <CAJTo0La7e0eSRFLjp_qe+BG4TEsFdDbLikUZ4EqAcWKRRNQLPg@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQkEyrrCE97NBf505MfQjy9WyAoEFSLzWd1Y3DWoH6ygXSSyz5r4VyTIBb9QuGBQ18r5zdIc
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Forcing link order for autotools recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 16 Sep 2012 20:42:45 -0000
Content-Type: text/plain; charset=UTF-8

On 16 September 2012 00:59, Chris Tapp <opensource@keylevel.com> wrote:
> but if I try to build it on my host (e.g. when developing) then it fails to build with lots of 'symbol not found' link errors related to libs that are on the system and which are in the gcc lib search path.

That sort of thing is normally caused by distributions that use
-Wl,--as-needed -Wl,-O1 or something similar as a default linker
flags, so the ordering is important.

Ross

