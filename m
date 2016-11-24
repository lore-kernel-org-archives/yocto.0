Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E2B9E00BB0; Thu, 24 Nov 2016 06:38:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.82.96.139 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm8-vm5.bullet.mail.ir2.yahoo.com
	(nm8-vm5.bullet.mail.ir2.yahoo.com [212.82.96.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B7B9E00B3D
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 06:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1479998295; bh=KV+9hUOt7hujbdNxcXO7fVNQxrqIrZ6ZhX7cGNWELVo=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=kA55LYunTcFbVxkntpSElS5Z1Zamk46KpPGZnCOe0OgJSxbOFl2E9DRvB37SwJRNWJHK7lg+ee9/FyBRt3mU8TQvpgxJUOjWu52RXlqxEF2emO9L84GpKd7+dpc7e3Wrjk3avi/PD8wg7lntZVfBNCICBOk9QLKf4tdXErnvredVVGfyDKczXwknbOHOzrT/f7KgXq+08gTRdDisWiCT3z7dhmvMrgEw+g4nGHHUn/jNig04czuGpMMW4MeA4P1OKMmhafKDIpkix3D7fqSso6IVav5d8JvXZuGOV9lngpfgtaJk6lbtTzZyIDdu61+92Qw20afNBWdt2oKszFIglg==
Received: from [212.82.98.59] by nm8.bullet.mail.ir2.yahoo.com with NNFMP;
	24 Nov 2016 14:38:15 -0000
Received: from [212.82.98.111] by tm12.bullet.mail.ir2.yahoo.com with NNFMP;
	24 Nov 2016 14:38:15 -0000
Received: from [127.0.0.1] by omp1048.mail.ir2.yahoo.com with NNFMP;
	24 Nov 2016 14:38:15 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 316821.27276.bm@omp1048.mail.ir2.yahoo.com
X-YMail-OSG: nFJ9DdMVM1m3Y1sC2jQmZjbR.bsTz9bTM6F3DxHmduMXyJZDGdyGEo18ZlwmQCg
	pdmlBu_Cn70vIL_JwmTsfeyGBPBPyCMSnnAe8hAAwzAIeKHORfSWGpQA2MWFvFbcZDQKM1XseqWO
	jTzrh_4sx9xELRN0s1_XO8pEr854wUap0XYq4wpUgHoIOlVQxN8Z16_Ttv7vl3bAcvNbXexUQ8Xu
	9bSIaXHH.s0yvLHVJ7TH8xV9iQl1c.rx9D.lF3muVw1gjngyefQvuukAHO.QJpvZk9EfmX4Z84C8
	4ESpa2jz9EoxuBp3_iPuzbh8I4n5ZAUxAYcQ7TBJDWkjJs2Iwwj7nUQ5.S8mGUgfcIMxwP73NIKJ
	RWoZZCv.DnaTqIX3qpW5F6iirwJbblLlif0pKcXikPsCf9U_ZWyVYKEeHIe.PBRWmfzrWd3Lvan4
	PPT1n9Yl5WZijNA6zASXvlNGvg4muTXaGgBOOWiAWcrywkVNJiyC029Xuv3ySyCoDbbwd3ULzd.0
	nVXT9XIjzghz1uUo-
Received: from jws700006.mail.ir2.yahoo.com by
	sendmailws104.mail.ir2.yahoo.com;
	Thu, 24 Nov 2016 14:38:14 +0000; 1479998294.961
Date: Thu, 24 Nov 2016 14:37:08 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: Philip Balister <philip@balister.org>, 
	"Burton, Ross" <ross.burton@intel.com>
Message-ID: <906403774.2105416.1479998228845@mail.yahoo.com>
In-Reply-To: <ed74b115-3ebb-c355-6667-37ccf7347093@balister.org>
References: <1587381958.322993.1479895234059.ref@mail.yahoo.com>
	<1587381958.322993.1479895234059@mail.yahoo.com>
	<CAJTo0LbHi-79qj7B9PoOt0jyLaxeHU6aUTwwaiOsiXbi1Ra4xw@mail.gmail.com>
	<823264942.1789329.1479984190440@mail.yahoo.com>
	<CAJTo0LZZ_53Jk5y4XCVmxNhUSPZtC=nGubuKfH3rC-ChEOJJ7g@mail.gmail.com>
	<ed74b115-3ebb-c355-6667-37ccf7347093@balister.org>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Use recipes but not whole layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Nov 2016 14:38:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

>>> In order to success in generate recipeA, I need to extend the boost to
>>> expand some configuration parameters(log).
>>> On the other side someone would like to use recipeB. He/She will
>>> unwillingly inherit the boost modifications.
>>>
>> 
>> The changes to boost would likely count as distro policy, so shouldn't be
>> in the same layer as a generic purpose recipe.

> What boost changes? They may be of interest to others and we could
> update the recipe in oe-core.

This particular change in boost is not relevant in fact, I just used it to explain the example. 

But if you like to know the bbappend file just contained the line:
    BOOST_LIBS += "log"

