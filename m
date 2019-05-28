Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35764E00D31; Tue, 28 May 2019 03:51:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 901CAE00942
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 03:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1559040673;
	bh=IN9BMGHHT1c9v3j0rUurUiRYyHUMqOti9Hee/lI1bas=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=atCLRoWaG/Pnmkkhnth6Jmy7gfMSkUoQsx2T7VouyzKAj9cXZCZbVzTaelx6iF944
	AVX4ZPWMN21bqQ6PQEwnBiZAFUjQZOfnQpATmuis2sQLILZmvdt268TolNNH/cOgNR
	50u7jcKH4qv+8nuLC6uaEbOnEHNfePXrqkjBEY6w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [141.99.128.135] ([141.99.128.135]) by mail.gmx.com (mrgmx005
	[212.227.17.190]) with ESMTPSA (Nemesis) id 1N4zAs-1gV7ht1MyC-010xe6
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 12:51:13 +0200
To: yocto@yoctoproject.org
References: <trinity-631dde4f-bab9-4c73-8545-286ae7269df2-1558963608089@3c-app-gmx-bs16>
	<9ac8b53d-84f5-6ee0-d445-57335f8f0836@googlemail.com>
	<trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-app-gmx-bs16>
	<68d0b5b9-6b70-7afa-390d-5cf5f003730d@googlemail.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <bfbd0c02-e82c-c4e3-4a90-9b1162a6a0b9@gmx.de>
Date: Tue, 28 May 2019 12:51:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <68d0b5b9-6b70-7afa-390d-5cf5f003730d@googlemail.com>
X-Provags-ID: V03:K1:cUxhQ7nV7+XTG036YLRjEaFmQQh4Ln+DtFtWLGDyf9sfp60pACj
	3oC7sY+6g48bK+IG0hb2bMocgtpubAlZJBp/fW+Ct6NrDrXzUKwOUY1eduPymjrks+AVzGw
	2Iz/s/7/yCrj9w/+f+wG2wJpL/0583gxw9ghLdd0ce1wK6JRgwi60RH5NqnaLwygz3YuZH4
	lJgekoKVyorB3eztySwwg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HSajXfFwVds=:T1pEZBy5Wxbq34OESXPNo2
	7MickkViLhkdz3DQZfjqcvjp0p+u9mq/rYOpKqGco66rkef9ch5Bxg4/2EziyAEjYC+Z+T+UF
	95voHbx1qX9E6zp+rTa/aof2V6gsqICIMOF5xlBt2KLhjZKt4Xj7Jwwp0WCHx+MmGbAqcPGtp
	sWKepsh6gMvKIFzJhvIJZZAAJ2khI8YNLMPC05OuDQgSrFVXlmPs79LecCahcSMrtDqhapQw5
	FaNApH5tCKoaUGaC5JFhuZpgXEHH1rd+zsElc4bLVpVEQG6gIHSrYt+iHLPJJ1BtdMiubCMlv
	5X+dwGHhRnd8/j2ypEj5hEhC7+CbEBTGixizXP7A68YUMi3KIEkjanoOAq3bhxLMOEqW+pq0s
	7D/0SICjRT2vROK1b8y/S4bB5NgHhcKgyB2mDlVk3doIkbfGnqISMFHlp5Qy9i/ipndyhJ98P
	FJnjp9vsy2obtimLmjuNa8pLMPSw5W/TNoX/jkw5+oUx6Bizpo578rVZ0suTXeVFJT1qUEviA
	O1M6Yhmlfe49jtpuES6ZLdem4Sf7FbfyEfyGNkRcBGAhqkXfRmzlEY8N+pFe5eM1I0ASkMFsB
	1JY1NrKND0Jx7pTboKeb0XsJJg5dJ0xKIQqzoQSro7K4sD4GPXgDhWT7n12RIxgCZ+zbFzE4n
	0qTHgEGgu+Xj3vJ0AuTI5BaroE+J9UH5RUL1Yq1wzmgfeUyBI/IPla2a78i3fEnwuhVhPqNz1
	yhC3IOJD4xWBOcWEM+5LToDw7Oai1hdVfucrDtF3bIM3eLrtR749aqCctUG6oQeQNf/ATDi32
	ZnCdKnVdC6bpwYxloe846kab+R6FTXRbaQOVCTIw+tsRpFjLyRA6vFmPOP9jF6Fd8SlV6QJT5
	t4ySUNtT0wh/vJ6rK2aF8mF1sBJCmcr1TyaRcslVpAQNRzpeu5qv0Ui75eXmGZACWpX5pVtSE
	YklAoisl945FYO7Mjy5u8Ki6xir4Csqy3U/MfAjhz5YJ6PGb4pYW/
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
X-List-Received-Date: Tue, 28 May 2019 10:51:16 -0000
Content-Type: multipart/alternative;
	boundary="------------7C55C19C63FD4FEC8C7BBF8D"
