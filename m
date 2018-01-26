Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 807D3E00E15; Fri, 26 Jan 2018 11:49:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D944AE00D6D
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 11:49:29 -0800 (PST)
Received: by mail-lf0-f46.google.com with SMTP id f136so2058198lff.8
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 11:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ggD+xkXRFho7Jk7ZBnqvLI7vLIys4xqU7nyyuZwAXJ8=;
	b=YPnEGjiDinJG0S95icBORP1NsvKO7H3kg+5QE8ek8W7HBUrHRI1Zw0boCDORJA/iuR
	Ck/grGtt7ka1dKTZh5jYi7gLnjTUjLUxygJwi/adaPbgo6j9VbUsWwpdq5DTQDBZb+r/
	+Hv3YsTFwGgWWpx1Of82oxXfUSx7A2rE9b0ET9NAIUyxIRPZwbf7j5UJfxwoTxv8oNjJ
	nmwGGs12h34L+rw+VNc5G5wXufUlrMqsUmx90ffZaZUT7+f80GOKwbYez+7pN+Ksk3sn
	40SBYpdDNxgm0p4LDBgvEG5YDL7YngbcxXUcP48a8o+0WRHCFUJElqRxrC98aznZ4g7m
	VAKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ggD+xkXRFho7Jk7ZBnqvLI7vLIys4xqU7nyyuZwAXJ8=;
	b=kS5+PsPTEiLhUuzim/qxBCF0q18F7DU0Q4+89sXJ4reP6HNic5NRfyxEenlRO48DnI
	mXhQWsoP5lg/wVOiBOTBxBCEYwD4GZjWnYQJaG81aVJG6pDUzVo0rBorKPxU714C4buZ
	EAKgzWYFJEhsC2J0KWbrZiRERWS1aDMuH8o5S2CjjR6WZBHWHBsrLfj/6OW7ziV44J7s
	6J1++glLyKY7sPZeGcz9J73rklNh90WLh8/kCBf6FAUputOlxuQg//M1l1p8OZdynbE/
	JQZwSgmGIf1ql7Faquhsn+ap+571ThNMRPpsZ1NTAjyF7RWqyo6wDfxczrURSaffPZDa
	zApw==
X-Gm-Message-State: AKwxytdfkm8KZbHE08gphDlhiyFKDu/ojeDk8WwuKIP+bM51tfc7tjqv
	YePSYZPeU6SUH8q3foZ46syGVTQ2WzUNUnlKBJc=
X-Google-Smtp-Source: AH8x226OscShXWPbQd3J6U7SggTw/iNIJdm0dj8sZYVa4GiKcl+s/weD4BfeR10+52oAm/6/Bclb7UnRKjojtj4XcKM=
X-Received: by 10.46.29.83 with SMTP id d80mr6098716ljd.95.1516996168813; Fri,
	26 Jan 2018 11:49:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.222.87 with HTTP; Fri, 26 Jan 2018 11:49:28 -0800 (PST)
In-Reply-To: <CABatt_yzTO62VKww7u7STAuxOGM10vEUSEMAcyOHyvUL01xvUw@mail.gmail.com>
References: <CABatt_yonV4oU48rbZrQay+iYe_P-AYVZdgV5-_EL1AwvxkVqg@mail.gmail.com>
	<5717e72a-4379-18b7-b92f-c17044e288cb@gmail.com>
	<CABatt_yzTO62VKww7u7STAuxOGM10vEUSEMAcyOHyvUL01xvUw@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Fri, 26 Jan 2018 19:49:28 +0000
Message-ID: <CABatt_xMTTykx4ZV_QzNN3Pij_eR6hSvk8dmzbcCQ3PFPcpJeQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: image inheritance problem
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
X-List-Received-Date: Fri, 26 Jan 2018 19:49:30 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 26, 2018 at 7:17 PM, Martin Townsend
<mtownsend1973@gmail.com> wrote:
> Hi Khem,
>
> On Fri, Jan 26, 2018 at 6:57 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On 1/26/18 10:52 AM, Martin Townsend wrote:
>>> Hi,
>>>
>>> I have an image say
>>>
>>> my-image-minimal.bb in one layer and and append this
>>> (my-image-minimal.bbappend) in another layer.  In this append I'm adding
>>> IMAGE_INSTALL += "kernel-modules"
>>> for example.
>>>
>>> Now if I run
>>> bitbake my-image-minimal -e | grep ^IMAGE_INSTALL
>>> I see kernel-modules
>>>
>>> So bbappend is working, now I have another image
>>>
>>> my-image which has
>>> requires /core/images/my-image-minimal.bb
>>> ...
>>>
>>> But kernel-modules is not appearing in this image and
>>> bitbake my-image -e | grep ^IMAGE_INSTALL
>>>
>>> confirms this.
>>>
>>> Any ideas as to what I'm doing wrong, I assume bitbake supports this.
>>>
>>
>> in second case you are including the .bb file so its behaving as an
>> include file.
>> bbappend only applies to parsed recipes not include files.
>>
>
> Thanks for the swift reply and clarifications on how requires/include works.
>
> Don't suppose you know of the best way of handling this situation?

Not sure if it's the best way but I converted the bbappend to an image
recipe my-minimal-image-xxx.bb
and then include this as well as include will ignore it if the layer
doesn't exist. Seems to work :)

>
>>> I'm using the Krogoth release.
>>>
>>> Many Thanks in advance,
>>> Martin.
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

