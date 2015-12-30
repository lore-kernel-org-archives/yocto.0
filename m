Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC8D9E0086B; Wed, 30 Dec 2015 10:34:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
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
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85C93E00321
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 10:34:41 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id ph11so184940799igc.1
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 10:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=yQiQkMQfT1lmzEO2W70TSf/VmOhTN2ez0tie7Wg5EQk=;
	b=WI1CFxmOc4yksDRbQkothH9BiiyyytBNxIPJoNkWlUQPuFNq7+E4ZoVWsqkM4Q4+Vu
	aAoSDFbiWJ2UcbeCVwj9W0R4+ptEyuhx0DiWRuCSAf77OlTTB5D3DbHgiOvJ8ugUA3Rl
	zC7llhYPiAN1U0fl3k9potKBA0WWUS/cGG1Ur3galk57sjeS1Hpq+FgAKTBmSjGiLrcw
	PxFhpwFBMmCrLyHJS1qBHvmB8IXfs6D/yEhwKAXaexAMIwAPdIr/JtWKutZizgnVRMrS
	4RKVUd7gd1A6UHOEuXHUFjQWIpDFgdQWxoA/YDSVNlpm29Qmld2HF0ctojxKx0hARNga
	tRTQ==
X-Received: by 10.50.79.196 with SMTP id l4mr66567303igx.77.1451500481543;
	Wed, 30 Dec 2015 10:34:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Wed, 30 Dec 2015 10:34:12 -0800 (PST)
In-Reply-To: <CAFzUWGn5zpLzH3QrUMxHD49G0RG+0Mor=demKXfNSyEc-ktOBw@mail.gmail.com>
References: <CAFzUWG=iGCKx=crQv_TvMFBXDUytgv2Aq0FTH+0ug5veV1PGKg@mail.gmail.com>
	<CAMKF1srrsm9YVJvaZi1Z38X0LQYvuwVFoHeJNrYwDs0mJN1PcA@mail.gmail.com>
	<CAFzUWGm2Np9EWeAMgyt+bR4bEkU0A8+3BiXHAosxOnAvPXpf6A@mail.gmail.com>
	<CAMKF1so4qVAcmcMThx7n7vxdVkY4pEZ5mJXwcWhVwKV-eTQPLA@mail.gmail.com>
	<CAFzUWGn5zpLzH3QrUMxHD49G0RG+0Mor=demKXfNSyEc-ktOBw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Dec 2015 10:34:12 -0800
Message-ID: <CAMKF1sq1JkXLAYkbu+y_ZNPWrtJp4SQFH5bPW8uH+BNUBGKbsw@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to add a recipe for ROOT
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
X-List-Received-Date: Wed, 30 Dec 2015 18:34:45 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 30, 2015 at 10:27 AM, Giordon Stark <kratsg@gmail.com> wrote:
> I'll look at pkg-config examples. How do I fix the llvm issue though? I
> don't know enough about bitbake to fix that.

disable, internal build _somehow_
then add DEPENDS += "llvm3" to recipe
>
> Giordon
>
> On Wed, Dec 30, 2015 at 1:26 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> you mostly have one of these issues
>>
>> | ERROR:
>> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>> should not be used, use an alternative such as pkg-config
>> | ERROR:
>> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>> should not be used, use an alternative such as pkg-config
>> | ERROR:
>> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>> should not be used, use an alternative such as pkg-config
>> | ERROR:
>> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>> should not be used, use an alternative such as pkg-config
>>
>> so you need to replace the use of pcre-config with pkg-config, there
>> are example how it has been done for some other recipes in OE
>>
>> second problem seems to be that its trying to compile its own version
>> of llvm and thats failing because the native compiler its finding does
>> not support c++11 or atleast the config tests think that way. Again
>> this components build system needs to fix that. You might be better
>> off using llvm provided bt meta-oe instead of internal version.
>>
>> On Wed, Dec 30, 2015 at 9:35 AM, Giordon Stark <kratsg@gmail.com> wrote:
>> > https://gist.github.com/anonymous/adec2839deecce33702a
>> >
>> > Giordon
>> >
>> > On Wed, Dec 23, 2015 at 9:25 PM Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> can you post output of root/6.04.12-r0/build/CMakeFiles/CMakeError.log
>> >>
>> >> On Wed, Dec 9, 2015 at 12:00 PM, Giordon Stark <kratsg@gmail.com>
>> >> wrote:
>> >> > Hi all,
>> >> >
>> >> > I'm trying to add a recipe for ROOT (from CERN) but I'm running into
>> >> > various
>> >> > issues with just trying to get compilers working.
>> >> >
>> >> > Current recipe:
>> >> >
>> >> >
>> >> > https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb
>> >> >
>> >> > Current log: https://gist.github.com/kratsg/cd3184a167676eb69067
>> >> >
>> >> > Note that the goal is to have the bare-minimum with PyROOT (enable
>> >> > python
>> >> > support). So I'm following:
>> >> > - https://root.cern.ch/building-root
>> >> > - https://root.cern.ch/build-prerequisites
>> >> >
>> >> > Thanks,
>> >> >
>> >> > Giordon
>> >> >
>> >> > --
>> >> > _______________________________________________
>> >> > yocto mailing list
>> >> > yocto@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >> >