Content-Language: en-US

--------------7C55C19C63FD4FEC8C7BBF8D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Matthias,

Thank you, your help is much appreciated. Seems I have misunderstood how
to add swupdate to my image. However the swupdate package somehow has to
put an initramfs in place since to my understanding it is also possible
to do updates without 2 rootfs available which would require an update
through the initramfs.

Anyway, thank you again ! This should make it work

On 27/05/2019 18:59, Matthias Schoepfer wrote:
>
> Hi Moritz,
>
> I will try to answer what I can inline:
>
> On 5/27/19 5:05 PM, Moritz Porst wrote:
>> Hi Matthias
>> Thank you very much for your help, this is not mentioned in the
>> official repository.
>> I tried what you said. It enables me (even without .bbappend) to
>> build the swupdate-image.
>> Now for the defconfig. I did it with a .bbappend the way the yocto
>> documentation suggests (FILESEXTRAPATHS and SRC_URI) but which recipe
>> do I need to append to? I thought just choose swupdate_git.bb, then
>> swupdate_2018.11.bb. I always receive the following rootfs file:
> you can either bbappend the _2018.11 or make a swupdate_%.bbappend,
> that is then valid for both _git and _2018.11 if you happen to use the
> _git version.
>> swupdate-image-ccns5.ext4.gz.u-boot=C2=A0=C2=A0 (Clearly still uboot, I=
 don't
>> know why it managed to build though)
>> Also I get the following warning on invoking bitbake for swupdate-image=
:
>> WARNING:
>> /opt/thudPoky/meta-swupdate/recipes-support/swupdate/swupdate_2018.11.b=
b.do_compile
>> is tainted from a forced run
> This is because you bitbake -c menuconfig swupdate. If you clean the
> build (bitbake -c cleansstate swupdate), this should disappear. Then
> you can check, if your bbappend gets picked up correctly.
>> Finally I always end up with microcode.cpio in my /boot directory
>> which comes from meta-intel. I guess swupdate would replace the
>> initrd/initramfs ?
>> I put the following lines in my image description:
>> INITRAMFS_IMAGE =3D "swupdate-image-ccns5"
>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>> Shouldn't they cause the swupdate-image to be bundled into the
>> kernel, thus that if I build my image that I end up with the swupdate
>> initramfs in my /boot directory ?
>
> Errr.... you want to *add* swupdate to an image recipe. It is not an
> image by itself. Well, I guess, there is a rescue image within
> swupdate, but that is a different story and I have no experience with
> it. There are ways to add packages to an image, for example through
> IMAGE_INSTALL_append =3D " swupdate " in local.conf
>
> https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#using=
poky-extend-customimage-localconf
>
>> Sorry for all the questions and thanks in advance !
>> Best regards
>> Moritz
>> *Gesendet:*=C2=A0Montag, 27. Mai 2019 um 15:31 Uhr
>> *Von:*=C2=A0"Matthias Schoepfer" <matthias.schoepfer@googlemail.com>
>> *An:* yocto@yoctoproject.org
>> *Betreff:*=C2=A0Re: [yocto] [meta-swupdate] build fails under thud
>>
>> Hi Moritz!
>>
>> You need to configure swupdate kind of like the linux kernel with
>> menuconfig:
>>
>> bitbake -c menuconfig swupdate
>>
>> do not forget to copy your config then into an bbappend to swupdate
>> (defconfig).
>>
>> Hope that helps,
>>
>> Regards,
>>
>> =C2=A0=C2=A0 Matthias
>>
>> On 5/27/19 3:26 PM, Moritz Porst wrote:
>>
>>     Hello
>>     I want to create an update mechanism for our embedded system. I
>>     chose swupdate because it is very well documented and seems flexibl=
e.
>>     When trying to build swupdate-image it fails with several
>>     undefined references, just a few as example:
>>     """
>>     /opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-=
r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-po=
ky-linux/gcc/x86_64-poky-linux/8.2.0/ld:
>>     bootloader/lib.a(uboot.o): in function `bootloader_env_set':
>>     | uboot.c:(.text.bootloader_env_set+0x40): undefined reference to
>>     `fw_env_open'
>>     |
>>     /opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-=
r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-po=
ky-linux/gcc/x86_64-poky-linux/8.2.0/ld:
>>     uboot.c:(.text.bootloader_env_set+0xf8): undefined reference to
>>     `fw_env_write'
>>     """
>>     I see lots of "uboot" in the trace, but to my understanding
>>     swupdate should also work with grub which I enabled using:
>>     EFI_PROVIDER =3D "grub-efi"=C2=A0=C2=A0=C2=A0 (First tried to use
>>     PREFERRED_PROVIDER_virtual/bootloader, but this doesn't work with
>>     EFI booting)
>>     When I want to enable "uboot" this way, bitbake tells me there is
>>     no uboot.
>>     I know there is also the option of writing my own init scripts
>>     but this would be just reinventing the wheel (given there is an
>>     swupdate available) and probably more error-prone than a grown
>>     update tool. Thus I would like to get swupdate to work.
>>     Any ideas ?
>>     Best regards
>>     Moritz
>>
>> -- _______________________________________________ yocto mailing list
>> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
>>
>

