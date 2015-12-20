Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78818E00AB5; Sun, 20 Dec 2015 14:01:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDA0EE00825
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 14:01:30 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id e126so138069282ioa.1
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 14:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6RHlypws6a2h3tZcs4hxc+haZqxhrRPszzMH6MygVF8=;
	b=f4NNSVnUPOajwDSKW1QamsqhIg9Yz/3l5SsWVFFUCA/P0/jEITypIyjIFfdeCpQyf3
	VDHLAmyVQ6TVkfjeSymNi9iGQN+4em+KZG+wlQVRXRqlcBFaEq/cBlTw53cpZDk8gsrk
	tCCzrD4BsXQp1vDwuNC1pKXLjKyzIFDOYsXaa9j2Ez8z0LXHqVTlIMGxGZjNijQjSbxg
	weojps89v4rGzRfQeMCA+YmU8txhdSZMWpd9c7uzuEAUGToNppIaUs5zCKL7F66iz+OY
	+yJZtNniO5k57eAkCaNI9+BRhak+twN6JPWvK3m9BS/kOQTbPzjozaRDGA5v5F0LInAm
	R3hQ==
X-Received: by 10.107.162.137 with SMTP id l131mr15104075ioe.49.1450648889948; 
	Sun, 20 Dec 2015 14:01:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Sun, 20 Dec 2015 14:01:00 -0800 (PST)
In-Reply-To: <7d44aa926279b2629e6fce972f925346@anavi.org>
References: <1450644797-13141-1-git-send-email-leon@anavi.org>
	<1450644797-13141-2-git-send-email-leon@anavi.org>
	<CAMKF1spDQ58i_Gp=1vr-8Pb1LG1Mek2h+x4OYQa2YGtBRLRMjQ@mail.gmail.com>
	<7d44aa926279b2629e6fce972f925346@anavi.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 20 Dec 2015 14:01:00 -0800
Message-ID: <CAMKF1soucg-GZjaqaLg1Ga=TpY5xeBb_16LkuPFr=RjJLzSDQg@mail.gmail.com>
To: Leon Anavi <leon@anavi.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] python-sense-hat: Add recipe to support Raspberry Pi Sense HAT
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
X-List-Received-Date: Sun, 20 Dec 2015 22:01:33 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 20, 2015 at 2:00 PM, Leon Anavi <leon@anavi.org> wrote:
> On 2015-12-20 23:43, Khem Raj wrote:
>>
>> On Sun, Dec 20, 2015 at 12:53 PM, Leon Anavi <leon@anavi.org> wrote:
>>>
>>> Python module to control the Raspberry Pi Sense HAT used in
>>> the Astro Pi mission. This recipe provides the officially
>>> supported library for the Sense HAT with access to all of the
>>> on-board sensors and the LED matrix.
>>>
>>> Signed-off-by: Leon Anavi <leon@anavi.org>
>>> ---
>>>  recipes-devtools/python/python-sense-hat_2.1.0.bb | 31
>>> +++++++++++++++++++++++
>>>  1 file changed, 31 insertions(+)
>>>  create mode 100644 recipes-devtools/python/python-sense-hat_2.1.0.bb
>>>
>>> diff --git a/recipes-devtools/python/python-sense-hat_2.1.0.bb
>>> b/recipes-devtools/python/python-sense-hat_2.1.0.bb
>>> new file mode 100644
>>> index 0000000..0665536
>>> --- /dev/null
>>> +++ b/recipes-devtools/python/python-sense-hat_2.1.0.bb
>>> @@ -0,0 +1,31 @@
>>> +SUMMARY = "Python module to control the Raspberry Pi Sense HAT used in
>>> the Astro Pi mission"
>>> +HOMEPAGE = "https://github.com/RPi-Distro/python-sense-hat"
>>> +SECTION = "devel/python"
>>> +LICENSE = "BSD"
>>> +LIC_FILES_CHKSUM =
>>> "file://LICENCE.txt;md5=d80fe312e1ff5fbd97369b093bf21cda"
>>> +
>>> +SRCNAME = "sense-hat"
>>> +
>>> +SRC_URI =
>>> "https://pypi.python.org/packages/source/s/${SRCNAME}/${SRCNAME}-${PV}.tar.gz"
>>> +
>>> +SRC_URI[md5sum] = "71217f15ea963040f06e2f50722186ca"
>>> +SRC_URI[sha256sum] =
>>> "c6c76707c0ea514e4b0f1f96f1b5b79755875891aae037df7434b6aad7b9dbca"
>>> +
>>> +S = "${WORKDIR}/${SRCNAME}-${PV}"
>>> +
>>> +inherit setuptools
>>> +
>>> +DEPENDS_${PN} += " \
>>
>>
>> Just use DEPENDS here and remove -dev entries below, its implied with
>> DEPENDS
>
>
> Done. I resubmitted this patch again. Thank you for the help.
>

Looks good now. Thx

> Best regards, Leon
>
>
>>
>>> +               jpeg \
>>> +               jpeg-dev \
>>> +               zlib \
>>> +               zlib-dev \
>>> +               freetype \
>>> +               freetype-dev \
>>> +               "
>>> +
>>> +RDEPENDS_${PN} += " \
>>> +               python-numpy \
>>> +               python-rtimu \
>>> +               python-imaging \
>>> +               "
>>> --
>>> 2.5.0
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> http://anavi.org/

