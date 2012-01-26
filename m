Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B69DEE00592
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 15:44:09 -0800 (PST)
Received: by qauh8 with SMTP id h8so5453qau.14
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 15:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=d7KMaHASSwvy3Z7PdS0GaEEaS38bt1zioZ0LIAcuchE=;
	b=qmqBDFrO+6uEMZqTS7FnG9yk7qfK7EGdvfXlpT1oNggbDEubpoRYGKvPz0XkPbqD9w
	/8f1V5CcwNuAfJVJdN2eJvgQSfydcPj1mVRgXIB9OpeSR9ET4bg0XyiuHcJ/Sm2aBzg/
	Hv6yEsfFLUmB8pFqYLTq7kNrBobP91qi2VY84=
Received: by 10.224.17.140 with SMTP id s12mr5472940qaa.46.1327621448853;
	Thu, 26 Jan 2012 15:44:08 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	g9sm11227481qad.16.2012.01.26.15.44.06 (version=SSLv3 cipher=OTHER);
	Thu, 26 Jan 2012 15:44:07 -0800 (PST)
Message-ID: <4F21E547.9080708@gmail.com>
Date: Thu, 26 Jan 2012 18:44:07 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2182E2.2030101@gmail.com> <4F21A1B4.60305@intel.com>
	<4F21C66C.408@gmail.com> <4F21C7E4.3070102@intel.com>
	<4F21CDDB.1040106@gmail.com> <4F21CF79.5060909@intel.com>
	<4F21D5C3.5030904@mlbassoc.com>
In-Reply-To: <4F21D5C3.5030904@mlbassoc.com>
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
X-List-Received-Date: Thu, 26 Jan 2012 23:44:10 -0000
Content-Type: multipart/alternative;
	boundary="------------070406030709020401020406"

