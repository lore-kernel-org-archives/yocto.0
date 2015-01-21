Return-Path: <rapphil@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCE7DE00894; Wed, 21 Jan 2015 05:23:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rapphil[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.44 listed in list.dnswl.org]
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1184E0086E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 05:23:38 -0800 (PST)
Received: by mail-qa0-f44.google.com with SMTP id w8so32869801qac.3
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 05:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gQF0KVYZlcWxJ/wIZ8TCw/ebkQfB/y7yzGrgEZGxnBg=;
	b=nkqpIbGyBeRIwRu6qZuraCiSLdWguBxpkMGL0XzVzwlBAQijVpADteIByVlQgNQvRO
	/D3Me34bxRBNXomXyMN+CczdkoUAiWqqMh2gWZnB4nzZdLAm83Qc81Rq4AtGsaKHV2oE
	PLei4eHo1iH8xeff4MlXnSn4FD8Md/BAlcEEo/uFtE/jOx0mcwmHYyY5u1KQKXayaYbf
	l/wZpYYabhdYkXNzHy/fs4KiJGe+KENtut6q6JLRpt4X4n/i1GR6Udpdcy4TcRgmaU9Q
	1kxrSE4fGE6dlQKyMn0IsA1qq7/Cux3PbuK6A93Gf3MIRaAHdIJAUvPo7K0RMooZY/rO
	kuNg==
MIME-Version: 1.0
X-Received: by 10.140.21.229 with SMTP id 92mr54079437qgl.33.1421846618087;
	Wed, 21 Jan 2015 05:23:38 -0800 (PST)
Received: by 10.140.240.67 with HTTP; Wed, 21 Jan 2015 05:23:38 -0800 (PST)
In-Reply-To: <2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
	<5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhff5-CZRSJaD1t1ppPOOQNrWipF01hAdatWqSkjGVmnVA@mail.gmail.com>
	<2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 21 Jan 2015 11:23:38 -0200
Message-ID: <CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
From: Raphael Philipe <rapphil@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org, Otavio Salvador <otavio@ossystems.com.br>,
	Denys Dmytriyenko <denys@ti.com>
Subject: Re: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Wed, 21 Jan 2015 13:23:44 -0000
Content-Type: text/plain; charset=UTF-8

I was explained about the difference in a different way.

cross generates binary for the host architecture. But the way this
binary is generated depends of the target architecture. Native
generated binaries that do not depend of the target architecture.

Regards,



On Tue, Jan 20, 2015 at 12:44 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tuesday 20 January 2015 12:39:16 Raphael Philipe wrote:
>> On Tue, Jan 20, 2015 at 10:23 AM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>> > On Tuesday 20 January 2015 09:17:49 Raphael Philipe wrote:
>> >> I'm working on a set of recipes that must be configurable to be baked
>> >> in native, nativesdk, cross and target.
>> >>
>> >> I have a bunch of questions concerning this terms. I searched the
>> >> documentation and wasn't able to find a definitive explanation for
>> >> these terms.
>> >>
>> >> I will write some statements bellow about my understanding on these
>> >> terms, and I will ask you to please correct me if I'm wrong or add any
>> >> additional information:
>> >>
>> >> - By default, recipes bake binaries for the target architecture that
>> >> is described in the MACHINE variable in the local.conf
>> >
>> > Correct.
>> >
>> >> - One can use BBCLASSEXTEND = "native nativesdk" to bake binaries for
>> >> the host architecture (native) and for target sdk architecture. The
>> >> target sdk architecture is described in the SDKMACHINE variable and
>> >> the host architecture is the architecture of the machine executing
>> >> bitbake. BBCLASSEXTEND = "native nativesdk" will alow you to bake
>> >> recipes that are "virtual" using the suffix native ( so ${PN}-native)
>> >> and the prefix nativesdk (so nativesdk-${PN}).
>> >
>> > Correct. FYI alternatively you can also "inherit native" or "inherit
>> > nativesdk" to make a recipe specific to either of those classes (in which
>> > case the recipe itself should be named <something>-native or nativesdk-
>> > <something>), however BBCLASSEXTEND is preferred these days.
>> >
>> >> - Recipes that are cross need to inherit cross.bbclass. They are used for
>> >> ????
>> >
>> > Cross tools, i.e. tools that need to run in the native context and produce
>> > some binary output for the target.
>>
>> For u-boot-fw-utils-cross, the binary that you refer is the enviroment
>> variables file of u-boot? In this case, the difference between cross
>> and native is not clear for me.
>
> I'm not sure of the details for this recipe specifically. Perhaps one of the
> people on CC can answer.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

