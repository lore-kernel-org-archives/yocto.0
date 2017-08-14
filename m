Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF62BE00D01; Sun, 13 Aug 2017 21:21:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C1E5E00AD0
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 21:21:00 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id u5so39059586pgn.0
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 21:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Wa0Gl+/IY0kdQynZ6N8vbpSBR5iU3m+66kpWyJGSawo=;
	b=SYFUGHgwokHpwjnSyNhdM+uFE1O7afvqbzAL8/MsaRkqrvruV9xDcCE9HQbF/asat+
	LaZuoS9K/7u/iWCT38b63+q1wlg/pOjjXXuz0asHzW0U75mePi3p8xrX9SYTDNjSKm2f
	g4JpZqL0jaqFXpYs+UwhTVZTtkXvwu+YM4m0DBaWpcscsmQ3YgdTr42doNzW33RJQqbI
	uXi//I2zZRCbaOmhC91XnbRKyUVL2VbgFAwMXTC8uQ3B3f3927eRYzeYVVjJexRrvtMQ
	Nau0Qy5feYD465WbEsj3Z91V2GGnMx9VNuU5nEmErVhC2XLXe+Sec5NBoMAb4+A3FgSf
	MjuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Wa0Gl+/IY0kdQynZ6N8vbpSBR5iU3m+66kpWyJGSawo=;
	b=OqHenl81fdY+gNpiMcKMJjhwSN02gbNSM57Zc0lCsF0mMRVi1VlTL/bRpM5KDF4uV0
	HSSoutJTnojyqysmw6XfmBrwfyCodYr1C8YSVFaKbsHVg75ARqYztzvPqf4L8YgWg02W
	EUb9FhOsxlmEcpo5NSp0YsYJGONg0vv4C1NrBizEE/DvGmWWgZw6UQncur0f1pMow6DN
	Y6IIf+VvGGnsTG6AI60FQXsJFbJ7ZEr+zBL50QT2/nnqxkznY+IrGqFcOUJgYFRHl797
	R1UDOgrzMtCyP43+Ci6rdkcCeeGVKYia8NG9lDGPnubGiybSqrTG+2gC83TrtTkrixR0
	whWw==
X-Gm-Message-State: AHYfb5hBHEipf4JF5YOnSsYx9TUS5wEY3AnlfZ2lH4XXldHuFe+5Ji6B
	O9HPEDNHk9fsb5nUu8BNbn0Y/5f8tA==
X-Received: by 10.84.133.14 with SMTP id 14mr26429040plf.440.1502684460500;
	Sun, 13 Aug 2017 21:21:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Sun, 13 Aug 2017 21:20:30 -0700 (PDT)
In-Reply-To: <9ad6c122-a6a4-be78-d767-b6299de00020@jacques.com.au>
References: <9ad6c122-a6a4-be78-d767-b6299de00020@jacques.com.au>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 13 Aug 2017 21:20:30 -0700
Message-ID: <CAMKF1soHZukPvaRcMF_F2KmjVsBfMQw1D+6NArJH4J2H7djKNQ@mail.gmail.com>
To: Brendan Ta <brendan.ta@jacques.com.au>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Possible to rename file when using KERNEL_DEVICETREE_APPEND?
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
X-List-Received-Date: Mon, 14 Aug 2017 04:21:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Aug 13, 2017 at 3:50 PM, Brendan Ta <brendan.ta@jacques.com.au> wrote:
>
> As the title states, I am including my modified device tree using
> KERNEL_DEVICETREE_APPEND= and I was wondering if there was the possibility
> where I could rename the file here?
>
> I understand that IMAGE_BOOT_FILES has the option of:
> IMAGE_BOOT_FILES = "oldname;newname" which uses the OpenEmbedded Image
> Creator; wic.
>
> Is it possible to easily rename the included device tree file using
> KERNEL_DEVICETREE_APPEND= ?
>

I dont think so. But you can insert a function to do so easily. See
meta-raspberrypi for some
guidance, it doesnt do exactly what you want but you can get enough
hints for what can
be done.

> Thanks
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

