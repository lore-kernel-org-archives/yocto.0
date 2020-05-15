Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9938.1589535142838711282
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 May 2020 02:32:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@googlemail.com header.s=20161025 header.b=qRQ3TBYz;
 spf=softfail (domain: googlemail.com, ip: 140.211.169.56, mailfrom: matthias.schoepfer@googlemail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E76FE01B61; Fri, 15 May 2020 02:32:22 -0700 (PDT)
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
	*      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10A1DE01AE8
	for <yocto@yoctoproject.org>; Fri, 15 May 2020 02:32:18 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id i15so2673691wrx.10
        for <yocto@yoctoproject.org>; Fri, 15 May 2020 02:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=jljUffZFrPN+d+tXP7kuzXsW2LyMCHuhiOhD6ZxEHTA=;
        b=qRQ3TBYzL/QhT1quOLy2Qe0/tAjm8gIssyeYRit2ysUNZKPalvK9G0Qz1Z62/uDpA5
         FnflpZKD6gNsJIBvA3WWmqqgeUSjvQt/WcJ4L4Ecgyty0EUYqk/sc3+CI7cq8FUjxlOc
         QcusDKqt5JORXtLKyUen1WCKf6aETib0aHuWbGEx095NlMbVu+538smnXGguiVMAE88z
         bXTkLcj76J6+Z8ESPI7RY7E5UREy40uD9ZDDCLqzvqIrsYiSZp9ALpog/wh5eGyhttuk
         qvaayzfIteYKWH4+uxU1wo7XY3sUx/iNZZPNZlrDv2S31RCwxvC2ZuJXlqJtTBf5w815
         LJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=jljUffZFrPN+d+tXP7kuzXsW2LyMCHuhiOhD6ZxEHTA=;
        b=CKiuL4bdgATjU9S9JnwZi7fMOT4TcSEdIhxZ677TdjOSNcWzV7GV7FDHmQFOIZhhKb
         R499wZzuCUPDJuiYq4mrFOtcVnfP3eKSOWmeXde1jxsN7AbbgZzqbpiNFVrQcoF443AM
         LUJF+1fi2/BFF70UnXbb3UrWkt4gx3jSrDzBiCjyc4l8ABe7PnU/YMFybJeOt14kBUl4
         p0ZbkEydPKUtB3e0ivICWwbOJbIylCAT1h2ZyfgxSiS02xfnYF/X/1xwv73xsl1jXVHe
         xyA859Y+FiSDfcr/vluY43EeZzK152MxcAHWIWzSxm0UluuVGrab7y56im/JB0sR5JEl
         t5cQ==
X-Gm-Message-State: AOAM533gyuD53bRfGgm5FxUPFkjNRDhHSczYBuLkyMlxEHSooSvhHk17
	QdPFF83gE4mIFXNLqUTlOqplfPW0
X-Google-Smtp-Source: ABdhPJzxqgBBWDfA5mwYfAe4/ooV8PLou18rKLsN35yzkcpq7QVwgxZzGsALfq5oY8vZVlvUYgUDvQ==
X-Received: by 2002:a5d:6806:: with SMTP id w6mr3365328wru.324.1589535136793;
        Fri, 15 May 2020 02:32:16 -0700 (PDT)
Received: from ?IPv6:2003:f8:5702:6d00:765:17e2:2464:fe5c? (p200300f857026d00076517e22464fe5c.dip0.t-ipconnect.de. [2003:f8:5702:6d00:765:17e2:2464:fe5c])
        by smtp.gmail.com with ESMTPSA id z132sm2936065wmc.29.2020.05.15.02.32.15
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 02:32:15 -0700 (PDT)
To: Yocto-mailing-list <yocto@yoctoproject.org>
From: "Matthias Schoepfer" <matthias.schoepfer@googlemail.com>
Subject: Package libgcc-lic cannot be installed into the image because it has incompatible license(s): GPL-3.0
Message-ID: <5e93c06b-61a1-a89c-a2f7-0dadda804be2@googlemail.com>
Date: Fri, 15 May 2020 11:32:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi!

I am trying to migrate to dunfell. Out customer does not want GPLv3 or=20
anything like that on the firmware.

So - same as in zeus - we have a line:

INCOMPATIBLE_LICENSE =3D "GPLv3 LGPLv3 GPLv3+ LGPLv3+ GPL-3.0 LGPL-3.0=20
AGPL-3.0"

during do_rootfs, the process fails with:

do_rootfs: Package libgcc-lic cannot be installed into the image because=20
it has incompatible license(s): GPL-3.0

The package basically consists of the license information for libgcc,=20
libgcc is allowed due to the linking exception.

Even, when I try to allow this package with something like this:

INCOMPATIBLE_LICENSE_pn-libgcc-lic =3D ""
INCOMPATIBLE_LICENSE_pn-libgcc =3D ""

which has worked in the past to have an in house debug image with the=20
gdbserver on it, it still fails.

Am I the first to experience this? Am I doing something wrong?

We do

COPY_LIC_MANIFEST =3D "1"
COPY_LIC_DIRS =3D "1"
LICENSE_CREATE_PACKAGE =3D "1"

as well, if that info is needed.

Any help would be appreciated.

Thanks and Regards,

 =C2=A0 Matthias

