Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B81DE00D2E; Thu, 17 Aug 2017 03:37:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3892CE00B01
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 03:37:57 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id f11so62250932oic.0
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 03:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=ClvTqz3DUTNjvIvU/g1INscFiv9+GBsn85xJlttxnYQ=;
	b=jEHEbMaYLWQ9JzquLdXfkxCibAfddr1OtCxSOK0tz/3RIrgyvOrZI1WgpKsKqCQiSy
	IRpVkx+bHmwMqkFfKjL101ZsLLjjx9h1H5hLplCRnfN58PGYItKSMtSZh7OkTB2OIIh1
	eigA2XTWzcyNSVDLOhDi4N2SB5k+EICt+3e67ETi8nsbSzsSUyO15DXI5YjofNqPBr2C
	z2/FWHJiRA56lArP9Yp7tMiI7SH6Iw8bu8OjWH+Z/t4Tz/K+pw8Cq36wVLVHFVBxlRhH
	h031+M6qoERuWyK4gFqe6lccifgCs0W3tfl/4WrGMNNAHNbZMkhZz6oM8o2lU0oBtSvx
	v5UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=ClvTqz3DUTNjvIvU/g1INscFiv9+GBsn85xJlttxnYQ=;
	b=CShzjjGdH6s3BxRAX1OkGJ5w4H8BNTa0wTE/lX5Js6Fda2aTv5Es3xFypUqK++eYTv
	ga5zU/odc+oOL0U00tRZJOuQ1IBEQE0JUeJoAb6+9CJa/lRs46oVTrfm9oDqMK8ZEObS
	9plnOyxjNU3owwNowOabp4Ddy3YiPuFOwFPpU0keLtWBn6NKLQYKLVxQvlMgN6GG4FtN
	STy0j3abXt6U2QKw+8FXLCWPPuZ+GIGrYU+a3SC+J1m8lkGrEYofHgXksvYVjiMROSxL
	CmH369Vi+IxWwDfUDG+Akm8K4D7VpUFrJ1R4RjVjai2jqcNatml43jQmlCt2orrZJgam
	Bytw==
X-Gm-Message-State: AHYfb5gA08jXGeo0IyALRNDxg6rSWh6Kuogvb3h5gkEYKe6IvLnsp5Sk
	KviRxtC9dpsBC77fNEceTdQ2hsBuPg==
X-Received: by 10.202.235.140 with SMTP id j134mr5744570oih.281.1502966277422; 
	Thu, 17 Aug 2017 03:37:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.44.5 with HTTP; Thu, 17 Aug 2017 03:37:56 -0700 (PDT)
Received: by 10.74.44.5 with HTTP; Thu, 17 Aug 2017 03:37:56 -0700 (PDT)
From: Riko Ho <antonius.riko@gmail.com>
Date: Thu, 17 Aug 2017 18:37:56 +0800
Message-ID: <CAByQQ_q9bBxrK6gzn2nAj2QK9PEiOfyt_09Le27DvXpU4_54hg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: dd to nand flash chip?
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
X-List-Received-Date: Thu, 17 Aug 2017 10:37:58 -0000
Content-Type: multipart/alternative; boundary="001a113ce37e1346910556f09be8"

--001a113ce37e1346910556f09be8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Yocto Team Members=EF=BC=8C

I tried to dd *.wic to nand flash but always got kernel panic, it can not
find rootfs
when I dd the same file to sd card, it worked.

I copy only *.wic file to usb drive n dd it.
Do I need the whole directory of images for dd? or I need hddimg?

Regards,
Riko

--001a113ce37e1346910556f09be8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p>Dear Yocto Team Members=EF=BC=8C</p>
<p>I tried to dd *.wic to nand flash but always got kernel panic, it can no=
t find rootfs<br>
when I dd the same file to sd card, it worked.</p>
<p>I copy only *.wic file to usb drive n dd it. <br>
Do I need the whole directory of images for dd? or I need hddimg?</p>
<p>Regards,<br>
Riko</p>

--001a113ce37e1346910556f09be8--
