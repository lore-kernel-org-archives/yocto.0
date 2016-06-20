Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 772F9E00984; Mon, 20 Jun 2016 12:24:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,PLING_QUERY,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DD5FE008BC
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 12:24:12 -0700 (PDT)
Received: by mail-qk0-f169.google.com with SMTP id p10so175932608qke.3
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 12:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gSFfQ0wQGPKb82teLEa4cuebqSUXHnw/igYaS/cJauw=;
	b=Ev6ao4Stm9duvsaEte8xY2yKFHRcCCkf9gauOSUCK+ekfg7DCkAG5ki+2s3eMMVMX7
	w/t9b/PZ/T98m7loP7eTG3zAR88iIL640mGZHEMYjwG1aSNA6qdZm3re9gS6sPPDwKrX
	nIBFFmeGF6Cu+r6gvIGWuRsxKO3hOW7FqOsY8q6JhUJNJsBmqaepEKP+kw3ULgK4XHkB
	PUkJCH8TORAniKc3HaFpS4Z7Sl/VY6gSvmYdfkcN0CgUUO6pi/0brttELBdzfl4NqJoT
	jFla/F7HmrkLOwceME0xwr4eAgu+xBsm2eeOqmouYGpIqUwdThuasF4vCgWCXGpYq69v
	aVxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gSFfQ0wQGPKb82teLEa4cuebqSUXHnw/igYaS/cJauw=;
	b=REGvPfpMkntCWUHk+/QwhJjwJT4fY+c8umf28Y6gfM4NpWQlCPglRmWODNGaug/VTT
	yZW41oQV42H7k5YsOITkJp+cDwnv2O0vXdi8GErhgvAOdoNMpQKXQTJxiTcwlCEPYCbB
	j6HBEzsxi7RAOicc1CDwH5XS+IkubjS6rkK/RKjgPgHKdvRfWi/rKP7kQr8HPNUBToi2
	rwp0+FnXBPo2+5vcYLUmgoPNAFa/KzFK2LpVAWSEa7n1pjh4MExjTzBmSR3xxl/j/xs9
	JMHUQTymUGeYGq3VTQCojgzQ9qcOrtUJ2zXwt/VfEiL/uFcK00PdpLFBKXXbKktlx/y+
	h26A==
X-Gm-Message-State: ALyK8tKB5xwdbb8CyDP25RNMY86JLv5aMBPjd9VeGLFfUX1wO4cHQypjMU12LuHjCju1ZtS/W7FtwYuAo1G2Xw==
X-Received: by 10.55.155.193 with SMTP id d184mr25382926qke.152.1466450652063; 
	Mon, 20 Jun 2016 12:24:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.8.133 with HTTP; Mon, 20 Jun 2016 12:23:42 -0700 (PDT)
In-Reply-To: <CAF3SDA413PDn7J7wcNBsAW3f5gFJeD9x4X+rerYnz=xhQr1jWQ@mail.gmail.com>
References: <CAF3SDA5fWG_WyHHYAFDu3ZkRmv6ba+aV_8Ph6dy5avy71SQWsg@mail.gmail.com>
	<CAMKF1sqMH+Z=7+1BTAEbiPm9kQO6NYbxY7-9OgRJ=wDYcFov0A@mail.gmail.com>
	<CAF3SDA4k9M0GdWngzpE2P-=_jCoyaW_oUo6jmzNJ6uibu2hRPw@mail.gmail.com>
	<CAF3SDA413PDn7J7wcNBsAW3f5gFJeD9x4X+rerYnz=xhQr1jWQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Jun 2016 12:23:42 -0700
Message-ID: <CAMKF1srtRCm2MD44U2Etf8VxsmV3xkaac80Z8rpAhM4Ubw-RHQ@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
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
X-List-Received-Date: Mon, 20 Jun 2016 19:24:15 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 20, 2016 at 12:08 PM, Daniel. <danielhilst@gmail.com> wrote:
> I've found this recipe "python-pycurl" with exports libcurl to python. What
> I did was build it and take a look at temp folder to stalk what line is used
> to compile that stuff. Here it is:
>
> distutils_do_compile() {
>
> STAGING_INCDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/include
> \
>
> STAGING_LIBDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib
> \
>          BUILD_SYS=x86_64-linux HOST_SYS=arm-poky-linux-gnueabi \
>
> /home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/python-native/python
> setup.py build  || \
>          bbfatal "python setup.py build_ext execution failed."
>
> }
>
>
> So I go to my extension's source folder and paste
> STAGING_INCDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/include
> \
> STAGING_LIBDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib
> \
> BUILD_SYS=x86_64-linux HOST_SYS=arm-poky-linux-gnueabi \
> /home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/python-native/python
> setup.py build
>
> and everything works fine, I got my extension compiled. So, in what magic
> are these enviroment variables envolved? STAGING_INCDIR
> and STAGING_LIBDIR are OE stuff, what are these BUILD_SYS and HOST_SYS
> related?! I'm still searching, anyway thanks Khen for
> pointing me meta-python sources. It helped me a lot.


OE has several classes where common operations are abstracted out and
you can see that in recipes
e.g. inherit setuptools etc. you should copy the recipe which is
closest to your package and modify it
to use your package source etc. and make other needed tweaks.

>
> Regards,
>
>
> 2016-06-20 15:29 GMT-03:00 Daniel. <danielhilst@gmail.com>:
>>
>> Thank you Khem!!
>>
>> Regards,
>>
>> 2016-06-20 15:02 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
>>>
>>> On Mon, Jun 20, 2016 at 10:44 AM, Daniel. <danielhilst@gmail.com> wrote:
>>> > Hi everybody..
>>> >
>>> > I've been playing with python extensions. Now I want to compile a
>>> > simple
>>> > hello world extension
>>> > to my Yocto's target, but I really can't find any good resource about
>>> > doing
>>> > it. So what is the teory behind it?
>>> >
>>> > I know that I need python headers "Python.h and others" and that I need
>>> > distutils installed. After that everything is done by distutils and
>>> > setup.py
>>> > script, but what is done is a mistery. I found distutilscross on
>>> > internet
>>> > but no documentation about it!?
>>> >
>>> > How are python extensions cross-compiled by Yocto? Can somebody point
>>> > me an
>>> > example?!
>>>
>>> take a look at meta-python.
>>>
>>> http://cgit.openembedded.org/meta-openembedded/tree/meta-python
>>>
>>> You might find some examples close to what you are looking for.
>>>
>>> >
>>> > Regards,
>>> >
>>> > --
>>> > "Do or do not. There is no try"
>>> >   Yoda Master
>>> >
>>> > --
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>>> >
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
>
> --
> "Do or do not. There is no try"
>   Yoda Master

