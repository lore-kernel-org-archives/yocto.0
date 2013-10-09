Return-Path: <jicheu@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B71E0073F
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 08:07:38 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id hj8so898683wib.1
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 08:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Er2ov3rzImByMxIenVwnCstgElcKvkmfOkRhw5WPTeM=;
	b=Bv5ETyTQeuM4R5U49pY6odz+S8TMdC77FSQngUQ4ypjA2aTsBj/N1K2mw+LFLhCtQ0
	OCpD9x45NSc1ux4rG0gOKrc76c4R41EDufAtCrwv8DRPE3/U3bbNs2+JShJy3xdjzavG
	SpiC3Uy4cBIzVnfBoFBsx9KVaHUIpwV9J9sLX3cMrbwJHvcOaNR8Aj4KPDYr7syEamBJ
	Oo0qZ8M/VS4BRUQwNe7Prp6TbiA8LvJKgsBQp4sg2qdmChVs15C8gUpzGVlby7YT9C5z
	1ngru6GDJ5yFJWmVh3PPgllY1M5xijeTXUL46ETBMUb7weU/Y+fJ4RhIco6c/FG+trqD
	GzZQ==
X-Received: by 10.194.219.1 with SMTP id pk1mr7244491wjc.36.1381331257688;
	Wed, 09 Oct 2013 08:07:37 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id jf2sm16205727wic.2.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 09 Oct 2013 08:07:36 -0700 (PDT)
Message-ID: <52557137.3080405@gmail.com>
Date: Wed, 09 Oct 2013 17:07:35 +0200
From: Jean-Charles <jicheu@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <52554271.70306@gmail.com>
	<CAJTo0LbOfVAuzo_XBikdnssxe52OQ-KNbiqq5u1JkBnSJBFZ_Q@mail.gmail.com>
In-Reply-To: <CAJTo0LbOfVAuzo_XBikdnssxe52OQ-KNbiqq5u1JkBnSJBFZ_Q@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dleyna not building
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
X-List-Received-Date: Wed, 09 Oct 2013 15:07:41 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/10/2013 16:59, Burton, Ross wrote:
> On 9 October 2013 12:48, Jean-Charles <jicheu@gmail.com> wrote:
>> Anyone tried to build dleyna recently ? The do_configure invariably fails on
>> dylan (with a very long configure log but nothing obvious.. however a simple
>> "bitbake media-service-upnp" will lead to the same error.
>>
>> I suspect the package is somewhat outdate as I had to change the MD5 to be
>> able to build it:
>>
>> -SRC_URI[md5sum] = "9fc4db84b3459bc77232b24bde48b000"
>> -SRC_URI[sha256sum] =
>> "9cdee47bbbfa3de5aaa5cf3fc9e208ccd97e5079f6d8fa84a6d1f24a1b760237"
>> +SRC_URI[md5sum] = "eb7d58a429184180fdc48330bba9bb45"
>> +SRC_URI[sha256sum] =
>> "979661e4828a23292f05e9b82707d291fe2a63eeddcde0150a2f09c5c060847f"
> That's github re-generating tarballs underneath us - this was fixed in
> meta-oe master by changing  it to do a git clone.  If you're using the
> dylan stable branch you can cherry-pick that commit from master.
>
> Then if you still get problems please paste the full logs, as I built
> it all recently when changing the SRC_URI.
>
> Ross
the issue is with gssdp :

 >> configure: error: Package requirements (gssdp-1.0 >= 0.13.2) were 
not met:
 >> Requested 'gssdp-1.0 >= 0.13.2' but version of gssdp-1.0 is 0.12.2.1

There are both recipes on meta-multimedia, why would it take the older 
one :( ?

