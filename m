Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A334FE00AAE
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 13:15:55 -0800 (PST)
Received: by mail-ig0-f171.google.com with SMTP id hl1so11942233igb.4
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 13:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=3V5TqlPOx2X46huCySkvixqvT0JOyEQNPLTBWTDv9Xk=;
	b=MJixnU/UtKfMSs8caTp/QVcmINGWZe5fCIj6FiiVAS0UtH8DDsl99B8uyb1UJMqzdE
	ZGHwdHflUrgGEnoZe0ZPMFZ4xhO10RlSCXS7mjV8HcWSWlnSl25a1uTafhq+1Ow+Tl0l
	ev1MSQoZ+MA1Dm4O/S7dvDyV0bVavFoqkcFCV08uAh9u/Ml7dUoq9k43JefeJ3FLqDY/
	izLUyo8Ab/1gt4zizCIrlx2cpahHm0t9A+6y1r4MlSu7xVOgxCllMYXpVTH21nHM2VqP
	93gyLr9Kxj9Bm/jFXJuaGjyE8Bj8CvvqZ5zHimr66AR0VNIJRYZRQDXGNC7iXZxfhGaK
	zh9A==
X-Received: by 10.50.143.69 with SMTP id sc5mr37333728igb.2.1394054154487;
	Wed, 05 Mar 2014 13:15:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Wed, 5 Mar 2014 13:15:24 -0800 (PST)
In-Reply-To: <1394028560.17657.YahooMailNeo@web163103.mail.bf1.yahoo.com>
References: <1394028560.17657.YahooMailNeo@web163103.mail.bf1.yahoo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Mar 2014 13:15:24 -0800
Message-ID: <CAMKF1spN_KT1-PtQR22ixmQ=xTxBoAht04AY11CauCz0ba0BiQ@mail.gmail.com>
To: Joel Parker <joelparker27@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding headers to tool chain
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
X-List-Received-Date: Wed, 05 Mar 2014 21:15:55 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker <joelparker27@yahoo.com> wrote:
> $ bitbake meta-toolchain

do bitbake -cpopulate_sdk <image-to-which-you-added-sqlite>
and install that SDK

