Return-Path: <ratheesh.ksz@gmail.com>
Received: from mail-yh0-f52.google.com (mail-yh0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B9B0E00575
	for <yocto@yoctoproject.org>; Sun,  9 Feb 2014 07:18:54 -0800 (PST)
Received: by mail-yh0-f52.google.com with SMTP id a41so4170497yho.25
	for <yocto@yoctoproject.org>; Sun, 09 Feb 2014 07:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Lturr+F0pH2Lks7Uiig86yqG0zf08yqmbgViuRBpQDg=;
	b=BVD7w88o0+EYn1yF/Aiz4uzGCW45L5SQvHvWto3J4iIjNkR+1f27oiidUg9OZh4nai
	yBFsY3o7YrS5NEzLh5946APxSb97cUupkON4hmRkn552hcYWVdAmsLrloTsEAUjLLrMQ
	VSitQAVfjDnnpUQTIVG9FEpLhLXItmQWhkhq19ZI+5ovtDFUKs0S0TJIT51sdfomfodT
	ToCiV4TyVCM6PV5sgpy7KkRmCAVjUaJ2XiA1N/THFINukQpbjvHU5zXUYaUaB4i0xHa6
	J4evyZWRuy+pCavglJM0dlMAaRgwxeWFcYMj8tUZH+CKPQhTKqMdXXPzz60r29ZGBJkw
	9ljg==
MIME-Version: 1.0
X-Received: by 10.236.130.138 with SMTP id k10mr22518849yhi.31.1391959134364; 
	Sun, 09 Feb 2014 07:18:54 -0800 (PST)
Received: by 10.170.48.144 with HTTP; Sun, 9 Feb 2014 07:18:54 -0800 (PST)
Date: Sun, 9 Feb 2014 20:48:54 +0530
Message-ID: <CAGZFCEEa9Lwhh2AiBOro=J1x4XPa4QUmTkVH6ZDjkDH-WLv2ng@mail.gmail.com>
From: ratheesh kannoth <ratheesh.ksz@gmail.com>
To: yocto@yoctoproject.org
Subject: RDEPENDS
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
X-List-Received-Date: Sun, 09 Feb 2014 15:19:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am trying to add a package  X.    Package X depends on  packages  A
.  When  i was configuring   X , i have given  include path of  A and
library path of A. because X is dynamically linked to libA.

X.bb
------
do_configure() {
cd ${S}
./configure -I ../../A/include   -L ../../A/src/.libs
}

I could make X and A  separately and package it. I could not make an
image. It throws an error.

Computing transaction...error: Can't install  X-1.0-r0@x86_64: no
package provides

${work}/bitbake_build/tmp/work/x86_64-wrs-linux/X-1.0-r0/../ A
/src/.libs// libA()(64bit)


I could see that  RDEPENDS  adds
${work}/bitbake_build/tmp/work/x86_64-wrs-linux/X-1.0-r0/../ A
/src/.libs// libA()(64bit)  when it finds while compiling.

Do you have any idea How to solve this problem ?