--------------7C55C19C63FD4FEC8C7BBF8D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hello Matthias,</p>
    <p>Thank you, your help is much appreciated. Seems I have
      misunderstood how to add swupdate to my image. However the
      swupdate package somehow has to put an initramfs in place since to
      my understanding it is also possible to do updates without 2
      rootfs available which would require an update through the
      initramfs.</p>
    <p>Anyway, thank you again ! This should make it work</p>
    <div class=3D"moz-cite-prefix">On 27/05/2019 18:59, Matthias Schoepfer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:68d0b5b9-6b70-7afa-390d-5cf5f003730d@googlemail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      <p>Hi Moritz,</p>
      <p>I will try to answer what I can inline:<br>
      </p>
      <div class=3D"moz-cite-prefix">On 5/27/19 5:05 PM, Moritz Porst
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-=
app-gmx-bs16">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <div style=3D"font-family: Verdana;font-size: 12.0px;">
          <div>
            <div>Hi Matthias</div>
            <div>=C2=A0</div>
            <div>Thank you very much for your help, this is not
              mentioned in the official repository.</div>
            <div>I tried what you said. It enables me (even without
              .bbappend) to build the swupdate-image.</div>
            <div>Now for the defconfig. I did it with a .bbappend the
              way the yocto documentation suggests (FILESEXTRAPATHS and
              SRC_URI) but which recipe do I need to append to? I
              thought just choose swupdate_git.bb, then
              swupdate_2018.11.bb. I always receive the following rootfs
              file:</div>
          </div>
        </div>
      </blockquote>
      you can either bbappend the _2018.11 or make a
      swupdate_%.bbappend, that is then valid for both _git and _2018.11
      if you happen to use the _git version. <br>
      <blockquote type=3D"cite"
