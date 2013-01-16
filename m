Return-Path: <autif.mlist@gmail.com>
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8621DE00527
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 10:56:00 -0800 (PST)
Received: by mail-lb0-f169.google.com with SMTP id m4so29774lbo.14
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 10:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=l7yKwtQSTx8jB76IHRQL3uNMaUUk0btMdJB0xDoZzV0=;
	b=QZijp5HhI7ToBP4v7GXVz+bFfx9M7SQV43uqId6lA4kVajBd+xWR8MoAKIW+GYbUT1
	ES4OZOFQ3Rbg0SldBL4Xz9y6jtmgHmTHq96vOtvOj26smnas3ZmIh70KcgRAhMiW8XSR
	kPCNcN4w3StrErawI+RBVXqJBGc8JVmAIlPfkx6ks3YkEb2HoQjtZI/TM5oVuSs7iEoO
	PVucHSzrkRIym8rEwUfDqVmIA7uXSIfhaCZskRsgLh1Uc4SMhuRL2iITHwaBg7FVfhHd
	0YICFvyksK7od4ekVyKo52zaF36ZNmqN9rUh6T1enLr/Os1Ub+o/xBqBi9W0RiniMNNC
	4EYA==
MIME-Version: 1.0
X-Received: by 10.112.9.104 with SMTP id y8mr1080305lba.89.1358362559054; Wed,
	16 Jan 2013 10:55:59 -0800 (PST)
Received: by 10.112.61.74 with HTTP; Wed, 16 Jan 2013 10:55:58 -0800 (PST)
In-Reply-To: <50F6C5F0.1050605@bsmucker.eu.org>
References: <7E680CB2A76BB8438D08CF13C09FC53A5989BCAB@ORSMSX101.amr.corp.intel.com>
	<50F5C999.2020307@bsmucker.eu.org>
	<CA+gsK-o81MjUVKjGBbbat0EGOm_Z+2ow+1rMvZ8Jdik9g++3JA@mail.gmail.com>
	<50F5ECE7.2090503@bsmucker.eu.org>
	<CADzUK1+AqHq0PfVa6GwyefBSAjP=iaB=NAKLB9LwSkXT9RHhEQ@mail.gmail.com>
	<50F6C5F0.1050605@bsmucker.eu.org>
Date: Wed, 16 Jan 2013 13:55:58 -0500
Message-ID: <CADzUK1J8JW716dZJ4xic1m05h6g7yZV_=TWfovWjvsBdY6PBKA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Brian Smucker <bds@bsmucker.eu.org>
Cc: yocto@yoctoproject.org
Subject: Re: Busybox still old version: Still looking for a clear understanding of an old mystery.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Jan 2013 18:56:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 16, 2013 at 10:23 AM, Brian Smucker <bds@bsmucker.eu.org> wrote:
> Hi,
>
> The version of busybox is the same.  I've just temporarily done a bitbake -c
> menuconfig to change one of the options, recompiled using the custom config
> that's generated, and now I want to force its inclusion into
> core-image-minimal.

I see. I think that is a bit unorthodox. (Mostly because I have never
tried it. Is it even supposed to work like you describe? I suppose
not. But that aside ...)

If I were doing this, I would create a busybox bbappend in my meta
layer and override the danny stock do_prepare_config() (in
meta/recipes-core/busybox/busybox.inc)

 96 do_prepare_config () {
 97         sed -e 's#@DATADIR@#${datadir}#g' \
 98                 < ${WORKDIR}/defconfig > ${S}/.config
 99         sed -i -e '/CONFIG_STATIC/d' .config
100         echo "# CONFIG_STATIC is not set" >> .config
101         for i in 'CROSS' 'DISTRO FEATURES'; do echo "### $i"; done >> \
102                 ${S}/.config
103         sed -i -e '${configmangle}' ${S}/.config
104         if test ${DO_IPv4} -eq 0 && test ${DO_IPv6} -eq 0; then
105           # disable networking applets
106           mv ${S}/.config ${S}/.config.oe-tmp
107           awk 'BEGIN{net=0}
108           /^# Networking Utilities/{net=1}
109           /^#$/{if(net){net=net+1}}
110           {if(net==2&&$0 !~ /^#/&&$1){print("# "$1" is not
set")}else{print}}' \
111                   ${S}/.config.oe-tmp > ${S}/.config
112         fi
113 }

> Thanks,
>
> Brian
>
>
> On 1/16/2013 6:13 AM, Autif Khan wrote:
>>
>> On Tue, Jan 15, 2013 at 6:57 PM, Brian Smucker <bds@bsmucker.eu.org>
>> wrote:
>>>
>>> Hi Rudolf,
>>>
>>>
>>> On 1/15/2013 3:28 PM, Rudolf Streif wrote:
>>>>
>>>>
>>>> Brian,
>>>>
>>>> What are you exactly referring to as "new version"? The package version
>>>> that bitbake builds is defined by the recipe, through the version
>>>> designation in the recipe's file name or through explicitly setting PV.
>>>>
>>>> I think what you are trying to do is to modify the busybox configuration
>>>> and then recompile and package. Bitbake will not automatically recompile
>>>> after menuconfig. Menuconfig does not invslidate the shared state cache.
>>>> Try
>>>> this:
>>>>
>>>> bitbake -c menuconfig busybox
>>>> bitbake -c -f compile busybox
>>>> bitbake busybox
>>>>
>>>>
>>> So I have done the above.  That is not the question.  Busybox compiles
>>> fine
>>> and the new unstripped busybox is in the
>>>
>>> .../yocto/tmp/work/armv4t-poky-linux-gnueabi/busybox-1.20.2-r2/busybox-1.20.2/
>>
>> What is the new version of busybox?
>>
>> What is the full filename of the new recipe that you created to
>> compile a new version of busybox? For example the old one is
>> busybox_1.20.2.bb (in meta/recipes-core/busybox)
>>
>> Also, can you please paste the .bb file in the email
>>
>>> My question is that after compiling busybox, I do
>>>
>>> bitbake -c cleansstate core-image-minimal
>>> bitbake core-image-minimal
>>>
>>> expecting that the core image generated will contain the new busybox.  It
>>> does not, it contains a busybox copy that was compiled days ago, not the
>>> custom one I just compiled.
>>>
>>> Why is this?  How can I force the bitbake to include the newly-compiled
>>> busybox into my minimal image?
>>>
>>>
>>> Thanks,
>>>
>>> Brian
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
>

