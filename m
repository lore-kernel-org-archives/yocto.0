Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5784E00596
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 10:56:00 -0800 (PST)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 26 Jan 2012 10:55:59 -0800
Received: by dadp14 with SMTP id p14so3249525dad.25
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 10:55:59 -0800 (PST)
Received: by 10.68.135.1 with SMTP id po1mr7480742pbb.16.1327604159677;
	Thu, 26 Jan 2012 10:55:59 -0800 (PST)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id p9sm13329472pbb.9.2012.01.26.10.55.58
	(version=SSLv3 cipher=OTHER); Thu, 26 Jan 2012 10:55:59 -0800 (PST)
Message-ID: <4F21A1B4.60305@intel.com>
Date: Thu, 26 Jan 2012 10:55:48 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2182E2.2030101@gmail.com>
In-Reply-To: <4F2182E2.2030101@gmail.com>
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
X-List-Received-Date: Thu, 26 Jan 2012 18:56:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2012 08:44 AM, jfabernathy wrote:
> I'm trying to understand the concept of creating a recipe and having it
> included in the build I do.
>
> For example, suppose I want to create the meta-intel/meta-cedartrail BSP
> with the core-image-minimal image, but I wanted to include hello world
> as shown in 3.1.2 Autotooled Package section of the Poky reference Manual.
>
> Where do I put the recipe file? I'm guessing a recipe-jfa directory at
> the same level as the meta-cedartrail recipe-core, recipe-kernel,
> recipe-graphic, recipe-bsp?

Hi Jim,

The best way to do this is to create your own layer, and keep all of 
your customizations there.

You'd put this in a directory, say meta-jfa with something like the 
following:

meta-jfa/
meta-jfa/conf/layer.conf
meta-jfa/recipes-jfa/helloworld/helloworld.bb

where your layer.conf file would look like:

# We have a conf and classes directory, add to BBPATH
BBPATH := "${BBPATH}:${LAYERDIR}"

# We have a packages directory, add to BBFILES
BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"

BBFILE_COLLECTIONS += "jfa"
BBFILE_PATTERN_jfa := "^${LAYERDIR}/"
BBFILE_PRIORITY_jfa = "5"

Then point your build's bblayers.conf file to include the path to your 
meta-jfa/ directory.

>
> I'm also assuming that helloworld.bb file would contain:
>
> DESCRIPTION = "GNU Helloworld application"
> SECTION = "examples"
> LICENSE = "GPLv2+"
> LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
> PR = "r0"
>
> SRC_URI = "${GNU_MIRROR}/hello/hello-${PV}.tar.gz"
>
> inherit autotools gettext
>
>
> So where do the values of ${GNU_MIRROR|, and ${PV} get set correctly?

Those examples are defined in the bitbake classes you have in your base 
layers.

> And what does the following line do or require me to do:
>
> LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"

This was answered in another post.

> Is this all that is needed to get helloworld put into /usr/bin so it can
> be executed at the command line when the image is booted?

You'd also need to add the helloworld package to your image file. The 
simplest way to do this is to add EXTRA_IMAGE_FEATURES += "helloworld" 
in your build's local.conf file.

I think the above should be accurate enough w/o testing it myself.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

