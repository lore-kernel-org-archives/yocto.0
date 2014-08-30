Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AA81E0080C; Fri, 29 Aug 2014 17:01:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43282E0078E
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 17:01:36 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id x19so3649206ier.35
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 17:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wf/JPXUYmXTxfjNg6Muu2mQ7XuUIVT5sJdllMWRzogU=;
	b=V+t07lrpQS65P6RO/oNVlPQd65mTbBdVOZOQ9NQASMw0UG8XE0CBZz2mUCKF2DHdcw
	wBMZHo2et5NDQFVEbvYKogxUECOgA766Hs4mReh8/+05B929g1lZggvj/Qt8MXU58KFD
	4WquRKTZce7EGqRoWAhjMshl5frmpJ9PC/ATfuGW0rp5VPLtKXetItdaA/U1QoqfeL9S
	JnY9XBnz/tq0F7cwE283knu015i60DXrpLF3EH5/CcVpnJ5jnnrsareDKdSGlTecDyaQ
	uaepIp9n1BSy9NKbsdKopavMGEiThuYMTLEChFmZIKsH+7MFAIQG/nOpA9yiHQxzB+4k
	5/ig==
X-Received: by 10.50.21.3 with SMTP id r3mr7904616ige.13.1409356896574; Fri,
	29 Aug 2014 17:01:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.102.67 with HTTP; Fri, 29 Aug 2014 17:01:06 -0700 (PDT)
In-Reply-To: <1409308755.29296.148.camel@ted>
References: <20140828064051.GA13139@haswell> <1409266291.29296.147.camel@ted>
	<CAMKF1spz2KoO6NDSkZwh=V=pkyYi6e7-G0fpka5P2ifbjnNn6w@mail.gmail.com>
	<CAMKF1spj67i2i_50m=oTUpS3x2J=de0UxGf70zLhn-a7c4M3QA@mail.gmail.com>
	<1409308755.29296.148.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 29 Aug 2014 17:01:06 -0700
Message-ID: <CAMKF1sq4NwaFhZCXysdJ53G=3UY2CnHgKZmgpG7H-X=vhG0W9w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] Moving on from eglibc to glibc 2.20
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
X-List-Received-Date: Sat, 30 Aug 2014 00:01:53 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 29, 2014 at 3:39 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Thu, 2014-08-28 at 18:46 -0700, Khem Raj wrote:
>> On Thu, Aug 28, 2014 at 5:41 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> > reproduced. will apprise as I have some fix.
>>
>> OK pushed another patch to the contrib tree that should take care of both
>> xf86-input-synaptics xf86-input-vmmouse
>
> Thanks. I'm having one heck of a problem unentangling all the different
> build failures (from these and other patches) but this one looks like
> glibc:
>
> https://autobuilder.yoctoproject.org/main/builders/poky-tiny/builds/18/steps/BuildImages/logs/stdio
>

Trying to reproduce it locally. Once I have, I will update.

> Cheers,
>
> Richard
>
>
>

