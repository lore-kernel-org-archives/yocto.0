Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9015.1598435886879603745
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 02:58:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NF5xFnFE;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65351E0209C; Wed, 26 Aug 2020 02:58:06 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.46 listed in list.dnswl.org]
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79E60E0205B
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 02:58:04 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id l63so1186603edl.9
        for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 02:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=J9ovL16kEOuHzwgo3iVokZvaIsNZW7COxppT4SAdOqQ=;
        b=NF5xFnFEwlM0oS0bEOwhzHgPas9L/7InDggUqmRRaG0eRb8EGK3X4/kfo18mHJtWyx
         Lrjtjpu2NwXfoao9vpwkZfZUL2RPRl38S8g1OE5FykHOupNvvaQjiyS6zYbEVhMyI1jM
         JmrRX5+G2c5sXmCN+f/8LA6VncPG+1+1wG4rx0LYMRpU+YEbg/q+S9vjvYotGj0dCcOi
         sJN9klDhUE8OO5WvUhaKpkF1l579mgx5C5Ygtvg/Eh+zGiuJ30f5aDD8ecjrcvKzrXy6
         YzqFKwTBzsYDVnXWXS+sYk4BRwl0nzGnNsmx8lVSUe4HVB0ZQ+2dhaYd40E3+Z1jl6KU
         3SHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=J9ovL16kEOuHzwgo3iVokZvaIsNZW7COxppT4SAdOqQ=;
        b=LNHUaf0TqWYBunspvO8bvogP2PAI0Vg+YeTKzbILub0rV2HLkUWb6kuLz4ZbUumCb8
         WMq8/ICuW8vkxGC27AgBAMeCNEV46kt9+WYY/dsDyPaiH7MKcPEpPYTFvwvrthv0qbBg
         K4/PMSrQTVHTXhu8ZYcvl8RG/f8hsxNHKGxxprpZAYzeoue3tj7DFQKS94knd3pUc0CW
         IkH8qScGRuOt7J53vTi4gODuKVkJ6fetjEx4Nr6JwtVa4GDbXqlkmurPojSE+cfoeJLy
         PnWXWVlhhNRyP49GzyI3fLjz6T3lxlvM5L54mvUlDfcnUals68ZvbyBvZ+rBnv0YFdXG
         5EWA==
X-Gm-Message-State: AOAM532XfRV6G41xPeMhSObsQyQiXG69qSVjDTei55+xPEn35bvK23M7
	L5Qw8CsvgyEoJH83fy7FgE1NHC9qT2NxTZRFV5Gx6hNW
X-Google-Smtp-Source: ABdhPJwSXOX+nsP6ayGrm1lSNrdkJniNooG7tXIV+OWxi71YaeZGkL7+hJYJaTPgoKXQCgvghxbjJiwXHwQbMu9MIZk=
X-Received: by 2002:a05:6402:1386:: with SMTP id b6mr14101688edv.296.1598435883895;
 Wed, 26 Aug 2020 02:58:03 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 26 Aug 2020 11:57:53 +0200
Message-ID: <CAAfyv37Ak_W5My6m22Lv2iLEJBTDKqJU5HK52MON5siHf0NDNA@mail.gmail.com>
Subject: meson cuda compilation
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to compile a simple cuda application which is built using
the meson build system. I have an issue that meson looks for nvcc
compiler on my host and I don't have installed cuda-nvcc compiler
(just use cuda-nvcc-native as dependency). Can we somehow force meson
not to search the local host for compilers?

Thanks and regards,

marek

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
