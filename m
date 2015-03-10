Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 613B3E0077E; Mon,  9 Mar 2015 21:45:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D03F8E0076F
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 21:45:46 -0700 (PDT)
Received: by iecsf10 with SMTP id sf10so235865iec.2
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 21:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=disposition-notification-to:return-receipt-to:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type:subject:from:date:to:cc:message-id;
	bh=4WW30fWUm1ZatKfXSpzS8pQ5bloMinTvjngE8vJB1+w=;
	b=uKVCJ4O1hUfHBcrYzd8uIi1Jw/vKeZnqCsjJ8dlWGAU36DP6q17vWwHNC3jTZZbEnQ
	ZzyMcqGYP9LQKmhkY3Tr0voyugMuVS0s4dLe5caVOZL8VTVyjthGkNzkHz2Hhz1kqJWO
	of+tuMNuORW/kKFP3GqYqeibAe/Vj3a9eAixhy6AkvVmbbE7/EevXJYNXkVn3cdThSiI
	NTrjv32GxgyQkrVmE/FV2rO7REC83IEVLaXcoM0opYOTPgc3Os0sKVmnhELipH4yQ3j9
	UydapHXJX5IMNZuFEPe/O+YE8mdwSkCVX1mQbOCGTvNbRSYSU8yKMy88/gzgg5rFo6VY
	zdOg==
X-Received: by 10.50.32.70 with SMTP id g6mr52800693igi.35.1425962746090;
	Mon, 09 Mar 2015 21:45:46 -0700 (PDT)
Received: from [192.168.0.64]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7]) by mx.google.com with ESMTPSA id
	i16sm13442916ioe.17.2015.03.09.21.45.43
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Mar 2015 21:45:45 -0700 (PDT)
User-Agent: K-9 Mail for Android
In-Reply-To: <DAD1A653-0F44-4DA3-94F4-8711FC42C180@gmail.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<1425378406649.37693@inedasystems.com>
	<1425383722531.59484@inedasystems.com> <,
	> <2658071.vtqoVpZjG8@peggleto-mobl5.ger.corp.intel.com> <,
	> <1425385065999.46478@inedasystems.com>
	<1425961288367.52845@inedasystems.com>
	<DAD1A653-0F44-4DA3-94F4-8711FC42C180@gmail.com>
MIME-Version: 1.0
From: Nicholas Krause <xerofoify@gmail.com>
Date: Tue, 10 Mar 2015 00:45:39 -0400
To: Khem Raj <raj.khem@gmail.com>,
	Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Message-ID: <072B0CC2-4000-400F-A4BB-4B79616C9A70@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference b/w yocto kernels and normal linux.org	kernels
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
X-List-Received-Date: Tue, 10 Mar 2015 04:45:47 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8



