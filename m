Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5145.1597301967063491195
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 23:59:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=O+0DUjHy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2944E02000; Wed, 12 Aug 2020 23:59:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1BE3E01FFE
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2020 23:59:25 -0700 (PDT)
Received: by mail-ej1-f66.google.com with SMTP id t10so4996581ejs.8
        for <yocto@yoctoproject.org>; Wed, 12 Aug 2020 23:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=WbITIz4Hja8XAlkLhidMlHb54iGp/ChsPqm6Essay2U=;
        b=O+0DUjHyg3X7l4TTNobXkGJ32ZXGpXg9SUv1978yO0poRE++CU1TmhfbXAD+N6QKp/
         Pe8WoF0S6M2fiR+zMKtp3aPRHpqjapCWKbwUCNInyVevHkwY6o00lP568siTjlJmMKwr
         cYkoEhlHaC/hgICJDAq6GvxfcEAOCsfca2S86E2omyLqTIPgZNm2vJvi2I9ApQLwN2r0
         S6U8vbWQ795iZQi+wLHwwxZN3yuJn1eEVrqvSbPS2k2ErN8wxmOkpcPz4BKGl79YnR9A
         kGss19aG91ZPPf9DnH8WPi/ulGhmxwW+gLyRfU83TljHUIG23zzPTM7oGtWSSYeuljr3
         Vvjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=WbITIz4Hja8XAlkLhidMlHb54iGp/ChsPqm6Essay2U=;
        b=JQcs4NzmEC2eJREU8Z89ewqh5/6VnBI7uDGX8aeDfaV3+wq3hAhSzsLu7hFVxe+qhf
         NaaZE89+tfsoh7zAdJggSLkO9A7X5E1YxOY27b7n8gwNQqJJbNfq3TAjZsuM1lqiMA0X
         XYktoqW2pkioTlXqUvx+rk/QpIon13468Bcyi2DAM3O0Xxyktqmq7kvP8x9wi60gjvkS
         tiDNxvw6pAmP3xRh/a76xQbV61YRLl8WiED0AivDr3CEVHuDqzMdIUKuFYX28Yfnt/EI
         FN9EwiiC2ms1D2TlaOo6Fid4/w0IHkr41T59ISSbyn8mCPGdR3/LGDQMktIBuC1jYJe4
         QLvg==
X-Gm-Message-State: AOAM532JdqyTNRfk0jlSbe8RCJWQnRNoOn8OA/ooBQThysQ7QHAcWNxd
	auTd4bLIC842B8bjWqoQzZp82nMgTmPAKVVTt3q2OQ==
X-Google-Smtp-Source: ABdhPJzXtzbEbXhwDWgZM1xBPFAX2scOvOCtpwzyBTGDxKpxpelG57X2AotZKOBic29Pqr9YMO4Qa9NLOOwJw6sSSRk=
X-Received: by 2002:a17:906:1c84:: with SMTP id g4mr3389847ejh.59.1597301963943;
 Wed, 12 Aug 2020 23:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34h5WrT9evbGdYMFwUbLksspPhzJxLxd0KmguXLYH7H0g@mail.gmail.com>
In-Reply-To: <CAAfyv34h5WrT9evbGdYMFwUbLksspPhzJxLxd0KmguXLYH7H0g@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 13 Aug 2020 08:59:13 +0200
Message-ID: <CAAfyv36EJrBGH2jYWpS9wNSw3i6yEU2qz16p5dP20UaWA84zqg@mail.gmail.com>
Subject: Re: luajit build issue for rpi3
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

OK nevermind. It seems to be builder issue. When re-installed
everything works fine. Sorry for noise.

On Sat, Aug 8, 2020 at 5:16 PM Belisko Marek <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I'm trying to build luajit for rpi machine and getting strange error
> on build machine:
>
> gcc  -m32     -o host/minilua host/minilua.o -lm
> /home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/hosttools/ld:
> skipping incompatible /usr/lib/gcc/x86_64-linux-gnu/7/libgcc.a when
> searching for -lgcc
> /home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/hosttools/ld:
> cannot find -lgcc
> /home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/hosttools/ld:
> skipping incompatible /usr/lib/gcc/x86_64-linux-gnu/7/libgcc.a when
> searching for -lgcc
> /home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/hosttools/ld:
> cannot find -lgcc
> collect2: error: ld returned 1 exit status
> Makefile:605: recipe for target 'host/minilua' failed
> make[1]: *** [host/minilua] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make[1]: Leaving directory
> '/home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/luajit/2.0.5+gitAUTOINC+02b521981a-r0/git/src'
>
>
> IIRC luajit built some host tools using i386. I installed
> libc6-dev.i386 as stated in luajit but it doesn't help. Also it looks
> like it's looking in the host directory for libgcc?  Any ideas what
> can be wrong?
>
> Thanks and BR,
>
> marek
>
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com



-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