--------------070406030709020401020406
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2012 05:37 PM, Gary Thomas wrote:
> On 2012-01-26 15:11, Scott Garman wrote:
>> On 01/26/2012 02:04 PM, jfabernathy wrote:
>>> On 01/26/2012 04:38 PM, Scott Garman wrote:
>>>> On 01/26/2012 01:32 PM, jfabernathy wrote:
>>>>> On 01/26/2012 01:55 PM, Scott Garman wrote:
>>>>>> On 01/26/2012 08:44 AM, jfabernathy wrote:
>>>>>>> I'm trying to understand the concept of creating a recipe and
>>>>>>> having it
>>>>>>> included in the build I do.
>>>>>>>
>>>>>>> For example, suppose I want to create the
>>>>>>> meta-intel/meta-cedartrail BSP
>>>>>>> with the core-image-minimal image, but I wanted to include hello 
>>>>>>> world
>>>>>>> as shown in 3.1.2 Autotooled Package section of the Poky reference
>>>>>>> Manual.
>>>>>>>
>>>>>>> Where do I put the recipe file? I'm guessing a recipe-jfa 
>>>>>>> directory at
>>>>>>> the same level as the meta-cedartrail recipe-core, recipe-kernel,
>>>>>>> recipe-graphic, recipe-bsp?
>>>>>>
>>>>>> Hi Jim,
>>>>>>
>>>>>> The best way to do this is to create your own layer, and keep all of
>>>>>> your customizations there.
>>>>>>
>>>>>> You'd put this in a directory, say meta-jfa with something like the
>>>>>> following:
>>>>>>
>>>>>> meta-jfa/
>>>>>> meta-jfa/conf/layer.conf
>>>>>> meta-jfa/recipes-jfa/helloworld/helloworld.bb
>>>>>>
>>>>>> where your layer.conf file would look like:
>>>>>>
>>>>>> # We have a conf and classes directory, add to BBPATH
>>>>>> BBPATH := "${BBPATH}:${LAYERDIR}"
>>>>>>
>>>>>> # We have a packages directory, add to BBFILES
>>>>>> BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>>>>> ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>>>>
>>>>>> BBFILE_COLLECTIONS += "jfa"
>>>>>> BBFILE_PATTERN_jfa := "^${LAYERDIR}/"
>>>>>> BBFILE_PRIORITY_jfa = "5"
>>>>>>
>>>>>> Then point your build's bblayers.conf file to include the path to 
>>>>>> your
>>>>>> meta-jfa/ directory.
>>>>>>
>>>>>>>
>>>>>>> I'm also assuming that helloworld.bb file would contain:
>>>>>>>
>>>>>>> DESCRIPTION = "GNU Helloworld application"
>>>>>>> SECTION = "examples"
>>>>>>> LICENSE = "GPLv2+"
>>>>>>> LIC_FILES_CHKSUM =
>>>>>>> "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
>>>>>>> PR = "r0"
>>>>>>>
>>>>>>> SRC_URI = "${GNU_MIRROR}/hello/hello-${PV}.tar.gz"
>>>>>>>
>>>>>>> inherit autotools gettext
>>>>>>>
>>>>>>>
>>>>>>> So where do the values of ${GNU_MIRROR|, and ${PV} get set 
>>>>>>> correctly?
>>>>>>
>>>>>> Those examples are defined in the bitbake classes you have in your
>>>>>> base layers.
>>>>>>
>>>>>>> And what does the following line do or require me to do:
>>>>>>>
>>>>>>> LIC_FILES_CHKSUM =
>>>>>>> "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
>>>>>>
>>>>>> This was answered in another post.
>>>>>>
>>>>>>> Is this all that is needed to get helloworld put into /usr/bin so
>>>>>>> it can
>>>>>>> be executed at the command line when the image is booted?
>>>>>>
>>>>>> You'd also need to add the helloworld package to your image file. 
>>>>>> The
>>>>>> simplest way to do this is to add EXTRA_IMAGE_FEATURES += 
>>>>>> "helloworld"
>>>>>> in your build's local.conf file.
>>>>>>
>>>>>> I think the above should be accurate enough w/o testing it myself.
>>>>>>
>>>>> I got the layer created like you said, but the test had a fetch 
>>>>> problem
>>>>> and it just locked up there. Had to control-C out of it. Console 
>>>>> below:
>>>>>
>>>>> jim@ubuntu-x64:/build/mycdv-minimal$ bitbake helloworld
>>>>> Loading cache: 100%
>>>>> |###########################################################| ETA:
>>>>> 00:00:00
>>>>> Loaded 1037 entries from dependency cache.
>>>>>
>>>>> OE Build Configuration:
>>>>> BB_VERSION = "1.13.3"
>>>>> TARGET_ARCH = "i586"
>>>>> TARGET_OS = "linux"
>>>>> MACHINE = "mycdv"
>>>>> DISTRO = "poky"
>>>>> DISTRO_VERSION = "1.1"
>>>>> TUNE_FEATURES = "m32 core2"
>>>>> TARGET_FPU = ""
>>>>> meta
>>>>> meta-yocto = "edison:adcf8bf7b52460b94998438e8c2bf854cdec0a80"
>>>>> meta-mycdv = "edison:34478f24de65dd8de8a4c8b913a1458d82dac1fa"
>>>>> meta-jfa = "edison:adcf8bf7b52460b94998438e8c2bf854cdec0a80"
>>>>>
>>>>> NOTE: Resolving any missing task queue dependencies
>>>>> NOTE: Preparing runqueue
>>>>> NOTE: Executing SetScene Tasks
>>>>> NOTE: Executing RunQueue Tasks
>>>>> NOTE: Running task 514 of 693 (ID: 4,
>>>>> /home/jim/poky/meta-jfa/recipes-jfa/helloworld/helloworld.bb, 
>>>>> do_fetch)
>>>>> NOTE: package helloworld-1.0-r0: task do_fetch: Started
>>>>> WARNING: Fetcher failure for URL: 'None'. Fetch command export
>>>>> HOME="/home/jim"; export SSH_AGENT_PID="1413"; export
>>>>> SSH_AUTH_SOCK="/tmp/keyring-2QW6yC/ssh"; export
>>>>> GIT_CONFIG="/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/etc/gitconfig"; 
>>>>>
>>>>>
>>>>> export
>>>>> PATH="/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/mycdv-minimal/tmp/sysroots/mycdv/usr/bin/crossscripts:/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/sbin:/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/bin:/build/mycdv-minimal/tmp/sysroots/x86_64-linux/sbin:/build/mycdv-minimal/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"; 
>>>>>
>>>>>
>>>>>
>>>>> /usr/bin/env wget -t 5 -q --passive-ftp --no-check-certificate -P
>>>>> /home/jim/yocto-downloads 
>>>>> 'ftp://ftp.gnu.org/gnu/hello/hello-1.0.tar.gz'
>>>>> failed with signal 8, output:
>>>>>
>>>>> I don't see 1.0.tar on the ftp site. How do I control this?
>>>>
>>>> If you look in:
>>>>
>>>> ftp://ftp.gnu.org/gnu/hello/
>>>>
>>>> you'll see which versions are available. Rename your recipe filename
>>>> to reflect the version you wish to use, for example helloworld_2.7.bb
>>>>
>>>> The part of the filename after the underscore is what will get
>>>> interpolated into ${PV}.
>>>>
>>>> Scott
>>>>
>>> Now I have gotten by the fetching but the license file information in
>>> the .bb file from the example is incorrect. I can't see from the
>>> Reference manual License section enough information for me to create
>>> that line in the .bb file. What is the process to figure this out?
>>
>> In this case, the LIC_FILES_CHKSUM is storing the md5sum of the 
>> COPYING file, which is stored in the top-level directory of the 
>> extracted sources.
>>
>> So manually download the hello version you are trying to use, extract 
>> the tarball locally, and run md5sum against the COPYING file. Then 
>> update the LIC_FILES_CHKSUM field with that
>> new md5 checksum.
>>
>> This is a common process we have to go through when upgrading 
>> recipes, so you're getting a taste of what working with the 
>> distro/metadata team is like. :)
>>
>> One more thing - when LIC_FILES_CHKSUM changes, you should always 
>> verify that the license for the sources haven't changed (in this case 
>> GPL v2 or later). If it did change, you'd
>> also need to change the LICENSE field in the recipe to reflect the 
>> new license. LIC_FILES_CHKSUM is a step we added so we don't miss 
>> license changes.
>
> I use the attached script to automate this - it puts the files
> in the correct format (modulo a little path massaging if necessary).
>
> What I do when I run across these problems is this:
>   % bitbake <recipe>
>   ... fails with LIC_FILES_CHKSUM errors
>   % make_LIC_FILES_CHECKSUM 
> tmp/work/<path-to-recipe-tree>/<LICENSE_FILES>
>   e.g.
>     (cd 
> tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/helloworld-2.7-r0/helloworld-2.7/;make_LIC_FILES_CHECKSUM 
> COPYING)
> Cut & paste the output into your recipe and rebuild.
>
> The script makes it much simpler to do this when multiple
> files are involved.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
okay,  I got a clean build, but hello was not in the final image even 
though I had:

