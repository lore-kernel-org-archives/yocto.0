Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.5322.1630051825468721143
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 01:10:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ai3wISBA;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: ivriabtsov@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id b4so12610901lfo.13
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 01:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=1T07MTtZxHK/d26ne1yKkhVgxYvC+dBo9SW5ExOeLjE=;
        b=ai3wISBARfmQSL7CrepqFybvwsu1PzABhOqDLuQlyFWp7TS3Txym+2FxU5UbGsr38/
         RCLkcElfJTUzDLYEm3RiyQsZuZYEtQQW3NxQTHz84CsFINAxyJFzQKH8Q8IQ106mbNvx
         OIV/7cTYKJZBaVsSmMddv6D1lmLuJVsWMICilDkg3pJoRlHMV8LeVBUZD5ZUg8g8pPgU
         TiJkfxq/x9WP2wbeld0QD7t/P685Hs1bryxjAjK6BZcbWP4/IjGSSAV6FrL/dEgodvi/
         sEoWrbUu2WXLBRwJ/E8VtkEPg1sfyBW4X8PLjjqk3a6zzNoFCf3lt/0sRCRy3c2ddfrt
         DX8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1T07MTtZxHK/d26ne1yKkhVgxYvC+dBo9SW5ExOeLjE=;
        b=mtTM28mJYeIDwY6gNsTEdBP8Z4mWUyMETkgiNX50X1rzjt/pELNP8225SdNDP1heVp
         /tyCDob5om9U8qFahvXgDiyu5B4an614ELoHpc1BQGWJSxFFhnuha0azXg8nYzruS+0s
         OkXFf4BIz1jt15ksSe+sMyeiq5ucz/Kk3SsO//d4gtEN8iweduHp3p3Wjp23QG4Njvt1
         pIrXdn9R7PPbcZIKHtVgUaY/Iz36wLJ0qMylScUswva4Lo+fg3grkRrGuewNNAg4fHpS
         sD4xGwKL0yVpj5VEm4Pj/EHdzoQx1mR+fVDjtNcK6zTwHtQXTHwHHm2xbaiRpwJlUGIA
         68VQ==
X-Gm-Message-State: AOAM5330Slo0gFBH6WG/FOvhP3qwJdQj1/jAV82hjr9ZcF/bWD3ZION2
	okoP2NvQSwHC6mF4LUgUCRmONKnV/CCA+fCPtidunRyqFzA=
X-Google-Smtp-Source: ABdhPJwpXToBPyv+Q6StIG4LgMgUITWPEspD2ltSzzoHI/POasDQ2tuWNxFpndkiTSktcjnX3KoNsJvOrgGv1vYlj5E=
X-Received: by 2002:a19:ac4c:: with SMTP id r12mr5608179lfc.217.1630051822985;
 Fri, 27 Aug 2021 01:10:22 -0700 (PDT)
MIME-Version: 1.0
From: "Ivan Riabtsov" <ivriabtsov@gmail.com>
Date: Fri, 27 Aug 2021 11:10:12 +0300
Message-ID: <CAKAnv4HzhLS+X1Ld9EOCVDaSR4G25i6v7sou0h2=g2p_60SE-w@mail.gmail.com>
Subject: building mbpoll
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi All. i need to build mbpoll git://github.com/epsilonrt/mbpoll
I was created layer:

ivr@home-machine:~/work/yocto_orig/sources/meta-mbpoll/recipes-mbpoll/mbpoll
$ cat mbpoll_1.4.11.bb
SUMMARY = "bitbake-layers recipe"
DESCRIPTION = "mbpoll recipe"
LICENSE = "CLOSED"

SRC_URI = "git://github.com/epsilonrt/mbpoll"
SRCREV = "2b385d85d919138cefe79870c87c60eaa8b0d19c"

DEPENDS = "libmodbus"

i was run:
rm -rf ./build/tmp ./build/sstate-cache ./build/deploy
and
bitbake mbpoll

i am trying to search for a package

ivr@home-machine:~/work/yocto_orig/build
$ find . -name 'mbpoll*.ipk'
./tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/mbpoll/1.4.11-r0/deploy-ipks/cortexa7t2hf-neon-vfpv4/mbpoll-dev_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
./tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/mbpoll/1.4.11-r0/deploy-ipks/cortexa7t2hf-neon-vfpv4/mbpoll-dbg_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
./deploy/ipk/cortexa7t2hf-neon-vfpv4/mbpoll-dev_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
./deploy/ipk/cortexa7t2hf-neon-vfpv4/mbpoll-dbg_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk

but i have only debug and dev packages, not simple mbpoll_version.ipk

i try to run:
bitbake -c clean mbpoll --force
and
bitbake mbpoll --force
but the task is done in a 1 second and

$ find . -name 'mbpoll*.ipk'
./tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/mbpoll/1.4.11-r0/deploy-ipks/cortexa7t2hf-neon-vfpv4/mbpoll-dev_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
./tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/mbpoll/1.4.11-r0/deploy-ipks/cortexa7t2hf-neon-vfpv4/mbpoll-dbg_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
./deploy/ipk/cortexa7t2hf-neon-vfpv4/mbpoll-dev_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk
./deploy/ipk/cortexa7t2hf-neon-vfpv4/mbpoll-dbg_1.4.11-r0_cortexa7t2hf-neon-vfpv4.ipk

found nothing

please tell me what am I doing wrong? Maybe I created the layer incorrectly?
