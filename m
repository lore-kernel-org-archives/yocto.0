Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F133EE00B01; Thu, 12 Apr 2018 07:39:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEAF9E00708
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 07:39:26 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id c188so6260080qkg.2
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 07:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Sl8Mfg2boXDRX0BtpPEUONCKV50S/BpmDkoKOA1KkSo=;
	b=ETAbyoxTwwd3uDGFfoM6qlXNMFjqaarYgpYH+PgIWNiEsApH8ducF1TyGRm+HLCvfX
	quNtROQYj7hXuWP6Bew24V0klXtaLBJ5otkD5tfhdNUlcGC7UDhXk5mN47AUh8Js2qGB
	Uqp9GS7U6SG7MXhDs4fEz9GOkc/J7YSZS2QE0nw2b7pXLhgwiMouoLI9Xxnm58bwK+x7
	GKNuHXkl9Fp6RvndKzDhGxGqHlJd1B3sXbew01MUAtIsa1/Ff3dp0GMs4gdqHVpV071m
	CfQC4AcT48LX8Cpun3yTeMZWJUveaZY1MAOzW6m5hVa7YbWRtC+zeDcC45WaLfofpfgo
	KACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Sl8Mfg2boXDRX0BtpPEUONCKV50S/BpmDkoKOA1KkSo=;
	b=SHcnfgfEaB4eCMMQ+/ylNDvYPlvadIFfXLvo1DwG7bJpeVoxhsZ4evJp/rEa5JqEZY
	lC+6A/fTzNb+Xy9CZ3fZ5W2bC2QTu+VYbKcO49gQW/DRR6VextTPsoLUsLEtr2guHRho
	ndo86K20YEmKYGyvFiyUPEDAgoWpg05BhttN5pHTXnSn38wnzKAjK1kgNVe7IfFypr0Z
	xVOG+aVMKA058BIYnZyATl63sm0nyWTTJQkSYuN1H38hdI0x8szCg/6ehREAKn4XnvpF
	ttYRez7sEHLc2H29zofCeSK6G6EbyNIcFz2QYqBj9AXFB4PmdwyLWDovk1yC8INRKLie
	UxlQ==
X-Gm-Message-State: ALQs6tBwNOjz/R3tQSPqfmCbcYhFYW6T9Aw6VHyiDK99h0/M+UAV0VTS
	uZ+w6xFvrQI5w1NV+Ir3e4KfgQx462MiRYTteKk=
X-Google-Smtp-Source: AIpwx49pE+anGRWuU2kp9cvQXvVpwmrZ/64NTsy0nSU88pcqWFe7fcv0YjmvRXjhIVr3SAwB08zLavmBdIuYIClbtO4=
X-Received: by 10.55.127.3 with SMTP id a3mr1582321qkd.336.1523543965430; Thu,
	12 Apr 2018 07:39:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.247.141 with HTTP; Thu, 12 Apr 2018 07:39:24 -0700 (PDT)
In-Reply-To: <E3DACD6AA0B26143AF16244886B5278E1FE91C49@MBCHN01.chn.nestgroup.net>
References: <E3DACD6AA0B26143AF16244886B5278E1FE91C49@MBCHN01.chn.nestgroup.net>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 12 Apr 2018 16:39:24 +0200
Message-ID: <CAGAf8LzjramO-HUKMWLtARUGw=OKA3D5dQB5n5UcTUxAUp+zFA@mail.gmail.com>
To: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to update OpenCV to 3.3 in Krogoth branch of Yocto in i.MX6
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
X-List-Received-Date: Thu, 12 Apr 2018 14:39:28 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Nishina,

Any progress on the issue?

Thank you,
Zoran
_______

On Tue, Apr 10, 2018 at 8:47 AM, Nishina A. Pervin
<Nishina.Pervin@nestgroup.net> wrote:
> Hi,
>
>
>
> How can we update OpenCV to 3.3 from 3.1 in Krogoth branch of Yocto for
> i.MX6 board
>
>
>
> Regards,
>
> Nishina
>
> ________________________________
>
> Confidentiality Statement / Disclaimer : This message and any attachments is
> intended for the sole use of the intended recipient. It may contain
> confidential information. Any unauthorized use, dissemination or
> modification is strictly prohibited. If you are not the intended recipient,
> please notify the sender immediately then delete it from all your systems,
> and do not copy, use or print. Internet communications are not secure and it
> is the responsibility of the recipient to make sure that it is
> virus/malicious code exempt.
>
> The company/sender cannot be responsible for any unauthorized alterations or
> modifications made to the contents. If you require any form of confirmation
> of the contents, please contact the company/sender. The company/sender is
> not liable for any errors or omissions in the content of this message.
>
> ________________________________
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

