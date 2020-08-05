Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web12.3969.1596621617239456476
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 03:00:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=d1TdcgjT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id a5so30124507wrm.6
        for <yocto@lists.yoctoproject.org>; Wed, 05 Aug 2020 03:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=EM5mOqINvTTnMRhOunHpDwIrW0phuos1EPPArqL5r2o=;
        b=d1TdcgjTzWdqJNyFHPspTibnXSDU4dmBfBFPKYWrAPBUtvDTaQQNEVk47c86tQwh2/
         VWjH6Y5+e0BpLTeoUtpzJzdGMsjnlhzxBcQAj8Q5sxJKvdC6K7u2wCyp48GdbyztCp7q
         tv3LGNfgsBTv+YUsSjfD8wqlJe/uO2h/7urdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=EM5mOqINvTTnMRhOunHpDwIrW0phuos1EPPArqL5r2o=;
        b=fFCCjGZduRncaeQXqlqoqjVh8ZqiShPEozuZ1C7Yo7F5pIH0fsBz9BUmHEp3NHKLIF
         +c0yNEfzv/Uor0956DZjsa1RiRYiu2E1vjo2OAvW3MmWyStqPf6qaZet49T++qzDiFcr
         VErtUQOKG+U+Yc/5fUcVxvztMA+V0yDV1DaoTkAuNOf6TKPIlRs+f6t7rcr4gyztp7/I
         9j4mGv1oHc68WeJ2nil83CfwAIU3L7GcMY9ckOz9SulYxv6fd7tqXUCbvIh0co3WH8jw
         XYwFfo3SxK8nRnnzQ/3Fihb7SJtgCwWlEyFgQ08QzafVvZ0HEZWl4CPQfOSUigw62FGQ
         nfgw==
X-Gm-Message-State: AOAM532d0VIkhLNKjNRlbZPJA9kShMReud+TUz1HHiCFhLZYMI8tMzcx
	XnISf5KAu39YBWf1p6vVidPbmA==
X-Google-Smtp-Source: ABdhPJxFt5NH+aQ23rcRWywz0BhAtkIDtoPtqvJFKvIMrFb9NzL/exqKlK+gwbRJjr79FuoJe+kirA==
X-Received: by 2002:adf:d08d:: with SMTP id y13mr2203673wrh.313.1596621614876;
        Wed, 05 Aug 2020 03:00:14 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 1.8.8.2.4.4.9.8.7.6.b.0.9.5.0.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (1.8.8.2.4.4.9.8.7.6.b.0.9.5.0.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:7059:b67:8944:2881])
        by smtp.gmail.com with ESMTPSA id j24sm2251987wrb.49.2020.08.05.03.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2020 03:00:14 -0700 (PDT)
Message-ID: <74e291b3cad363050f382fe58b1dc91f6ebbe43b.camel@linuxfoundation.org>
Subject: Re: [yocto] Yocto host not found
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: rick.liu@broadcom.com, FLoraVLogs <eripflo@gmail.com>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, Josef Holzmayr-Khosh
	Amoz <jester@theyoctojester.info>, yocto@lists.yoctoproject.org
Date: Wed, 05 Aug 2020 11:00:12 +0100
In-Reply-To: <CAKmBsaa9mLYvA3gQfbR9vTW1F728Qz2Yb-qw5tKtR4iA2F-1bg@mail.gmail.com>
References: 
	<CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
	 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
	 <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
	 <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
	 <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com>
	 <CAGhBkzxZnZ+TK+k0b_kOFFGvtyJ0RAwz8iFGMsbtVY5RAz5pyw@mail.gmail.com>
	 <CAEt6NwqMKnWxKqQEWhVcgAYnaxwD2KeC-G4KA1biMmdL2KBang@mail.gmail.com>
	 <CAGhBkzxBtGuzkuT69UQZUL+4Q_YL8adoWd=kZZF5FQZLD2gO+w@mail.gmail.com>
	 <CADfgfoYbR8nNgXZ+dfByGUJtGhhVrRZyaBYoCQ-fntr5OGUaMw@mail.gmail.com>
	 <CAGhBkzwNrnGxSfipxXxqK0=GEznsjw0Vs7=QTFHRkpv=vQgH2w@mail.gmail.com>
	 <CAKmBsaa9mLYvA3gQfbR9vTW1F728Qz2Yb-qw5tKtR4iA2F-1bg@mail.gmail.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-08-04 at 14:10 -0700, Rick Liu via lists.yoctoproject.org
wrote:
> Does http://downloads.yoctoproject.org/ have HA or hot-backup
> machine?
> Is there an instruction on how to create a  
> http://downloads.yoctoproject.org/  local mirror and sync?

The standard DL_DIR should be enough for normal builds to work, based
on Scott's questions, it sounds like there is some issue somewhere
which would be worth looking into. I don't see that issue locally or on
the autobuilder infrastructure so its hard for me to say what is wrong.

Regarding HA or hot-backup, our resilience places are supposed to be
that:

a) DL_DIR should allow existing builds to work
b) kernel.org has a partial mirror of the key components
c) we just have to accept the autobuilder would be unavailable in the 
   case of NAS failure until its repaired

It sounds like something isn't working quite right for a) to be having
an issue.

We'd love to have more server infrastructure and have things like hot
backup machines. Our budgets and infrastructure allow us to have what
we have. I'd note that broadcom were once a silver member but dropped
project membership, sadly :(. We do the best we can with what we have.

Cheers,

Richard


