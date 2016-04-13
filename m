Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62B35E00D25; Wed, 13 Apr 2016 13:08:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 347EBE00833
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 13:07:57 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id t129so84688885vkg.2
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 13:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=c1NZPtBVg531EWV7enbav0YWf5HodIEvpDdNWVDaCu4=;
	b=DdQeoBPw+QX+yTDL+PZrJDSbX5V/AglP/Q5/yaM4NlaL0pyGr8fb8PeuJX7kbXFgLp
	uMYa9/LLff1jRI+HRn7EHmjCdAfy0LxrvyHAAVfNydnVdkmD4IAcZIQhcKN1bk0ZyMY6
	eabuWLoiQ5SLZBZEyviL24rv2ytf8+2c4P0zAffmLPK0V++33fvWKW9XOUTYzENjgoUA
	X7AU80petpYuUtf/FZkb00JRvQfEcv/zXkrApZGE+tqYNW+l7iYL/m+6jxgHQekQsX1X
	mv7+Poe/cD6o7nrkrZ11Th6iJbqV8Az8X+q+6XKtNQSgbw1vns0Y6J4ooS2d4CpEVkdy
	i9TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=c1NZPtBVg531EWV7enbav0YWf5HodIEvpDdNWVDaCu4=;
	b=NjlPUxa/Mk7qAj/+yTNuob98Z19Y+BUOyYM5/B1vVI6NP0DapfhANgsrHxmQrBtAuD
	eO+uJAz+6QFTyF/+zpq2HjJ5vQpaXHBHcll7R7jH6lNg19tPfqq1WkZwlxlqQmxjyyla
	0cVu6uN6qWpOdOYA9XY6GzOD1eis8EQHrr60LOmzeFml257uOY2Kr+PmnQ2KeXHOVv5K
	2HpoK13KU766r6PAoFQgahE4Fb7WPWrbGHixqU/Wa8Uj+eBDkDAPsWr9VLNpIE5oAJZD
	ThLmHqHG9C50o6MEjvbUr1karCWfpYXaybSFvNaKK2TXeD4+xEYILdOM2ZaOmyPeMnb0
	6J5g==
X-Gm-Message-State: AOPr4FU/Qh2edfkGYxyotfhc5c9OhhSvLltQfbaA508wpr46dS6/v9qwLUyZdksOKGvUpT4ajtQtphyRJQ6lmQ==
MIME-Version: 1.0
X-Received: by 10.31.161.195 with SMTP id k186mr4920989vke.129.1460578077020; 
	Wed, 13 Apr 2016 13:07:57 -0700 (PDT)
Received: by 10.176.66.227 with HTTP; Wed, 13 Apr 2016 13:07:56 -0700 (PDT)
In-Reply-To: <09232bb667868c885b64dfd7ac49dfab@reliableembeddedsystems.com>
References: <09232bb667868c885b64dfd7ac49dfab@reliableembeddedsystems.com>
Date: Wed, 13 Apr 2016 17:07:56 -0300
Message-ID: <CAF3SDA4Br9BujStKyiXdau0U9YJUqVH0nE4tH08RmVb4h=woDg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: something like kernel configuration fragments for device tree?
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
X-List-Received-Date: Wed, 13 Apr 2016 20:08:02 -0000
Content-Type: text/plain; charset=UTF-8

Hi Robert,

I know that Raspberry Pi has "Device Tree Overlays", for other
platforms I don't know if that is possible. If you're using Pi you may
add DT Overlays by patching,
take a look at https://www.raspberrypi.org/documentation/configuration/device-tree.md
$ Part 2: Device Tree overlays. I think that this is applied by
Pi's boot loader, but I have no ideia if u-boot supports such thing,

Regards, and good luck
- dhs

2016-04-12 10:45 GMT-03:00  <gmane@reliableembeddedsystems.com>:
> Hi,
>
> I was wondering if there is something like kernel config fragments also
> available for device trees from the YP.
>
> It would be convenient, since kernel configuration and device tree might be
> related in some cases.
>
> Regards,
>
> Robert
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

