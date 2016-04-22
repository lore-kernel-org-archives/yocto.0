Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93793E00E35; Thu, 21 Apr 2016 23:22:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9BD1E00CCF
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 23:22:47 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id n3so10491058wmn.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 23:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=elfin-de.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=OHKnVDzSIBojxE4GyrNz3+hoQCEMBAUfUNde9NlTksM=;
	b=gRVDFqewvndJbOjnmFDsRSqxW631SOGZ5EjOQ4Obwpzf1r83ei3Np72QpP20LgnMgl
	36lxDuyuv8GtJTCS76k/ti2nEkHFOrnnmwZxBEsI7PofqCdCj9EE2fvaIo/KqlEEyCZB
	wM+H1XA+QMFzFb0GlprrPExAIL0pbQSGCUSQxqv8IrUTO1PfFVxyDaOLa8wmk2c7/fPk
	VN5soDYBr8yJlTkkb7sMIsM96IMiQhe3UTNzAdtdo1Ynari2ShpG8Ce6M6BQsZyjo6LE
	6IW+87/89v1QQ64HuGIgVDx4S6SRIL+dbvidNesT5DdYHpVJHO4XO7jvHcoxWVPHccqT
	EfNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=OHKnVDzSIBojxE4GyrNz3+hoQCEMBAUfUNde9NlTksM=;
	b=If369WZlWyxjxHqUNPWtxcsqGlcG9BlYju3LA1xnNUlE4tMuNF/Cf/YzEM0FPyGHwA
	ZDEU7K40F0BaoSCRfNFHshk1kE1ne8JGWyqo6fMBcTM3hSw6NqnpD4/J7qB+nBW/NufR
	1iqH2lGE6iBiKxuFOPtEBc3flCkt0qlAdhkNMgywWGswMyOvV2GxXr1BnI9gpwEBEAYF
	MqX9kzR1Vacz4RmKpdi0J3d5K2aqk9pVoZI4cBx8M4R5DIlJXMCaoTzDpvjzRtkqcpX4
	gD4WSkujllZTPTAhOm0krsJb7bhgDDFiN+UzRPVbb0gg4mYmjn1Fij3PC4hUnGU6v1kV
	ythA==
X-Gm-Message-State: AOPr4FWwivLtP305ICKYU8JUwV2ff3K5kqkMKj8KNajJZJdUdx/PkyeIo0IUNPoHo1mb4g==
X-Received: by 10.194.78.235 with SMTP id e11mr17783975wjx.54.1461306166872;
	Thu, 21 Apr 2016 23:22:46 -0700 (PDT)
Received: from [192.168.2.129] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	h124sm1640134wmf.7.2016.04.21.23.22.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Apr 2016 23:22:46 -0700 (PDT)
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <1461157892-9156-1-git-send-email-piotr.lewicki@elfin.de>
	<CAMKF1spXb_kW0yzD1qVL6P31gz7uK0AG1Oma+c-KZNu5JSSpiA@mail.gmail.com>
	<571973D0.5010103@windriver.com> <571993F8.4070506@mlbassoc.com>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <5719C335.3090300@elfin.de>
Date: Fri, 22 Apr 2016 08:22:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <571993F8.4070506@mlbassoc.com>
Subject: Re: [PATCH] replace libav with ffmpeg and add a patch fixing building omxplayer after 3645b27848edd0d873925f5fa2a7686f3ff9eeb9
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
X-List-Received-Date: Fri, 22 Apr 2016 06:22:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hello.
I'm new here and I didn't know how to prepare patch correctly- I just 
used instructions from meta-raspberrypi README.

I can resend it if you want. Especially now when the patch is not 
necessary anymore, because Andrei Gherzan has merged latest revision of 
omxplayer to master (patch with explicit linking vchostif lib was taken 
from there).

Please provide me with instruction on how to create a patch properly.

Thank you,
Piotr Lewicki

On 22.04.2016 05:01, Gary Thomas wrote:
> On 2016-04-22 02:44, Mark Hatle wrote:
>> On 4/21/16 6:31 PM, Khem Raj wrote:
>>> resend this patch to OE-Core mailing list. and also add
>>> Upstream-Status: to patch
>>
>> I don't see a "why" anywhere.
>>
>> Something wrong with libav, something better with ffmpeg, etc?
>>
>
> libav was replaced in OE-core by ffmpeg
>
>>
>>>
>>> On Wed, Apr 20, 2016 at 6:11 AM, piotr.lewicki 
>>> <piotr.lewicki@elfin.de> wrote:
>>>> ---
>>>> .../omxplayer/explicitly_link_with_vchostif_library.patch | 13 
>>>> +++++++++++++
>>>> recipes-multimedia/omxplayer/omxplayer_git.bb |  5 +++--
>>>>   2 files changed, 16 insertions(+), 2 deletions(-)
>>>>   create mode 100644 
>>>> recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
>>>>
>>>> diff --git 
>>>> a/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch 
>>>> b/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch 
>>>>
>>>> new file mode 100644
>>>> index 0000000..642f63a
>>>> --- /dev/null
>>>> +++ 
>>>> b/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
>>>> @@ -0,0 +1,13 @@
>>>> +diff --git a/Makefile b/Makefile
>>>> +index 80b63b1..bcfadfb 100644
>>>> +--- a/Makefile
>>>> ++++ b/Makefile
>>>> +@@ -51,7 +51,7 @@ version:
>>>> +       bash gen_version.sh > version.h
>>>> +
>>>> + omxplayer.bin: version $(OBJS)
>>>> +-      $(CXX) $(LDFLAGS) -o omxplayer.bin $(OBJS) -lvchiq_arm 
>>>> -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec -lavformat 
>>>> -lswscale -lswresample -lpcre
>>>> ++      $(CXX) $(LDFLAGS) -o omxplayer.bin $(OBJS) -lvchiq_arm 
>>>> -lvchostif -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec 
>>>> -lavformat -lswscale -lswresample -lpcre
>>>> +       $(STRIP) omxplayer.bin
>>>> +
>>>> + help.h: README.md Makefile
>>>> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb 
>>>> b/recipes-multimedia/omxplayer/omxplayer_git.bb
>>>> index c8251fe..c2b1342 100644
>>>> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
>>>> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
>>>> @@ -7,8 +7,8 @@ SECTION = "console/utils"
>>>>   LICENSE = "GPLv2"
>>>>   LIC_FILES_CHKSUM = 
>>>> "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>>>>
>>>> -DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl 
>>>> samba libssh"
>>>> -PR = "r4"
>>>> +DEPENDS = "libpcre ffmpeg virtual/egl boost freetype dbus openssl 
>>>> samba libssh"
>>>> +PR = "r5"
>>>>
>>>>   SRCREV = "15a490b2397b358776c56b017a137c4716eb6b4e"
>>>>   SRC_URI = 
>>>> "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master 
>>>> \
>>>> @@ -19,6 +19,7 @@ SRC_URI = 
>>>> "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master
>>>>              file://fix-tar-command-with-DIST.patch \
>>>>              file://use-native-pkg-config.patch \
>>>> file://don-t-preserve-file-attributes-when-cp.patch \
>>>> + file://explicitly_link_with_vchostif_library.patch \
>>>>              "
>>>>   S = "${WORKDIR}/git"
>>>>
>>>> -- 
>>>> 2.5.0
>>>>
>>>> -- 
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>


