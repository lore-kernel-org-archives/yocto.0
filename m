Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFF83E00B74; Wed, 22 Jun 2016 07:59:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,PLING_QUERY,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18DBBE00AD2
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:59:16 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id u64so65539131vkf.3
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0ZSff88Gqr3MiA7BsXT6VlQ3SZtOMFV96YuGMLjcwRg=;
	b=Du6YjDJ4rLnp5LLaZ6UN1X4MK2SpZOq9rPFmGK0qAVYDxEghBL1NA9wRub0NQzSE2s
	6J1c4BGO/xsnwM4VBw1potgoL5xmnLU/4dCajjL9a/DHuXRuKzQrowA0XHjIFeYxgchk
	vgbahH7hVM0V3KjLPK7XLFvshO6rBn1yzX/wCbXkqA3/fJyz3TabN1xisLg76e8JwpeI
	1xZ2R2OBfEjgsfDeQo6z0+pwoUi4nJ6ZbdbvYsM+KzzDalzoUlmzeGJU2me2HHCUr6h3
	0pvD8OrVFCuaU8n7px9KN00TZmZHpT/pga8PAFQfw8kYA+fLBqzlDvwrZ7wB0y88E6qk
	gHPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0ZSff88Gqr3MiA7BsXT6VlQ3SZtOMFV96YuGMLjcwRg=;
	b=dvrjWHGuGUiIGkbIkeya6UJk4y//cIwYqZ43PvPHYC9q+3oglWwlMyQfRlN8sw1oV3
	qugeeJm3SQwwPpGKEU03xJEBkH1aP3N4oHnsc37L6+H/vGHh4qvupOKor/d+Zm3YZYEF
	5dSUS8nvcaIwV+GaoFh58C8JmVLKbpe+5erZLD57fiSSwEYnShEKU+m20SEQ33WFTrrP
	kr7fGTsOmdiErg/6ZpNZ0Ln0GkKBURUJ3Vi0CPscOJ3pLnFziAr9yWAY7A1UyRtfwH20
	azxUkQRExxiI+MfzGMNmoTCVvWPy1Nbu2IabeKcRdG41wtruKIY1zt5CCKeFuYaJOHmz
	jdig==
X-Gm-Message-State: ALyK8tISM9ukKXyXGpy7g4RuEOHzM+pJYO7x8st8/e1WADR0qz1dlyoQFTeuXcJ0vAtOxpWPxUIlEmoBCum5iw==
X-Received: by 10.176.69.196 with SMTP id u62mr12446846uau.111.1466607555714; 
	Wed, 22 Jun 2016 07:59:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Wed, 22 Jun 2016 07:59:15 -0700 (PDT)
In-Reply-To: <CAF3SDA72vJ1W+zzM+=i+4y4VxjwU64SrdmgX93qubY7d_OFt6w@mail.gmail.com>
References: <CAF3SDA5fWG_WyHHYAFDu3ZkRmv6ba+aV_8Ph6dy5avy71SQWsg@mail.gmail.com>
	<CAMKF1sqMH+Z=7+1BTAEbiPm9kQO6NYbxY7-9OgRJ=wDYcFov0A@mail.gmail.com>
	<CAF3SDA4k9M0GdWngzpE2P-=_jCoyaW_oUo6jmzNJ6uibu2hRPw@mail.gmail.com>
	<CAF3SDA413PDn7J7wcNBsAW3f5gFJeD9x4X+rerYnz=xhQr1jWQ@mail.gmail.com>
	<CAMKF1srtRCm2MD44U2Etf8VxsmV3xkaac80Z8rpAhM4Ubw-RHQ@mail.gmail.com>
	<CAF3SDA6mJLEzJ+DuxwWCPPHa3k+ac==8m6sDzRO95TmmkGu9Hg@mail.gmail.com>
	<CAF3SDA72vJ1W+zzM+=i+4y4VxjwU64SrdmgX93qubY7d_OFt6w@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 22 Jun 2016 11:59:15 -0300
Message-ID: <CAF3SDA6GkCg4RBbitS67AuMRESP_A6NcQ+P62PkQk365k_ghpQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Crosscompiling python extensions with yocto generated toolchains!?
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
X-List-Received-Date: Wed, 22 Jun 2016 14:59:41 -0000
Content-Type: text/plain; charset=UTF-8

The above script can also be founded here:
https://gist.github.com/gkos/2fa8dd54712d0b92a3db52e472d9fc09

Regards,

