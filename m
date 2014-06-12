Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 727F8E009E7; Thu, 12 Jun 2014 05:43:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  1.2 MISSING_HEADERS Missing To: header
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
Received: from mail-yk0-f170.google.com (mail-yk0-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC92E0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 05:43:24 -0700 (PDT)
Received: by mail-yk0-f170.google.com with SMTP id q9so902749ykb.15
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 05:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:cc:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=QuiVAusdztAa2CJhSaDDtXVFZY5dJG5SzKSez9s23og=;
	b=WKY3QItoCXB00Gp4SqHUltuRb2l+ecvRmrJjm11vEs3CRZZP2N6BOSCP7Y6YWoXcdz
	9wsEWcNH4cbyPxFCP4I8Vf2Ak52WT6U14hWlgBpO8EX/9clqfVJgBVmWl3l3613RszlG
	/fOYRAHVU+Eeqnqegr7wk2IqSIKB/jAJ5SwI707C55r9ICyU+b4PYeRmYUIdBIUpK/fb
	zrQNKpg6/kyrJ2fu15VXbOXfH8U9QUrn1bUgwjAU8sYSVLpKkodwtQ/sSbNyDo03Joo5
	QnClQhQ7VYWUlAJTEU8f5KY1zPyV1M+Rwa8yaDkjqFlfkI8M8MuYSt5+n96TuS/eT/jM
	hlXw==
X-Received: by 10.236.15.102 with SMTP id e66mr15510878yhe.69.1402577003852;
	Thu, 12 Jun 2014 05:43:23 -0700 (PDT)
Received: from [155.1.1.163] ([187.11.221.17])
	by mx.google.com with ESMTPSA id z63sm1210780yhh.11.2014.06.12.05.43.23
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Jun 2014 05:43:23 -0700 (PDT)
Message-ID: <5399A048.8000000@gmail.com>
Date: Thu, 12 Jun 2014 09:42:48 -0300
From: Daniel Hilst Selli <danielhilst@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <53999502.1050802@gmail.com>
	<CAF_dkJBngJcx3qPYfS6d+Nupntkg-fqeT3fh8piQCsEAH8GDUA@mail.gmail.com>
In-Reply-To: <CAF_dkJBngJcx3qPYfS6d+Nupntkg-fqeT3fh8piQCsEAH8GDUA@mail.gmail.com>
Subject: Re: Conditional patches on kernel depending on board, how to maintain?
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
X-List-Received-Date: Thu, 12 Jun 2014 12:43:37 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2014 09:27 AM, Patrick Doyle wrote:
> Can you compile the different device drivers as modules and load them
> at runtime?
> Can you compile the different device drivers statically and probe them
> based on a devicetree file?

Yes I do compile the device drivers as modules, but yet I have to 
register the *_board_info structs on board-*.c file, here is an example:

http://pastebin.com/GMSDQERB

Thanks in advance,
Cheers!

>
> --wpd
>
>
> On Thu, Jun 12, 2014 at 7:54 AM, Daniel Hilst Selli
> <danielhilst@gmail.com> wrote:
>> I have a SoM which will be used on several boards, this SoM has a base
>> kernel for it, with its board-*.c file. In each board I may have different
>> peripherals, so I have to patch the same board-*.c file depending on my
>> target board, and that patches may be conflicting one each other. For
>> example, I could have a RF on first SPI bus on one board, and on another
>> board a SD card on same first SPI bus.
>>
>> So basically I will have a different kernel(uImage) and rootfs (with kernel
>> modules) for each board.
>>
>> I think to create a layer for each target board, with the linux-SoM.bbappend
>> including the patches for that board..., so I enable the layer depending on
>> target board I'm creating, but is too much file editions, or have a build
>> directory for each target board, enabling the right layer on each
>> local.conf, but this means mantaining build directories, or at last
>> local.conf, which doesn't seem a good idea for me...
>>
>> Would be possible to do this relying only new layers and its configurations?
>>
>> Thanks in advance
>> Cheers!
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


