Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97480E00D23; Wed, 15 Jun 2016 12:52:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33A2FE00D10
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 12:52:06 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id bz2so10332346pad.1
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 12:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=xqWuwT7EjkfGnQ/KEtZiM9REJCcMcIxAeDQ+gDLYJc4=;
	b=Eqxf79vkO1MXJFxZ9XmfQFuXdlfiU3Ii55C3S5IOjHl3KrjwxvuxS9qJrQSPr4qLv1
	uTGTaBQo754caQoIKF39fdWl1aZqQsKSqSmW74OiD8GLauE5qZZGKC4p5DFb3nuxicQo
	iRdqhFWlHXD30fVvkPKRJrla69gbyBJAYJBBJcgz8TzOZJKw/NLEdQhbrxW2VCIz2qSp
	qgSNAnKOug72d3TMMNb9L8g+N6+SQYgX1dtuV1TSFjbBs4aYlZ3SZJAp+EwCZ1iKEGAN
	ryMjjC8XbRMJUScyG+7gh6OCzcgQpijAnCH2u8yxQxT1NNXalK0Hl/kyq9aq13aNReoP
	4okA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=xqWuwT7EjkfGnQ/KEtZiM9REJCcMcIxAeDQ+gDLYJc4=;
	b=Onk5UIC+qN8zFSdUF0KtOGMLNGhSMh5ugfRzKNFLJ73efcncWNnqwbhi4BwLPVGKEs
	HZW7JieppMjc0yaTwFCe+6CYda8CCo2uVORgXPmeYoB8z+6I7W1cX/Dl3yDSDTTe+pWi
	RKOyi8EZ2Yq88mls6PiXSS0jknJEpEZc9d4Rf45fjo9KH1ffkL+HL7cwdbXEGmOy4HYu
	ABGsy0hN2idkZYQ1tvwZo7zoJPsa1PSVztOfRDlowIKCOKdps4f536rKBGHoPitNfBO5
	PgmBwhA4ds7w2eQQxNWNGhi1wvHoW+sqnMaIaCF31owve8iFhzvsf3gF5Ng97zdeepiq
	Qb3Q==
X-Gm-Message-State: ALyK8tJrT04qUAJh7MmppBgPXI+SAIxIFwL8TXPm4TjNOGz+NwtqwweL2TE42/vDPLvrgORV
X-Received: by 10.66.149.66 with SMTP id ty2mr432758pab.153.1466020326391;
	Wed, 15 Jun 2016 12:52:06 -0700 (PDT)
Received: from [10.43.100.29] ([50.233.148.158])
	by smtp.googlemail.com with ESMTPSA id
	203sm21150441pfz.35.2016.06.15.12.52.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Jun 2016 12:52:05 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>, "Anicic Damir (PSI)" <damir.anicic@psi.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F40A94@MBX114.d.ethz.ch>
	<FD507427-AD98-47F5-9695-150B5A8CEAEF@gmail.com>
From: akuster <akuster@mvista.com>
Message-ID: <5761B1E4.8060205@mvista.com>
Date: Wed, 15 Jun 2016 12:52:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <FD507427-AD98-47F5-9695-150B5A8CEAEF@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.1 powerpc64 e6500 - postinstall intercept hook problems
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
X-List-Received-Date: Wed, 15 Jun 2016 19:52:08 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 06/15/2016 12:23 PM, Khem Raj wrote:
> 
>> On Jun 15, 2016, at 1:27 AM, Anicic Damir (PSI) <damir.anicic@psi.ch> wrote:
>>
>> Hi !
>>
>> I am trying to build Yocto 2.1 for PowerPC64, e6500 CPU.
>>
>> I managed to build, with warnings that some steps will be postponed to first boot,
>> but if I add "read-only-rootfs" then warnings change to errors.
>>
>> The problem seems to be missing qemu-ppc64, see down "exit code: 127".
>> qemu-* executables ( tmp/sysroots/x86_64-linux/usr/bin/qemu-* ) are built, but qemu-ppc64 is missing.
>>
>> If I build qemu-ppc64 (qemu 2.6) myself (install it to /usr/local/bin which is in PATH),
>> then I get "Invalid instruction" from my qemu-ppc64.
>>
>>
>> My build (core-image-psi-gfa-cmd is basically core-image-full-cmdline ):
>>
>>   Build Configuration:
>>   BB_VERSION        = "1.30.0"
>>   BUILD_SYS         = "x86_64-linux"
>>   NATIVELSBSTRING   = "ScientificLinux-6.4"
>>   TARGET_SYS        = "powerpc64-poky-linux"
>>   MACHINE           = "powerpc64-ppc64e6500"
>>   DISTRO            = "gfa-ppc64e6500"
>>   DISTRO_VERSION    = "2.1"
>>   TUNE_FEATURES     = "m64 fpu-hard e6500 altivec"
>>   TARGET_FPU        = ""
>>   meta
>>   meta-poky
>>   meta-yocto-bsp
>>   meta-gfa          = "krogoth-gfa-v2:898a78357e72fb80f1f8e26ba90bad5b7b054a4f"
>>
>>   NOTE: Preparing RunQueue
>>   NOTE: Executing SetScene Tasks
>>   NOTE: Executing RunQueue Tasks
>>   WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: The postinstall intercept hook 'update_gio_module_cache' failed (exit code: 127)! See log for details!
>>   WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: The postinstalls for the following packages will be postponed for first boot: libglib-2.0-0
>>   WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] core-image-psi-gfa-cmd: found a warning message in the logfile (keyword 'WARNING:'):
>>   [log_check] WARNING: The postinstall intercept hook 'update_gio_module_cache' failed (exit code: 127)! See log for details!
>>
>>   WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] core-image-psi-gfa-cmd: found a warning message in the logfile (keyword 'WARNING:'):
>>   [log_check] WARNING: The postinstalls for the following packages will be postponed for first boot: libglib-2
>>
>>
>> If I build core-image-psi-gfa-cmd ( which is basicaly core-image-lsb-sdk ),
>> then there are few more postinstall problems, too:
>>   The postinstalls for the following packages will be postponed for first boot:
>>                  libgdk-pixbuf-2.0-loader-ico libgdk-pixbuf-2.0-loader-bmp libgdk-pixbuf-2.0-loader-jpeg
>>                  libgdk-pixbuf-2.0-loader-png   libgdk-pixbuf-2.0-loader-gif libgdk-pixbuf-2.0-loader-xpm libgdk-pixbuf-2.0-loader-ani
>>
>> all with the same qemu-ppc64 problem.

There is no official qemuppc64 on OE. I do have it in my own bsp layer.
I will be submitting patches soon.

- armin
> 
> 
> we do not have qemuppc64 working correctly in all cases. We now depend on Qemu to do some compile tasks which are not easily cross compilable. Those will fail.
> 
>>
>>
>> I have additionally eudev postinstall problem (generating hwdb.bin) -probably also qemu related
>>
>>
>> Please help.
>>
>> Kind regards,
>>
>> Damir
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>
> 
> 
> 