cite=3D"mid:trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-=
app-gmx-bs16">
        <div style=3D"font-family: Verdana;font-size: 12.0px;">
          <div>
            <div>=C2=A0</div>
            <div>swupdate-image-ccns5.ext4.gz.u-boot=C2=A0=C2=A0 (Clearly =
still
              uboot, I don't know why it managed to build though)</div>
            <div>=C2=A0</div>
            <div>Also I get the following warning on invoking bitbake
              for swupdate-image:</div>
            <div>WARNING:
/opt/thudPoky/meta-swupdate/recipes-support/swupdate/swupdate_2018.11.bb.d=
o_compile
              is tainted from a forced run</div>
          </div>
        </div>
      </blockquote>
      This is because you bitbake -c menuconfig swupdate. If you clean
      the build (bitbake -c cleansstate swupdate), this should
      disappear. Then you can check, if your bbappend gets picked up
      correctly. <br>
      <blockquote type=3D"cite"
cite=3D"mid:trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-=
app-gmx-bs16">
        <div style=3D"font-family: Verdana;font-size: 12.0px;">
          <div>
            <div>=C2=A0</div>
            <div>Finally I always end up with microcode.cpio in my /boot
              directory which comes from meta-intel. I guess swupdate
              would replace the initrd/initramfs ?</div>
            <div>I put the following lines in my image description:</div>
            <div>=C2=A0</div>
            <div>INITRAMFS_IMAGE =3D "swupdate-image-ccns5"<br>
              INITRAMFS_IMAGE_BUNDLE =3D "1"</div>
            <div>=C2=A0</div>
            <div>Shouldn't they cause the swupdate-image to be bundled
              into the kernel, thus that if I build my image that I end
              up with the swupdate initramfs in my /boot directory ?</div>
          </div>
        </div>
      </blockquote>
      <p>Errr.... you want to *add* swupdate to an image recipe. It is
        not an image by itself. Well, I guess, there is a rescue image
        within swupdate, but that is a different story and I have no
        experience with it. There are ways to add packages to an image,
        for example through IMAGE_INSTALL_append =3D " swupdate " in
        local.conf <br>
      </p>
      <p><a class=3D"moz-txt-link-freetext"
href=3D"https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html=
#usingpoky-extend-customimage-localconf"
          moz-do-not-send=3D"true">https://www.yoctoproject.org/docs/2.7/m=
ega-manual/mega-manual.html#usingpoky-extend-customimage-localconf</a><br>
      </p>
      <blockquote type=3D"cite"
cite=3D"mid:trinity-97a0a696-4e0c-4136-b172-142666b42c34-1558969528500@3c-=
app-gmx-bs16">
        <div style=3D"font-family: Verdana;font-size: 12.0px;">
          <div>
            <div>=C2=A0</div>
            <div>Sorry for all the questions and thanks in advance !</div>
            <div>=C2=A0</div>
            <div>Best regards</div>
            <div>Moritz</div>
            <div>=C2=A0
              <div name=3D"quote" style=3D"margin:10px 5px 5px 10px;
                padding: 10px 0 10px 10px; border-left:2px solid
                #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode:
                space; -webkit-line-break: after-white-space;">
                <div style=3D"margin:0 0 10px 0;"><b>Gesendet:</b>=C2=A0Mo=
ntag,
                  27. Mai 2019 um 15:31 Uhr<br>
                  <b>Von:</b>=C2=A0"Matthias Schoepfer" <a
                    class=3D"moz-txt-link-rfc2396E"
                    href=3D"mailto:matthias.schoepfer@googlemail.com"
                    moz-do-not-send=3D"true">&lt;matthias.schoepfer@google=
mail.com&gt;</a><br>
                  <b>An:</b>=C2=A0<a class=3D"moz-txt-link-abbreviated"
                    href=3D"mailto:yocto@yoctoproject.org"
                    moz-do-not-send=3D"true">yocto@yoctoproject.org</a><br=
>
                  <b>Betreff:</b>=C2=A0Re: [yocto] [meta-swupdate] build
                  fails under thud</div>
                <div name=3D"quoted-content">
                  <div style=3D"background-color: rgb(255,255,255);">
                    <p>Hi Moritz!</p>
                    <p>You need to configure swupdate kind of like the
                      linux kernel with menuconfig:</p>
                    <p>bitbake -c menuconfig swupdate</p>
                    <p>do not forget to copy your config then into an
                      bbappend to swupdate (defconfig).</p>
                    <p>Hope that helps,</p>
                    <p>Regards,</p>
                    <p>=C2=A0=C2=A0 Matthias</p>
                    <div class=3D"moz-cite-prefix">On 5/27/19 3:26 PM,
                      Moritz Porst wrote:</div>
                    <blockquote>
                      <div style=3D"font-family: Verdana;font-size:
                        12.0px;">
                        <div>Hello</div>
                        <div>=C2=A0</div>
                        <div>I want to create an update mechanism for
                          our embedded system. I chose swupdate because
                          it is very well documented and seems flexible.</=
div>
                        <div>When trying to build swupdate-image it
                          fails with several undefined references, just
                          a few as example:</div>
                        <div>"""</div>
                        <div>
                          <div>/opt/thudPoky/build/tmp/work/corei7-64-poky=
-linux/swupdate/2018.11-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux=
/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/8.2.0/ld:
                            bootloader/lib.a(uboot.o): in function
                            `bootloader_env_set':<br>
                            | uboot.c:(.text.bootloader_env_set+0x40):
                            undefined reference to `fw_env_open'<br>
                            |
/opt/thudPoky/build/tmp/work/corei7-64-poky-linux/swupdate/2018.11-r0/reci=
pe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linu=
x/gcc/x86_64-poky-linux/8.2.0/ld:
                            uboot.c:(.text.bootloader_env_set+0xf8):
                            undefined reference to `fw_env_write'</div>
                          <div>"""</div>
                          <div>I see lots of "uboot" in the trace, but
                            to my understanding swupdate should also
                            work with grub which I enabled using:</div>
                          <div>EFI_PROVIDER =3D "grub-efi"=C2=A0=C2=A0=C2=
=A0 (First tried
                            to use
                            PREFERRED_PROVIDER_virtual/bootloader, but
                            this doesn't work with EFI booting)</div>
                          <div>When I want to enable "uboot" this way,
                            bitbake tells me there is no uboot.</div>
                          <div>=C2=A0</div>
                          <div>I know there is also the option of
                            writing my own init scripts but this would
                            be just reinventing the wheel (given there
                            is an swupdate available) and probably more
                            error-prone than a grown update tool. Thus I
                            would like to get swupdate to work.</div>
                          <div>=C2=A0</div>
                          <div>Any ideas ?</div>
                          <div>=C2=A0</div>
                          <div>Best regards</div>
                          <div>Moritz</div>
                        </div>
                      </div>
                      =C2=A0
                      <fieldset class=3D"mimeAttachmentHeader">=C2=A0</fie=
ldset>
                    </blockquote>
                    -- _______________________________________________
                    yocto mailing list <a
                      class=3D"moz-txt-link-abbreviated"
                      href=3D"mailto:yocto@yoctoproject.org"
                      moz-do-not-send=3D"true">yocto@yoctoproject.org</a>
                    <a
                      href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o"
                      target=3D"_blank" moz-do-not-send=3D"true">https://l=
ists.yoctoproject.org/listinfo/yocto</a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <br>
        <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      </blockquote>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------7C55C19C63FD4FEC8C7BBF8D--
