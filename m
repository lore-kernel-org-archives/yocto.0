Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web09.5358.1630052160315156230
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 01:16:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=B50bJ146;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.221.54, mailfrom: jester@theyoctojester.info)
Received: by mail-wr1-f54.google.com with SMTP id q14so9136339wrp.3
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 01:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=4v8rvSetCbTdoKbSCP8tQzsJ15oX2iMUfWTvFUTcwTE=;
        b=B50bJ146LckpfYgGauXSGEtWrUW+YBx+/xxSSnzb9r5AbTwbRpgj6jqsIXBq52VsPG
         vwtoGTqtF0Esu+MBajCajwDhCeURuMtGTPucungLcywuxvwP2OY7tW1pzBJBVEEW+/Ch
         TkLGThY5pR4jlfnOrofTqPsmzqRe2+8mH8MNTl6sGgMKTtXCmdAvcdV6tFltHvQ3QTCZ
         808c6q2jSS8G1AOhLGLlICrU4K3YhJN8C7AbFymLD583qEKoHqtO2vYBa4cL28l+ZnTG
         9h0KaE64KEgiJcEAVtP2FehhoXJIxEMkSygkkI/HjgILIlSsl28M5/ZGIldv07+aEpZM
         RSPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=4v8rvSetCbTdoKbSCP8tQzsJ15oX2iMUfWTvFUTcwTE=;
        b=r7UIU4Xmp1PCVmjhxgGsz6vSk4E/aZoxPg4lbx/oqwSynlO39fVoZVdrMc1c5uVHQg
         dXzXSbkJ4UlX7UXvJyiCVkvsAAHWHvDmbzDPxFMDhQ+j+Z9njD9fm9E1iZpeKPjIXUc3
         6dTpUSD4KKigZ8BDycQnlY1yIOw0iquTGe7Fve3t/CdDtUBIz77F9v4JGr1D3t9MAO9/
         lC1jnaRYxE3SP3t1fcfOLg8CWx7VaGn/TGm2jV4wgaqeRY1z81R0MboW36eQnTaZJt/8
         2mFiSks8fuaQH2lmK3KMT6T6XkPBGKD5c5rNOkFAQ82f9EFBQRbQNfPypZ7Kvsv2EXGF
         MFRw==
X-Gm-Message-State: AOAM5337hDP+C1yin2fIPLnwFHohQ4gKYgUZNKKb3DFqMergburnAGlK
	fbsgUGB3xYl+ymJdPGA66yciVUcbwPuDvQzh
X-Google-Smtp-Source: ABdhPJxOXEgNLmbGQxL5zkYPQBqJmWQJa7zK/BwGNAMjc0dDvlM/1XqrhvfuoOtj6U9AUeZzim61Gg==
X-Received: by 2002:adf:ba0d:: with SMTP id o13mr8507561wrg.134.1630052158425;
        Fri, 27 Aug 2021 01:15:58 -0700 (PDT)
Return-Path: <jester@theyoctojester.info>
Received: from [172.16.3.179] (p50933415.dip0.t-ipconnect.de. [80.147.52.21])
        by smtp.gmail.com with ESMTPSA id r12sm5850997wrv.96.2021.08.27.01.15.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 01:15:58 -0700 (PDT)
Subject: Re: [yocto] building mbpoll
To: yocto@lists.yoctoproject.org
References: <CAKAnv4HzhLS+X1Ld9EOCVDaSR4G25i6v7sou0h2=g2p_60SE-w@mail.gmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Message-ID: <e4035b54-f2e2-d50d-a56a-dec61d8264fe@theyoctojester.info>
Date: Fri, 27 Aug 2021 10:15:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAKAnv4HzhLS+X1Ld9EOCVDaSR4G25i6v7sou0h2=g2p_60SE-w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Howdy!

Am 27.08.2021 um 10:10 schrieb Ivan Riabtsov:
> Hi All. i need to build mbpoll git://github.com/epsilonrt/mbpoll
> I was created layer:
> 
> ivr@home-machine:~/work/yocto_orig/sources/meta-mbpoll/recipes-mbpoll/mbpoll
> $ cat mbpoll_1.4.11.bb
> SUMMARY = "bitbake-layers recipe"
> DESCRIPTION = "mbpoll recipe"
> LICENSE = "CLOSED"
> 
> SRC_URI = "git://github.com/epsilonrt/mbpoll"
> SRCREV = "2b385d85d919138cefe79870c87c60eaa8b0d19c"
> 
> DEPENDS = "libmodbus"

if thats all of the recipe, then nothing will be built. you probably 
want to include at least the class for the buildsystem that you need, 
for example autotools, cmake, meson...

usually devtool is quite good at guessing that, so i'd suggest to start 
out with "devtool add"

Greetz

> 
> i was run:
> rm -rf ./build/tmp ./build/sstate-cache ./build/deploy
> and
> bitbake mbpoll
> 
> i am trying to search for a package
> 
> ivr@home-machine:~/work/yocto_orig/build
> $ find . -name 'mbpoll*.ipk'
> ./tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/mbpoll/1.4.11-r0/deploy-ipks/cortexa7t2hf-neon-vfpv4/mbpoll-dev_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
> ./tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/mbpoll/1.4.11-r0/deploy-ipks/cortexa7t2hf-neon-vfpv4/mbpoll-dbg_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
> ./deploy/ipk/cortexa7t2hf-neon-vfpv4/mbpoll-dev_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
> ./deploy/ipk/cortexa7t2hf-neon-vfpv4/mbpoll-dbg_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
> 
> but i have only debug and dev packages, not simple mbpoll_version.ipk
> 
> i try to run:
> bitbake -c clean mbpoll --force
> and
> bitbake mbpoll --force
> but the task is done in a 1 second and
> 
> $ find . -name 'mbpoll*.ipk'
> ./tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/mbpoll/1.4.11-r0/deploy-ipks/cortexa7t2hf-neon-vfpv4/mbpoll-dev_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
> ./tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/mbpoll/1.4.11-r0/deploy-ipks/cortexa7t2hf-neon-vfpv4/mbpoll-dbg_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
> ./deploy/ipk/cortexa7t2hf-neon-vfpv4/mbpoll-dev_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
> ./deploy/ipk/cortexa7t2hf-neon-vfpv4/mbpoll-dbg_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
> 
> found nothing
> 
> please tell me what am I doing wrong? Maybe I created the layer incorrectly?
> 
> 
> 
> 
> 
