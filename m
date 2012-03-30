Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D8FAE00723
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 06:18:47 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so2093341pbb.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 06:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HB3yadqFiSmcJMBbYuSu9X4ASLl1m6YC2icwWCV8DHU=;
	b=HNaixbm50pQ5GSnjY4qqvPfK97BNQXmDBDGDNBhNAsqTodiM9OiEfH91JAFImPmvP7
	RlBUMi5EnEyzattIcCYBWHsD83hzZ6LeoR+Pb9ETYJ19TFPIoutB9E8JGpxh7MOA7K0C
	xJIeaO45tHGG/zhLl+Oz/1+MIHpUNi7vDacB24yxDP9eBST2ieAht58EBT6QdvUKOoP4
	TKtQCJagOzHiXg3EwRrBJVdjtnpMGObTkEb0scU8D5ih0j0+Fw4LdTneax5VjQWzXN+U
	7JD8CGTfN+9928shJOoLz1GRdLhwxHl/i7CXgYnKNg4fPHvhASNREaJ4V76KknDo1R0Z
	j/rg==
MIME-Version: 1.0
Received: by 10.68.201.6 with SMTP id jw6mr9360987pbc.92.1333113527348; Fri,
	30 Mar 2012 06:18:47 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Fri, 30 Mar 2012 06:18:47 -0700 (PDT)
In-Reply-To: <1333090420.10988.4.camel@localhost.localdomain>
References: <1333090420.10988.4.camel@localhost.localdomain>
Date: Fri, 30 Mar 2012 09:18:47 -0400
Message-ID: <CADzUK1K28hYC=7f7MxiHYeoEhD4_FKPFZBeiu6jhZnsngrzcJg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: niqingliang@insigma.com.cn
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to install kernel module(s)?
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
X-List-Received-Date: Fri, 30 Mar 2012 13:18:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Hi,
> I have made a custom kernel bb file, and get some modules in
> tmp/deploy/images/modules-3.3.0-r1-pangu-test.tgz,
>
> but how to install the modules into the image?

There is a chance that I completely misunderstand your scenario.

Presumably, you have a recipe for your kernel modules - something akin
to meta/recipes-kernel/hello-mod/hello-mod_0.1.bb

In that case, to include the module, you need to add hello-mod to the
IMAGE_INSTALL variable (either in local.conf or in your one
meta-layer's images recipes)

Now, if you are modifying the kernel's recipe to get the modules - I
am not sure.

Does this help? Can you please clarify, how the modules are built?

