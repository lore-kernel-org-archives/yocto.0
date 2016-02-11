Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDF0BE00BE1; Wed, 10 Feb 2016 23:32:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (oliver.graute[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 305EAE00BAB
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 23:32:35 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id p63so56236491wmp.1
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 23:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=I3xkl9aZ1yOSwywhcylzXUU3B2KjapjVR4nXsqi2mm4=;
	b=JeYnP/NQgFV07sKj/qHdm5bDm6EJgSFBaL3nw8tkGF7kDyREjcSePrCZ/42i+qZqb/
	U4jHAYEBlkWeOK59uiU0yoWygwST2JbwqBfRKEm39mqO0qwKQxw9ctZea/nCw06bdorV
	8y9saTA5jsYXJxd2JHoW/GceUSOo4WTFJG8noIoFDJHXbzk9lkpZaPgWqUyggW3aUJHQ
	hOx7IFFfKHgCh4GhYrYgEPdRQbt9ZPm7D/thFOZ4oNQWWL1i9/7TH+MNE1ib9x2PUJLt
	jdtExRsvWUV0gQ6jUMRVaoJAXdHLRQxBVconTse0olDCcHEvfUnodgJ6c1Ej4sjugq/8
	aoRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=I3xkl9aZ1yOSwywhcylzXUU3B2KjapjVR4nXsqi2mm4=;
	b=eFcITdJBtnL0gMc+FSsu+ljH2+GIhtaAyhO47XXTzxYvtMueGDdyZh65M0OEI3TNLs
	/d01kVYwVqEF2Pk+L25DJiukiSucImrRK9W7KMQz7jGVkjGXnjVT5AMXCRoi72Hhi8uC
	t4AB8xyvzchgnSVnP9KVgG6CYDm+rKizqgS1KR9r1oLeLmA5GOERSe7HWGYWR+9sk0j0
	F4rYa2Kqx/Mwf71ca3p8zooJGwd8wjfj6Rxhr70AoxQHkyqRokns7vjS2ctNXJM1FOiV
	PlfTdb/hGSD+wHSPN0mXRcggGZ5lUDWy2bAPghjWvV8XeXigxhANYh+swmf8g8tWnHUn
	boyg==
X-Gm-Message-State: AG10YOQ+Qn7OjVQiEC1+yU+l2xqoLbET2w3k6dDeXBHL9o+iVMZPQJrDelq9uMAdwDufTg==
X-Received: by 10.28.65.5 with SMTP id o5mr16514761wma.75.1455175955202;
	Wed, 10 Feb 2016 23:32:35 -0800 (PST)
Received: from localhost (x55b1eae5.dyn.telefonica.de. [85.177.234.229])
	by smtp.gmail.com with ESMTPSA id
	e77sm25646228wma.18.2016.02.10.23.32.33 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 10 Feb 2016 23:32:34 -0800 (PST)
Date: Thu, 11 Feb 2016 08:32:32 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160211073232.GA25122@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
References: <20160210161659.GC27824@graute-opti>
	<406998638.322917.1455129331256.JavaMail.open-xchange@ox7.netart.com.pl>
MIME-Version: 1.0
In-Reply-To: <406998638.322917.1455129331256.JavaMail.open-xchange@ox7.netart.com.pl>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: dtb filename mismatch prevents booting
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
X-List-Received-Date: Thu, 11 Feb 2016 07:32:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On 10/02/16, Maciej Borzecki wrote:
> 
> > Dnia 10 luty 2016 o 17:16 Oliver Graute <oliver.graute@gmail.com> napisał(a):
> >
> >
> > Hello list,
> >
> > if I try to boot from my yocto generated SD-card image my u-boot can't
> > start the kernel because the imx6ul-14x14-evk.dtb is missing.
> >
> >
> > reading boot.scr
> > ** Unable to read file boot.scr **
> > reading zImage
> > 5072288 bytes read in 328 ms (14.7 MiB/s)
> > Booting from mmc ...
> > reading imx6ul-14x14-evk.dtb
> > ** Unable to read file imx6ul-14x14-evk.dtb **
> > Kernel image @ 0x82000000 [ 0x000000 - 0x4d65a0 ]
> >
> > Starting kernel ...
> >
> >
> > In my /boot folder I saw a dtb file, but the filename is a bit different.
> >
> > zImage-imx6ul-14x14-evk.dtb instead of imx6ul-14x14-evk.dtb
> >
> > So I changed these filename manually and my Image is booting.
> >
> > mv zImage-imx6ul-14x14-evk.dtb imx6ul-14x14-evk.dtb
> > »zImage-imx6ul-14x14-evk.dtb“ -> »imx6ul-14x14-evk.dtb“
> >
> > What is the right way to define these dtb filename?
> >
> > some ideas whats going wrong here?
> >
> 
> IIRC the usual way was to add kernel-devicetree package and let u-boot
> pick the proper dtb during boot.
> 
> As for IMAGE_BOOT_FILES, you can tell wic to automatically rename files
> by passing the desired name after a semicolon like this:
> 
>   IMAGE_BOOT_FILES = "zImage zImage-imx6ul-14x14-evk.dtb;mx6ul-14x14-evk.dtb"

ok that worked for me, I changed it like this

-IMAGE_BOOT_FILES = "zImage zImage-imx6ul-14x14-evk.dtb"
+IMAGE_BOOT_FILES = "zImage zImage-imx6ul-14x14-evk.dtb;imx6ul-14x14-evk.dtb"

now the Image is directly booting without manually renaming.

thx for your help

Best Rgeards,

Oliver

