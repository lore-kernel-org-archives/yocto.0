Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F887E00B05; Mon, 19 Jun 2017 07:40:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B62BE00AF4
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 07:40:36 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id g66so53034060vki.1
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 07:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fcCWA+iTbhW1xYoXapEeW3L0wLvX1HlVGUR8MMnjnqY=;
	b=PReAOksLdNZr6pInvR5vb4ZFIbdg47s9p7VVDo65CEZ4LAtKZZQNxuvuF5jJuHl6Nn
	jyFNhIhd3OmGfFdVd921ZZsy4GPfoyXUeMG3Bfa1B9JZVRjgzDEzu6Hr/BE1RuBpVdrq
	jm51DlnLxe6JLqLRWZ8HBn/yEpDaJdaPNRirvxDfdsDQGpACxLHVwE3soRfe9geqC5iA
	r/BitPp6rQ9lsnPme58TYazOPMey2/Rn2jMKR/LnuA8QBvz9Zk4bXwR/tfxnNoW3AfB2
	J8mwl7dcARrqlQddOjEsKdyywIqTFKWexJLPZdhsHdEubTmsBO3XLLozaMmvfdkiBrpG
	Wp0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fcCWA+iTbhW1xYoXapEeW3L0wLvX1HlVGUR8MMnjnqY=;
	b=qflDvLAE+Sa9N7IFkisumImPpjP4+dL9sp2t43NlI9/k9GgDb1eyoay7pRSI/Nc0XC
	7YGUzfnzOM2Wspx91lqzKkcwZPdE2Q/phH7TrQkUzsl58H7g06WUVaqAKqre/kyyxIcX
	DiZHwZ8GtwLCUGai2Ak3+LjxFE9yfIfAX7w0fZxH6M3zsa6zbxERQHTqV/m/jIxZhEbN
	xKRAVfvVIb1daHzNuE2z9rlD1kVXLbA6oLChc+ABXCoIOJtvFk7qWat9QGLOtjL2YGw0
	AhkSgJcQBBfQZuR61R3k4onN0yFvvikB92RjtaK1s7bxPGELS1Bz33BHmtfT7H+JU4qB
	HN/Q==
X-Gm-Message-State: AKS2vOx9VF8WoP3fz7+axVdTVzzSnN0Yb9tMS4FcJ8xs7QAXsG+bamDp
	IAGHbczMUWmmGuq/5K3hK9BpgoKAaw==
X-Received: by 10.31.16.65 with SMTP id g62mr13683771vki.49.1497883236266;
	Mon, 19 Jun 2017 07:40:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.84.198 with HTTP; Mon, 19 Jun 2017 07:40:35 -0700 (PDT)
In-Reply-To: <826973B0-DCFF-435C-87F0-44FD8B82817C@mender.io>
References: <cover.1497646644.git.drew.moseley@mender.io>
	<195a92fc1faa49495d1a2b6cda0134f07ce72189.1497646644.git.drew.moseley@mender.io>
	<20170619054832.GA7840@linux-uys3>
	<826973B0-DCFF-435C-87F0-44FD8B82817C@mender.io>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 19 Jun 2017 10:40:35 -0400
Message-ID: <CAHUNapTWt21mhdcVJEUh+8xVZYbSjejnhykD8qszcAoJrM97Rw@mail.gmail.com>
To: Drew Moseley <drew.moseley@mender.io>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][RFC PATCH 3/3] chip: Add chip-u-boot-scr recipe and flash script
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
X-List-Received-Date: Mon, 19 Jun 2017 14:40:38 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 19, 2017 at 7:22 AM, Drew Moseley <drew.moseley@mender.io> wrote:
>
>> On Jun 19, 2017, at 1:48 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>>
>>> If you have a serial console connected to
>>> +your board, you will see the progress and a message on the console will indicate when
>>> +the flashing is completed.
>>
>> hmmm, never saw this. I have a console connected, the moment the script
>> started, on the console I got:
>>
>>       U-Boot SPL 2016.01 (Jun 19 2017 - 00:32:19)
>>       DRAM: 512 MiB
>>       CPU: 1008000000Hz, AXI/AHB/APB: 3/2/2
>>       Trying to boot from
>>
>> which looks right, the date+time are good.
>
> Did you see the proper serial output after using a smaller image?

Yes. With a smaller image (~90MB) the flash update worked. Maybe
another improvement for a v2 would be for the script to look at the
size of /full/path/to/UBI_IMAGE and issue a warning/error if it's too
big?

I think the wording of what to expect on the host and over the serial
console could use some updating. Not to mention you say: "the status
LED on the CHIP board will flash 30 times per second..." which doesn't
seem to be the case, it looks more like the LED is toggled every 2
seconds (??), in any case, it's a lot slower than 30/sec.

