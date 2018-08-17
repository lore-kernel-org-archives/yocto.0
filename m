Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53F36E0086B; Fri, 17 Aug 2018 15:54:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80570E00828
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 15:54:13 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id j8-v6so6973391lfb.4
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 15:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=b2QRMb7wl37On9mvaG8EUzLthFHyYkB17PSE/p2FnSc=;
	b=cCxY9tqKUWZ/eKB89/DxdCvYguORQID+1HN5/TJNPavMA7Dxola0L8uh4dnXbTU5O5
	eQc9oxdhh75jmO12a4XhDzVeYRw3LqQ5/BQPCd1zVLF7e6F/RVzVqTklp01wuxUjuKlT
	yeV/lY7GWpmGHx3cMaUGNwcn57x6s8ueuAF89XnWJlfncNjrAcjrsFKZQlROYqvElHQB
	3gYTNdshufrTviYQlMkcqB6iwsn22LB+GsBl6VO/7G2r4Vy0YpJ/2xtUYl69I3DSADyy
	R3O8pCofqTdxIDooJAAPqblnDWc5qQSyHz+tZ6wZVRoDxf2uozzaYu2kehYFhXqSuf5e
	3Fow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=b2QRMb7wl37On9mvaG8EUzLthFHyYkB17PSE/p2FnSc=;
	b=jjCpxdSpIVRZJ+Uq6Tmsc36FDbU7e8pAVuD2V1okc/4vfYzutensSadBm2xfuo1RWi
	lpywvdzloH6wf+48fuYl5axFriEQ7EtLUfUz4fhmY0jxPrm5/XXXRurweRW0iMhZ5yHO
	PMHDfI2uVthGa/QKkqyG3Mwa87m875hYdnpUdU7Yp5UBmBd130FbdXhx2tRW4xU6ABdw
	pbDTnFlTHF6jjflTeLKRW4tVtaA6frgc95kt13unU2UmqivXYBo9YmwiGIz1obzUzfMo
	ieKAF+XKNgmNU5foRsQu9whJBwalxiIhYqS+XAqznup8kDfTj2IZrjnF0g8hoW2aJbm7
	PEkg==
X-Gm-Message-State: AOUpUlHksF9vIgy0g42Gu10mLY3KxS+run5L7EkbJbqs2O5GDzHiu3zg
	QCL/U32Kq3FcqJM1tqsb7S0WUtTDM+oQ7WLIveo=
X-Google-Smtp-Source: AA+uWPxYcasykQr1sSfAdfO200QhiH6bzAKlEnWQUl7+PC132BUTRKzlmzWAOuhAUuRFrjtAWjNaI0pql7CF0CKnv8w=
X-Received: by 2002:a19:de50:: with SMTP id
	v77-v6mr8468692lfg.14.1534546452319; 
	Fri, 17 Aug 2018 15:54:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:1712:0:0:0:0:0 with HTTP; Fri, 17 Aug 2018 15:54:11
	-0700 (PDT)
In-Reply-To: <CABcZANkABH+b1z+c-Ey9PrB7Sbj9NSM4KbA1cNsn0f-WAtLdXA@mail.gmail.com>
References: <CACfi_Z2Zvwiq-iB7ckmmT0LgthOPRxCMC6OCSW3ywbZ2=oSY4A@mail.gmail.com>
	<CABcZANkABH+b1z+c-Ey9PrB7Sbj9NSM4KbA1cNsn0f-WAtLdXA@mail.gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Fri, 17 Aug 2018 18:54:11 -0400
Message-ID: <CACfi_Z1xk+u+=Csd8rWxJ4-xSh7zWpD6jKXGLLvj23u0qr4Umg@mail.gmail.com>
To: Christopher Larson <kergoth@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, bitbake-devel@lists.openembedded.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [bitbake-devel] how to store a modification of a bbclass in the poky layer in my own layer.
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
X-List-Received-Date: Fri, 17 Aug 2018 22:54:14 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Christopher,

I am very intrigued by your response.

Initially I had mentioned that the 'bitbake-layers show-layers'
command indicates that my layer, meta-hon-grip, has a priority of 8
which is among the highest while the meta layer only has a priority of
5.

However, now that you mentioned the bblayers.conf file, I see that the
meta-hon-grip layer is defined after the meta layer.

Therefore it appears to me that my bblayers.conf contradicts
'bitbake-layers show-layers'

Could you please help me make sense of this?

Thank you,

Davis


--------------------------------------------------------------------------------------------

POKY_BBLAYERS_CONF_VERSION = "2"

