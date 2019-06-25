Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB58CE00D4D; Tue, 25 Jun 2019 10:40:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BF24E00CF4
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 10:40:49 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id u13so1661188iop.0
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 10:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Rjt94/MyWaqa12W9LpZgWHDPiO8kwIVinTj6/tcndz4=;
	b=MhH9KEl92ll9+/McFUtgwORd/+N2jcbNkA4sOt4bLjhwrSjQNy0DMMH0JdTkc3fkCw
	zvMC+MyuHn0EMB2Ri6HRBVur6/w2eiVTPndwsvpq/+cr4NrLH/V/z8k/iXzn2+pYjYgr
	b1t/9HpJs7j6lT29lRqMLRYRQYx+ZoojeRji38hOr4usO7QYyuuvcj3Ox1kv3KIsxlSx
	yn6bTDwbTt4aaKOGOPmMKEr0O4XSkVMsjPgtF7eCb8z0uxto3cCXHSM7A8gKzQad6+ou
	xiccjGmkC0UNYOprUDxDsZMbakKzfX9UwweRoWpXUvYMECnhYQZAsbKEoty6Jy+7s5ja
	icVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Rjt94/MyWaqa12W9LpZgWHDPiO8kwIVinTj6/tcndz4=;
	b=LgOErxBoikuWef3LhTKiC91XGXOBwzynunQIS3eDxDcWhtHYNWgJ7r0Hp69LoLh1hT
	5yzMqzM/vMCNOL9/cS0j3ukJz2ItX6sPmNha+33xqtAWflunf2jlL+CddmHv1/A8bWfP
	pdYC+AroWYddwwa5HHfRGeWNYE6XTPFq+hiHGZ5+SFsJo1nZF1DWyWy5OBolNdqg7avS
	np9d9HMu10FeJLv/mv/zCO2dN/w5m/93EmqcCD89EvJWreEmWxSf4vdNdZvYtetfRzWs
	k+2TWnFXKt3zfp0VtU+dRNWXQc9V2e1S6eOS7ryBtCxxMSgAeJFhOa4Ny1xMHmY2ECew
	FTGg==
X-Gm-Message-State: APjAAAUhZ4VvQ43/JgS6RrdQKNcwS++vnmek/KUH4ryS6ruQBaYewZeB
	9pWo4dX/ylnTFyopowDETDyqzIvCA2+kmKW8Uv/Rm295
X-Google-Smtp-Source: APXvYqzNXwdtRiGBx1QGCSFwf1uywe2tGwFi1PyEKiQ36ex8fd31Kn/QGH04wLe4GdWrAvBX7ZJrqclfuD25debF7eM=
X-Received: by 2002:a02:3217:: with SMTP id j23mr15831862jaa.79.1561484448701; 
	Tue, 25 Jun 2019 10:40:48 -0700 (PDT)
MIME-Version: 1.0
References: <189257CBB431F1479EBC576E65F28F0C17FF257C@NAEANRFKXM02V.nadsusea.nads.navy.mil>
In-Reply-To: <189257CBB431F1479EBC576E65F28F0C17FF257C@NAEANRFKXM02V.nadsusea.nads.navy.mil>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Jun 2019 18:40:36 +0100
Message-ID: <CAJTo0LbzdppP_nsu2EEhsqNVm=gjcG7YoLA45OfyRrtnMiAzCA@mail.gmail.com>
To: "Elliott, Alexander L CIV USN NAVSURFWARCEN DAH VA (USA)"
	<alexander.l.elliott@navy.mil>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto recipe error
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
X-List-Received-Date: Tue, 25 Jun 2019 17:40:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Jun 2019 at 17:47, Elliott, Alexander L CIV USN
NAVSURFWARCEN DAH VA (USA) <alexander.l.elliott@navy.mil> wrote:
> RDEPENDS_${PN} = "libgcc_s.so.1"

You RDEPENDS on other package, not filenames.

RDEPENDS_${PN} = "libgcc"

Ross

