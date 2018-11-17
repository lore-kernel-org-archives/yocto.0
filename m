Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ED64E00A54; Sat, 17 Nov 2018 01:44:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E506E00901
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 01:44:45 -0800 (PST)
Received: by mail-oi1-f193.google.com with SMTP id 192-v6so21659729oii.6
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 01:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=EuO2herY5PNaGcHR+lH5/F61SkSbZGmbKGiq+388Tno=;
	b=K0sB4QBFD5/7t7P5QTf01X3iuq/UsBeZl6jgSiAPYDex1ILRjoin8FGZPb0uBSUXdG
	8IUtRREdG54lzOj8KX3/Wsf6kvT5jnJiEAlU3Ce+4PkSRpYD/DsNSxcX7Y+6JRKSYxCb
	lIwWz14bOe+HfKBXtWePJv7rEfwVsS9nc67UZ0msB9Fid4lLs+5IDq7TvOCxt2Wco6LR
	kNwEoaIT2FPP0zhzEIL5oHPOzEvGDZJkqfwjZjAa5N29vIs1vo1CZ3GGQdr5iRbhktOh
	uM31k34KpTu5YN7eNR4iTSxoxubVOSSlMKXxTBIWQIcLG1aSB3CIkkI9iKMxDxHbaPjq
	Nauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=EuO2herY5PNaGcHR+lH5/F61SkSbZGmbKGiq+388Tno=;
	b=ZOpAc+TeGJpYckWN5iAuG5PWhNChOwCiPrux5937Tmyu57WymlTaWEHHyliIDYMSzm
	QLhHdj0ifAEiB8qGTszxp/DqD0yLcEpfS6xCTmFpqYgThMKTdiRi/8bWIOxtGEW1QIvU
	XjKRbJ674T9E0ko/I9wLMDKSrpeOl5iQWqxLJ8RNtWwI2xm/Pn06mh7sTALHKWVUW5gF
	icZRbNKhmlAG7nUr6uY1KswVVu7A08W8wzL6y8hmqMEyd/8qA+SE0S13uMZMjpftrG6A
	IqX4wFSpRtrj0rARVj53lj/86M4fQw6193YL9bnUl42/x6acXPtkvAD0R3tNqXTy9hBy
	WVDg==
X-Gm-Message-State: AGRZ1gKXap5xuiLwnOJjBfC3lYSMa/1uxJVTx0GPVrPP0b5RiFWdE1OR
	+yCXnpY+1j8N/8TkBdbQuvlgMam1TFWWNvfckE4=
X-Google-Smtp-Source: AJdET5dCDoDigHNi3ou/212AwPxJTtuCvV71AbItK2Nf0VioM3gDNuoQJ1XsPtirP7JRhWZmCpAfFg0NHWhyYj/6hcM=
X-Received: by 2002:aca:e691:: with SMTP id
	d139-v6mr2707528oih.232.1542447884815; 
	Sat, 17 Nov 2018 01:44:44 -0800 (PST)
MIME-Version: 1.0
References: <4ca1c544-6dc9-128a-59d0-5c714175a8d6@gmail.com>
In-Reply-To: <4ca1c544-6dc9-128a-59d0-5c714175a8d6@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 17 Nov 2018 10:44:32 +0100
Message-ID: <CANNYZj9G8y-X1P+Konu+muqYM-DmBkKd-DMBW=DEoHAzuOGeWw@mail.gmail.com>
To: yocto.user.mailinglist@gmail.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: supplier workflow
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
X-List-Received-Date: Sat, 17 Nov 2018 09:44:46 -0000
Content-Type: text/plain; charset="UTF-8"

You can put the ipk file location directly into SRC_URI. Bitbake will
unpack it without further tricks. Then just copy the contents in
do_install().

Alex
On Sat, 17 Nov 2018 at 09:35, Robert Berger
<yocto.user.mailinglist@gmail.com> wrote:
>
> Hi,
>
> I came across a scenario, which does not seem too strange, but I am not
> sure how this can be handled with OE/YP. (just nasty hacks with SSTATE)
>
> 1) Company A provides an SDK to to Company B - no source code provided
> 2) Company B provides a "binary" back to Company A - no source code povided
> 3) Company A integrates this "binary" back into some project and
> bitbakes the image
>
> Ideally Company B does not just provide a "binary" executable/library,
> but a package e.g. ipk.
>
> Company A could provide an extensible SDK and Company B could create a
> package of their stuff with it.
>
> Now comes the question: "Is it possible for Company A to add a package
> (no source code available) back into a project and bitbake this?
> If yes, how?"
>
> The advantage would be that Company B would be forced to bitbake it
> (with the additional checks done by OE/YP) and not just compile
> something somehow with a "classic" SDK and ship it.
>
> Regards,
>
> Robert
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

