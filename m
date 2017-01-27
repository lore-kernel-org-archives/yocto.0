Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA892E0050B; Fri, 27 Jan 2017 11:54:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F3A2E003DB
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 11:54:16 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 194so25724559pgd.0
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 11:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=9FEU/Pu0QN4MV2XzX8h+CcL3fyRli2gT+5oliCYIGUs=;
	b=jp6F5ODo6yc9NCgewHYlT5GCfyItB3WV4/75rhiZUD60gBIl1PzL1syycUQCa33ZIW
	BP5YGaU689hD1jZqR/YpaNLITrTIAUsuRmRKK28xbSMpjtSmvLGOeC7L4TxxQv+g4Qtg
	ghtfz8TbG5NdlDcnIJplQ9iWC2V0nWDcJuI5Gw6gQvJHO0omocMtqMTfoUo8bVsBoahz
	yag4pd2n3b7cVe3Uqfy+TMjtsDkpqUKVwl8OAHIxgKHzvd5UR2lOTjzKqWtqlb84IXxE
	WmDfn0g7UBbdoZIsMZPcc9pFKLtsi9AT/09a5yQh+NSSLLMR8/7uw1alskp3fwnQuoOt
	DFQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=9FEU/Pu0QN4MV2XzX8h+CcL3fyRli2gT+5oliCYIGUs=;
	b=XsNbneH7PLAjanbozxkMzE+jB6/jSqXMW+N8b4svk1uzGtI07YEBhiUtfJsqSrThyF
	FQmgcX5+1+aq+kaG+fem++d673K0OcYkwU22NXW23VO+GP6DggGK9f09eioa0y1z2Kxq
	6eHqZV3vc7/oiNFMZocLzFrAL6Ucus41IbkhnWl2OpDBYdjx32q7XCTeqfxDbDiKtUOI
	tP9+LRxugFb7VqgwTRpzUwLVnklhZEZEU8IfOywp0efUbLIYh3tcXiQi4CX3qvaVdt3l
	H7kWla7DFNa6asAUm3XA1E3FwZfHWNuRmqmJRiLF7QrMefsM7qIl0JeIcJkcupCrbCuJ
	/nqg==
X-Gm-Message-State: AIkVDXKnjceYZGm3tmd5qlOUXpyOf1wtFb1AdFKYguA+7PGzYs633Yol5cAvwpr2g0u4Yw==
X-Received: by 10.98.133.202 with SMTP id m71mr11194106pfk.102.1485546856351; 
	Fri, 27 Jan 2017 11:54:16 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:6d8d:a1ec:12d:52de])
	by smtp.gmail.com with ESMTPSA id
	t14sm13295988pfk.85.2017.01.27.11.54.15 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Jan 2017 11:54:15 -0800 (PST)
To: yocto@yoctoproject.org
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
	<CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <d9254844-a522-54b4-39c5-d9a07fbdaab0@gmail.com>
Date: Fri, 27 Jan 2017 11:54:14 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
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
X-List-Received-Date: Fri, 27 Jan 2017 19:54:19 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 1/27/17 11:41 AM, Trevor Woerner wrote:
> On Fri, Jan 27, 2017 at 9:37 AM, Romain Perier <romain.perier@gmail.com> wrote:
>> Could you:
>> - Make one patch per new machine file and not one patch for all new added
>> machine
> 
> Agreed.
> 
> Are all of these machines actual devices? The evb one doesn't sound real.
> 
> Are all of these machines released and available for purchase? I've
> heard of the tinkerboard (although I can't seem to find one I can
> actually buy) but I haven't heard of the fennec.
> 
>> - Add a clear @DESCRIPTION for each board, see an example here:
>> https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf
>> - Write a clear and an understandable commit message for your new patches
>>
>> @Trevor: What do you think about this rk-linux.inc ? I don't like this,
>> either its name and what it contains.
> 
> First off, I think it's really great to see people contributing to
> meta-rockchip! :-)
> 
> This entire set of patches seems to be adding "official" support for
> the rockchip devices; in other words, these recipes will help you to
> create builds that use the official rockchip sources. That is great.
> But I think a good BSP gives a user all the possibilities but then
> leaves the final decision up to them.
> 
> So I agree with Romain, I think the name could use more work. It would
> be nice if this set of patches included something in the name that let
> the user know these build from official sources. Then the user could
> decide whether they want to use the official rockchip sources, or
> whether they want to build from upstream. So I'm not opposed to the
> idea of adding recipes for official sources, I'd like like to see them
> added in a way that leaves the decision with the user.

Usually convention is <packagename>-mainline.bb in some BSP layer. In
somecases community layers are maintained in repo of their own.

> 
> 
> 
>> That's it for now.
>> Thanks for your patches
> 
> +1 :-)
> 

