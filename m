Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D58DE00D4C; Mon, 20 May 2019 14:55:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFA73E00D47
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 14:55:41 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id z19so18088121qtz.13
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 14:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=bY8xtscKcwHaMwa1OBHNxkec86RcnpwWH/OmU799BHs=;
	b=II6j3FX4/+lGj9rGF6yAv0kTCnDyKXgG7ZV+HednMNTF/fIQD06pDl3Vkt1KN8jzv2
	ISbgLS14rtpMiFqAQ4ICgNNLMxwYXmBleOAFROEWE41g8jt4zIXRWHIe6Ierm1Mq1n0D
	hPNzfNsI67G7nB9VvWu65bs66GPhyYPSzzzRbU7MzI9o4DnHa20VdpXphrBSgcQCU/ax
	YeZNZeerDRWtck5BXSj22Hyq4GTbusFBeBFqc4c4bhwdlIoULOlj6+KCBD0xXaNevhQB
	M/u10BElQAj8uNgNPrKDW0GcWJNAI/wtp5vUpszC1KA7CWvnsaLYAM1srxdgEGRbkfsP
	Qebg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=bY8xtscKcwHaMwa1OBHNxkec86RcnpwWH/OmU799BHs=;
	b=a978pLKfoBAsf8+tqaxuJdGqsGKHUzi1D3sltjJMttYssVrU1dBRcPtbQCfnICUHGW
	bsA8qcUu6WpeMCjeVfA0pLOhBgVuGeknyLsvYf7ICkt1iR/ZygEFnYnrFu606BIAiWY5
	eqlgnuurMXk+h2EWZ3NuCxllBWNmUUGj3MNvFhkQmETeLhfVsS0RCMuQfBRSQEt9kY/A
	FWqMwP3gYgJ9dgjsq8gQxfnk846b09Kcr3USlt1YMH1Tqwj03UqH6SEa2Ndv8PwwCNPX
	SnzZtNSQ3kQaRUcHXnl8tiThf0HE6eF2loAw/VgKETlT5mdBtobNkNDyisIy+I0G6Rhi
	T5jA==
X-Gm-Message-State: APjAAAUnaD+Do/VnxtK8n3jcMdC+sy2ShzLv/Xk54mwiw0TEYVhHyd/W
	eTB8lyGhwfL5t6+utOBbeqRoA6TZFgDvMOrMBE4=
X-Google-Smtp-Source: APXvYqwGhghZFlpcRxBQmxvLpqdKODnN4cPAlz9skNuo77twHmSZ3aj24XuBlFQq/ubnE+r7kySNuZ15lJTDxEo8tAs=
X-Received: by 2002:a0c:96e7:: with SMTP id b36mr28778961qvd.51.1558389340701; 
	Mon, 20 May 2019 14:55:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaDU_dtaZqAhkZV6caizdZ+ebBOcRyJdCDwyP97fpLcYbg@mail.gmail.com>
	<CAMKF1spXJDh_a4BRccT0XNYLKn9pgPCX0jJfTnAWefnTyUtEQg@mail.gmail.com>
	<CAAx3WaBqabr+PdSKS5qq8cT_d=rtHHgMpgdoVhfmrEjAeWfi5Q@mail.gmail.com>
In-Reply-To: <CAAx3WaBqabr+PdSKS5qq8cT_d=rtHHgMpgdoVhfmrEjAeWfi5Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 May 2019 14:55:14 -0700
Message-ID: <CAMKF1sosdCX+D+VgEt8hz=2NhK0D6aHzZTnZ8F-tt2sgiwoaXg@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Using a native tool from another recipe
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
X-List-Received-Date: Mon, 20 May 2019 21:55:51 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, May 13, 2019 at 11:17 PM Gabriele Zampieri
<gabbla.malist@gmail.com> wrote:
>
> Hi Khem,
>
> what do you mean with "build bpkg as a native recipe"? I though that the DEPENDS = "build2-native" will achieve this task. Thanks to pointing out the hosttool option.

yes DEPENDS = "build2-native" should have added the needed tool to build.

>
> Best regards,
> Gabriele
>
> Il giorno lun 13 mag 2019 alle ore 17:59 Khem Raj <raj.khem@gmail.com> ha scritto:
>>
>> You need to either build bpkg as a native recipe or install and make it available as a hosttool from build machine distribution itself
>>
>> On Mon, May 13, 2019 at 6:07 AM Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
>>>
>>> Hi all,
>>>
>>> I need to add a couple of tools to my build system (build2 and odb). The second one depends on the first. Following a snippet of the build2 recipe:
>>> --------------------------------------------------------------------------------------------
>>> DEPENDS = "openssl-native"
>>> SRC_URI = "https://download.build2.org/${PV}/build2-toolchain-${PV}.tar.gz"
>>> SRC_URI[sha256sum] = "42a254c46b59109b764afade0d50819b3d793a9167f46759fc6aa9d6d8a6ff37"
>>>
>>> S = "${WORKDIR}/build2-toolchain-${PV}"
>>>
>>> # build.sh located inside the tarball cannot be used to configure, compile and
>>> # install in different steps. This task is misleading, but I didn't find any
>>> # other way to make it works
>>> do_compile_prepend() {
>>>     ./build.sh --timeout 600 --sudo false \
>>>         --make ${MAKE} ${PARALLEL_MAKE} \
>>>         --trust yes \
>>>         --install-dir ${prefix} g++
>>> }
>>>
>>> FILES_${PN}_append_class-nativesdk = " ${SDKPATHNATIVE}"
>>> FILES_${PN} = "${D}${prefix}/*"
>>>
>>> BBCLASSEXTEND = "native nativesdk"
>>> --------------------------------------------------------------------------------------------
>>>
>>> Then the odb-compiler recipe
>>>
>>> --------------------------------------------------------------------------------------------
>>> SECTION = "devtools"
>>> DEPENDS = "build2-native"
>>> CONFIG_NAME = "odb-gcc-X"
>>> do_configure() {
>>>     cd ${B}
>>>     bpkg create -d ${CONFIG_NAME} cc    \
>>>         config.cxx=g++                  \
>>>         config.cc.coptions=-O3          \
>>>         config.bin.rpath=/usr/lib       \
>>>         config.install.root=/usr        \
>>>         config.install.sudo=false
>>>
>>> }
>>> BBCLASSEXTEND = "native nativesdk"
>>> --------------------------------------------------------------------------------------------
>>>
>>> When I try to build odb-compiler, bitbake complete the build2-native recipe, but fails on do_configure due to 'bpkg command not found'.
>>>
>>> Are my recipes correct?
>>>
>>> Thanks,
>>> Gabriele
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

