Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06A0CE9A048
	for <webhook@archiver.kernel.org>; Thu, 19 Feb 2026 13:33:45 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.13759.1771508016271867763
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Feb 2026 05:33:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=myH7lrdo;
 spf=pass (domain: smile.fr, ip: 209.85.221.41, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-4362197d174so635437f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 19 Feb 2026 05:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1771508014; x=1772112814; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7qhpWEpapwOSKB8fKZRPQ2iIMNr4iAJ06ulXhSvfvsY=;
        b=myH7lrdok0xE9mulEDcKTTKiUrJ2nXoli9szEOgWJUMDINZD1BIDMuj/4GxtZD1vQ5
         lJfcWMGWmhSMEkqHMe9gOI7CkbRyWbEdQ3Wzm+movDlaZMORQc/TYFrTlM+phYSl9drv
         /NUijVPDLgUwGjwKPLP8UIj6e0FathfZVC6Ak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771508014; x=1772112814;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7qhpWEpapwOSKB8fKZRPQ2iIMNr4iAJ06ulXhSvfvsY=;
        b=SE94FxjYPLCuZHPg9AXKpZnSYnfMyoDlF5kKp0DCFaXOho37xlMjh370+Filp0Afuz
         xIQ20cFg4PSkffogVDD1n0i0Bgq8S4Fh3ESu0Cz3LCdlZ+Wl7bdBTzubPDHnkAIDHGcg
         lkXfFuliduki3+Y3+f/vHCbnrlR8jEFOCozWwMCT13Ez6ToK4XvsoGFtvaXd26Su7Aoj
         T61AGXcGzvpmm3O8xExO76tEotE5SgKgjH5cofHgE5u5iXmpw/xRBJiqW9zOgery31K+
         7woo9c96EL9ji1nNJPUcI0GGirSsaN82GBnZn0FYFaHB8GfgzFTA3OCivFu4ySfBmmNu
         p9nA==
X-Gm-Message-State: AOJu0Yytg5XadMN/dsS8zeNpr2/+eBIwMv7ChnTW8L5T+0slDkrRr5Jo
	njH/VFddVHlx8Se2kvl7aEYZpArifg9oE1pLgONLiHchmhp6shPcAHM2qthJmJfkpGXy1bbKk4x
	KpU8t
X-Gm-Gg: AZuq6aLxFAOfrw/8Z1SoebgYAANCy6m+PsEhnWziO0G/mmmhU+ZstUOX2cpZ15ElsKh
	8ztOODdTwf2OMmlx3VXQdiUzoQWfj82ZiY+uCBZntAyWZk8f3qnu9mZfjQCgNSYDFJX+267FmsT
	smg4+oUQvN9+YLYejn07tDPY7C6AMPOoCZlOI3iGCIu+KKTN5jzrmh117QUZ/gFL9t3fyNIG8hR
	JtiTEobQgLiFf8A6C140RRJSBoS3irERe54OWmA0OqCLUm0VIoNnGO06Qy85gT2gJ4XvUjJI1HO
	ylbbWTfW35XoUYM7KvjAN3pd2pxvy/nDOVHsBCE9ylxbHQ8I63OtnbaNGnL4KHbD0m/DKJSsIEy
	EP0reAUnp0nS6aeIv2FP5w55y77zTnzkM2uOTQFt2jEmZna8P+DqmuVExjvugWVJD+90JtD20r7
	tZOipGAP64PwKNGtsVox8QZ5/EMsO/93HUiNfuGzy8oGLoEHj/jUIF6XlDBqBeae3bwaJKgOa7x
	hejMbHTKc5HdBM=
X-Received: by 2002:a05:600c:310d:b0:483:2c98:435e with SMTP id 5b1f17b1804b1-48398aefddcmr85705905e9.34.1771508014286;
        Thu, 19 Feb 2026 05:33:34 -0800 (PST)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839e7f9baasm30054615e9.0.2026.02.19.05.33.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 05:33:33 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 19 Feb 2026 14:33:33 +0100
Message-Id: <DGIZ6IGZSM4K.1P2TO4TDB751V@smile.fr>
Subject: Re: [yocto] [meta-intel] intel-media-driver_26.1.0.bb:do_compile
 fails on master
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <yocto@lists.yoctoproject.org>, <yogesh.tyagi@intel.com>
X-Mailer: aerc 0.20.0
References: <DG57YRQ7R76H.1FVPAEO7JT8Y6@smile.fr>
 <IA3PR11MB89872EF6500D42F1A753C0188C62A@IA3PR11MB8987.namprd11.prod.outlook.com> <DGD219WBW417.38KFVSE5F8O4R@smile.fr> <IA3PR11MB898731D307DB9D0641D1F5678C6DA@IA3PR11MB8987.namprd11.prod.outlook.com> <CAMSfU+4A=s=SwU5XNSebqSMQpg+KD8tYpMn9ncn93eUUdR7KxA@mail.gmail.com> <DGHLGO2BAP6W.31VDOO58TLKS6@smile.fr> <IA3PR11MB8987C922484CE78B7F8E2EB28C6BA@IA3PR11MB8987.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8987C922484CE78B7F8E2EB28C6BA@IA3PR11MB8987.namprd11.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Feb 2026 13:33:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66258

On Thu Feb 19, 2026 at 1:26 PM CET, Yogesh Tyagi via lists.yoctoproject.org=
 wrote:
> Hello Yoann,
>
> Is it possible to test a meta-intel development branch in autobuilder bef=
ore pushing the changes in production?

Hello,

Yes, you can publish a development branch on the meta-intel repo and we
can start the builds. If you have not already, you can join the project
IRC channel (#yocto on https://libera.chat/) to make those build requests.

Regards,
--=20
Yoann Congal
Smile ECS