BBPATH = "${TOPDIR}"
BSPDIR := "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True))
+ '/../..')}"

BBFILES ?= ""
BBLAYERS = " \
  ${BSPDIR}/sources/poky/meta \
  ${BSPDIR}/sources/poky/meta-poky \
  \
  ${BSPDIR}/sources/meta-openembedded/meta-oe \
  ${BSPDIR}/sources/meta-openembedded/meta-multimedia \
  \
  ${BSPDIR}/sources/meta-fsl-arm \
  ${BSPDIR}/sources/meta-fsl-arm-extra \
  ${BSPDIR}/sources/meta-fsl-demos \
"
##Freescale Yocto Project Release layer
BBLAYERS += " ${BSPDIR}/sources/meta-fsl-bsp-release/imx/meta-bsp "
BBLAYERS += " ${BSPDIR}/sources/meta-fsl-bsp-release/imx/meta-sdk "
BBLAYERS += " ${BSPDIR}/sources/meta-browser "
BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-gnome "
BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-networking "
BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-python "
BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-filesystems "
BBLAYERS += " ${BSPDIR}/sources/meta-qt5 "
BBLAYERS += " ${BSPDIR}/sources/meta-hon-grip "
BBLAYERS += " ${BSPDIR}/sources/meta-java "
BBLAYERS += " ${BSPDIR}/sources/meta-swupdate "
BBLAYERS += " ${BSPDIR}/sources/meta-bc "
BBLAYERS += " ${BSPDIR}/sources/meta-updater "
BBLAYERS += " ${BSPDIR}/sources/meta-gplv2 "

On Fri, Aug 17, 2018 at 6:01 PM, Christopher Larson <kergoth@gmail.com> wrote:
> Your layer has to be before poky/meta in BBLAYERS, as that determines
> BBPATH, which is how bbclasses and config files are found (much like PATH).
>
> On Fri, Aug 17, 2018 at 12:11 PM Davis Roman <davis.roman84@gmail.com>
> wrote:
>>
>> Hello!
>>
>>
>> I've made a modification in poky/meta/classes/libc-package.bbclass (
>> shown below)
>>
>> However I don't want this change to be stored here long term and
>> instead feel that it should live in my project specific layer,
>> meta-hon-grip.
>>
>> After checking with bitbake-layers, I saw that my layer has a higher
>> priority than the poky layer so my layer should be checked first ( or
>> so I thought)
>>
>> I copied the modified version of libc-packages.bbclass into
>> meta-hon-grip/classes and I restored the version in the poky layer to
>> its original state.
>>
>> After making this change, I found that the modified version in my
>> layer is not being used and instead the version in the poky layer is
>> the one in play.
>>
>> I'm trying to figure out what else to try.
>>
>> Any suggestions would be greatly appreciated!
>>
>> Thank you,
>>
>> Davis
>>
>> diff --git a/meta/classes/libc-package.bbclass
>> b/meta/classes/libc-package.bbclass
>> index 467d567..72d447a 100644
>> --- a/meta/classes/libc-package.bbclass
>> +++ b/meta/classes/libc-package.bbclass
>> @@ -287,7 +287,7 @@ python package_do_split_gconvs () {
>>                  bb.error("locale_arch_options not found for
>> target_arch=" + target_arch)
>>                  raise bb.build.FuncFailed("unknown arch:" +
>> target_arch + " for locale_arch_options")
>>
>> -            localedef_opts += " --force --old-style --no-archive
>> --prefix=%s \
>> +            localedef_opts += " --force --no-archive --prefix=%s \
>>                  --inputfile=%s/%s/i18n/locales/%s --charmap=%s %s/%s" \
>>                  % (treedir, treedir, datadir, locale, encoding,
>> outputpath, name)
>>
>> @@ -295,7 +295,7 @@ python package_do_split_gconvs () {
>>                  (path, i18npath, gconvpath, localedef_opts)
>>          else: # earlier slower qemu way
>>              qemu = qemu_target_binary(d)
>> -            localedef_opts = "--force --old-style --no-archive
>> --prefix=%s \
>> +            localedef_opts = "--force --no-archive --prefix=%s \
>>                  --inputfile=%s/i18n/locales/%s --charmap=%s %s" \
>>                  % (treedir, datadir, locale, encoding, name)
>> --
>> _______________________________________________
>> bitbake-devel mailing list
>> bitbake-devel@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/bitbake-devel
>
>
>
> --
> Christopher Larson
> kergoth at gmail dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Senior Software Engineer, Mentor Graphics

