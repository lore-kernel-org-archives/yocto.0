Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95122E00B87; Fri, 25 Aug 2017 10:28:21 -0700 (PDT)
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
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C728E00349
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 10:28:20 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id q16so617074pgc.0
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 10:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=yI95c7QVu33aMl//On2EySfkKiHQ8N56Xan7ZH5fsEw=;
	b=Ai8pg02CZOTEI3yqVznH37CVXlDWt7vKFWft/X8EmKVEGQQrKC0aN8m7ZAOYCxC5jg
	iBVWz9/ZxhjVaBwHhBogmPQnzKSQvT+ykVKxlaNqL0NZdNfDCGn8+NySheqiD9ftW6ky
	dUdmZ12IELHNXkhpljmgiWT/cBBKTMhJ4INg5TFYAf5uPQMryuGlCaUTkVlcotcBIR0N
	EmVrp0v5VsCJXvX6+6HKu3ItHL07SyS4lAKPgAC5LNQupRC8w7XdRabtD4yQHjhHvRz6
	7qCp3ui4WaORQI3KEi0knqrui/DBAzXOLqsRn5w4iCI06fDgLODleR8ScbahHPrk58SS
	ljKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=yI95c7QVu33aMl//On2EySfkKiHQ8N56Xan7ZH5fsEw=;
	b=aLAN7B/gwUQx9jcGsUoy4PhElIzCXz7VkEuKSIh4NZy+iB4pdcvZSZSwSkv153GAUN
	NHrerAGaWD+UGr5JD/GSBnTk/ulGIpQlpcHzucIrdjBhexum98xX93/VafeLw0Lzy5yk
	f76ysWVn4+rEhiwYf5aOdwr5o9sMMGnpkrZv5s7zQUmZyntvfJJAY9RrVbYzLFwYJ3Kd
	L1n4qHuk3M/u8VpAVLQyDJTXOxZ99uOi2juCj8YEhdIbZlbMli9/a0Sqwz/6EnPNuj8c
	8B2BbxSXT7UJlze0cnGb7wrLWfZ4tFd2MLJYyhe/UNHfEdZLBOEAhS90m+sHKbf9T36C
	8wWA==
X-Gm-Message-State: AHYfb5jXG3Z3mMBse/WMFK76VUfJ7C6N1REpvvXX/8HahzP/FeI0U/MV
	NS3ThVzcblkp/1hsqD9ub7Jl7y0hwA==
X-Received: by 10.98.202.73 with SMTP id n70mr10813004pfg.168.1503682099954;
	Fri, 25 Aug 2017 10:28:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Fri, 25 Aug 2017 10:27:49 -0700 (PDT)
In-Reply-To: <6668FC5E-F4CC-4E92-8857-3B3BC71C7045@korgrd.com>
References: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
	<CAMKF1soJ2=jwPnfefEvDppJGBxPutA_usc0E--XbWY9txredpg@mail.gmail.com>
	<6668FC5E-F4CC-4E92-8857-3B3BC71C7045@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Aug 2017 10:27:49 -0700
Message-ID: <CAMKF1sreAs1W_TA9yFSKLhVvjNOcXJMTLjLU=cjZ+EJYQuxVqQ@mail.gmail.com>
To: Bill Jenkins <bill@korgrd.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: raspberrypi3-64 target not booting
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
X-List-Received-Date: Fri, 25 Aug 2017 17:28:21 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 25, 2017 at 10:14 AM, Bill Jenkins <bill@korgrd.com> wrote:
>
> On Aug 25, 2017, at 9:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins <bill@korgrd.com> wrote:
>>
>> I am trying to just get the simple 64-bit rpi-basic-image to work, but the
>> Raspberry Pi 3 seems to hang with the rainbow screen at startup.
>
>
> Can you plugin a serial cable and see if that worked or try to add ssh
> daemon on target and try to ssh into pi
>>
>>
>
> That was a good call. I can login with the ssh daemon, so it does
> successfully boot. I just
> cannot access it from the HDMI port. (I do not have the hardware for a
> serial connection
> at the moment)
>
> Any ideas on how to get the HDMI port to function the same way as it does
> for the
> 32-bit case?
>

Readding the mailing list.

what you have is exactly what I had when I submitted the port to
meta-raspberrypi. Haven;t had a chance to revisit it. but this could
be related to device tree files we are using here. I have had reports
from other devs of having been able to boot into graphics using older
kernels but I never got
that far myself.

