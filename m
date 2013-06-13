Return-Path: <ross.burton@intel.com>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D6E0E01409
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 02:00:51 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id fa11so7825807pad.19
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 02:00:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=zc+475dKqdTmbpeqR/NrylPPLNsEuYqVrMajFeCFDJQ=;
	b=mIR5/RQ5hmd6tNU+Uhnlv2sXWcWpyXnFvu9tqOnLp4LxlasQPBGRjz8BB2yJTtMKMJ
	kQ2TkjpLRFOErch4lHO2v+/FLCRFN5TK1902zd1KRdVCvvQtiEUBtEQGJrH3KRwjF4fI
	DFtjq6FGcr1k1l3Se+BbCIZHgXbSgBciTk7Si2b3xxc9YF3L19bZitdLnT9ROOaqm2e5
	RB1uicLv2vgvRbRDMqb22MHr7FVw80KCBoDnoX7aj0iJOjz+g+/XvwXasLTjmMUj0rvP
	Uxtt3IcZlDPi9y+leNGDhBkSL1vOLvMQYZ61sECcgI3Lmp6XRrpqlOc0gNw2aSI9iByX
	AQDw==
X-Received: by 10.68.162.163 with SMTP id yb3mr23371524pbb.212.1371114051235; 
	Thu, 13 Jun 2013 02:00:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.66.252.98 with HTTP; Thu, 13 Jun 2013 02:00:31 -0700 (PDT)
In-Reply-To: <CAM1ZcoU1VZLQeKCt=xySb8ji0v-dYTQkiXwPDG_oDOwafUdgjg@mail.gmail.com>
References: <CAM1ZcoU1VZLQeKCt=xySb8ji0v-dYTQkiXwPDG_oDOwafUdgjg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Jun 2013 10:00:31 +0100
Message-ID: <CAJTo0Lbzzb1X7N_micY3qBTprcK8ZV4i8=g5pd_6BMptQtdgpA@mail.gmail.com>
To: Katu Txakur <katutxakurra@gmail.com>
X-Gm-Message-State: ALoCoQmXwX8Nfg2p1wfD7AukA130VK3xE1xPOXUHLV95QdHHLLhG/W0sbXDrrc4R0ISQEG7YTQRq
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe using waf installation location
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
X-List-Received-Date: Thu, 13 Jun 2013 09:00:52 -0000
Content-Type: text/plain; charset=UTF-8

On 13 June 2013 09:55, Katu Txakur <katutxakurra@gmail.com> wrote:
> do_configure() {
> ./waf configure --alsa --debug --clients=128
> }

I've never used waf, but I expect at this point you need to tell waf
what the prefix is.  With autoconf this would be --prefix=${prefix},
have a look at the waf arguments and autotool.bbclass for examples.

Ross

