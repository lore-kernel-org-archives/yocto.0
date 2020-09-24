Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web10.14173.1600945746189342177
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Sep 2020 04:09:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KdFrUvJn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id y15so3173763wmi.0
        for <yocto@lists.yoctoproject.org>; Thu, 24 Sep 2020 04:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=iGoqlMW4Ffrp5Vk/VS/yXDBHCv0NC7fd7/Sfzif6UiA=;
        b=KdFrUvJnSSwG+A/v3ba1AV+txTUlgWwjtqg2d4NcJDTFAqymgq2HeV+vBLy1A6JUtv
         OUqbvWbqsyv06tmUkcts84hdGu35Z4Lewc0WmKR4E51SUiYdXSK2sHjQOC0SxFw12hD/
         LJhJBbtj2ZF3z+YyJymUQOniw3WQvAWe2bSBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=iGoqlMW4Ffrp5Vk/VS/yXDBHCv0NC7fd7/Sfzif6UiA=;
        b=ejsCVCnywQASjzPBupfPzjGSGEd0wi0C3qfLM5S9JNqEMVH36cLa89UctM6u9r0sbD
         xXyOcrK5ZHbMvdfI1EwpB6Vl0rpKd7Xh/fJt8i32NWvLqsVhSOavw527AuamRF60yMmF
         EnRXIIdDRZWFYVrXyB9WcYyLyYLV9LgfMO5ClJzTn5O9/RKci7zEle8Hwe8sXr30ferA
         Tu/cGL/3+KVMmIoMagawlWBQQGWI33IgZnLwrRFu8wX2rjRP1nrnIuQLKyr1YOyf/MA8
         FqjELcnPS4CJjZcI0bDVOGABuVYoTPw1uylkwKTIXbts74yFYHMJ5VQVAx44v+RwaOGJ
         Lxew==
X-Gm-Message-State: AOAM531uBruiIHViS80rKouaFt/T8I2a58grbNYdrAdhPc+mmJyFqrWm
	SsZaQShFFX3VSbIilayUE2N3Bw==
X-Google-Smtp-Source: ABdhPJy/i1xhrdco7CNAnTbsxx5UqxsatAe1p2NaAAz3EeZVif9Cf3NF/yVlGNJal2tqBSBo5lEAdQ==
X-Received: by 2002:a7b:c111:: with SMTP id w17mr4015075wmi.109.1600945744503;
        Thu, 24 Sep 2020 04:09:04 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 6.1.9.3.6.2.6.e.a.a.c.2.3.5.1.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (6.1.9.3.6.2.6.e.a.a.c.2.3.5.1.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:b153:2caa:e626:3916])
        by smtp.gmail.com with ESMTPSA id t202sm3261206wmt.14.2020.09.24.04.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 04:09:03 -0700 (PDT)
Message-ID: <b324f5c56280439b94a5fc57af3f90e43c4b8bcd.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.2_M3.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Pokybuild User <pokybuild@ubuntu2004-ty-2.yocto.io>, 
	yocto@lists.yoctoproject.org, Saul Wold <Saul.Wold@windriver.com>
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com,
  ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com,
 akuster808@gmail.com,  sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Date: Thu, 24 Sep 2020 12:09:01 +0100
In-Reply-To: <1637A7F05350E37C.12288@lists.yoctoproject.org>
References: <20200924032241.1A6EF3A07BF@ubuntu2004-ty-2.yocto.io>
	 <1637A7F05350E37C.12288@lists.yoctoproject.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-09-24 at 08:33 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> On Thu, 2020-09-24 at 03:22 +0000, Pokybuild User wrote:
> > A build flagged for QA (yocto-3.2_M3.rc2) was completed on the
> > autobuilder and is available at:
> > 
> > 
> >     https://autobuilder.yocto.io/pub/releases/yocto-3.2_M3.rc2
> > 
> > 
> > Build hash information: 
> > 
> > bitbake: 27b53186fa67d281d29b2f8e15bcff8dc2557b8a
> > meta-arm: c7a1a5f9fd415e3ae1078c2a1d6af9c25e9e6498
> > meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
> > meta-intel: 254e3a79b3a37045f829848e0a5e04801bec1439
> > meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
> > meta-mingw: f1e1d5a803a48ed70f2b0eaf0ef15ade70479fce
> > oecore: e68df923e1bf9e82662ee2619ac9e2f239e8f7be
> > poky: 0a243cd21263f498b6eca7c0b168e655dd823e22
> > 
> > 
> > 
> > This is an automated message from the Yocto Project Autobuilder
> > Git: git://git.yoctoproject.org/yocto-autobuilder2
> > Email: richard.purdie@linuxfoundation.org
> 
> There were two failures in this build. One was a single selftest
> failure which I'll look into. The other was a qemumips altcfg image
> loss of networking. I know Saul is working on better debug for that
> and we have open bugs for it.

Much to my surprise, I figured out the issue and there is a patch for
the selftest failure on the bitbake list. It won't stop the release or
QA.

Cheers,

Richard

