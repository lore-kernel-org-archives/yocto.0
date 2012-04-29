Return-Path: <raj.khem@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7958EE013D1
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 11:34:26 -0700 (PDT)
Received: by lbbgg13 with SMTP id gg13so2002788lbb.35
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 11:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Cm9u+djBxhPlYOgGSYZcU+xFqDaIOMdyMs1K2l8yBQ4=;
	b=wRqm5Er0Mhd+5qz6hoktoSdg7NjTREJNhuuIxfqitJIY7gK//RqiXwD4sEkGPcqchs
	ndcSYDCnBgajZf1WotsURrFyIRcaN60WD3lRzctvG9efnLy76P5n1S9N1CVAGhV70Ad/
	n5NOH6A+DIJaLfJ+YMLaBchlTGHiRdqpWibQFKYjvhsRDcVIAfmZmXl6ssrScLuVQaog
	vsQMQYM5qi1QXimv93279Q3mih1zu3IAyZyWngMCVb23NNsUEeSHN+FcsfKN+jqspCSz
	qSmUZ8iMsdOS0jkHroK/RRrbRBdtLZ6dpb8Aez6o5KU372yODRsqHiZx4BAxf0HQ8r+5
	Z/pQ==
Received: by 10.152.111.198 with SMTP id ik6mr17537072lab.38.1335724465115;
	Sun, 29 Apr 2012 11:34:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.129.134 with HTTP; Sun, 29 Apr 2012 11:33:54 -0700 (PDT)
In-Reply-To: <CAJG6M_PnnrkRF59LrkPE=pr_Mj_Qwj6G-7ut7FKOVKj+tb3Rxw@mail.gmail.com>
References: <alpine.DEB.2.02.1204271850580.3661@oneiric>
	<CAJG6M_PnnrkRF59LrkPE=pr_Mj_Qwj6G-7ut7FKOVKj+tb3Rxw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 29 Apr 2012 11:33:54 -0700
Message-ID: <CAMKF1sp6je9iYBAqjC8aPKksE8yg=LcMaB20v_oDcktfbZ-5EA@mail.gmail.com>
To: Yury Bushmelev <jay4mail@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: looking for recom for MIPS dev kit (*not* RS pro)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 29 Apr 2012 18:34:26 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 29, 2012 at 10:38 AM, Yury Bushmelev <jay4mail@gmail.com> wrote:
>
> Have you seen Qi-Hardware's Ben NanoNote?
> http://en.qi-hardware.com/wiki/Ben_NanoNote
>

yes I know that it uses MIPS32 based processor and my inclination is
to use mips64 based cpu thats why I am more interested in lemote.
Although I see no harm in supporting nanonote

> Common price is about $99.
> But it have QVGA scree, no USB host, no pointing device and only 32Mb of RAM.
>
> Yocto have no BSP for it as well, but there is Jlime distro which is
> based on OpenEmbedded. And I've seen Jlime OE-core layer somewhere on
> github already.

