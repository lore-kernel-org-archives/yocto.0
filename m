Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A6CAE0030F
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 14:11:14 -0800 (PST)
Received: from mail-tul01m020-f180.google.com ([209.85.214.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 26 Jan 2012 14:11:13 -0800
Received: by obbuo19 with SMTP id uo19so1079252obb.25
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 14:11:13 -0800 (PST)
Received: by 10.50.189.134 with SMTP id gi6mr4496466igc.18.1327615872926;
	Thu, 26 Jan 2012 14:11:12 -0800 (PST)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id l35sm5491671ibj.0.2012.01.26.14.11.11
	(version=SSLv3 cipher=OTHER); Thu, 26 Jan 2012 14:11:12 -0800 (PST)
Message-ID: <4F21CF79.5060909@intel.com>
Date: Thu, 26 Jan 2012 14:11:05 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2182E2.2030101@gmail.com> <4F21A1B4.60305@intel.com>
	<4F21C66C.408@gmail.com> <4F21C7E4.3070102@intel.com>
	<4F21CDDB.1040106@gmail.com>
In-Reply-To: <4F21CDDB.1040106@gmail.com>
Subject: Re: understanding recipes
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
X-List-Received-Date: Thu, 26 Jan 2012 22:11:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2012 02:04 PM, jfabernathy wrote:
> On 01/26/2012 04:38 PM, Scott Garman wrote:
>> On 01/26/2012 01:32 PM, jfabernathy wrote:
>>> On 01/26/2012 01:55 PM, Scott Garman wrote:
>>>> On 01/26/2012 08:44 AM, jfabernathy wrote:
>>>>> I'm trying to understand the concept of creating a recipe and
>>>>> having it
>>>>> included in the build I do.
>>>>>
>>>>> For example, suppose I want to create the
>>>>> meta-intel/meta-cedartrail BSP
>>>>> with the core-image-minimal image, but I wanted to include hello world
>>>>> as shown in 3.1.2 Autotooled Package section of the Poky reference
>>>>> Manual.
>>>>>
>>>>> Where do I put the recipe file? I'm guessing a recipe-jfa directory at
>>>>> the same level as the meta-cedartrail recipe-core, recipe-kernel,
>>>>> recipe-graphic, recipe-bsp?
>>>>
>>>> Hi Jim,
>>>>
>>>> The best way to do this is to create your own layer, and keep all of
>>>> your customizations there.
>>>>
>>>> You'd put this in a directory, say meta-jfa with something like the
>>>> following:
>>>>
>>>> meta-jfa/
>>>> meta-jfa/conf/layer.conf
>>>> meta-jfa/recipes-jfa/helloworld/helloworld.bb
>>>>
>>>> where your layer.conf file would look like:
>>>>
>>>> # We have a conf and classes directory, add to BBPATH
>>>> BBPATH := "${BBPATH}:${LAYERDIR}"
>>>>
>>>> # We have a packages directory, add to BBFILES
>>>> BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>>> ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>>
>>>> BBFILE_COLLECTIONS += "jfa"
>>>> BBFILE_PATTERN_jfa := "^${LAYERDIR}/"
>>>> BBFILE_PRIORITY_jfa = "5"
>>>>
>>>> Then point your build's bblayers.conf file to include the path to your
>>>> meta-jfa/ directory.
>>>>
>>>>>
>>>>> I'm also assuming that helloworld.bb file would contain:
>>>>>
>>>>> DESCRIPTION = "GNU Helloworld application"
>>>>> SECTION = "examples"
>>>>> LICENSE = "GPLv2+"
>>>>> LIC_FILES_CHKSUM =
>>>>> "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
>>>>> PR = "r0"
>>>>>
>>>>> SRC_URI = "${GNU_MIRROR}/hello/hello-${PV}.tar.gz"
>>>>>
>>>>> inherit autotools gettext
>>>>>
>>>>>
>>>>> So where do the values of ${GNU_MIRROR|, and ${PV} get set correctly?
>>>>
>>>> Those examples are defined in the bitbake classes you have in your
>>>> base layers.
>>>>
>>>>> And what does the following line do or require me to do:
>>>>>
>>>>> LIC_FILES_CHKSUM =
>>>>> "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
>>>>
>>>> This was answered in another post.
>>>>
>>>>> Is this all that is needed to get helloworld put into /usr/bin so
>>>>> it can
>>>>> be executed at the command line when the image is booted?
>>>>
>>>> You'd also need to add the helloworld package to your image file. The
>>>> simplest way to do this is to add EXTRA_IMAGE_FEATURES += "helloworld"
>>>> in your build's local.conf file.
>>>>
>>>> I think the above should be accurate enough w/o testing it myself.
>>>>
>>> I got the layer created like you said, but the test had a fetch problem
>>> and it just locked up there. Had to control-C out of it. Console below:
>>>
>>> jim@ubuntu-x64:/build/mycdv-minimal$ bitbake helloworld
>>> Loading cache: 100%
>>> |###########################################################| ETA:
>>> 00:00:00
>>> Loaded 1037 entries from dependency cache.
>>>
>>> OE Build Configuration:
>>> BB_VERSION = "1.13.3"
>>> TARGET_ARCH = "i586"
>>> TARGET_OS = "linux"
>>> MACHINE = "mycdv"
>>> DISTRO = "poky"
>>> DISTRO_VERSION = "1.1"
>>> TUNE_FEATURES = "m32 core2"
>>> TARGET_FPU = ""
>>> meta
>>> meta-yocto = "edison:adcf8bf7b52460b94998438e8c2bf854cdec0a80"
>>> meta-mycdv = "edison:34478f24de65dd8de8a4c8b913a1458d82dac1fa"
>>> meta-jfa = "edison:adcf8bf7b52460b94998438e8c2bf854cdec0a80"
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>> NOTE: Preparing runqueue
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> NOTE: Running task 514 of 693 (ID: 4,
>>> /home/jim/poky/meta-jfa/recipes-jfa/helloworld/helloworld.bb, do_fetch)
>>> NOTE: package helloworld-1.0-r0: task do_fetch: Started
>>> WARNING: Fetcher failure for URL: 'None'. Fetch command export
>>> HOME="/home/jim"; export SSH_AGENT_PID="1413"; export
>>> SSH_AUTH_SOCK="/tmp/keyring-2QW6yC/ssh"; export
>>> GIT_CONFIG="/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/etc/gitconfig";
>>>
>>> export
>>> PATH="/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/mycdv-minimal/tmp/sysroots/mycdv/usr/bin/crossscripts:/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/sbin:/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/bin:/build/mycdv-minimal/tmp/sysroots/x86_64-linux/sbin:/build/mycdv-minimal/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts";
>>>
>>> /usr/bin/env wget -t 5 -q --passive-ftp --no-check-certificate -P
>>> /home/jim/yocto-downloads 'ftp://ftp.gnu.org/gnu/hello/hello-1.0.tar.gz'
>>> failed with signal 8, output:
>>>
>>> I don't see 1.0.tar on the ftp site. How do I control this?
>>
>> If you look in:
>>
>> ftp://ftp.gnu.org/gnu/hello/
>>
>> you'll see which versions are available. Rename your recipe filename
>> to reflect the version you wish to use, for example helloworld_2.7.bb
>>
>> The part of the filename after the underscore is what will get
>> interpolated into ${PV}.
>>
>> Scott
>>
> Now I have gotten by the fetching but the license file information in
> the .bb file from the example is incorrect. I can't see from the
> Reference manual License section enough information for me to create
> that line in the .bb file. What is the process to figure this out?

In this case, the LIC_FILES_CHKSUM is storing the md5sum of the COPYING 
file, which is stored in the top-level directory of the extracted sources.

So manually download the hello version you are trying to use, extract 
the tarball locally, and run md5sum against the COPYING file. Then 
update the LIC_FILES_CHKSUM field with that new md5 checksum.

This is a common process we have to go through when upgrading recipes, 
so you're getting a taste of what working with the distro/metadata team 
is like. :)

One more thing - when LIC_FILES_CHKSUM changes, you should always verify 
that the license for the sources haven't changed (in this case GPL v2 or 
later). If it did change, you'd also need to change the LICENSE field in 
the recipe to reflect the new license. LIC_FILES_CHKSUM is a step we 
added so we don't miss license changes.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