EXTRA_IMAGE_FEATURES += "hello"

in the local.conf. I ran hob against this and could see that hello was 
an option, but it was not selected.  Trying to bake with hob from there 
didn't work, but that's not as important.

Any ideas as to why EXTRA_IMAGE_FEATURES += "hello"  didn't add the 
hello code to the final image?

JIm A




--------------070406030709020401020406
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 01/26/2012 05:37 PM, Gary Thomas wrote:
    <blockquote cite="mid:4F21D5C3.5030904@mlbassoc.com" type="cite">On
      2012-01-26 15:11, Scott Garman wrote:
      <br>
      <blockquote type="cite">On 01/26/2012 02:04 PM, jfabernathy wrote:
        <br>
        <blockquote type="cite">On 01/26/2012 04:38 PM, Scott Garman
          wrote:
          <br>
          <blockquote type="cite">On 01/26/2012 01:32 PM, jfabernathy
            wrote:
            <br>
            <blockquote type="cite">On 01/26/2012 01:55 PM, Scott Garman
              wrote:
              <br>
              <blockquote type="cite">On 01/26/2012 08:44 AM,
                jfabernathy wrote:
                <br>
                <blockquote type="cite">I'm trying to understand the
                  concept of creating a recipe and
                  <br>
                  having it
                  <br>
                  included in the build I do.
                  <br>
                  <br>
                  For example, suppose I want to create the
                  <br>
                  meta-intel/meta-cedartrail BSP
                  <br>
                  with the core-image-minimal image, but I wanted to
                  include hello world
                  <br>
                  as shown in 3.1.2 Autotooled Package section of the
                  Poky reference
                  <br>
                  Manual.
                  <br>
                  <br>
                  Where do I put the recipe file? I'm guessing a
                  recipe-jfa directory at
                  <br>
                  the same level as the meta-cedartrail recipe-core,
                  recipe-kernel,
                  <br>
                  recipe-graphic, recipe-bsp?
                  <br>
                </blockquote>
                <br>
                Hi Jim,
                <br>
                <br>
                The best way to do this is to create your own layer, and
                keep all of
                <br>
                your customizations there.
                <br>
                <br>
                You'd put this in a directory, say meta-jfa with
                something like the
                <br>
                following:
                <br>
                <br>
                meta-jfa/
                <br>
                meta-jfa/conf/layer.conf
                <br>
                meta-jfa/recipes-jfa/helloworld/helloworld.bb
                <br>
                <br>
                where your layer.conf file would look like:
                <br>
                <br>
                # We have a conf and classes directory, add to BBPATH
                <br>
                BBPATH := "${BBPATH}:${LAYERDIR}"
                <br>
                <br>
                # We have a packages directory, add to BBFILES
                <br>
                BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
                <br>
                ${LAYERDIR}/recipes-*/*/*.bbappend"
                <br>
                <br>
                BBFILE_COLLECTIONS += "jfa"
                <br>
                BBFILE_PATTERN_jfa := "^${LAYERDIR}/"
                <br>
                BBFILE_PRIORITY_jfa = "5"
                <br>
                <br>
                Then point your build's bblayers.conf file to include
                the path to your
                <br>
                meta-jfa/ directory.
                <br>
                <br>
                <blockquote type="cite">
                  <br>
                  I'm also assuming that helloworld.bb file would
                  contain:
                  <br>
                  <br>
                  DESCRIPTION = "GNU Helloworld application"
                  <br>
                  SECTION = "examples"
                  <br>
                  LICENSE = "GPLv2+"
                  <br>
                  LIC_FILES_CHKSUM =
                  <br>
                  <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=751419260aa954499f7abaabaa882bbe">"file://COPYING;md5=751419260aa954499f7abaabaa882bbe"</a>
                  <br>
                  PR = "r0"
                  <br>
                  <br>
                  SRC_URI = "${GNU_MIRROR}/hello/hello-${PV}.tar.gz"
                  <br>
                  <br>
                  inherit autotools gettext
                  <br>
                  <br>
                  <br>
                  So where do the values of ${GNU_MIRROR|, and ${PV} get
                  set correctly?
                  <br>
                </blockquote>
                <br>
                Those examples are defined in the bitbake classes you
                have in your
                <br>
                base layers.
                <br>
                <br>
                <blockquote type="cite">And what does the following line
                  do or require me to do:
                  <br>
                  <br>
                  LIC_FILES_CHKSUM =
                  <br>
                  <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=751419260aa954499f7abaabaa882bbe">"file://COPYING;md5=751419260aa954499f7abaabaa882bbe"</a>
                  <br>
                </blockquote>
                <br>
                This was answered in another post.
                <br>
                <br>
                <blockquote type="cite">Is this all that is needed to
                  get helloworld put into /usr/bin so
                  <br>
                  it can
                  <br>
                  be executed at the command line when the image is
                  booted?
                  <br>
                </blockquote>
                <br>
                You'd also need to add the helloworld package to your
                image file. The
                <br>
                simplest way to do this is to add EXTRA_IMAGE_FEATURES
                += "helloworld"
                <br>
                in your build's local.conf file.
                <br>
                <br>
                I think the above should be accurate enough w/o testing
                it myself.
                <br>
                <br>
              </blockquote>
              I got the layer created like you said, but the test had a
              fetch problem
              <br>
              and it just locked up there. Had to control-C out of it.
              Console below:
              <br>
              <br>
              jim@ubuntu-x64:/build/mycdv-minimal$ bitbake helloworld
              <br>
              Loading cache: 100%
              <br>
              |###########################################################|
              ETA:
              <br>
              00:00:00
              <br>
              Loaded 1037 entries from dependency cache.
              <br>
              <br>
              OE Build Configuration:
              <br>
              BB_VERSION = "1.13.3"
              <br>
              TARGET_ARCH = "i586"
              <br>
              TARGET_OS = "linux"
              <br>
              MACHINE = "mycdv"
              <br>
              DISTRO = "poky"
              <br>
              DISTRO_VERSION = "1.1"
              <br>
              TUNE_FEATURES = "m32 core2"
              <br>
              TARGET_FPU = ""
              <br>
              meta
              <br>
              meta-yocto =
              "edison:adcf8bf7b52460b94998438e8c2bf854cdec0a80"
              <br>
              meta-mycdv =
              "edison:34478f24de65dd8de8a4c8b913a1458d82dac1fa"
              <br>
              meta-jfa =
              "edison:adcf8bf7b52460b94998438e8c2bf854cdec0a80"
              <br>
              <br>
              NOTE: Resolving any missing task queue dependencies
              <br>
              NOTE: Preparing runqueue
              <br>
              NOTE: Executing SetScene Tasks
              <br>
              NOTE: Executing RunQueue Tasks
              <br>
              NOTE: Running task 514 of 693 (ID: 4,
              <br>
              /home/jim/poky/meta-jfa/recipes-jfa/helloworld/helloworld.bb,
              do_fetch)
              <br>
              NOTE: package helloworld-1.0-r0: task do_fetch: Started
              <br>
              WARNING: Fetcher failure for URL: 'None'. Fetch command
              export
              <br>
              HOME="/home/jim"; export SSH_AGENT_PID="1413"; export
              <br>
              SSH_AUTH_SOCK="/tmp/keyring-2QW6yC/ssh"; export
              <br>
GIT_CONFIG="/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/etc/gitconfig";
              <br>
              <br>
              export
              <br>
PATH="/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/mycdv-minimal/tmp/sysroots/mycdv/usr/bin/crossscripts:/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/sbin:/build/mycdv-minimal/tmp/sysroots/x86_64-linux/usr/bin:/build/mycdv-minimal/tmp/sysroots/x86_64-linux/sbin:/build/mycdv-minimal/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts";
              <br>
              <br>
              <br>
              /usr/bin/env wget -t 5 -q --passive-ftp
              --no-check-certificate -P
              <br>
              /home/jim/yocto-downloads
              '<a class="moz-txt-link-freetext" href="ftp://ftp.gnu.org/gnu/hello/hello-1.0.tar.gz">ftp://ftp.gnu.org/gnu/hello/hello-1.0.tar.gz</a>'
              <br>
              failed with signal 8, output:
              <br>
              <br>
              I don't see 1.0.tar on the ftp site. How do I control
              this?
              <br>
            </blockquote>
            <br>
            If you look in:
            <br>
            <br>
            <a class="moz-txt-link-freetext" href="ftp://ftp.gnu.org/gnu/hello/">ftp://ftp.gnu.org/gnu/hello/</a>
            <br>
            <br>
            you'll see which versions are available. Rename your recipe
            filename
            <br>
            to reflect the version you wish to use, for example
            helloworld_2.7.bb
            <br>
            <br>
            The part of the filename after the underscore is what will
            get
            <br>
            interpolated into ${PV}.
            <br>
            <br>
            Scott
            <br>
            <br>
          </blockquote>
          Now I have gotten by the fetching but the license file
          information in
          <br>
          the .bb file from the example is incorrect. I can't see from
          the
          <br>
          Reference manual License section enough information for me to
          create
          <br>
          that line in the .bb file. What is the process to figure this
          out?
          <br>
        </blockquote>
        <br>
        In this case, the LIC_FILES_CHKSUM is storing the md5sum of the
        COPYING file, which is stored in the top-level directory of the
        extracted sources.
        <br>
        <br>
        So manually download the hello version you are trying to use,
        extract the tarball locally, and run md5sum against the COPYING
        file. Then update the LIC_FILES_CHKSUM field with that
        <br>
        new md5 checksum.
        <br>
        <br>
        This is a common process we have to go through when upgrading
        recipes, so you're getting a taste of what working with the
        distro/metadata team is like. :)
        <br>
        <br>
        One more thing - when LIC_FILES_CHKSUM changes, you should
        always verify that the license for the sources haven't changed
        (in this case GPL v2 or later). If it did change, you'd
        <br>
        also need to change the LICENSE field in the recipe to reflect
        the new license. LIC_FILES_CHKSUM is a step we added so we don't
        miss license changes.
        <br>
      </blockquote>
      <br>
      I use the attached script to automate this - it puts the files
      <br>
      in the correct format (modulo a little path massaging if
      necessary).
      <br>
      <br>
      What I do when I run across these problems is this:
      <br>
      &nbsp; % bitbake &lt;recipe&gt;
      <br>
      &nbsp; ... fails with LIC_FILES_CHKSUM errors
      <br>
      &nbsp; % make_LIC_FILES_CHECKSUM
      tmp/work/&lt;path-to-recipe-tree&gt;/&lt;LICENSE_FILES&gt;
      <br>
      &nbsp; e.g.
      <br>
      &nbsp;&nbsp;&nbsp; (cd
      tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/helloworld-2.7-r0/helloworld-2.7/;make_LIC_FILES_CHECKSUM
      COPYING)
      <br>
      Cut &amp; paste the output into your recipe and rebuild.
      <br>
      <br>
      The script makes it much simpler to do this when multiple
      <br>
      files are involved.
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    okay,&nbsp; I got a clean build, but hello was not in the final image
    even though I had:<br>
    <br>
    EXTRA_IMAGE_FEATURES += "hello" <br>
    <br>
    in the local.conf. I ran hob against this and could see that hello
    was an option, but it was not selected.&nbsp; Trying to bake with hob
    from there didn't work, but that's not as important.<br>
    <br>
    Any ideas as to why EXTRA_IMAGE_FEATURES += "hello"&nbsp; didn't add the
    hello code to the final image?<br>
    <br>
    JIm A<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------070406030709020401020406--