On March 10, 2015 12:33:14 AM EDT, Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
>> On Mar 9, 2015, at 9:21 PM, Raghavendra Kakarla
><Raghavendra.Kakarla@inedasystems.com> wrote:
>> 
>> Hi Paul Eggleton,
>> I have some doubt that is ,there is any difference between the linux
>kernels downloaded from the yocto and that are download from the
>kernel.org with same version number?
>> Can you please clarify the my doubt.
>> 
>
>Yocto project provides a reference kernel called linux-yocto hosted at
>https://git.yoctoproject.org/ search for "Yocto Linux Kernel”
>you will find the trees for various versions. The root of linux-yocto
>is linux-stable from kernel.org. Then there are device specific
>branches where the reference BSPs are using to build the reference
>kernel. So yes there are differences where linux-yocto might have back
>ported or forward ported patches to get a given machine working on a
>given kernel version. On top it has its own tooling to help you create
>kernel build infrastructure for new machine that you might be working
>on.
>there is extensive documentation and training on developing with
>linux-yocto as kernel. The branches eg.
>
>https://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.19/refs/heads
>
>However the OE infrastructure ( which yocto project uses for its build
>system), does not bind you to use linux-yocto, infact it provides base
>classes which help you to write your own recipes for kernel you would
>like to have. So you can very well you a different kernel.
>
>> Thanks and Regards,
>> Raghavendra Kakarla__________________________________
>> ______
I would recommend looking into the reference docs for kernel building and programming under documents in the yocto project's main website for more information on how to build or custom your kernel using recipe files.  Furthermore Raghavendra is right to my knowledge in how the yocto project is different from the mainline kernel trees,  however if you wish you can still use them. 
Nick
>> From: Raghavendra Kakarla
>> Sent: Tuesday, March 3, 2015 5:47 PM
>> To: Paul Eggleton
>> Cc: yocto@yoctoproject.org
>> Subject: RE: SDK generation issue
>> 
>> Hi Paul Eggleton,
>> 
>> Shall i get any API information in the generated SDK documents.
>> 
>> Regards,
>> Raghavendra.
>> ________________________________________
>> From: Paul Eggleton <paul.eggleton@linux.intel.com>
>> Sent: Tuesday, March 3, 2015 5:40 PM
>> To: Raghavendra Kakarla
>> Cc: yocto@yoctoproject.org
>> Subject: Re: SDK generation issue
>> 
>> Assuming you built the SDK you had installed with "doc-pkgs" in
>> SDKIMAGE_FEATURES, they would be in the target sysroot i.e.
>> <sdk-install-dir>/sysroots/<your-machine-arch>/usr/share/doc/
>> 
>> On Tuesday 03 March 2015 11:55:22 Raghavendra Kakarla wrote:
>>> Hi Paul Eggleton,
>>> 
>>> Where can i get the documents generated by the yocto sdk.
>>> 
>>> Regards,
>>> Raghavendra.
>>> ________________________________________
>>> From: Raghavendra Kakarla
>>> Sent: Tuesday, March 3, 2015 3:56 PM
>>> To: Paul Eggleton
>>> Cc: yocto@yoctoproject.org
>>> Subject: RE: SDK generation issue
>>> 
>>> Hi Paul Eggleton,
>>> 
>>> Thank you for your response.
>>> 
>>> Now my issue is resolved.
>>> 
>>> I have some doubts on yocto-sdk. Can you please clarify them.
>>> 
>>> When i Built SDK for YOCTO, I am getting a cross compilation tool
>chain.
>>> With which i am able to build the applications for my platform. I
>wanted to
>>> confirm, whether SDK means  a toolchain to build the applications or
>is
>>> there something more (such as documentation, libraries, etc
>generated for
>>> our platform)
>>> 
>>> Regards,
>>> Raghavendra.
>>> 
>>> From: Paul Eggleton <paul.eggleton@linux.intel.com>
>>> Sent: Tuesday, March 3, 2015 3:07 PM
>>> To: Raghavendra Kakarla
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: SDK generation issue
>>> 
>>> On Tuesday 03 March 2015 05:41:43 Raghavendra Kakarla wrote:
>>>> I am generated the yocto SDK using the yocto sdk script "bitbake
>>>> core-image-minimal -c populate_sdk" command. With this command I am
>able
>>>> to
>>>> generte the installation script file and .manifest file.
>>>> 
>>>> I run the installation script file. After running installation
>script file
>>>> it propts that following message:
>>>> 
>>>> Extracting SDK...done
>>>> Setting it up...done
>>>> SDK has been successfully set up and is ready to be used.
>>>> 
>>>> 
>>>> After this i run the ".
>>>> /opt/poky/1.7/environment-setup-mips32rel-poky-linux" and echo
>$PATH i got
>>>> the correct path.
>>>> 
>>>> After this i built wrote a small example and try to build with the
>sdk
>>>> generated toolchain by running following command:
>>>> 
>>>> mipsel-poky-linux-gcc test.c
>>> 
>>> Use $CC instead of running the compiler directly so that you get the
>correct
>>> options.
>>> 
>>> Cheers,
>>> Paul
>>> 
>>> 
>>> --
>>> 
>>> Paul Eggleton
>>> Intel Open Source Technology Centre
>> 
>> --
>> 
>> Paul Eggleton
>> Intel Open Source Technology Centre
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>-- 
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