2016-06-22 11:57 GMT-03:00 Daniel. <danielhilst@gmail.com>:
> Well, I've create a little script to create the needed variables used
> by Yocto's python.
>
> Here it is:
>
> . $1
> export BUILD_SYS=$(echo $CONFIGURE_FLAGS | tr -s ' ' '\n' | grep host
> | cut -f2 -d=)
> export HOST_SYS=$(echo $CONFIGURE_FLAGS | tr -s ' ' '\n' | grep build
> | cut -f2 -d=)
> export STAGING_INCDIR=${OECORE_TARGET_SYSROOT}/usr/include
> export STAGING_LIBDIR=${OECORE_TARGET_SYSROOT}/usr/lib
> export PATH=${OECORE_NATIVE_SYSROOT}/usr/bin/python-native:${PATH}
>
> I save it to a file and source it passing the environment-setup-*
> scritp that lives at my ${TMPDIR} folder.
>
> After that I can crosscompile python extension to my target as usual
> with `python setup.py build'
>
>
> Regards,
>
>
> 2016-06-20 17:43 GMT-03:00 Daniel. <danielhilst@gmail.com>:
>> My first doubt was how to trully cross-compile python extensions. Since I
>> can't find anything usefull on internet I ask my self: How OE does it? It
>> seems that OE uses an patched distutils to get bits build. This "assumption"
>> comes from what I see at distutils/sysconfig.py that lives at
>> build/tmp/sysroot/.. folder. After more digging I found this patch:
>> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/recipes-devtools/python/python-native/12-distutils-prefix-is-inside-staging-area.patch?h=daisy
>>
>> The variables are aplied by this patch to the python-native (since I'm still
>> in Daisy, shame on me). At the top of the patch we see:
>>
>> The proper prefix is inside our staging area.
>>
>> So I'll try to contact these people to track the "proper fix". Since
>> crosscompiling python extensions is lacking of
>>
>> documentation reading the source and talking to the gurus is the only option
>> avaible right now :) .
>>
>>
>> Regards,
>>
>>
>>
>> 2016-06-20 16:23 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
>>>
>>> On Mon, Jun 20, 2016 at 12:08 PM, Daniel. <danielhilst@gmail.com> wrote:
>>> > I've found this recipe "python-pycurl" with exports libcurl to python.
>>> > What
>>> > I did was build it and take a look at temp folder to stalk what line is
>>> > used
>>> > to compile that stuff. Here it is:
>>> >
>>> > distutils_do_compile() {
>>> >
>>> >
>>> > STAGING_INCDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/include
>>> > \
>>> >
>>> >
>>> > STAGING_LIBDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib
>>> > \
>>> >          BUILD_SYS=x86_64-linux HOST_SYS=arm-poky-linux-gnueabi \
>>> >
>>> >
>>> > /home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/python-native/python
>>> > setup.py build  || \
>>> >          bbfatal "python setup.py build_ext execution failed."
>>> >
>>> > }
>>> >
>>> >
>>> > So I go to my extension's source folder and paste
>>> >
>>> > STAGING_INCDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/include
>>> > \
>>> >
>>> > STAGING_LIBDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib
>>> > \
>>> > BUILD_SYS=x86_64-linux HOST_SYS=arm-poky-linux-gnueabi \
>>> >
>>> > /home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/python-native/python
>>> > setup.py build
>>> >
>>> > and everything works fine, I got my extension compiled. So, in what
>>> > magic
>>> > are these enviroment variables envolved? STAGING_INCDIR
>>> > and STAGING_LIBDIR are OE stuff, what are these BUILD_SYS and HOST_SYS
>>> > related?! I'm still searching, anyway thanks Khen for
>>> > pointing me meta-python sources. It helped me a lot.
>>>
>>>
>>> OE has several classes where common operations are abstracted out and
>>> you can see that in recipes
>>> e.g. inherit setuptools etc. you should copy the recipe which is
>>> closest to your package and modify it
>>> to use your package source etc. and make other needed tweaks.
>>>
>>> >
>>> > Regards,
>>> >
>>> >
>>> > 2016-06-20 15:29 GMT-03:00 Daniel. <danielhilst@gmail.com>:
>>> >>
>>> >> Thank you Khem!!
>>> >>
>>> >> Regards,
>>> >>
>>> >> 2016-06-20 15:02 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
>>> >>>
>>> >>> On Mon, Jun 20, 2016 at 10:44 AM, Daniel. <danielhilst@gmail.com>
>>> >>> wrote:
>>> >>> > Hi everybody..
>>> >>> >
>>> >>> > I've been playing with python extensions. Now I want to compile a
>>> >>> > simple
>>> >>> > hello world extension
>>> >>> > to my Yocto's target, but I really can't find any good resource
>>> >>> > about
>>> >>> > doing
>>> >>> > it. So what is the teory behind it?
>>> >>> >
>>> >>> > I know that I need python headers "Python.h and others" and that I
>>> >>> > need
>>> >>> > distutils installed. After that everything is done by distutils and
>>> >>> > setup.py
>>> >>> > script, but what is done is a mistery. I found distutilscross on
>>> >>> > internet
>>> >>> > but no documentation about it!?
>>> >>> >
>>> >>> > How are python extensions cross-compiled by Yocto? Can somebody
>>> >>> > point
>>> >>> > me an
>>> >>> > example?!
>>> >>>
>>> >>> take a look at meta-python.
>>> >>>
>>> >>> http://cgit.openembedded.org/meta-openembedded/tree/meta-python
>>> >>>
>>> >>> You might find some examples close to what you are looking for.
>>> >>>
>>> >>> >
>>> >>> > Regards,
>>> >>> >
>>> >>> > --
>>> >>> > "Do or do not. There is no try"
>>> >>> >   Yoda Master
>>> >>> >
>>> >>> > --
>>> >>> > _______________________________________________
>>> >>> > yocto mailing list
>>> >>> > yocto@yoctoproject.org
>>> >>> > https://lists.yoctoproject.org/listinfo/yocto
>>> >>> >
>>> >>
>>> >>
>>> >>
>>> >>
>>> >> --
>>> >> "Do or do not. There is no try"
>>> >>   Yoda Master
>>> >
>>> >
>>> >
>>> >
>>> > --
>>> > "Do or do not. There is no try"
>>> >   Yoda Master
>>
>>
>>
>>
>> --
>> "Do or do not. There is no try"
>>   Yoda Master
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master



-- 
"Do or do not. There is no try"
  Yoda Master

