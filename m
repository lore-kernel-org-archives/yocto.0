Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49BB8E007D1; Thu, 16 Aug 2018 09:39:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7043E006B3
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 09:39:46 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id w126-v6so9142678oie.7
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 09:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=g1ONIxP4bhfZlg3nYTuJX7NgnZO+NfNRxSpuuGCKpBA=;
	b=nwq41kNjuVDqwn+ctSSabryiVL1MB06wSnnKfqs9SIiV4JPwLHS8gFK+nGUD+0+3r/
	BLgd00RBKn/5zfpu7/VeVK6IhJK2jrWEGBrwd6/2GmuzD1LSoM4SL7fx/iyIbjvohd7K
	uvwgCx3G8bO1QoNs4ywLFpXp3JakaEk+U4ku2xoGHZ9aWgctkdYmeR+xzscigEy1sEYg
	JXsIgOByBre8P/P8jdrI+3vTOWOZLS/eYQ27I9WgV4mVuA7k9+wCVplydn0qY+l3xkKJ
	Hjbz77Qzvq6lQn+6q+nxq9Rwu3QsJDoulvzEolNX7eqVgT9Vq6F4oJ33dBHJm7SHRTrM
	eWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=g1ONIxP4bhfZlg3nYTuJX7NgnZO+NfNRxSpuuGCKpBA=;
	b=MAtrhWVYDDems5wUrjGaz5A1CWPFj24T7REJVKDlxscneEMLXUP4NRkTR7SWArqoJA
	UL8qDvb2ka7o41M9JP+fkEvJz8HFNAP+6iXshNT0iENmQ/bnzZFIxGBD+yTkHBuXPGOF
	UYfECPpEAPN0jDyKGULHBqYEnVVJv78t2h+nNyOuCj42/FB2I/REQl4EDnXIvMeOVi9B
	gwKcpCwSqWD5gYgMlwojuMoIJechOjES6PeBRxZl/4LuEnYNB3RFAhhYXfPGzXZFehR5
	EyGW22uzw5XwGfLmfCTWE1AD6FK/RAy2MgErLCY9lUwg46yGvvFTHENfq2qKIN2SrPGF
	s65Q==
X-Gm-Message-State: AOUpUlGbjfUYTXNt/UmpXPNEfzyEudr66bycQckyJahcsBpp9nHcqJwJ
	KPrI52JjaP6aHqhhh561H098Qti85JURz7bFKp0=
X-Google-Smtp-Source: AA+uWPxtkMX+TMEsgA21bEUpjpIAcmFJfGxhbf9eGQBv0STTGCxagaNCqIJ/QvboKxqhdKajoZnf1iHVv4LL/PD40ZQ=
X-Received: by 2002:aca:d015:: with SMTP id
	h21-v6mr33910630oig.142.1534437586311; 
	Thu, 16 Aug 2018 09:39:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Thu, 16 Aug 2018 09:39:45
	-0700 (PDT)
In-Reply-To: <b491d4eb-ac8e-151f-0c56-2bd37a962d35@gmail.com>
References: <634408b8-bb9e-2f06-2633-9b53ff1c568a@googlemail.com>
	<b491d4eb-ac8e-151f-0c56-2bd37a962d35@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 16 Aug 2018 18:39:45 +0200
Message-ID: <CANNYZj-NN6OdbU5UU7SatKU4wsptaZ=J1Ctzjnxy7n8wOwbGzQ@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: sumo missing recipe for kernel 4.4
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
X-List-Received-Date: Thu, 16 Aug 2018 16:39:47 -0000
Content-Type: text/plain; charset="UTF-8"

I see this in the commit history:

    As was previously announced, anything older than 4.14 is being
    dropped in the master/release branches to better support newer
    processors and to ensure that safe/secure kernels are the
    defaults for all builds. The time required to update the older
    kernels with constant updates (more than just CVEs) is not
    justified in new releases.


As usual, Yocto is what you make it. Not happy that 4.4 is gone? Make
a layer that brings it back :)

Alex

2018-08-16 18:32 GMT+02:00 akuster808 <akuster808@gmail.com>:
>
> Mattias,
>
> On 08/16/2018 07:20 AM, Matthias Schoepfer wrote:
>
> Hi!
>
> I might be a little late to the party but ... what is the rational
> behind removing kernel recipe for kernel 4.4 from sumo (and later).
>
>
> We typically support Mainline, latest stable and LTS. At the time of Sumo,
> 4.4 was none of those. There are occasions  of an additional version
> included, this is done at the desecration of the Yocto Kernel maintainer and
> Yocto Architect. Supporting more versions not only in Master but Master-1
> and Master-n is a lot of work.
>
>  This
> is *the* kernel with the longest support as of now. When building an
> embedded system that needs updates for quite some years,
>
> Well Sumo only has support for 1yr or little more.  The kernel is only one
> component you need to worry about for longer term support beyond the Sumo's
> life.
>
> - Armin
> * Sumo maintainer
>
> I would go with
> 4.4 right now...
>
> Just wondering...
>
> Regards,
>
>    Matthias
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

