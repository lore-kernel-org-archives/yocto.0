Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 693B2E0096A; Mon, 23 Oct 2017 13:50:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B92E007EF
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 13:50:20 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id t69so11906009wmt.2
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 13:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cTPKvkUMAluCKIiNKyfAvajQNS0Lix+utkNfisG+dBQ=;
	b=o8QL1UjEfoJ2nqhoPJ0hYDQ14Y7YVPCj8kKHNt5PNaizS9bSg5s9eoXq3pmwz6s6B0
	NkhFw72zJKevFFuc4JHAx8OSe8TrpA6lMsmBZOL/KIvIivWFypOwzTKlfMokwftTt6p+
	3UvS0XNxQAQyYr3Vc97Y4Bn83XOvbQXDsTgDM+bZwLAQb59aBjGkQomZsP4A9D8WYNh9
	UdI8oU+bVB+Vtl++AeGjR125XRYi4IJjplr4POi0mE/6U0pZOzIIEgyPoRF4c5knSyCa
	Gj1+N43j5hhY7/LcAfLe2LaXMaqawFKZF3c0X7x+VGYKPo3qst6NzBs6MXXLUfAfwArs
	b3Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cTPKvkUMAluCKIiNKyfAvajQNS0Lix+utkNfisG+dBQ=;
	b=ftbDfQStS8JiDELEArIP06X8DCGOAGjSB3IgNsOrwzRftkIBZpWBMBUCCMtq/hFyCy
	MNIbvGZMoJWfnXygTzBH46xdMMIbbWjDi0ACER3eaSFN0ipY+fIg7pajaRsq8eOJu2ge
	zPKrVFBeW63osBIzbF6K7fmRCuSqlnp0SFgAJK/HxNINv2XeI7yAwtMUmB/vQ8lyWgrw
	UD6ojK9BCdQT3AKLfr0XSIomKQ7dzyEg4lPqW+zsUcqSeMubsm3P23WfYhNaUzjhQrwX
	JxgKDRm5w9VIiXCwHvirI/rpeKU9Y0G9oxbckUpDuCTPVDR33bNHHkrPtFJcpqFszi1C
	P3Eg==
X-Gm-Message-State: AMCzsaVOIPe2YzjpnqvqWoHfeqUny3/U+2nEacCG34GQlOdFvdgWOsTC
	HomxE3cgA7s7zbBAe4SAx+9N5G/tz4Kxs3yYhMg=
X-Google-Smtp-Source: ABhQp+ThIlATOHOL3V08+HA51m92k3L4gi8+JAE5i3f9dw4DosmRQjQWWrrI4hm07ww19AXZFk6ZLx1cJV/U95/pCUw=
X-Received: by 10.80.178.36 with SMTP id o33mr18280946edd.116.1508791819539;
	Mon, 23 Oct 2017 13:50:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.204.143 with HTTP; Mon, 23 Oct 2017 13:50:19 -0700 (PDT)
In-Reply-To: <fd2f7a350be54f15b16885e6bc261a8b@sakuraus.com>
References: <7e4405635662496696c940f21d8591a7@sakuraus.com>
	<CAAQYJAu4e4WCUAP55pPUpU-7mZ5ixq8AAEtHpGv7zqEjj2xipQ@mail.gmail.com>
	<fd2f7a350be54f15b16885e6bc261a8b@sakuraus.com>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Mon, 23 Oct 2017 22:50:19 +0200
Message-ID: <CAAQYJAvbh6SB-_p_2qPAaeFVCFtmaSaP2AoFTQzK9PzENo0rRw@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with populate_sdk
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
X-List-Received-Date: Mon, 23 Oct 2017 20:50:21 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 23, 2017 at 10:31 PM, Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
> Hi Andrea,
> I added the dbg-pkgs to the IMAGE_FEATURES but it didn't seem to make a difference in what was included, still no .a file in the SYSROOT.
> Regards,
> Greg

Hi Greg,
maybe I wasn't clear, from the manual:

SDKIMAGE_FEATURES: Lists the features to include in the "target" part
of the SDK.

IMAGE_FEATURES: Specifies features to include in the image. Most of
these features map to additional packages for installation.

So please use  SDKIMAGE_FEATURES = "dev-pkgs staticdev-pkgs"

Cheers
Andrea

>
>> -----Original Message-----
>> From: Andrea Adami [mailto:andrea.adami@gmail.com]
>> Sent: Sunday, October 22, 2017 4:12 PM
>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Problem with populate_sdk
>>
>> On Thu, Oct 19, 2017 at 8:26 PM, Greg Wilson-Lindberg
>> <GWilson@sakuraus.com> wrote:
>> > I'm trying to build an SDK for a Raspberry Pi3, and I got a problem
>> > with the files from one of my custom recipes.
>> >
>> >
>> > In my recipe I have:
>> >
>> > FILES_${PN}-dev = "lib/lib${PN}.a lib/lib${PN}_unix.a lib/pkgconfig
>> > include/canfestival/*.h"
>> >
>> >
>> > The *.a files get put into staticdev not dev in the package split.
>> >
>> >
>> > In my image recipe I've added:
>> >
>> > IMAGE_FEATURES += "dev-pkgs  staticdev-pkgs"
>> >
>> > I get all of the libraries in my image. In the SDK I don't get the *.a
>> > libraries from the staticdev, I do get the header files which were put
>> > into dev.
>> >
>> >
>> > So, at this point I'm a bit confused, even though I include both the
>> > dev & staticdev I am only getting the dev files in the SDK. And, also,
>> > why are the *.a libs being put into staticdev in the first place?
>> >
>> >
>>
>> Hi,
>> these defaults are defined in meta/conf/bitbake.conf:
>>
>> PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale
>> ${PACKAGE_BEFORE_PN} ${PN}"
>>
>> This means that staticdev package is created before dev package, just after
>> dbg.
>>
>> and
>>
>> FILES_${PN}-staticdev = "${libdir}/*.a ${base_libdir}/*.a ${libdir}/${BPN}/*.a"
>>
>> indicates that the .a files in these dirs belongs to the staticdev package.
>>
>> Now, I guess you should try:
>>
>>  SDKIMAGE_FEATURES = "dev-pkgs dbg-pkgs staticdev-pkgs"
>>
>> Se https://lists.yoctoproject.org/pipermail/yocto/2014-
>> September/021645.html
>>
>> Cheers
>> Andrea
>>
>>
>> > Regards, Greg
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >

