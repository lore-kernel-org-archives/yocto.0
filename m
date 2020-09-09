Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web12.6410.1599625073019104841
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Sep 2020 21:17:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=j3n4Phf9;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id jw11so703113pjb.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Sep 2020 21:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Q9wmRb9YBA17BUAoeJpAUMHFmUIvGrlJYKdlE6zUiyE=;
        b=j3n4Phf9Rb7/sFRoVV8eRqPweGspONQtwC2LlOvRXo4FemvGVuumEpSKt+55HPmcke
         W8KlM3gJm8Bk26mT9PP0rMyCaVtaMAsBFC+JKjHnOevhUA4kzpDaa2Wz1izxDx6vZY1i
         yL+iRn5ncg3QbjczvXxTpA+3TwPKdpRqLwx7XRhjU7JRjbrpr/jd7k568VmlZ2ykaRKS
         GKsv3V3d461yAY0W4tCrX5T9tRqU8gSJ+cIHuuIvNgMZE0xhHoXGUIebPxHPYGLhqJBD
         dQxwpiHcHouJUAJ0kJo9yx135xaAiLYySVtxGMxbF9NfCy8k4TkhtwTU5WW/mzvyHfW9
         KSFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Q9wmRb9YBA17BUAoeJpAUMHFmUIvGrlJYKdlE6zUiyE=;
        b=GNQjol9WzucR+XKTmd/ACcWmuKBsytMoZUJIw5eAX/wQ8W5QsLAxfApOetQiwxynVl
         VgYegQEUI709Ti15J0zsOku/s6YoLE6mSNfOVFWlpVyAgHuSY1HPcBbFNZEm8lzeyj4a
         77iQZdckcO9Rt/LTCerJUJ8xH+LoxhDoaTb2XLFBrmwggWLyUzbwweB2M1NGLaUaRN39
         YxuTZZpnewNx726Zd9pcfN+ReWB3fTc+mBhGFO8wF8DHBJ61zDtHhsiM8DMSwaapKl1z
         YwfIC9AsxqBwUckGeiHq9iPIXr4H6wHFdAyGx07xGVtnEB27KSgyWAf5UEVHdOTguc/m
         O7wA==
X-Gm-Message-State: AOAM533abXsF+ymBiV+1vGkb54UG+le8/DlCf83U8jzP0x214mEu1fIx
	mUwE5J9a6r9olxB+WFHNmqKYr79TZTY=
X-Google-Smtp-Source: ABdhPJw3kbUTehKtqZ3fj4jqVu7aB07b9AOpcSn7l0Et/GZUQtwWbvM6OPZKuPZqJfU7nqdmxdqpVA==
X-Received: by 2002:a17:90a:ca03:: with SMTP id x3mr1951310pjt.92.1599625072171;
        Tue, 08 Sep 2020 21:17:52 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:812e:2d2f:a669:186f? ([2601:202:4180:a5c0:812e:2d2f:a669:186f])
        by smtp.gmail.com with ESMTPSA id 204sm894441pfc.200.2020.09.08.21.17.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 21:17:51 -0700 (PDT)
Subject: Re: [yocto] poky dhcpcd failed build
To: Yocto <yocto@optimcloud.com>, yocto@lists.yoctoproject.org
References: <3674f2d9-67c4-4a3d-c061-883668093ded@optimcloud.com>
 <CAM9ZRVsrMHicRmLPBeGefSS=WZgVEp+-joU95sZ_=WwJaf9zzg@mail.gmail.com>
 <d8bdfc43-e204-3eab-4582-af06b2309e2c@optimcloud.com>
 <CAM9ZRVseC6sEWyW8uDaEO+=F+rB-cw3Dk8WeMtMn=24OprK35g@mail.gmail.com>
 <bc2ad109-65e6-37d6-fb32-de2d21a2bd73@optimcloud.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <869a730f-166e-0c1c-efa7-37d8f5185f75@gmail.com>
Date: Tue, 8 Sep 2020 21:17:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <bc2ad109-65e6-37d6-fb32-de2d21a2bd73@optimcloud.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

May I suggest opening a Yocto bug on this with steps to reproduce the
failure.

- armin

