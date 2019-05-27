Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8367E00CD5; Mon, 27 May 2019 06:31:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 988EFE0049C
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 06:31:03 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id 7so15864647wmo.2
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 06:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=4uks4NshLXHYZyyDmWufWvdB96SdJpyv79NOCQxHH+A=;
	b=kMvzTtAc/rbzCstRXoKLN7/kn1UKr758fIV1S7+cx7m5iOYGMWvleq6sd+VonXyz8w
	EIr2JMwy4opfk8Lrs0K78HorrhkcNW/r7Fd6V88QGjcoR7e539vBWYbiR1G3uCUvixbW
	XU1CkMKxPXd9UvNkctBoPie300FntyYzp/uOtd4ZrzE7QdhFVMv8oaP9shuJHEGCP6ez
	KzyYWPOdF70PHjcWT2LGQL30eSj4QEa68wEr4FPOJo3z8+6ONrDnnMAHbULttp9Ob5xh
	zshwX9F0qkg5PHtxOYB7mrYJsXVa47B9bWu/HP1Q3vb1ZgoyoaQOjbIdyR78kOilV3aA
	Qc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=4uks4NshLXHYZyyDmWufWvdB96SdJpyv79NOCQxHH+A=;
	b=RDfRPIt75v/gI5XtEuvBH5Bc1a29LpVIqM2uRUdjuKE659XY+Eem/9BxHYLvRdS+Us
	x6Ffi3if+/spkLNTybaoX0l4aPIlMHUmFw/9QLKMaZf2I3QpRARDN/JgAm3comboBu5O
	kpkKKu663cNa+w6lN/fxhrXqTWlRKwzcCkqXs0REqxMIgFC9Ek597CCKpdcCkpCMAftj
	EieHLxmhEER9VR92qQf556IHgFqxa+PXi/XL2kwIYcFlJ/787wwcuEHjH28I/f8xcDG3
	pSQ72yxo4Y9ImF7i60FMBpOihhHZi2yugWnyzRXNfWuEHsoWBTg3exTMFSTvEQmnu7ht
	cb4w==
X-Gm-Message-State: APjAAAW4iFupRNdehOLJl2fkML69fhPGQKfnX5VRgvQ0vSmRTWD5bk/c
	tezGgFctRJuUNiDssBxtxdyERXwY
X-Google-Smtp-Source: APXvYqxtiyOJlSB/UnwoN9kTOn6nC18w4tad3Db85pI+r7sI31zgqNWhePniw6+VBsKsCqiHezWmOQ==
X-Received: by 2002:a1c:4843:: with SMTP id v64mr26283585wma.73.1558963862425; 
	Mon, 27 May 2019 06:31:02 -0700 (PDT)
Received: from [172.16.100.14] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id
	88sm32383142wrc.33.2019.05.27.06.31.01 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 May 2019 06:31:01 -0700 (PDT)
To: yocto@yoctoproject.org
References: <trinity-631dde4f-bab9-4c73-8545-286ae7269df2-1558963608089@3c-app-gmx-bs16>
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <9ac8b53d-84f5-6ee0-d445-57335f8f0836@googlemail.com>
Date: Mon, 27 May 2019 15:31:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <trinity-631dde4f-bab9-4c73-8545-286ae7269df2-1558963608089@3c-app-gmx-bs16>
Subject: Re: [meta-swupdate] build fails under thud
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
X-List-Received-Date: Mon, 27 May 2019 13:31:04 -0000
Content-Type: multipart/alternative;
	boundary="------------ACF4F7C7F91D1FF24C77AB40"
Content-Language: en-US

--------------ACF4F7C7F91D1FF24C77AB40
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Moritz!

You need to configure swupdate kind of like the linux kernel with 
menuconfig:

bitbake -c menuconfig swupdate

do not forget to copy your config then into an bbappend to swupdate 
(defconfig).

Hope that helps,

Regards,

    Matthias

On 5/27/19 3:26 PM, Moritz Porst wrote:
> Hello
> I want to create an update mechanism for our embedded system. I chose 
> swupdate because it is very well documented and seems flexible.
> When trying to build swupdate-image it fails with several undefined 
> references, just a few as example:
> """
> /opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld: 
> bootloader/lib.a(uboot.o): in function `bootloader_env_set':
> | uboot.c:(.text.bootloader_env_set+0x40): undefined reference to 
> `fw_env_open'
> | 
> /opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld: 
> uboot.c:(.text.bootloader_env_set+0xf8): undefined reference to 
> `fw_env_write'
> """
> I see lots of "uboot" in the trace, but to my understanding swupdate 
> should also work with grub which I enabled using:
> EFI_PROVIDER = "grub-efi"    (First tried to use 
> PREFERRED_PROVIDER_virtual/bootloader, but this doesn't work with EFI 
> booting)
> When I want to enable "uboot" this way, bitbake tells me there is no 
> uboot.
> I know there is also the option of writing my own init scripts but 
> this would be just reinventing the wheel (given there is an swupdate 
> available) and probably more error-prone than a grown update tool. 
> Thus I would like to get swupdate to work.
> Any ideas ?
> Best regards
> Moritz
>

--------------ACF4F7C7F91D1FF24C77AB40
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Moritz!</p>
    <p>You need to configure swupdate kind of like the linux kernel with
      menuconfig:</p>
    <p>bitbake -c menuconfig swupdate</p>
    <p>do not forget to copy your config then into an bbappend to
      swupdate (defconfig).</p>
    <p>Hope that helps,</p>
    <p>Regards,</p>
    <p>   Matthias<br>
    </p>
    <div class="moz-cite-prefix">On 5/27/19 3:26 PM, Moritz Porst wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:trinity-631dde4f-bab9-4c73-8545-286ae7269df2-1558963608089@3c-app-gmx-bs16">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div>Hello</div>
        <div> </div>
        <div>I want to create an update mechanism for our embedded
          system. I chose swupdate because it is very well documented
          and seems flexible.</div>
        <div>When trying to build swupdate-image it fails with several
          undefined references, just a few as example:</div>
        <div>"""</div>
        <div>
          <div>/opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld:
            bootloader/lib.a(uboot.o): in function `bootloader_env_set':<br>
            | uboot.c:(.text.bootloader_env_set+0x40): undefined
            reference to `fw_env_open'<br>
            |
/opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld:
            uboot.c:(.text.bootloader_env_set+0xf8): undefined reference
            to `fw_env_write'</div>
          <div>"""</div>
          <div>I see lots of "uboot" in the trace, but to my
            understanding swupdate should also work with grub which I
            enabled using:</div>
          <div>EFI_PROVIDER = "grub-efi"    (First tried to use
            PREFERRED_PROVIDER_virtual/bootloader, but this doesn't work
            with EFI booting)</div>
          <div>When I want to enable "uboot" this way, bitbake tells me
            there is no uboot.</div>
          <div> </div>
          <div>I know there is also the option of writing my own init
            scripts but this would be just reinventing the wheel (given
            there is an swupdate available) and probably more
            error-prone than a grown update tool. Thus I would like to
            get swupdate to work.</div>
          <div> </div>
          <div>Any ideas ?</div>
          <div> </div>
          <div>Best regards</div>
          <div>Moritz</div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------ACF4F7C7F91D1FF24C77AB40--
