Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7443E017D2
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 07:44:39 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id qd12so5106765ieb.5
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 07:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=R+aW/dZrjjHnp5ExjruKq0p2ALL3KmcWPFlEYl1mDsQ=;
	b=FcQJUg3wkec1fflsIl+I4Hl7qxNKJB6ziH9aRSww6X9D4ZZo+R+8vFIWvIP+gWadGS
	4ufgD/KgBk/CwlScVq0KP7+HgZHU5fehuHXdafL0cptK5VAJ0LSbdkwh/dZMkbMSLmLM
	3J6h6aHEbjeSLAVQg2qMtnMG4bv3cGGStnvvEOM/fZEu3zDXdkOadVF8Ym9/hJro80hJ
	2rLNfD8M/1A8LpL61KVkhCO6Em9cTW51TdEVNik4G4efwSvvHDUHjGqusWrVlfDimhXs
	UyB9Oam84tDdLtM2vYvlbtpvV8bx3ENFssRKnQ8kkWFwlJ76s8fRwE3g6qRyaingNwZR
	cOAg==
X-Received: by 10.43.138.8 with SMTP id iq8mr2464001icc.37.1383230679155; Thu,
	31 Oct 2013 07:44:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Thu, 31 Oct 2013 07:44:09 -0700 (PDT)
In-Reply-To: <CABwVrCqig4w67Umr8N+y1Vr1Umze5v-6Qe2wz_cHyqK3ixouaQ@mail.gmail.com>
References: <CABwVrCqig4w67Umr8N+y1Vr1Umze5v-6Qe2wz_cHyqK3ixouaQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Oct 2013 07:44:09 -0700
Message-ID: <CAMKF1spmfjH-J8irnHysbcKmEsBApQx+DAoGT_yGxd-9FNvjOg@mail.gmail.com>
To: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto toolchain build question
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
X-List-Received-Date: Thu, 31 Oct 2013 14:44:40 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 31, 2013 at 1:38 AM, jan alexandru vaduva
<vaduva.jan.alexandru@gmail.com> wrote:
> Thanks for the information. That is what I was looking for. I was asking of
> the canadian build possibilities for a toolchian and I found the answer to
> that question.
>
> If I may ask. There was a thread:
> "
>
>>* I have a cross-toolchain supplied by an ARM SoC vendor which I need to*>*
>> use to build my distro.  What is required to use a toolchain like this*>*
>> instead of one of the yocto cross-toolchain tarballs?*>**
> I answered this question just today for another mail thread please
> search the ml for the same.
>>* Thanks*
>
> "
> I can`t find the answer to this question, can you help with a link?

you can plugin that toolchain as external-toolchain like sourcery
toolchain is done. You can use that as example.

look at

./meta/conf/distro/include/tcmode-external-sourcery.inc
./meta/recipes-core/meta/external-sourcery-toolchain.bb

