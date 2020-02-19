Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.68.1582148877005951647
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:47:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=QFrx1IZS;
 spf=softfail (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9CA2E01564; Wed, 19 Feb 2020 13:47:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C016E01432
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 13:47:56 -0800 (PST)
Received: by mail-lj1-f182.google.com with SMTP id y6so2024364lji.0
        for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 13:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KmLU40H4If4CfKhwl3EzD+kjaPfdojZNmd1Dnc8uKVE=;
        b=QFrx1IZSc6lK3x8Lopl0ObbvubeOemmKaAx5TMwjFCMyGsUOkW4EbhH72sXW1hfiAZ
         KjYelf9WHDJFD/mEAcTfIETdGntztq4Tx6te5o1iJBQBQI9mUacaaPXGGjFkmJmVJ09a
         X0bB9x7HuRIHNXMtdazUHUWfo77vyHefg++lRK54LaMvTDmwK+YkWU+OBhtVvgDoC7BT
         ff61bc3+2oq4PXYxc2JfaZF/5qSEi1s+3A1d8aqp8GzdMt1+m0ELpvs3kjMuiaUmZwaD
         RUsc6Z+HWTI40N9eiYGoJYsFSrlEhfd17wMt3hDtpL3RRjvLwshsXpE8F5Wzlu0I0T2B
         FUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KmLU40H4If4CfKhwl3EzD+kjaPfdojZNmd1Dnc8uKVE=;
        b=gWqcqHqKNqU5OqzGp9FfhAqOPqos7qORBFaphJH+5QQzL0/wv8ifxlJXNVwpPUB7Be
         h54n43txn0caKmnQxqu1t/6HawOvwclDRacct9rRU1GRYSEhOf7spSuuwNqePuSLQXqP
         VUpZuifHEnFiBBeW9MoFYHTuijIHfQyqx2jHIgMnfLwhxFtBEh5zY/0HbFfTIpDsyZpI
         BADM8RHs9iMGbCM59MBRdJth9wqS7tCcbVnAA4zovz5dB2/KsWia3A+6bZAgEn4LKOb3
         VPuYlo1ixh8JESJI/PS0uNVIHbUGq3MYYMoONL6X3SRYHI/IJLuYFuMk72/nPIm8J53y
         sEHw==
X-Gm-Message-State: APjAAAWb1FBx8AGcX0Y9czAsBHWRrZm5FucHtok+lZ7u8kKmj6A3gh9G
	LGcj6N923murr2hCDRWv+4fo3XZP70KgejX3KO10GLFlYhz1OzI5
X-Google-Smtp-Source: APXvYqwBNwn/tDLOOz6PiSa+Cwf/bpWn9ZqwUifGKtLUMmvrOhdyVqCTuBvYXHvp8dhlFdXyy2e2kaNWkA8/LhBIxm0=
X-Received: by 2002:a2e:5854:: with SMTP id x20mr15925239ljd.287.1582148874987;
 Wed, 19 Feb 2020 13:47:54 -0800 (PST)
MIME-Version: 1.0
References: <9aac3a48-d611-4e0f-81fa-c7951f54662f@email.android.com>
In-Reply-To: <9aac3a48-d611-4e0f-81fa-c7951f54662f@email.android.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 19 Feb 2020 21:47:43 +0000
Message-ID: <CAAnfSTts+XSXkfgLNdR5+rGzyb_sJVdw-RfarTOsAQLRkU9WQQ@mail.gmail.com>
Subject: Re: [yocto] Opentk Support
To: Sheraz Ali <sheraz.ali@iwavesystems.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Feb 2020 at 21:45, Sheraz Ali <sheraz.ali@iwavesystems.com> wrote:
> Does anyone know how to enable opentk in yocto ( i.e is it available )

https://layers.openembedded.org/layerindex/branch/master/recipes/?q=opentk
says that there are not any known recipes, so you'll have to write one
yourself.

Ross
