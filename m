Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD522E00E13; Fri, 26 Jan 2018 11:17:28 -0800 (PST)
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
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13B89E00D6D
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 11:17:27 -0800 (PST)
Received: by mail-lf0-f66.google.com with SMTP id h92so1973014lfi.7
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 11:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1aZLCPg50nyj8h4v2mXf9T2v2ncA0IY5EaOhyrSDiCU=;
	b=Pxo0q/yh97Dx4M0UJzCgzyhef+Y9TRcbxMOo9rkxccurtp+x40zyGunCb7RlpQmeGE
	h0KqlW047jd0hggRoy6c/XW8J7VjxjuS4mNqYxU0PtR5W4O+0rLtWWrZVQ9/6Ban5dNc
	AimAhaOSUXuMB8v6HLVSoNh3H2tJsZp3MAefmht4n99Mv5oaZouHmHS5b5JJkdrmiMiI
	LQbdMfTGhJ6llVYfwbIJ/HsPbVfPE/zldscu5sXVLqNSUz5T46lQSVE6skpLR2fN9Zn1
	ChkRcTGkz0bHs7oun8tkdT4l63phpePxviL10K5rJC8UJjWcJdWOng19VKJtjB8ZSp9q
	dCng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1aZLCPg50nyj8h4v2mXf9T2v2ncA0IY5EaOhyrSDiCU=;
	b=eiS+p5cM7/rTvcWs4WevPPSh3lT1BDfZ+yH1fG5oKPdR8HqSuwJ91z7GlIHzUx++IP
	a6QEycFF843RQEc/Ysh/1WqDRxqkvgiLOcUudhECVuCWOU2D2s/TJnR0g4kvE6WiZqQJ
	8NMvJlBrKSb949ih9dLYuUPaadoC9uuoWbDppEdz+Xcs82guxfyyt9cMwx2FD1Wyt/8e
	7tOZMnSQEBW3jw5vpEYqH3rCU//SgkvZf5exiWXbqFAoQ+KP8dCPWKk3dZ0glIIvIdp5
	wlBA6Gefx/pk69nCkb9t1cWK/07yRX/G+2cYc0w0r70WY54B5FnIkxp6i79hUOP4Zq/v
	nF1g==
X-Gm-Message-State: AKwxytdHm/+B47XNNXwfJqfE/6aOCKxUiqYiSS2Na71e/hDZeC1GzBt8
	q0eVNVfOLw0ms050ifUFQarnrGGDpKiARC6k0H0=
X-Google-Smtp-Source: AH8x2270T/brxpmJOWlqzaG90PVQFd6voixVifn7pRDiymCykqLv8zWQWcTmqR6WSu1BfJpnit9/qFjeBnfWBlbdW8k=
X-Received: by 10.25.224.17 with SMTP id x17mr8667367lfg.91.1516994246873;
	Fri, 26 Jan 2018 11:17:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.222.87 with HTTP; Fri, 26 Jan 2018 11:17:26 -0800 (PST)
In-Reply-To: <5717e72a-4379-18b7-b92f-c17044e288cb@gmail.com>
References: <CABatt_yonV4oU48rbZrQay+iYe_P-AYVZdgV5-_EL1AwvxkVqg@mail.gmail.com>
	<5717e72a-4379-18b7-b92f-c17044e288cb@gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Fri, 26 Jan 2018 19:17:26 +0000
Message-ID: <CABatt_yzTO62VKww7u7STAuxOGM10vEUSEMAcyOHyvUL01xvUw@mail.gmail.com>
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
X-List-Received-Date: Fri, 26 Jan 2018 19:17:28 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Khem,

On Fri, Jan 26, 2018 at 6:57 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On 1/26/18 10:52 AM, Martin Townsend wrote:
>> Hi,
>>
>> I have an image say
>>
>> my-image-minimal.bb in one layer and and append this
>> (my-image-minimal.bbappend) in another layer.  In this append I'm adding
>> IMAGE_INSTALL += "kernel-modules"
>> for example.
>>
>> Now if I run
>> bitbake my-image-minimal -e | grep ^IMAGE_INSTALL
>> I see kernel-modules
>>
>> So bbappend is working, now I have another image
>>
>> my-image which has
>> requires /core/images/my-image-minimal.bb
>> ...
>>
>> But kernel-modules is not appearing in this image and
>> bitbake my-image -e | grep ^IMAGE_INSTALL
>>
>> confirms this.
>>
>> Any ideas as to what I'm doing wrong, I assume bitbake supports this.
>>
>
> in second case you are including the .bb file so its behaving as an
> include file.
> bbappend only applies to parsed recipes not include files.
>

Thanks for the swift reply and clarifications on how requires/include works.

Don't suppose you know of the best way of handling this situation?

>> I'm using the Krogoth release.
>>
>> Many Thanks in advance,
>> Martin.
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

