Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02A0BE00852; Fri, 12 May 2017 12:32:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.180 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9AE3E00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:32:19 -0700 (PDT)
Received: by mail-ua0-f180.google.com with SMTP id j17so52329018uag.3
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sVdmOEvZ4NqPlnjXrKWbsNSIrJ8BZZBeet7KYFO9lU8=;
	b=NSdUdcyIcmBEND4rdv08PkfcEBIcL6ls2qb0D6duPIV+nGXvQBXfihzWPTnxuQNMQU
	v73fqXIGDAmtnDhC7/vYvcYjrEPJdLG+xHuBKNmU6l8BL32/67k02/HKpQtS0HiBrvoU
	o4o1sM3gSqjk+LJllvj3A8J1mminq8Gjn8ohjb/Y/MH44b0QzMm5ozrKgwkjQRKEzfEV
	8dQYyd59ePteBQnXsUXC4CLx1gmLnWWhoy9VSWidW9JTWnqj8Jy1hzGPyDz7lCXvgOX2
	HjmcyXwv/zOT5EOXwHbIodLnAYePx6qt99ktyUPFYljCS/kRzxt/LV6sQe/+wr2D6cCU
	okNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sVdmOEvZ4NqPlnjXrKWbsNSIrJ8BZZBeet7KYFO9lU8=;
	b=fbolZ7UVhe50qRDFF/k9H/C1bkS4/A1OZefmb5caAEfKVz+3QRaqEBw8HJcH2Ud1cu
	nWC8r8PIBNhlnm8kTuOlImK2xCORplVrb0/v+BtNhUY4Ah3I3PvuBuCA0cM32AcOfHbH
	HKR7m8+O9bP3cL4dEHFTTyKtZ73IK+68By0VGiyQDlaNWEqNQ3aXwo8tuol40Tkkk8XW
	DbLPKB6uGSDfwZzn9Hcl0bLkKb/SJulnlLUSyfbJSUPsEc7jxIuzeeS4QQHYeY3pBFfX
	rVk23HHM+CV3S62gahlAe8WjzRwtJuoNPzS0TCz0ZkYfnFL2tWuIcnCdvUCvPkFYaKkk
	y9Ig==
X-Gm-Message-State: AODbwcD/AkJa5Hvrq1ci9VXrRWTiCR/mRJqj2Brs7W1s+1I97yN4D25W
	x0/p23WAW0/KwdL5cQ9s68VnditzLQ==
X-Received: by 10.159.37.105 with SMTP id 96mr3018845uaz.92.1494617538289;
	Fri, 12 May 2017 12:32:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Fri, 12 May 2017 12:32:17 -0700 (PDT)
In-Reply-To: <CAFq4t4gKvAj=ne_fL4ah6a18rP0_PCveqBvzFvBqX8YwkkOwCg@mail.gmail.com>
References: <CAFq4t4gKvAj=ne_fL4ah6a18rP0_PCveqBvzFvBqX8YwkkOwCg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 12 May 2017 15:32:17 -0400
Message-ID: <CAHUNapR8kNs89_RjU7FpLoqnGbuD0xcnP8meU5P-KmBovWFZWA@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: dhcp eth0 network
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
X-List-Received-Date: Fri, 12 May 2017 19:32:22 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Peter,

For what MACHINE are you building? What's your target hardware? Can
you summarize the steps you took to build your image?

What do you want eth0 to do? dhcp or static ip?

Best regards,
    Trevor


On Fri, May 12, 2017 at 12:01 PM, Peter Balazovic
<balazovic.peter@gmail.com> wrote:
> Dears,
>
> I got Yocto image and unfortunatelly network is not somehow enabled &
> proprely configured. After "ifconfig" no eth0 configured.
>
>
>> ifconfig
> lo    Link encap:Local Loopback
>        inet addr:127.0.0.1 Mask:255.0.0.0
>  ....
>
>
>
>> /etc/network
>> ls
> if-down.d if-post-down.d if-pre-up.d  if-up.d
>
>
> How should I setup "eth0" to get network working properly?
>
> Thanks.
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

