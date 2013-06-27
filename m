Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C670EE0145C
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 22:24:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5R5OHmw007721
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Jun 2013 22:24:17 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Wed, 26 Jun 2013 22:24:17 -0700
Message-ID: <51CBCC7C.3080107@windriver.com>
Date: Thu, 27 Jun 2013 01:24:12 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: Bryan Evenson <bevenson@melinkcorp.com>
References: <91586D499ADFD74FBCFB8425266A5DE4013B91292051@pluto.melinkcorp.local>
	<51CBB4A8.80200@windriver.com>
In-Reply-To: <51CBB4A8.80200@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel patch is unpacked but not applied
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
X-List-Received-Date: Thu, 27 Jun 2013 05:24:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-26 11:42 PM, Bruce Ashfield wrote:
> On 13-06-26 11:08 PM, Bryan Evenson wrote:
>> I am building a custom Linux kernel under poky-dylan and I am having
>> an issue with patches being unpacked but not applied.  I have two
>> layers that have a bbappend file for the kernel.  Generally, this is
>> what each bbappend file looks like:
>>
>> #First .bbappend
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> COMPATIBLE_MACHINE_mach1 = "mach1"
>> COMPATIBLE_MACHINE_mach2 = "mach2"
>> SRC_URI_append_mach2 = " file://${MACHINE}/${KBRANCH}/0001-blah.patch \
>>      file://${MACHINE}/${KBRANCH}/0002-blah.patch \
>>      "
>>
>> # Increment the recipe revision
>> PRINC := "${@int(PRINC) + 1}"
>>
>> # Second .bbappend
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> COMPATIBLE_MACHINE_mach1 = "mach1"
>> COMPATIBLE_MACHINE_mach2 = "mach2"
>> SRC_URI_append_mach2 = " file://${MACHINE}/${KBRANCH}/0003-blah.patch \
>>      file://${MACHINE}/${KBRANCH}/0004-blah.patch \
>>      "
>>
>> # Increment the recipe revision
>> PRINC := "${@int(PRINC) + 1}"
>>
>> All of the patch files are properly unpacked, but the last two patches
>> are not being applied.  If I open the devshell for the kernel (bitbake
>> -c devshell linux-yocto-custom) I can see in the git log that the
>> first patch set was applied.  The second patch set exists but is not
>> applied.  If I call "guilt push" repeatedly from the devshell, the
>> patches from the second set are cleanly applied.  My guess is that
>> something doesn't like the second SRC_URI_append call.  Any ideas on
>> how to fix it?
>
> It shouldn't matter. Let me try and set up something that reproduces the
> problem and get back to you.
>
> Strangely .. I'm actively debugging something similar here already, so I
> may be able to re-use it.
>
> Stay tuned.
>
> Out of curiosity, have you tried this on master ?

So I tried to recreate this on master, and things worked for me. Which
I figured would happen, since this will make it harder to fix ... and
that's how it always works out.

I created two layers, with four patches to the main linux Makefile. They
all add something to the description:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " file://0001-makefile-one.patch \
                    file://0002-makefile-two.patch"
 
 

PRINC := "${@int(PRINC) + 1}"

and


FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " file://0003-makefile-three.patch \
                    file://0004-makefile-four.patch"
 
 

PRINC := "${@int(PRINC) + 1}"

.. and alas, the all were applied:

 > grep NAME Makefile
NAME = Displaced Humerus Anterior one two three four

....

Can you send me the exact names of your patches ? I'm wondering if
an already applied check is triggering and preventing the auto push.

Bruce

>
> Cheers,
>
> Bruce
>
>>
>> Thanks,
>> Bryan
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


