Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88830E00D8D; Fri, 26 Jan 2018 12:46:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC476E00D5F
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 12:46:55 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id i66so1023483pfd.7
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 12:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mFulm96+N8fvcP3KhDxpYOyVQfJbdUEQLZqyY+AMP6E=;
	b=MATlzsRVRaUnS5sTwhm4ZyNE4d5df+cBckSb1vWIiyrVzx7HwBMccqUp7IjBJkj36t
	ivCAoPMk4KuNCuNoYeESb4uR1UObKMyOw9wMFHFhWdNo8nEu9gA2/OYrqur/8nhvGwP3
	JBPGuyc+jhTec3Kx49e6VD6d1vD33F0ilQxU0i81PweadWGtLkPNBpfaTI9Jatdb2YqY
	DSXTUyT/JK+hPweyOvoxTOuoNWCT/sy2HtWKLqriMgcFRW/QXSCmoWP6Zm/I6WLYq6Qz
	i/WxVRbp8O++6uSKXQaa68Rjqj7NITShq+WFqxk5bMLtctQq4ZZvqoAf8dvngIw4Vq4a
	rZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mFulm96+N8fvcP3KhDxpYOyVQfJbdUEQLZqyY+AMP6E=;
	b=FTXS5zQm8pUFUlLLR0d3IG0N96ekmtEnJ2JF5xDbJFFWesJiokbHBlMDWYoULEnuPz
	hFts6hWZgZE92vznUfE+laYQhU3gzVlkiFeHD7oCZg47MTHoUPbvWJeBlZ9cZOqtJZRT
	4haBSRat6C9NH/Tnv48esVWO52Oi6iJyJJOslFbZLx76RNmFh0ZhCGDFlaa2EZAVyo1E
	qPss5vsNNb92zwwMSnGoKJVAv39gAvbSbUcIcVAsLMRXh6T30oQbW09Xxsxb5OEBvvEr
	ulDfodKAd+JJ9lvY1WzWyZQ+81lZC2l2r9P5vBVcYa2OqBTwTCwiyXCz5MsVYA1/GktQ
	fiyg==
X-Gm-Message-State: AKwxytdg7rQX+jcuC6olxAOO+nsY3799vZvhRH1cObFhX7jsi1Ls9rY3
	fkQbms+5Y90C7P5FMmYXe3IPvsEs6PjnX/E5IRU=
X-Google-Smtp-Source: AH8x227ruMdJ6P+Yb12ghbL9GfUWBQ3HTbkEYfdDMspI9CFMimwgh2Dc8SSaSHH9Knx8lWpvjF7/uMA7tTG26Ruhf90=
X-Received: by 10.98.189.8 with SMTP id a8mr20145563pff.125.1516999614952;
	Fri, 26 Jan 2018 12:46:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.161.170 with HTTP; Fri, 26 Jan 2018 12:46:24 -0800 (PST)
In-Reply-To: <CABatt_xMTTykx4ZV_QzNN3Pij_eR6hSvk8dmzbcCQ3PFPcpJeQ@mail.gmail.com>
References: <CABatt_yonV4oU48rbZrQay+iYe_P-AYVZdgV5-_EL1AwvxkVqg@mail.gmail.com>
	<5717e72a-4379-18b7-b92f-c17044e288cb@gmail.com>
	<CABatt_yzTO62VKww7u7STAuxOGM10vEUSEMAcyOHyvUL01xvUw@mail.gmail.com>
	<CABatt_xMTTykx4ZV_QzNN3Pij_eR6hSvk8dmzbcCQ3PFPcpJeQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 26 Jan 2018 12:46:24 -0800
Message-ID: <CAMKF1sqZdmgwEPB76re8-ndD-Do8JY591kLRN3a9SVPqPF=Leg@mail.gmail.com>
To: Martin Townsend <mtownsend1973@gmail.com>
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
X-List-Received-Date: Fri, 26 Jan 2018 20:46:56 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 26, 2018 at 11:49 AM, Martin Townsend
<mtownsend1973@gmail.com> wrote:
> On Fri, Jan 26, 2018 at 7:17 PM, Martin Townsend
> <mtownsend1973@gmail.com> wrote:
>> Hi Khem,
>>
>> On Fri, Jan 26, 2018 at 6:57 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> On 1/26/18 10:52 AM, Martin Townsend wrote:
>>>> Hi,
>>>>
>>>> I have an image say
>>>>
>>>> my-image-minimal.bb in one layer and and append this
>>>> (my-image-minimal.bbappend) in another layer.  In this append I'm adding
>>>> IMAGE_INSTALL += "kernel-modules"
>>>> for example.
>>>>
>>>> Now if I run
>>>> bitbake my-image-minimal -e | grep ^IMAGE_INSTALL
>>>> I see kernel-modules
>>>>
>>>> So bbappend is working, now I have another image
>>>>
>>>> my-image which has
>>>> requires /core/images/my-image-minimal.bb
>>>> ...
>>>>
>>>> But kernel-modules is not appearing in this image and
>>>> bitbake my-image -e | grep ^IMAGE_INSTALL
>>>>
>>>> confirms this.
>>>>
>>>> Any ideas as to what I'm doing wrong, I assume bitbake supports this.
>>>>
>>>
>>> in second case you are including the .bb file so its behaving as an
>>> include file.
>>> bbappend only applies to parsed recipes not include files.
>>>
>>
>> Thanks for the swift reply and clarifications on how requires/include works.
>>
>> Don't suppose you know of the best way of handling this situation?
>
> Not sure if it's the best way but I converted the bbappend to an image
> recipe my-minimal-image-xxx.bb
> and then include this as well as include will ignore it if the layer
> doesn't exist. Seems to work :)

thats probably ok. you can call it a .inc file and use include instead
of require to include it
that way you can include it in multiple image recipes or bbappends in
your own layers.


>
>>
>>>> I'm using the Krogoth release.
>>>>
>>>> Many Thanks in advance,
>>>> Martin.
>>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

