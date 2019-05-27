Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D4D2E00D38; Mon, 27 May 2019 09:59:16 -0700 (PDT)
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
	*      [209.85.128.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8613E00D31
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 09:59:13 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id f204so131385wme.0
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 09:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=/X2kcV7YAPFoxpFy3Xb2hI6YIdJk+UhnHhcKyqPGkR4=;
	b=FttsHWPjC4tclOrMOmpLCC7ITR81AkqoLap1iEXkE697DwOD1QfyQqwfw/7Kt1lc8V
	hLKdXOLkqyQRDHCXJPJeIVFOSmV7v4px/NWlr8aMO4DiYQV3ALJx5+jw4l5aOPjVMWtt
	+JoP2aiR4hYZ8NARLvfn0P5QuaKXPSi0Upqqf0wBg3Hg4qf7+1fqr9yPvcNjfNdllNV9
	lDiFwyzGxhpTyk7zdO0EUNibNUaqBXMRpVnvzK3CUgBxKPN4IofaLVsu0UCX+uBtFcac
	QlMeg6LOtNNdHUaeEGt5rikktn1VlFxvrQPRZl+vXVhZVv7ngRG2Njj8hkAAnoOewoFL
	OxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=/X2kcV7YAPFoxpFy3Xb2hI6YIdJk+UhnHhcKyqPGkR4=;
	b=layOBGwuGrLzKZhYZf8yOgU7+nqos0H9N1aL9aUe85M+bgwje6E6mOc9C+IsAYBvfn
	Q3+oP94b4YBVEW8MOfp4gDtmcEqhDIBDy3+YwuRy/AuWzWgj3wLO9skIyE8jDJCFbjBv
	CiKr4fqjv/jAPvHIzBhhKe9B6hWfmthXNDGtTR/JzWLGekoGVvJFL6sw6jxJJjMkACzQ
	ZwErNIuz+tVMtv93LRk1NuE1GYcBf+B+ph40hSDWM/ZT5umWhkwfEe5OOBbCWQYxBL6o
	KDF5cZRp34TGJax0TuxASaLMnmQ0vrC9fGYewzvlWKLYnPLGLFi2pRiJWQcSek4kBpXi
	F1gQ==
X-Gm-Message-State: APjAAAWa8IKOCKMmMW5iPoHwL3khFU5RidonJmX6Hv4BIuww9SzHasX6
	J3iXogInarUh0V8cmZhKmSgG6LJp
X-Google-Smtp-Source: APXvYqybJmrwOCrEBhamnmhxulLdVeTPxFtNX+mFog/TTTNTbpJHmcSVKgKsG2jtFKYAYdUunF2NEg==
X-Received: by 2002:a7b:c549:: with SMTP id j9mr40097wmk.114.1558976352745;
	Mon, 27 May 2019 09:59:12 -0700 (PDT)
Received: from [172.16.100.14] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id t194sm557292wmt.3.2019.05.27.09.59.11
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 May 2019 09:59:11 -0700 (PDT)
To: yocto@yoctoproject.org
References: <trinity-631dde4f-bab9-4c73-8545-286ae7269df2-1558963608089@3c-app-gmx-bs16>
	<9ac8b53d-84f5-6ee0-d445-57335f8f0836@googlemail.com>
	<trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-app-gmx-bs16>
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <68d0b5b9-6b70-7afa-390d-5cf5f003730d@googlemail.com>
Date: Mon, 27 May 2019 18:59:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-app-gmx-bs16>
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
X-List-Received-Date: Mon, 27 May 2019 16:59:16 -0000
Content-Type: multipart/alternative;
	boundary="------------5F045B3077CFAB9D52E5E17F"
Content-Language: en-US

--------------5F045B3077CFAB9D52E5E17F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Moritz,

I will try to answer what I can inline:

On 5/27/19 5:05 PM, Moritz Porst wrote:
> Hi Matthias
> Thank you very much for your help, this is not mentioned in the 
> official repository.
> I tried what you said. It enables me (even without .bbappend) to build 
> the swupdate-image.
> Now for the defconfig. I did it with a .bbappend the way the yocto 
> documentation suggests (FILESEXTRAPATHS and SRC_URI) but which recipe 
> do I need to append to? I thought just choose swupdate_git.bb, then 
> swupdate_2018.11.bb. I always receive the following rootfs file:
you can either bbappend the _2018.11 or make a swupdate_%.bbappend, that 
is then valid for both _git and _2018.11 if you happen to use the _git 
version.
> swupdate-image-ccns5.ext4.gz.u-boot   (Clearly still uboot, I don't 
> know why it managed to build though)
> Also I get the following warning on invoking bitbake for swupdate-image:
> WARNING: 
> /opt/thudPoky/meta-swupdate/recipes-support/swupdate/swupdate_2018.11.bb.do_compile 
> is tainted from a forced run
This is because you bitbake -c menuconfig swupdate. If you clean the 
build (bitbake -c cleansstate swupdate), this should disappear. Then you 
can check, if your bbappend gets picked up correctly.
> Finally I always end up with microcode.cpio in my /boot directory 
> which comes from meta-intel. I guess swupdate would replace the 
> initrd/initramfs ?
> I put the following lines in my image description:
> INITRAMFS_IMAGE = "swupdate-image-ccns5"
> INITRAMFS_IMAGE_BUNDLE = "1"
> Shouldn't they cause the swupdate-image to be bundled into the kernel, 
> thus that if I build my image that I end up with the swupdate 
> initramfs in my /boot directory ?

Errr.... you want to *add* swupdate to an image recipe. It is not an 
image by itself. Well, I guess, there is a rescue image within swupdate, 
but that is a different story and I have no experience with it. There 
are ways to add packages to an image, for example through 
IMAGE_INSTALL_append = " swupdate " in local.conf

https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#usingpoky-extend-customimage-localconf

> Sorry for all the questions and thanks in advance !
> Best regards
> Moritz
> *Gesendet:* Montag, 27. Mai 2019 um 15:31 Uhr
> *Von:* "Matthias Schoepfer" <matthias.schoepfer@googlemail.com>
> *An:* yocto@yoctoproject.org
> *Betreff:* Re: [yocto] [meta-swupdate] build fails under thud
>
> Hi Moritz!
>
> You need to configure swupdate kind of like the linux kernel with 
> menuconfig:
>
> bitbake -c menuconfig swupdate
>
> do not forget to copy your config then into an bbappend to swupdate 
> (defconfig).
>
> Hope that helps,
>
> Regards,
>
>    Matthias
>
> On 5/27/19 3:26 PM, Moritz Porst wrote:
>
>     Hello
>     I want to create an update mechanism for our embedded system. I
>     chose swupdate because it is very well documented and seems flexible.
>     When trying to build swupdate-image it fails with several
>     undefined references, just a few as example:
>     """
>     /opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld:
>     bootloader/lib.a(uboot.o): in function `bootloader_env_set':
>     | uboot.c:(.text.bootloader_env_set+0x40): undefined reference to
>     `fw_env_open'
>     |
>     /opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld:
>     uboot.c:(.text.bootloader_env_set+0xf8): undefined reference to
>     `fw_env_write'
>     """
>     I see lots of "uboot" in the trace, but to my understanding
>     swupdate should also work with grub which I enabled using:
>     EFI_PROVIDER = "grub-efi"    (First tried to use
>     PREFERRED_PROVIDER_virtual/bootloader, but this doesn't work with
>     EFI booting)
>     When I want to enable "uboot" this way, bitbake tells me there is
>     no uboot.
>     I know there is also the option of writing my own init scripts but
>     this would be just reinventing the wheel (given there is an
>     swupdate available) and probably more error-prone than a grown
>     update tool. Thus I would like to get swupdate to work.
>     Any ideas ?
>     Best regards
>     Moritz
>
> -- _______________________________________________ yocto mailing list 
> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
>

--------------5F045B3077CFAB9D52E5E17F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Moritz,</p>
    <p>I will try to answer what I can inline:<br>
    </p>
    <div class="moz-cite-prefix">On 5/27/19 5:05 PM, Moritz Porst wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-app-gmx-bs16">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div>
          <div>Hi Matthias</div>
          <div> </div>
          <div>Thank you very much for your help, this is not mentioned
            in the official repository.</div>
          <div>I tried what you said. It enables me (even without
            .bbappend) to build the swupdate-image.</div>
          <div>Now for the defconfig. I did it with a .bbappend the way
            the yocto documentation suggests (FILESEXTRAPATHS and
            SRC_URI) but which recipe do I need to append to? I thought
            just choose swupdate_git.bb, then swupdate_2018.11.bb. I
            always receive the following rootfs file:</div>
        </div>
      </div>
    </blockquote>
    you can either bbappend the _2018.11 or make a swupdate_%.bbappend,
    that is then valid for both _git and _2018.11 if you happen to use
    the _git version. <br>
    <blockquote type="cite"
cite="mid:trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-app-gmx-bs16">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div>
          <div> </div>
          <div>swupdate-image-ccns5.ext4.gz.u-boot   (Clearly still
            uboot, I don't know why it managed to build though)</div>
          <div> </div>
          <div>Also I get the following warning on invoking bitbake for
            swupdate-image:</div>
          <div>WARNING:
/opt/thudPoky/meta-swupdate/recipes-support/swupdate/swupdate_2018.11.bb.do_compile
            is tainted from a forced run</div>
        </div>
      </div>
    </blockquote>
    This is because you bitbake -c menuconfig swupdate. If you clean the
    build (bitbake -c cleansstate swupdate), this should disappear. Then
    you can check, if your bbappend gets picked up correctly. <br>
    <blockquote type="cite"
cite="mid:trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-app-gmx-bs16">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div>
          <div> </div>
          <div>Finally I always end up with microcode.cpio in my /boot
            directory which comes from meta-intel. I guess swupdate
            would replace the initrd/initramfs ?</div>
          <div>I put the following lines in my image description:</div>
          <div> </div>
          <div>INITRAMFS_IMAGE = "swupdate-image-ccns5"<br>
            INITRAMFS_IMAGE_BUNDLE = "1"</div>
          <div> </div>
          <div>Shouldn't they cause the swupdate-image to be bundled
            into the kernel, thus that if I build my image that I end up
            with the swupdate initramfs in my /boot directory ?</div>
        </div>
      </div>
    </blockquote>
    <p>Errr.... you want to *add* swupdate to an image recipe. It is not
      an image by itself. Well, I guess, there is a rescue image within
      swupdate, but that is a different story and I have no experience
      with it. There are ways to add packages to an image, for example
      through IMAGE_INSTALL_append = " swupdate " in local.conf <br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#usingpoky-extend-customimage-localconf">https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#usingpoky-extend-customimage-localconf</a><br>
    </p>
    <blockquote type="cite"
cite="mid:trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-app-gmx-bs16">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div>
          <div> </div>
          <div>Sorry for all the questions and thanks in advance !</div>
          <div> </div>
          <div>Best regards</div>
          <div>Moritz</div>
          <div> 
            <div name="quote" style="margin:10px 5px 5px 10px; padding:
              10px 0 10px 10px; border-left:2px solid #C3D9E5;
              word-wrap: break-word; -webkit-nbsp-mode: space;
              -webkit-line-break: after-white-space;">
              <div style="margin:0 0 10px 0;"><b>Gesendet:</b> Montag,
                27. Mai 2019 um 15:31 Uhr<br>
                <b>Von:</b> "Matthias Schoepfer"
                <a class="moz-txt-link-rfc2396E" href="mailto:matthias.schoepfer@googlemail.com">&lt;matthias.schoepfer@googlemail.com&gt;</a><br>
                <b>An:</b> <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <b>Betreff:</b> Re: [yocto] [meta-swupdate] build fails
                under thud</div>
              <div name="quoted-content">
                <div style="background-color: rgb(255,255,255);">
                  <p>Hi Moritz!</p>
                  <p>You need to configure swupdate kind of like the
                    linux kernel with menuconfig:</p>
                  <p>bitbake -c menuconfig swupdate</p>
                  <p>do not forget to copy your config then into an
                    bbappend to swupdate (defconfig).</p>
                  <p>Hope that helps,</p>
                  <p>Regards,</p>
                  <p>   Matthias</p>
                  <div class="moz-cite-prefix">On 5/27/19 3:26 PM,
                    Moritz Porst wrote:</div>
                  <blockquote>
                    <div style="font-family: Verdana;font-size: 12.0px;">
                      <div>Hello</div>
                      <div> </div>
                      <div>I want to create an update mechanism for our
                        embedded system. I chose swupdate because it is
                        very well documented and seems flexible.</div>
                      <div>When trying to build swupdate-image it fails
                        with several undefined references, just a few as
                        example:</div>
                      <div>"""</div>
                      <div>
                        <div>/opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld:
                          bootloader/lib.a(uboot.o): in function
                          `bootloader_env_set':<br>
                          | uboot.c:(.text.bootloader_env_set+0x40):
                          undefined reference to `fw_env_open'<br>
                          |
/opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld:
                          uboot.c:(.text.bootloader_env_set+0xf8):
                          undefined reference to `fw_env_write'</div>
                        <div>"""</div>
                        <div>I see lots of "uboot" in the trace, but to
                          my understanding swupdate should also work
                          with grub which I enabled using:</div>
                        <div>EFI_PROVIDER = "grub-efi"    (First tried
                          to use PREFERRED_PROVIDER_virtual/bootloader,
                          but this doesn't work with EFI booting)</div>
                        <div>When I want to enable "uboot" this way,
                          bitbake tells me there is no uboot.</div>
                        <div> </div>
                        <div>I know there is also the option of writing
                          my own init scripts but this would be just
                          reinventing the wheel (given there is an
                          swupdate available) and probably more
                          error-prone than a grown update tool. Thus I
                          would like to get swupdate to work.</div>
                        <div> </div>
                        <div>Any ideas ?</div>
                        <div> </div>
                        <div>Best regards</div>
                        <div>Moritz</div>
                      </div>
                    </div>
                     
                    <fieldset class="mimeAttachmentHeader"> </fieldset>
                  </blockquote>
                  -- _______________________________________________
                  yocto mailing list <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> <a
                    href="https://lists.yoctoproject.org/listinfo/yocto"
                    target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------5F045B3077CFAB9D52E5E17F--
