Return-Path: <caiortp@gmail.com>
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F34E01541
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 06:22:30 -0700 (PDT)
Received: by mail-lb0-f171.google.com with SMTP id v5so1004897lbc.16
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 06:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kdjxUcGTVE+ccvkepuki2riJZpBirOCrstLy7MeArBE=;
	b=0J21rbhtMxEX9bcEBNEAik0+PNIRbU0kjZh5Z/oZIf/kx4VyR+Y9CylLkUeoLgdSnG
	DooPi2Zm0jM3VCqpnkUTqHpaOqHRm1txlt8c28QM9x7ADPWhwlVXMVxcBKvRsYSZz3TF
	IpQtNyD5Bs7uIPzfolwThWWAFQxRXGY5bxueqaP3KNgkD9R5MsxdV/HNysayS3XY8g7a
	tHcETqJvko2cYsCfu03cbc5heVdQUH/zvxhFm9Ac5FgIOzKcUU50XKbFXCYrKwmJ/OLh
	5X06ILf+hHSBuB+0kD2bXCh3nRfE87l8+67cACHt3cFbeDUeoWOoRkj9S/268nrWNqD8
	fXIw==
MIME-Version: 1.0
X-Received: by 10.112.190.69 with SMTP id go5mr8271309lbc.130.1370265748536;
	Mon, 03 Jun 2013 06:22:28 -0700 (PDT)
Received: by 10.112.63.138 with HTTP; Mon, 3 Jun 2013 06:22:28 -0700 (PDT)
In-Reply-To: <CADkTA4NX7T8GGK2FJtknB4dnxFBOFRdKB-NSVEziUMBtPX4ocw@mail.gmail.com>
References: <CAJqtCyZR0+LAyymBB7Nv28Cv+m9gQnaVqNYFFbxvh5qvovJXcA@mail.gmail.com>
	<CAJqtCybqZHCvuvXNVdnOGS6_oxKBHYJcj1OhrVoMiM6Q1Qv60Q@mail.gmail.com>
	<51A6C870.8030404@windriver.com> <3685099.fniMcpLHSL@helios>
	<CADkTA4NX7T8GGK2FJtknB4dnxFBOFRdKB-NSVEziUMBtPX4ocw@mail.gmail.com>
Date: Mon, 3 Jun 2013 10:22:28 -0300
Message-ID: <CAJqtCybdK85XcrhAKQjdgp7sikBfMsfJqxp7DX5QMBJx-deTag@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Problem to compile kernel (enable nfsd)
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
X-List-Received-Date: Mon, 03 Jun 2013 13:22:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thank you guys!

Now Works!

---
 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 meta/conf/machine/include/qemu.inc   |    3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf
b/meta-yocto/conf/distro/poky-lsb.conf
index 53d088f..355bd50 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -7,6 +7,6 @@ DISTRO_FEATURES_append = " pam largefile opengl"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"

 # Ensure the kernel nfs server is enabled
-KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
+KERNEL_FEATURES_append_pn_linux_yocto = " features/nfsd/nfsd-enable.scc"


diff --git a/meta/conf/machine/include/qemu.inc
b/meta/conf/machine/include/qemu.inc
index 7111926..4a50b38 100644
--- a/meta/conf/machine/include/qemu.inc
+++ b/meta/conf/machine/include/qemu.inc
@@ -25,4 +25,5 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"

 # Provide the nfs server kernel module for all qemu images
-KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
+KERNEL_FEATURES_append_pn_linux-yocto = " features/nfsd/nfsd-enable.scc"
+


2013/5/30 Bruce Ashfield <bruce.ashfield@gmail.com>:
> On Thu, May 30, 2013 at 5:03 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Wednesday 29 May 2013 23:33:04 Bruce Ashfield wrote:
>>> On 13-05-29 3:05 PM, Caio wrote:
>>> > bitbake -e -c kernel_configme linux-yocto-custom | grep KERNEL_FEATURES
>>> > # $KERNEL_FEATURES [2 operations]
>>> > KERNEL_FEATURES="features/nfsd/nfsd-enable.scc"
>>>
>>> Aha. That's the problem with cutting and pasting patches, I missed this
>>> part of the fix:
>>>
>>> diff --git a/meta/conf/machine/include/qemu.inc
>>> b/meta/conf/machine/include/qemu.inc
>>> index 7111926..b303191 100644
>>> --- a/meta/conf/machine/include/qemu.inc
>>> +++ b/meta/conf/machine/include/qemu.inc
>>> @@ -25,4 +25,4 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>>   EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
>>>
>>>   # Provide the nfs server kernel module for all qemu images
>>> -KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
>>> +KERNEL_FEATURES-pn_linux-yocto_append = " features/nfsd/nfsd-enable.scc"
>>
>> I'm afraid this is not correct either.
>>
>> You need pn- instead of pn_, and I think in terms of ordering you also need
>> _append_pn-linux-yocto instead of _pn-linux-yocto_append.
>
> Heh. Well that wasn't the patch, that was me typing it in at 1AM based on
> a modified line from the original :) My laptop with the real change decided
> to drop of the network.
>
> Bruce
>
>>
>> I'd really appreciate the final fix for this as soon as possible so I can
>> integrate it into the dylan branch for the 1.4.1 release.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
----------------------------------------------
Caio Pereira

