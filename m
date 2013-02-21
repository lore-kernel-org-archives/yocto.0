Return-Path: <hans.beckerus@gmail.com>
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 26212E003BC
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 11:03:20 -0800 (PST)
Received: by mail-lb0-f173.google.com with SMTP id gf7so7135266lbb.18
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 11:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=ohz6KyivVe9b1avaKSxeacyllHaDebg548YjuReNUn4=;
	b=LkF/NwO1E/qL7RAgK+5KIHLIVimY1/R76bjqGEbGT10ccshN/XSNYKmlc4kkPc5wUY
	7k6uWahJg8BidAFr607BVbcfecbVGCtJJNtRGL2cwPWCYtrXGSwZap8MQkXDyYeocmDc
	otHSosdnIBunEH+XPNgnlTgNbOqKUzKcG7Jf2hfoO/rTIMnYIuDT+Gg3u5nZwJdT5+Ge
	m5Y/NpsoROm2CedKRp26PxmabNKxA4p7qmHtwY9NX1M1xWmSOcFNstEzQaWRqm1nfbbs
	5oSsaY6+yT6rs5aLQtqr3CEteLKtNSnLEgbSaChtbtu3+4q44PrGeYxtcN8hgAD73YY3
	7QPg==
X-Received: by 10.112.42.134 with SMTP id o6mr5394786lbl.77.1361473398541;
	Thu, 21 Feb 2013 11:03:18 -0800 (PST)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id oy10sm41502809lab.8.2013.02.21.11.03.17
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 21 Feb 2013 11:03:17 -0800 (PST)
Message-ID: <51266F72.4040300@gmail.com>
Date: Thu, 21 Feb 2013 20:03:14 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
	<CA+gsK-r_Oq3DvdoC1aT5gErTkKXYJ+gewMZDouusE+4oHicdtQ@mail.gmail.com>
	<CAFyqS9pgGgZcacwqxiHGM2WSSH8xZea-tRjBWcNwqCr=DDhWsw@mail.gmail.com>
	<CABTzgQ5RL+Gu4T5my_NPxSJ+Qm8MeDuJPYoZgGQ9=nD0yPcqmw@mail.gmail.com>
	<CAFyqS9q3q+Ep2z2Ygk4oN5pS13DHnV0abQ3BvzV3-mq=HqBrJw@mail.gmail.com>
	<CABTzgQ6WrhzcQ4KKBG7Q3bMsgf8-uijzshHSv2FyCajHpiy-5Q@mail.gmail.com>
	<CABTzgQ7tS7+_64urm7NRBmXN+KT8M7W+8QOareJxOtXwfWt0Og@mail.gmail.com>
	<CABTzgQ54dEyDrbND5Kfy6M4mAGMoyU236V1dOZvW8oLVBWFyzg@mail.gmail.com>
In-Reply-To: <CABTzgQ54dEyDrbND5Kfy6M4mAGMoyU236V1dOZvW8oLVBWFyzg@mail.gmail.com>
Subject: How to make a recipe doing mkimage on a initrd image?
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
X-List-Received-Date: Thu, 21 Feb 2013 19:03:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have created a cpio type rootfs image and are trying to load it as a 
initrd ramdisk.
After several boot failures  (U-Boot complains it is not a valid image) 
I finally realized that the U-Boot version being used on this system 
requires that the ramdisk image is also prepended with a mkimage header. 
The standard image .bbclass that I am using in my simple recipe does not 
seem to have this functionality. Has anyone done a recipe (or image 
class?) that is calling mkimage in the do_deploy stage that could help 
me on the way here?
I wish to have it work similar to the kernel uImage build for which I 
guess the u-boot-native-mkimage is being used.

Hans

