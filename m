Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B02C5E00ED6; Thu, 21 Apr 2016 20:00:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CA34E00CC0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 20:00:29 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 7C73768A01C; Fri, 22 Apr 2016 04:00:27 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id B184368A019;
	Fri, 22 Apr 2016 04:00:23 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 6C20967400E4;
	Fri, 22 Apr 2016 05:00:23 +0200 (CEST)
To: yocto@yoctoproject.org
References: <1461157892-9156-1-git-send-email-piotr.lewicki@elfin.de>
	<CAMKF1spXb_kW0yzD1qVL6P31gz7uK0AG1Oma+c-KZNu5JSSpiA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <571993C7.6080504@mlbassoc.com>
Date: Fri, 22 Apr 2016 05:00:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1spXb_kW0yzD1qVL6P31gz7uK0AG1Oma+c-KZNu5JSSpiA@mail.gmail.com>
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
X-List-Received-Date: Fri, 22 Apr 2016 03:00:32 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-22 01:31, Khem Raj wrote:
> resend this patch to OE-Core mailing list. and also add
> Upstream-Status: to patch
>

Actually, it should go to the RaspberryPi mailing list, not OE-core
Also, there are no Signed-off-by lines

>
> On Wed, Apr 20, 2016 at 6:11 AM, piotr.lewicki <piotr.lewicki@elfin.de> wrote:
>> ---
>>   .../omxplayer/explicitly_link_with_vchostif_library.patch   | 13 +++++++++++++
>>   recipes-multimedia/omxplayer/omxplayer_git.bb               |  5 +++--
>>   2 files changed, 16 insertions(+), 2 deletions(-)
>>   create mode 100644 recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
>>
>> diff --git a/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch b/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
>> new file mode 100644
>> index 0000000..642f63a
>> --- /dev/null
>> +++ b/recipes-multimedia/omxplayer/omxplayer/explicitly_link_with_vchostif_library.patch
>> @@ -0,0 +1,13 @@
>> +diff --git a/Makefile b/Makefile
>> +index 80b63b1..bcfadfb 100644
>> +--- a/Makefile
>> ++++ b/Makefile
>> +@@ -51,7 +51,7 @@ version:
>> +       bash gen_version.sh > version.h
>> +
>> + omxplayer.bin: version $(OBJS)
>> +-      $(CXX) $(LDFLAGS) -o omxplayer.bin $(OBJS) -lvchiq_arm -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec -lavformat -lswscale -lswresample -lpcre
>> ++      $(CXX) $(LDFLAGS) -o omxplayer.bin $(OBJS) -lvchiq_arm -lvchostif -lvcos -ldbus-1 -lrt -lpthread -lavutil -lavcodec -lavformat -lswscale -lswresample -lpcre
>> +       $(STRIP) omxplayer.bin
>> +
>> + help.h: README.md Makefile
>> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
>> index c8251fe..c2b1342 100644
>> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
>> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
>> @@ -7,8 +7,8 @@ SECTION = "console/utils"
>>   LICENSE = "GPLv2"
>>   LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>>
>> -DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
>> -PR = "r4"
>> +DEPENDS = "libpcre ffmpeg virtual/egl boost freetype dbus openssl samba libssh"
>> +PR = "r5"
>>
>>   SRCREV = "15a490b2397b358776c56b017a137c4716eb6b4e"
>>   SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
>> @@ -19,6 +19,7 @@ SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master
>>              file://fix-tar-command-with-DIST.patch \
>>              file://use-native-pkg-config.patch \
>>              file://don-t-preserve-file-attributes-when-cp.patch \
>> +           file://explicitly_link_with_vchostif_library.patch \
>>              "
>>   S = "${WORKDIR}/git"
>>
>> --
>> 2.5.0
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

