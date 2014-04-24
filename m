Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE67AE00B75
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 11:01:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3OI14tA024312
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 24 Apr 2014 11:01:04 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 24 Apr 2014 11:01:03 -0700
Message-ID: <53595154.4080302@windriver.com>
Date: Thu, 24 Apr 2014 14:00:52 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <30C2D590D16A5C46ADFE65219103779820B77A65@AZ-US1EXMB03.global.avaya.com>
	<53594AA0.7020603@windriver.com>
	<30C2D590D16A5C46ADFE65219103779820B77AA1@AZ-US1EXMB03.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE65219103779820B77AA1@AZ-US1EXMB03.global.avaya.com>
Subject: Re: Exporting kernel header from patch
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
X-List-Received-Date: Thu, 24 Apr 2014 18:01:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-24 01:52 PM, Vuille, Martin (Martin) wrote:
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: April 24, 2014 1:32 PM
>>
>> On 14-04-24 11:57 AM, Vuille, Martin (Martin) wrote:
>>> I have a custom layer to add patches to my vendor's BSP layer
>>>
>>> (based on Linux 3.4, if it matters) and a .bbappend to list the
>>>
>>> patches.
>>>
>>> One of the patches adds a header, and this header needs to
>>>
>>> be exported to the sysroot.
>>>
>>> I added the following to my .bbappend, based on a discussion
>>>
>>> I found:
>>>
>>> do_install_append() {
>>>
>>>       install -d ${D}${includedir}/linux
>>>
>>>       install -m 644 ${S}/include/linux/uc1698u.h
>>> ${D}${includedir}/linux/uc1698u.h
>>>
>>> }
>>>
>>> It "works" (i.e., the header is installed in the sysroot) but there
>>> must
>>>
>>> be more to it than that because I also get a warning about the header
>>>
>>> being "installed but not shipped in any package".
>>>
>>> What's the correct way to do this?
>>
>> Not answering the question directly, but I can say that kernel's shouldn't be
>> exporting their header files over the sysroot's
>> include/linux/* directory structure, since that is where linux-libc-headers
>> installs and manages the userspace safe headers for the c-library.
>>
>> Sure you are probably installing a new file, and one that doesn't conflict
>> with the existing libc-headers, but as soon as you start working in that
>> directory structure .. you will eventually clobber an existing file.
>>
>> There have been quite a few discussions on this topic over time on the oe-
>> core and yocto lists. Look at the comment in the linux-libc-headers.inc file,
>> and you'll see a note from Richard explaining why this shouldn't be done
>> (searches on the mailing list archives will also find more hits).
>>
>> When you install into the sysroot, the header file should also be in a
>> FILES_<package> as part of your recipe .. and that is why you are seeing the
>> warning. packaging it would remove the warning, but you'll still have the
>> problem I mention above.
>>
>> The right way is for your application to look at the STAGING_KERNEL_DIR,
>> which will have a copy of that same header file.
>>
>> Alternatively, you can stage your header file at a different sysroot location
>> than include/linux/* and have your application look there.
>>
>> I have an open enhancement that I'm doing for yocto 1.7 which automates
>> the alternate header file structure, but doing it explicitly in your recipes will
>> work for now.
>
> Hi Bruce,
>
> Thanks for your response. But I'm afraid I'm not entirely following you. I am
> quite new to Yocto/OE, so I may be missing something fundamental/obvious.
>
> Leaving aside the patch and .bbappend for the moment, presumably it is
> normal for the kernel in the BSP layer to export headers for userland's
> consumption. How is that specified? Where is the FILES_<package> that
> lists those headers?

Actually, in the yocto world, it isn't. At least not in the sense that
you are looking for.

The kernel's source tree is staged for consumption by other packages
in the sysroot, accessible via the variable STAGING_KERNEL_DIR. That's
the first choice for an application to look for kernel header files.

The sysroots /usr/include/linux/* is strictly for the linux-libc-headers
package, and nothing else should be installing into that structure.

If you do need to export something to the sysroot, that isn't already
in the libc-headers, and you can't use the STAGING_KERNEL_DIR, then you
should be installing it to another directory structure like: 
/usr-alt/include/linux/*
and have your applications look there. You'd export and install them 
similarly
to what you are doing, and you'd need to package them similarly.

i.e. in the recipe:

PACKAGES += " kernel-extra-headers"
FILES_kernel-extra-headers = "/usr-alt/linux/*'

And you'd get the header in the sysroot, and avoid the QA warning about
it not being packaged.

Bruce



>
> MV
>


