Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65B59E00CE7; Wed, 25 Jul 2018 12:26:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 047DFE00CC8
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 12:26:56 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id r10-v6so5816434uao.1
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 12:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BSihGrKE6YGRamq0FXJLdEomUXgogGjv+q/jdzwueaM=;
	b=esDwx1nHZ6O9n+ahW3Utihrhen9j5BywpDc3GbQCU3t3y/8ZWUTGLTOMu5mj9c+DMW
	WDpTpNcrzORiPDm/8mrZOgQA+cmMiM9+2i9q4+MwU73A8/YAwP7gO44QggSDcuaDj9sb
	VA6ZDnOPteIe8Va+lUejYho93ePGrnPnApSen0ui/VYSuq5Lq/bbaZyx7GvuT5HtPna7
	PX/anrvQHj/XLIc3y5oEOBclC3puW5q+ZbqJjsqwieZi4B9dBl/VVnt9NQA/GIcOkUjt
	l0xZ2hrExUEFSSKFPfUu3GjKGxFqOeyd1iNWbX48aZeHNt84qJV/1w51ruk4DtX+6Rb6
	p6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BSihGrKE6YGRamq0FXJLdEomUXgogGjv+q/jdzwueaM=;
	b=buRY5qrY8bVl9rAxckHo8Dw30bkaBeD5W//7r5aECK02TWApyavz8Nv1URLqz7Gfy/
	eKR8FydNdNRWQBhVo9LL/HVRQREBXlUtLcG7dSavourYBKAaucumEqTXH/wXMr/PLHBj
	VE0AzycG05jxgNptC9oujC9/khh8aIbF16NL+v6jozAJYBEeRsmuxWDQxMVUpomY7Qi7
	55n+InJWJ1umNSd6pOlMmlBQVpLbgnGk6MFmUqkDTc5K45bLx4nYwuCpOGmsy1nvtWj2
	frtTMUbqQCbugAoUwhyxy6e3qbbpYXzeDVuwr0r5cmiM2Z64eEcGyTU0GIbp2aNd/o0p
	dRzg==
X-Gm-Message-State: AOUpUlE4lsXpMZktDmm7Lix+h1XL/LIWN5HfiINnX0uw2TNcIsScOw/h
	2eoawdR+Tg9gaFZHg7XK72sH8cUNxHOe40UJ9pQ=
X-Google-Smtp-Source: AAOMgpfvl75ZZs04Nr1UBzRZe40uqmbuAmPMBhax7Goi5XCrmry8J387s0x8vlXbqqO9CEUIg48Z9VvaIETCy1s0EtQ=
X-Received: by 2002:a9f:3f8c:: with SMTP id
	k12-v6mr15908793uaj.38.1532546816326; 
	Wed, 25 Jul 2018 12:26:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Wed, 25 Jul 2018 12:26:55 -0700 (PDT)
In-Reply-To: <CANmTPBb=YUAtLAqXz89GTbcpxt=o1uSRzaRhXVei8Dh6BtYEFg@mail.gmail.com>
References: <CANmTPBb=YUAtLAqXz89GTbcpxt=o1uSRzaRhXVei8Dh6BtYEFg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 25 Jul 2018 12:26:55 -0700
Message-ID: <CAJ86T=VhRDCrir+7UTGurE32kgwAuRM2n3jWNFiofEA_uEehNg@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to enable http2 for Apache?
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
X-List-Received-Date: Wed, 25 Jul 2018 19:26:57 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 25, 2018 at 11:17 AM, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> Hi,
>
> What is the best way to enable http2 for Apache?
>
> Do I add
>
> COMMON_EXTRA_OECONF_append_pn-apache2 = "--enable-http2"
>
> in local.conf ?

No.

Wondering what process you went through to arrive at that?

