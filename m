Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5150E0080C; Wed, 20 Aug 2014 21:08:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D54BE00566
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 21:08:47 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id gl10so8155265lab.35
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 21:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=auouiIzIlBW5larGhSBFWwtJrG8GmjG+wlR8f4vF3zA=;
	b=FO7tzTHy5bpa0vMGC+wFMSUMff3uypA4/NHQiW+/1BZBuRYzjzkz2F/BmEE0SsJqd8
	N1UDzerY1jSya4nYfCeB3Mndepd373mpVeLZN8LKmwcVAeg4Toz9SYd47f39pFFJQJ7w
	K7hHq4343ugBJLsEnCe7P8s1/0jn4jqmbWGRlnwYeRiJ+FjiTS6phVjtCxQwo0fxnfVk
	nxIOaX+3Y9YgtWb9L0EDQ0TYAiDOkm/nVglDMpiMiFFOikLjvdFM61cZIs9lfHaALCAM
	QlwFJ0cgiv7rXYZtUDIVK/uGVu4n4RVAcdspGMdAvO5jI9HqgOAk+yBsYShICOLE/Dev
	s6sQ==
MIME-Version: 1.0
X-Received: by 10.152.23.6 with SMTP id i6mr46512197laf.39.1408594125860; Wed,
	20 Aug 2014 21:08:45 -0700 (PDT)
Received: by 10.112.202.67 with HTTP; Wed, 20 Aug 2014 21:08:45 -0700 (PDT)
In-Reply-To: <728404FF-F7F0-4371-AF09-D8C73ABA784C@keylevel.com>
References: <4EAABF91-29AE-4B7D-9FEE-07C87F37197D@keylevel.com>
	<53F40306.2080500@windriver.com>
	<728404FF-F7F0-4371-AF09-D8C73ABA784C@keylevel.com>
Date: Thu, 21 Aug 2014 00:08:45 -0400
Message-ID: <CADkTA4PKUNKFkWrz-BEud-mvNTVLUykLq_M-AMvJJWXOaxZZaA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel driver for Turbosight TBS6285 DVB card
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
X-List-Received-Date: Thu, 21 Aug 2014 04:08:53 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 20, 2014 at 4:11 PM, Chris Tapp <opensource@keylevel.com> wrote:
> Hi Bruce,
>
> Thanks for the feedback.
>
> On 20 Aug 2014, at 03:08, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>
>> On 2014-08-19, 5:26 PM, Chris Tapp wrote:
>>> I need to include the kernel driver for the Turbosight TBS6285 DVB card in an image.
>>>
>>> The official bundle at http://www.tbsdtv.com/download/document/common/tbs-linux-drivers_v140707.zip includes the drivers and a load of other "stuff" (e.g. a full V4L build).
>>>
>>> LinuxTV.org have the drivers extracted into a .tar.bz2 at (e.g.) http://linuxtv.org/downloads/drivers/linux-media-LATEST.tar.bz2, so I plan to use this as the download source.
>
> This bit is wrong - I need to use the .tar.bz within the .zip.
>
>>>
>>> So far I have a recipe which downloads from this URL and extracts the files into the work area and ${WORKAREA}/drivers/media includes a Makefile and Kconfig.
>>>
>>> I've looked at the Yocto documentation, but this doesn't seem to be a good match for the "Out of tree" kernel module case.
>>
>> Hmm. At a glance, I'd say that it does sound like a typical out of
>> tree module build.
>
> Ah, ok - to my (untrained) eye the use-case looked completely different based on the example.
>
>> Did you try adopting the meta-skeleton hello-mod recipe and point it
>> at that source directory ?
>
> I have now (with the above change). However, it looks as if something within the build is referencing the host file system when building.
>
> I'm building for ValleyIsland 32-bit:
>
>   1) If I configure the drivers for 32-bit there is a linker error complaining that elf 32 and elf 64 aren't compatible (host is 64 bit);

Hmm. The target arch should be used for this build. Are you enabling a
multi lib config
as well ?

>   2) Everything appears to build if I target 64-bit, but the installer tries to modify /lib/modules/3.2.0-67/..., which is also part of the host.

Do the Makefile's that come in that archive (I haven't gone to look)
have a custom
install rule ? If so, that's likely the problem. If the kernel's build
system is triggered
(i.e. the makefile follows the conventions), everything will be
installed to the proper
location.

Bruce

>
> Looks like I need a patch ;-) Any pointers to where I should be looking would be appreciated as this isn't my normal area...
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