On 9/8/20 7:45 AM, Yocto wrote:
>
>
> On 9/8/20 9:41 PM, Paul Barker wrote:
>> On Tue, 8 Sep 2020 at 15:17, Yocto <yocto@optimcloud.com> wrote:
>>> On 9/8/20 7:57 PM, Paul Barker wrote:
>>>
>>> On Tue, 8 Sep 2020 at 07:26, Yocto <yocto@optimcloud.com> wrote:
>>>
>>> w
>>> | collect2: error: ld returned 1 exit status
>>> | make[1]: *** [Makefile:73: dhcpcd] Error 1
>>> | make[1]: Leaving directory
>>> '/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src'
>>> | make: *** [Makefile:24: all] Error 2
>>> | WARNING:
>>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983:190
>>> exit 1 from 'exit 1'
>>> | WARNING: Backtrace (BB generated script):
>>> |     #1: bbfatal_log,
>>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>>> line 190
>>> |     #2: die,
>>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>>> line 165
>>> |     #3: oe_runmake,
>>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>>> line 160
>>> |     #4: autotools_do_compile,
>>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>>> line 155
>>> |     #5: do_compile,
>>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>>> line 150
>>> |     #6: main,
>>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>>> line 194
>>> |
>>> | Backtrace (metadata-relative locations):
>>> |     #1: bbfatal_log,
>>> /var/home/dingo/overc/poky/meta/classes/logging.bbclass, line 72
>>> |     #2: die, /var/home/dingo/overc/poky/meta/classes/base.bbclass, line 56
>>> |     #3: oe_runmake,
>>> /var/home/dingo/overc/poky/meta/classes/base.bbclass, line 65
>>> |     #4: autotools_do_compile,
>>> /var/home/dingo/overc/poky/meta/classes/autotools.bbclass, line 243
>>> |     #5: do_compile, autogenerated, line 2
>>> ERROR: Task
>>> (/var/home/dingo/overc/poky/meta/recipes-connectivity/dhcpcd/dhcpcd_9.1.4.bb:do_compile)
>>> failed with exit code '1'
>>>
>>> Sorry to be blunt, but this email is meaningless. Please give some
>>> context and use a name other than "Yocto". You're not likely to get
>>> any helpful replies from an email like this.
>>>
>>> for context, seems that the latest git commit for dhcpcd doesnt even build.
>>>
>>> gcc/x86_64-overc-linux/10.2.0/ld: privsep-root.o: in function `ps_root_dogetifaddrs':
>>> | /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:374: undefined reference to `ALIGN'
>>> | /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld: /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:375: undefined reference to `ALIGN'
>>> | /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld: /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:376: undefined reference to `ALIGN'
>>> | /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld: /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:378: undefined reference to `ALIGN'
>>> | /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld: /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:380: undefined reference to `ALIGN'
>>> | /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld: privsep-root.o:/usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:382: more undefined references to `ALIGN' follow
>>> | collect2: error: ld returned 1 exit status
>> What command did you run? What's your host distro, layers and
>> branches/version, local.conf contents, etc? You need to give enough
>> info for your issue to be understood.
>
>
> ❯ bitbake cube-essential cube-dom0 cube-vrf cube-builder-initramfs
> cube-builder cube-desktop cube-server cube-k8s-node
> WARNING: Host distribution "fedora-32" has not been validated with
> this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100%
> |##########################################################################################################################################################################################################################################################################################|
> Time: 0:00:00
> Loaded 6981 entries from dependency cache.
> Parsing recipes: 100%
> |########################################################################################################################################################################################################################################################################################|
> Time: 0:00:03
> Parsing of 2845 .bb files complete (2843 cached, 2 parsed). 6983
> targets, 211 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.47.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "fedora-32"
> TARGET_SYS           = "x86_64-overc-linux"
> MACHINE              = "intel-corei7-64"
> DISTRO               = "overc"
> DISTRO_VERSION       = "1.0"
> TUNE_FEATURES        = "m64 corei7"
> TARGET_FPU           = ""
> meta                
> meta-poky           
> meta-yocto-bsp       = "master:c25309ecde4e7ff81fb74a74fe06991dcdbbbfc8"
> meta-oe             
> meta-python         
> meta-networking     
> meta-filesystems    
> meta-multimedia     
> meta-perl            = "master:b6ab91b594f10e74f86b69af956a4a3dc95570f4"
> meta-overc          
> meta-cube            = "master:264d1d0949fb5e9ec8e39b1f7604086d59ec2047"
> meta-intel           = "master:58ce85f09cf28636a809891b254754c041c987b4"
> meta-virtualization  = "master:2711b81afd489d5b458617dfdfda520d8fe61f65"
> meta-cloud-services  = "master:c58fd2bea4d6ccd98d9f29bd7dcff96d7d99594d"
> meta-security        = "master:fa9f747360960f6af7454d534e45263bcc15c015"
> meta-selinux         = "master:15fed8756aa4828fa12a3d813754b4ca65a7607d"
> meta-gnome          
> meta-xfce            = "master:b6ab91b594f10e74f86b69af956a4a3dc95570f4"
> meta-awnix           = "master:d9de1ff6bec994a23333fe3989329b684f22f3da"
>
> #
> # OverC updates
> #
>
> # set the machine
> MACHINE = "intel-corei7-64"
> #KMACHINE_genericx86-64 = "common-pc-64"
> KMACHINE_corei7-64-intel-common = "intel-corei7-64"
>
>
> # disto: replace the poky distro with:
> DISTRO = "overc"
>
> # IMPORTANT: remove 'image-mklibs image-prelink' from the default
> #            user classes. They break lxc-autostart.
> USER_CLASSES ?= "buildstats"
> INSANE_SKIP_zerotier = " already-stripped"
> IMAGE_FSTYPES_append = " tar.bz2"
> NOISO = "1"
> PACKAGE_CLASSES ?= "package_rpm"
> EXTRA_IMAGE_FEATURES += " package-management "
> IMAGE_INSTALL_append = " libvirt libvirt-libvirtd libvirt-virsh git
> htop python3-pip wireguard-tools libgomp libgomp-dev libgomp-staticdev
> glibc-gconvs glibc-utils nodejs nodejs-npm"
> ENABLE_BINARY_LOCALE_GENERATION = "1"
> CORE_IMAGE_EXTRA_INSTALL += " packagegroup-base-extended"
> PACKAGE_FEED_URIS = "http://cube-repo/repo"
> PACKAGE_FEED_BASE_PATHS = "rpm"
> PACKAGE_FEED_ARCHS = "core2_64 genericx86_64 x86 noarch"
>
> IMAGE_FSTYPES_remove = "hddimg wic wic.bmap"
> OVERC_ESSENTIAL_MODE = "read-write"
> PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
>
>
>>> meaning dont use the name yocto@domain ?? it was just configured so all lists reguarding yocto went to a different email then personal... maybe it should be named something other then yocto... okay... but now unsub-resu to X lists... ughhhhhh
>>>
>> The email address is fine, just set a name other than "Yocto" in your
>> mail client. Using "Yocto" may confuse unfamiliar folks into thinking
>> you speak on behalf of the project. It also gets confusing when
>> multiple people set their name to "Yocto" when using these lists.
>>
>> Thanks,
>>
>>
>
> 

