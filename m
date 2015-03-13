Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE269E00871; Thu, 12 Mar 2015 22:26:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05C9BE0085D
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 22:25:55 -0700 (PDT)
Received: by iegc3 with SMTP id c3so85906977ieg.3
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 22:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mvFVFoGXIVOZn0tqeqZ+ZLUVz6AKNE27hc+CAy8njpY=;
	b=htkkmEBEbjgaGX1+zTLVf3wvzmI5u1IumKY8qC6XPkZyBRQDLpFDC7ZW9PRjCTyLJK
	zxbCUM92Bzcwu57pqgYdtEzDRh4PtxhS1GAXq9JbnxQNQW5Y0vhu/f5KdwteMlEh3+7K
	N3h3aN4HAi3dcegQ4Kz77QaJqMmSQVHqB5OqjU3p9NaZmu7VAVYeNJ74DgGkoNqkOILL
	zOBlmz3mLGjX/XstJsASbVK7tntQaJKpZymNQoUixqUIhM+NBsbl4UP86etW4ojm6teT
	pDa7SaCY/oR0GmxfuuJdqm8jVO+s92vaa4+JWb5gjmbdTKGhC1w43YKpBDQCq7HP6R5Y
	n97Q==
MIME-Version: 1.0
X-Received: by 10.50.61.34 with SMTP id m2mr81297933igr.20.1426224355192; Thu,
	12 Mar 2015 22:25:55 -0700 (PDT)
Received: by 10.64.39.16 with HTTP; Thu, 12 Mar 2015 22:25:55 -0700 (PDT)
In-Reply-To: <A01D920D-DAC8-44A6-9FD4-82B54C4B8E55@gmail.com>
References: <CACjDgAMTi_5Jk-p4n8F80XaZzaZ637q+5pvErr=ZfsSb2n5D2w@mail.gmail.com>
	<A01D920D-DAC8-44A6-9FD4-82B54C4B8E55@gmail.com>
Date: Fri, 13 Mar 2015 13:25:55 +0800
Message-ID: <CACjDgAM6f_jOsxY4o9ADRrf5MRTJ1hYm_8LYJpGsKvD5W-7nyA@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Dizzy branch with Linux Kernel 3.19
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
X-List-Received-Date: Fri, 13 Mar 2015 05:26:03 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I am a bit confused as the 3.19 is listed in
http://git.yoctoproject.org.   BTW, how do I check which kernel
version is supported by a specific branch of yocto (eg dizzy, daisy).
Thanks.

Regards,
Albert.

On Fri, Mar 13, 2015 at 12:43 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Mar 12, 2015, at 9:21 PM, Albert K <alberk@gmail.com> wrote:
>>
>> Dear all,
>>
>> I would like to know if it is possible to do a compile with Linux
>> Kernel 3.19.  I have tried the  PREFERRED_VERSION_linux-yocto_qemux86
>> = "3.19%"  in the local.conf and it does not work.
>>
>> If possible, what need to be done to the this going.  Thanks.
>>
>
>
> you need to back port or write recipes for 3.19 kernel first
>
>> Regards,
>> Albert.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

