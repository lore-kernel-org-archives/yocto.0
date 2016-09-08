Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07F28E00D42; Thu,  8 Sep 2016 06:11:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB90DE00D29
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 06:11:33 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id u68so39915110uau.1
	for <yocto@yoctoproject.org>; Thu, 08 Sep 2016 06:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eKpHHLDQYX3OQGRkuxg/bgMeWGeOyNJaynExEI9iH6Y=;
	b=LK9xlWABYVwwzMFOhxiOoByVxx8oUgh58RoNwab9BozaXGRU3DOIIOXrs509hoYq/i
	kiA6QsJOe27eymbENpUucgrmUPovc9GAZJ70oaEZPoXv3xNDeKeBta8lO7pAKg/IX59u
	TiBUekFRfqQhvBu90KnyRMgKA6d5FWMBpOH3jG0Rk73NFwliZoEReR9u+ICrtigIxObr
	/trJr1U/yg8gYXQVwzISVCmXfJRe13Wf6ejghaGZesLso/po+sXp0LYPAqLDbP4SXnz8
	ki28SsdEXHyxxOJ+zqS9BRbMvI16bTmIID0GCvI4VY6zr8z9AaWFFFQa459VhpD07wqt
	egzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eKpHHLDQYX3OQGRkuxg/bgMeWGeOyNJaynExEI9iH6Y=;
	b=VjhNuSEBbjDfBz1515AqgIwLRmjXqT71JCZMiBi5rpwORwCYY13Ov80PGtCn+NIxlN
	Y7nHMfa9mpcw7av8YDsITeiCpsKvBbB2Pu8YCjOUsRN8zAYce4VJg4AqHrFK0fKrEkzI
	nSVBEZzVZAqO2xtrAwXa6+HQMLh3A1Ua5TU8lIA60mVz4B8NlG6rANqO2FAcfYb/FcLh
	JW3pbkwFejanBFkn/Bcl5bKpFSToY3GWfPCQiglQ7arY11BxhozJvv6mcf6/B9U55yXE
	st2TnedNtp1ivnUjPh2BQu/fuQIJW2TrLQmz5+qvkrOguEKLhu2jBREjxo0ysYC7PN4j
	nn3A==
X-Gm-Message-State: AE9vXwPikvKLLgYwCvc73xuF5MhGVdp9kyKFddiBrVbQAEKU8p9NsJAQwJ6FkK+d81/OlALF9aacPNw5tNgc8g==
X-Received: by 10.159.34.177 with SMTP id 46mr32829424uan.111.1473340292774;
	Thu, 08 Sep 2016 06:11:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.147 with HTTP; Thu, 8 Sep 2016 06:11:32 -0700 (PDT)
In-Reply-To: <CY1PR0101MB1594A28319500402879A0B79D7FB0@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB1594A28319500402879A0B79D7FB0@CY1PR0101MB1594.prod.exchangelabs.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 8 Sep 2016 10:11:32 -0300
Message-ID: <CAF3SDA70bFmPZkbVaQZ8Zr8tD_c8hvc3zjgLkq267bBrLEfuHA@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pkg_postinst behavior?
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
X-List-Received-Date: Thu, 08 Sep 2016 13:11:40 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I thinking you're messing up packages and recipes names. Mulitple
packages can be built from one recipe. Packages are the .rpm .ipk and
.deb file generated to be installed on image. Usualy recipes build
three packages: ${PN} ${PN}-dev ${PN}-dbg. Other packages can be
generated like -doc, -license etc... pkg_postinst_* run just after the
*package* is installed in the image. If the execution of postint exit
with success the scripts are removed (since they had run already) if
not they are keeped and run again at first boot. People use this to
defer the execution of post install script that need hardware to
complete.

Usually you may declare they as:
pkg_postinst_${PN} () {
  ...
}

pkg_postinst_${PN}-dev () {
  ...
}

Here are some examples:
https://github.com/openembedded/meta-openembedded/blob/master/meta-initramfs/recipes-bsp/kexecboot/kexecboot_0.6.bb
https://github.com/openembedded/meta-openembedded/blob/master/meta-efl/recipes-efl/e17/enjoy_git.bb

On .bbappend you should use _append operator to extend pkg_postinst_${PN} like:
pkg_postinst_${PN}_append () {
    ...
}


Regards,

2016-09-08 9:07 GMT-03:00 Takashi Matsuzawa <tmatsuzawa@uievolution.com>:
> Hello, Yocto.
> I just want to confirm how pkg_postinst scripts are called.
>
> Provided the following scripts are provided, in two bbappend recipes as
> below, which of them are actually executed and which are not?
> I have briefly tried and 'OK's below are called and 'NG's are not.
>
> The yocto manual says posttest scripts must be suffixed by package names,
> but which package names?
> postinst scripts with package names from the other recipe (script in AAA
> referring BBB package name) can be invoked at BBB package installation?
>
> AAA.bbappend:
>
> pkg_postinst_AAA() {} - OK
> pkg_postinst_AAA_append() {} - OK
> pkg_postinst_BBB() {} - NG
> pkg_postinst_BBB_append() {} - NG
>
> BBB.bbappend:
>
> pkg_postinst_AAA() {} - NG
> pkg_postinst_AAA_append() {} - NG
> pkg_postinst_BBB() {} - OK
> pkg_postinst_BBB_append() {} - OK
>
> And, multiple _append() once could be added, but if _append() is not there
> only one of such script for the same name is executed?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

