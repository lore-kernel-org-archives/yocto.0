Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09CB3E0070B; Sun,  1 Feb 2015 15:27:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5770E00596
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 15:27:34 -0800 (PST)
Received: by mail-pa0-f54.google.com with SMTP id eu11so74708402pac.13
	for <yocto@yoctoproject.org>; Sun, 01 Feb 2015 15:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PzQSxeKr7PMZ4O84TNTQSMsSsTqnsZA4PMmxtC4ruh4=;
	b=p+C7rInVWbAdDVMIs/Pkj3QatLUKVA+BhdHttBoE6FbCUyWeUyt/FxA4hbam5vzcxQ
	w6N6AxJRHai6MUucHfeSDhgLTlTaLOwupKGlgGh0btMjmkX+Q3HVgPp44YGdCQTeHQ28
	lI8lLk3bKD0YP62evcSBrEChq7Bq16oz5RtivtJ8YCAD4vQoImqG7XUMP/RQ6JWlfFDK
	4fL1MSibrkKQ0dZ5MRm4wgjyiR1Knz8goC3YqaP76m6LRLYWka3Fpy/XayoTNVvMSCAA
	6IuB6pNtzoUX4Vxxv2fEqsL6/Nw/V/60WC8GVxgFZx+8a0/QMFNNkSwUdTHgXw3NL9HV
	c8PA==
MIME-Version: 1.0
X-Received: by 10.70.43.75 with SMTP id u11mr25132644pdl.167.1422833253948;
	Sun, 01 Feb 2015 15:27:33 -0800 (PST)
Received: by 10.70.44.167 with HTTP; Sun, 1 Feb 2015 15:27:33 -0800 (PST)
In-Reply-To: <CAEfap_CVpqLp+WW471hVXgMhaf+JGK1fLtsKftOP4cC+FnCXUQ@mail.gmail.com>
References: <CAEfap_CVpqLp+WW471hVXgMhaf+JGK1fLtsKftOP4cC+FnCXUQ@mail.gmail.com>
Date: Mon, 2 Feb 2015 00:27:33 +0100
Message-ID: <CALbNGRTNvURyxef1Y3HMi=FS6EBOe0H32VviguaLyF+MtKaCaA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Simon Bolek <simon.bolek@googlemail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: 1.7 - QtCreator ERROR while linking- /usr/bin/ld:cannot find /lib/libpthread.so.0 inside
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
X-List-Received-Date: Sun, 01 Feb 2015 23:27:46 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jan 31, 2015 at 9:35 AM, Simon Bolek <simon.bolek@googlemail.com> wrote:
> yo!
>
> I kind of solved the problem last night. At least i can deploy and run the
> app in qemu/device.
> @Martin: sorry again for direct mail, but i am not sure if my solution is
> THE solution. Maybe i
> just managed to find a workaround of sth, that can be solved someway else,
> OR i just have my settings wrong.
>
> As i already mentioned, linker was not the yocto-qt-sdk linker, but my
> ubuntu one. Even though LD variable had been set correctly. I just assume LD
> is for the linker, I have no idea if this LD should be used for linking. So
> I did copy the i586-poky-linux-ld:
> cp i586-poky-linux-ld ld
> and look there, QtCreator suddenly used this ld for linking. This did not
> solve the problem of looking for the libraries in /lib/ or /usr/lib of my
> ubuntu machine. Even though OE_QMAKE_LIBDIR_QT set to:
> /opt/poky/1.7/sysroots/i586-poky-linux/usr/lib:/opt/poky/1.7/sysroots/i586-poky-linux/lib
>
> Not even the adding of sysroot to $LD or to $LDFLAGS or to $OE_QMAKE_LDFLAGS
> or to $OE_QMAKE_CFLAGS helped:
> --sysroot=/opt/poky/1.7/sysroots/i586-poky-linux
>
> First setting QMAKE_LFLAGS manually in .pro like this:
> QMAKE_LFLAGS=--sysroot=/opt/poky/1.7/sysroots/i586-poky-linux
> caused the linker to look for the libraries. I will set this variable up in
> qt5.sh of sdk later.
>
> So, are those OE_QMAKE* variables used in some way? Where can i see them
> beeing used. And is this really the solution of the problem? I can't help
> the feeling that setting all those --sysroot in setup scripts (source oe...,
> and qt5.sh) when starting QtCreator is wrong/not having any function.
>
> BTW: I had to update QtCreator to 3.3.0, because deploying the application
> with 3.2.0 to qemu(core-image-sato) caused ssh problem of different
> protocols (qt hat the old one, not matching the new one in openssh library
> of yocto 1.7).
>
> cheers
> simon :-)
>
>> Date: Fri, 30 Jan 2015 16:59:31 +0100
>> From: Simon Bolek <simon.bolek@googlemail.com>
>> To: yocto@yoctoproject.org
>> Subject: [yocto] 1.7 - QtCreator ERROR while linking- /usr/bin/ld:
>>         cannot find /lib/libpthread.so.0 inside
>> Message-ID:
>>
>> <CAEfap_BwbJG8SZ_btNZAAKouS=JAWByJxkMB95n52qV7C=0PqQ@mail.gmail.com>
>> Content-Type: text/plain; charset="utf-8"
>>
>>
>> hello!
>>
>> So after successfully bitbaking and installing meta-toolchain-st5 I set up
>> QtCreator 3.2.2 and tried to compile an app against SDK of qt5. However I
>> get an error:
>>
>> /usr/bin/ld: cannot find /lib/libpthread.so.0 inside
>> /usr/bin/ld: cannot find /usr/lib/libpthread_nonshared.a inside
>>
>> libpthread.so is available alright, but the linker is not finding it
>> somehow.
>>
>> LD variable is set to:
>> i586-poky-linux-ld --sysroot=/opt/poky/1.7/sysroots/i586-poky-linux
>>
>> Maybe this is a pure QtCreator bug, but where would I set(override) the
>> linker correctly? Any suggestions?
>>
>> If i run(from console ):
>> i586-poky-linux-ld --sysroot=/opt/poky/1.7/sysroots/i586-poky-linux
>> /opt/poky/1.7/sysroots/i586-poky-linux/usr/lib/libpthread.so
>> it is fine(it gives me some warning, but no errors).
>>
>> Here are the QtCreator settings for Qt5 Kit:
>> GCC Compiler:
>> path:
>>
>> /opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-linux/i586-poky-linux-gcc
>>
>> Qt Version:
>> qmake location:
>> /opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/qt5/qmake
>>
>> Qt Kit:
>> sysroot: /opt/poky/1.7/sysroots/i586-poky-linux
>> compiler: set to above gcc compiler
>> qt version: set to above qt version
>>
>> even manually setting LIBS to
>> LIBS += -L//opt/poky/1.7/sysroots/i586-poky-linux/lib
>> or
>> LIBS += -L//opt/poky/1.7/sysroots/i586-poky-linux/usr/lib
>> does not help(but i really do not think this is the problem).
>>
>> So you have any hints for me?
>> I compared the settings of 1.6.1, and there is no difference as far as my
>> eye can catch.
>>
>>
>> PS. I switched from 1.6.1 to 1.7, becasue of gclib not beeing available in
>> 1.6.1.
>>
>> cheers
>> simon :-)
>
Maybe off-topic but how did you get qt-creator on target do something
useful without target qmake?

Andreas

