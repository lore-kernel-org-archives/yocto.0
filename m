Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC520E00B21; Fri, 16 Oct 2015 12:21:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (federicobriata[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B171CE006D5
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 12:21:39 -0700 (PDT)
Received: by lbbwb3 with SMTP id wb3so45730975lbb.1
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 12:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qqPFGVgkgrD7PqugNa8yHU6WnY/sAYhO1VG6b5EzZK0=;
	b=HymSAwPXEDryOj2aKYCmF6ALybhk6dfRj3fT6LEnuYLZ7XyAZP/Bnqt5K7ElNT5hV1
	lfes+oXf7+8wz1sJEMdYTQ2DoAiwsQtyf7y29T7CRoQDGrLUEg5B0iJ97ZV+dQcdd/zb
	XQK3UntwNaT34YsHgR8ZrrouiH6/aB/Jr9eJ6qrIXwf0mlN1za7yj/czFG5GIDoYukb4
	YwR5a2Ufs6jdg4q+ksEpiXfF7aoJQ3UCFjshpTMThJ4tHYn+QBW/7mj5E1rodc9cFf3s
	f6hMp82KIH1KnXEixfeFJ+1tSkwA2gNJG1xTTtI8vR6K7Ohp+NiuPvPrA0FWEFQOXK1f
	zvrA==
MIME-Version: 1.0
X-Received: by 10.112.198.198 with SMTP id je6mr9209063lbc.31.1445023297254;
	Fri, 16 Oct 2015 12:21:37 -0700 (PDT)
Received: by 10.112.43.68 with HTTP; Fri, 16 Oct 2015 12:21:37 -0700 (PDT)
In-Reply-To: <7EEFD0BE-EA3E-49A4-990D-09862F31D3EE@gmail.com>
References: <CA+KKcbm9JAeutnDhyYfVprxt3AZYX0B9n44Cokt3yMhiS8TPZw@mail.gmail.com>
	<7EEFD0BE-EA3E-49A4-990D-09862F31D3EE@gmail.com>
Date: Fri, 16 Oct 2015 20:21:37 +0100
Message-ID: <CA+KKcbmivGjU969MGgYBzBKpD=b1EnoaebVVKr=DrrM_inWiUA@mail.gmail.com>
From: Federico Pietro Briata <federicobriata@gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java] openjdk-7-jre was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
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
X-List-Received-Date: Fri, 16 Oct 2015 19:21:43 -0000
Content-Type: text/plain; charset=UTF-8

2015-10-16 16:09 GMT+01:00, Jens Rehsack <rehsack@gmail.com>:
>
>> Am 16.10.2015 um 15:35 schrieb Federico Pietro Briata
>> <federicobriata@gmail.com>:
>>
>> Hi Folks,
>> I'm trying to compile java without x11 and unfortunately also without
>> success..
>>
>> I've added in my local.conf:
>>
>> DISTRO_FEATURES_remove = "x11"
>> # Java build settings
>> PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"
>> PREFERRED_PROVIDER_virtual/javac-native = "ecj-bootstrap-native"
>> PREFERRED_VERSION_openjdk-7-jre = "85b01-2.6.1"
>> PREFERRED_VERSION_icedtea7-native = "2.1.3"
>> PREFERRED_PROVIDER_openjdk-7-jre = "openjdk-7-jre"
>>
>> but I get this error
>>
>> ERROR: Nothing RPROVIDES 'openjdk-7-jre' (but
>> /home/f34389b/yocto/PCM/R5.0/sources/meta-fede/recipes-images/images/fede-java-test.bb
>> RDEPENDS on or otherwise requires it)
>> ERROR: openjdk-7-jre was skipped: missing required distro feature ['x11']
>> (not in DISTRO_FEATURES)
>>
>> Patching those files:
>> meta-java/recipes-core/classpath/classpath.inc
>> meta-java/recipes-core/jamvm/jamvm.inc
>> meta-java/recipes-core/jamvm/jamvm_git.bb
>> meta-java/recipes-core/openjdk/openjdk-common.inc
>> poky/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
>>
>> like this:
>> -REQUIRED_DISTRO_FEATURES = "x11"
>> +#REQUIRED_DISTRO_FEATURES = "x11"
>>
>> seems to be a temporary workaround
>
> Hi Federico,
>
> unfortunately I missed
> https://github.com/rehsack/meta-java/commit/11e30f2bf198bcad91c0d14104fcd8b91255ad69
> when submitting my patchset.
>
> I'm working on some jdk7 native fixes and layer cleanup and will send a new
> patchset later today.
>
> I do not intend to provide jdk7 for cross-compiling support without x11 -
> when you want no-x11, from my point of view, go to jdk8.
>
> Cheers
> --
> Jens Rehsack - rehsack@gmail.com
>
>

Hi Jens,

my machine it's a arm7 Imx6 display less.

I choose jdk7 because I thought was the best for my target, so for you
should I go to jdk8?

Anyway I've compiled jdk7 now, but I'm not sure if I've to use some
specific configuration set for build with no-x11.

thanks
federico

