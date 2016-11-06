Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F20E6E00ABE; Sun,  6 Nov 2016 09:17:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A4DFE00747
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 09:17:01 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id y68so13810643pfb.1
	for <yocto@yoctoproject.org>; Sun, 06 Nov 2016 09:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=p6gOZKdQva8v4CytWlgsPbdG8dQgKAzeQkB2iJHwFrY=;
	b=yq7zctbTRFIOPb61F0iezriT8SI+doBSNaHfcTqAmcMbosTWDhwrdXsNu3gF3yRLlO
	V/OQDLSabrazG0iRXFzN0nUXtVA413zZVT7Cdng7R6U0jrYMwAks11qgRlR1kdvwdEJW
	DYT/eUQ1ckw5tJiCNmNJCKWrkbf6NRdsyNLbK1tq0t6J2BBv55kpE5uJMv4zKr9Bi+g/
	HoGXLuT0LvXen9LZLpBYZcrLFTeuCnevtoTEz/RtUXmT3ReExSPC4gduYScAgdmlOocR
	Fm7KJ8r0TgiPHTdPEMhFqV9Vjt6JxPU/ewbdSLZIfl1F1irK/datAUPvQbGrdlINJtwQ
	RQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=p6gOZKdQva8v4CytWlgsPbdG8dQgKAzeQkB2iJHwFrY=;
	b=hTfl1ZteucithjKzrohOZQgsk+rCObUzsVF5MyMy7zB/OEgeV08uUt4fpCFWh2srLL
	Xq9riqlfQjzsJmo44Eh1N6jDSPBEAQx+ivsF6NNQAdL0jDFs4//nJ/JXfQhgh9qbGkEc
	k0hzKvXhAvVOmoXw6BgZCzL4BzSzlyGdcTwDw1M4meBLY+uo4GEvnzPCws7TqL3lNzbY
	PBR0abXJrEklseRI5w2/pmcKqOUNOzMxRVTftxD+gdbs8uTCjpHonJc2Y7aI2Fa4LthL
	/SwghmxdPIn0mwopPbzFfpfZcuVWssJHQtbj4b6hDaKQgKkAf0ngPxva3u6r8EOJrmU+
	nyLw==
X-Gm-Message-State: ABUngvcMyCkYgFaWtbhzNxXnmaK76gg9FlqBffLMSuTKUYEO/n3XzFaSjwU8EMBfHbQ7dw==
X-Received: by 10.98.141.153 with SMTP id p25mr6087047pfk.148.1478452621220;
	Sun, 06 Nov 2016 09:17:01 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:187:c3d2:deb9:e508])
	by smtp.gmail.com with ESMTPSA id
	w85sm34205201pfk.57.2016.11.06.09.17.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 06 Nov 2016 09:17:00 -0800 (PST)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<20161106072515.3505-2-raj.khem@gmail.com>
	<CAK18fxEb5Ej7jVQPJoU1S_wusnmu_GBZMQ-KBWBAMPt3Mv_=zw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <d0ec1311-375f-c950-fc8d-d1e8e82308f3@gmail.com>
Date: Sun, 6 Nov 2016 09:16:59 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAK18fxEb5Ej7jVQPJoU1S_wusnmu_GBZMQ-KBWBAMPt3Mv_=zw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] userland: Bump to latest and add ASNEEDED = ""
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
X-List-Received-Date: Sun, 06 Nov 2016 17:17:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 11/6/16 2:57 AM, Andrei Gherzan wrote:
> On 6 Nov 2016 09:34, "Khem Raj" <raj.khem@gmail.com
> <mailto:raj.khem@gmail.com>> wrote:
>>
>> ASNEEDED does not work with userland libraries as
>> noted in see
>> https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html
>>
>> Helps with running kodi using gles2
> 
> Some work on kodi. This is nice.

yes !.
I can play 1080p videos with H/W acceleration using kraj/master on my ghub
fork https://github.com/kraj/meta-raspberrypi/commits/kraj/master
it also works with vc4graphics, but w/o h/w acceleration.

all patches from that branches are ported to ml.

> 
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
>> ---
>>  .../userland/0003-wayland-Add-Wayland-example.patch        | 14 +++++++-------
>>  recipes-graphics/userland/userland_git.bb <http://userland_git.bb>         
>         |  4 +++-
>>  2 files changed, 10 insertions(+), 8 deletions(-)
>>
>> diff --git
> a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
>> index 49a7872..98f18c8 100644
>> --- a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
>> +++ b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
>> @@ -1,4 +1,4 @@
>> -From 7f52662a4d1965988ee5ada28ce3525c38ebf164 Mon Sep 17 00:00:00 2001
>> +From 6ee44bd040bf8e8abf9c5a7be7f6ea4b82d5671a Mon Sep 17 00:00:00 2001
>>  From: Tomeu Vizoso <tomeu.vizoso@collabora.com
> <mailto:tomeu.vizoso@collabora.com>>
>>  Date: Tue, 1 Oct 2013 13:19:20 +0200
>>  Subject: [PATCH 03/13] wayland: Add Wayland example
>> @@ -844,23 +844,23 @@ index 0000000..1a7bfc4
>>  +}
>>  +
>>  diff --git a/host_applications/linux/apps/hello_pi/rebuild.sh
> b/host_applications/linux/apps/hello_pi/rebuild.sh
>> -index fa4539e..37120ac 100755
>> +index 8225dd5..0be6ce7 100755
>>  --- a/host_applications/linux/apps/hello_pi/rebuild.sh
>>  +++ b/host_applications/linux/apps/hello_pi/rebuild.sh
>> -@@ -13,6 +13,7 @@ make -C hello_jpeg clean
>> - make -C hello_videocube clean
>> +@@ -14,6 +14,7 @@ make -C hello_videocube clean
>>   make -C hello_teapot clean
>>   make -C hello_fft clean
>> + make -C hello_mmal_encode clean
>>  +make -C hello_wayland clean
>>
>>   make -C libs/ilclient
>>   make -C libs/vgfont
>> -@@ -29,4 +30,4 @@ make -C hello_jpeg
>> - make -C hello_videocube
>> +@@ -31,4 +32,4 @@ make -C hello_videocube
>>   make -C hello_teapot
>>   make -C hello_fft
>> + make -C hello_mmal_encode
>>  -
>>  +make -C hello_wayland
>>  --
>> -2.10.0
>> +2.10.2
>>
>> diff --git a/recipes-graphics/userland/userland_git.bb
> <http://userland_git.bb> b/recipes-graphics/userland/userland_git.bb
> <http://userland_git.bb>
>> index 7558851..84d6854 100644
>> --- a/recipes-graphics/userland/userland_git.bb <http://userland_git.bb>
>> +++ b/recipes-graphics/userland/userland_git.bb <http://userland_git.bb>
>> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>>
>>  SRCBRANCH = "master"
>>  SRCFORK = "raspberrypi"
>> -SRCREV = "2852d9ff5a9038021f1c22d95e8a9e3aad09893f"
>> +SRCREV = "100f8bb3e74e29d04fb99857183cc34aaa712e3f"
>>
>>  SRC_URI = "\
>>    
>  git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH}
> <http://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH}> \
>> @@ -38,6 +38,8 @@ S = "${WORKDIR}/git"
>>
>>  inherit cmake pkgconfig
>>
>> +ASNEEDED = ""
>> +
>>  EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release
> -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed' \
>>                   -DVMCS_INSTALL_PREFIX=${exec_prefix} \
>>  "
>> --
>> 2.10.2
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
> 

