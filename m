Return-Path: <todd.efflam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01E63E00B37; Fri, 23 Oct 2015 16:28:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (todd.efflam[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f68.google.com (mail-qg0-f68.google.com
	[209.85.192.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB99E00B31
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 16:28:25 -0700 (PDT)
Received: by qgen11 with SMTP id n11so7656939qge.2
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 16:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4Q+P/LydFtm+z2shvBt9fjjT/Qq42ekXfSYURpxhEW4=;
	b=TDmMLfmVoJPe39q3I8FVkc8lTHirvIzT4gG+B7z5KDREqxkXTyB8gn1W0+zAbyJWdY
	nQXw/PUYFoE3D71ldwRIkUszVf9Naly30lT3eKfVzmHCdFbXPZ9NC1kpIBemHRIFzohU
	9Y11n5NwYUoiHeIyaZVWd4391sZkwDbiTbauuLugC2CrF2wAtxe+iW7fV803xtcMaOND
	zy9hM4JvxRJMR92rYkOBzHQppGxXUarkxy2Sx+ujAv67wS1wzeZxKe6GA98lahW/2fIy
	z36WYsCzX6nll5DVUPyuEmwar8TMMFO+xmj6g3KzJObTIajF02MroC5NenpkHlqIqyHN
	8uTA==
MIME-Version: 1.0
X-Received: by 10.140.43.183 with SMTP id e52mr28811788qga.38.1445642905344;
	Fri, 23 Oct 2015 16:28:25 -0700 (PDT)
Received: by 10.55.117.80 with HTTP; Fri, 23 Oct 2015 16:28:25 -0700 (PDT)
Date: Fri, 23 Oct 2015 16:28:25 -0700
Message-ID: <CAHWMYyDLXYt2m3qgZd1M8y09wuz0xW==uAmDbPN_8cF9vKCZmg@mail.gmail.com>
From: Todd Efflam <todd.efflam@gmail.com>
To: yocto@yoctoproject.org
Subject: Disabling ipv6
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
X-List-Received-Date: Fri, 23 Oct 2015 23:28:27 -0000
Content-Type: text/plain; charset=UTF-8

Hello,
We're trying to disable ipv6 in our build and are able to do so by
directly editing the file
meta/conf/distro/include/default-distrovars.inc and deleting "ipv6"
from "DISTRO_FEATURES_LIBC_DEFAULT ?= "ipv4 ipv6 libc-backtrace
lib..."

Is there a better way to disable ipv6 so that we can do this from
within our own branch?

Thanks,
Todd

