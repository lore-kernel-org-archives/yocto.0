Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21F8CE00A31; Wed, 26 Aug 2015 09:17:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47DB9E008E5
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2015 09:17:35 -0700 (PDT)
Received: by iods203 with SMTP id s203so24895665iod.0
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2015 09:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=8K63buvnWhNxQs8yymbWzBauP1tYdh6Zq4epiQwHWkM=;
	b=A+7n9nNQ7YzffvMLZ0+tWUHeTDz7DMpwU2NgGTPT3g1ps4RwX6CQkeMATC5xf85iHw
	zudwr4ObWAU8ayVMZdP1+UKurHIcssQHPcBCpg5kLGeUnBEDo6e3ZdwwkedCeUi6w6o6
	QQGDe2L08hc64QTlsuwdQvnSZx2B9y4L0ZJaC141O+kI+ZXGgfwA2E98YgIffDxjwZiK
	wZy1u8G6dWWnN4Pw+OGPOjcl1XH15siupzvGNd9JKrjzYuxl6oioCmIiCXmys9oJxiLs
	UiiIacD/VUKK/YzNz5dRlZV8nPR1xzQNuU0tvJGlAXk+MWIeSzDoHmLWlKE1G4ywuXwc
	RyMg==
X-Received: by 10.107.14.84 with SMTP id 81mr5391752ioo.195.1440605855276;
	Wed, 26 Aug 2015 09:17:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.3.135 with HTTP; Wed, 26 Aug 2015 09:17:05 -0700 (PDT)
In-Reply-To: <ad28bcb1a9ca4653ac92686fe92a4ae3@E2013a.CORP.ICS.COM.UA>
References: <ad28bcb1a9ca4653ac92686fe92a4ae3@E2013a.CORP.ICS.COM.UA>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 26 Aug 2015 09:17:05 -0700
Message-ID: <CAMKF1sq9a3CFqG7T8hZBEn=gWhHuhJqY2J5S2kEn1fKSR-eSSA@mail.gmail.com>
To: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to recreate rootfs image
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
X-List-Received-Date: Wed, 26 Aug 2015 16:17:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 26, 2015 at 9:13 AM, Lenivyy Viktor
<Viktor.Lenivyy@author.kiev.ua> wrote:
>> dirtypackage is the one which you want to rebuild and redeploy in the
>
>> rootfs. If the package source is local, cleanall won't do big harm, but
>
>> otherwise you're correct, it will clean the sources. You can use
>
>> "clean" instead.
>
>
>
>> Regards,
>
>> Nikolay
>
>
>
> I don=E2=80=99t know exactly which package I need to rebuild, but I guess=
 it=E2=80=99s
> kernel-modules as modules folder have wrong version.
>
> After
>
> bitbake -c clean kernel-modules altera-image-minimal
>
>
>
> there is an error:
>
> =E2=80=A6
>
> ERROR: Nothing PROVIDES 'kernel-modules'

kernel modules are part of virtual/kernel so you need to clean
virtual/kernel if thats what the issue is

>
> =E2=80=A6
>
>
>
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

