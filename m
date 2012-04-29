Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37CA6E0137A
	for <yocto@yoctoproject.org>; Sat, 28 Apr 2012 19:16:26 -0700 (PDT)
Received: by lagu2 with SMTP id u2so1740488lag.35
	for <yocto@yoctoproject.org>; Sat, 28 Apr 2012 19:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=QIxLvd22QUExkrkXn5uLRXZIRNG98k35eh5erGNRggI=;
	b=esVOagwKG0492NldlOXlskACEpKioW1YMwBd0pTIXT1MPQGxxVbs58TD9/t6BLSzR8
	brdlduTy+u+V9IPGOZFw0n9JW0Wp0yETUruEEl44Bx/MU6Xzz4seXOTYlBKXe0kPhyZk
	7KX0dzUKS1FyfotpdrdONU/Q5K9ZYFBGXLyyHhzVKpbHVLgWzl1HGvjhCnehJIEjDzB2
	pBIJPC7p8mdzR8pXG0qfZ0LL1aeoN3FGfUukUm0zIf0oZSn41RWqHwQOgUhdT0asJY3F
	DhBGwa9potbQRTGPBFvnZdoCJreMTy3XW+7ulKNQjROLz+Fn79tru0mbGGvTmNG17e6C
	tciA==
Received: by 10.112.86.101 with SMTP id o5mr7912042lbz.1.1335665784581; Sat,
	28 Apr 2012 19:16:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.129.134 with HTTP; Sat, 28 Apr 2012 19:15:54 -0700 (PDT)
In-Reply-To: <OF41F9B7AE.FA4B98D4-ONC12579E2.0026189F-C12579E2.00264CB0@Sitek.it>
References: <OF41F9B7AE.FA4B98D4-ONC12579E2.0026189F-C12579E2.00264CB0@Sitek.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 28 Apr 2012 19:15:54 -0700
Message-ID: <CAMKF1sriRCYmBPGNy-9KCCaR5DoBpOSFQWry1bA0_bw159uBug@mail.gmail.com>
To: giovanni.pavoni@exorint.it
Cc: yocto@yoctoproject.org
Subject: Re: Failure building qte4-demo-image
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
X-List-Received-Date: Sun, 29 Apr 2012 02:16:26 -0000
Content-Type: text/plain; charset=UTF-8

2012/4/15  <giovanni.pavoni@exorint.it>:
>
> Also, how can I specify qt4.8.0 as preferred version rather then qt4.7.4?
> (the former performs much better on neon enabled targets).

4.8.1 recipes have DEFAULT_PREFERENCE = "-1" in them just delete that
line from all 4.8.1 recipes
and then they will be picked

