Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D00E00597
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:44:20 -0800 (PST)
Received: by qadb15 with SMTP id b15so689757qad.14
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=3QHSTmVGZ0djKW6lYWcu8nlg7Nq0yqUa3TPUdbmKpqg=;
	b=RG/ZGt3tsIw9FavFnpF2IAK9v6Zsccb7v7Bm2kFO7XyBKopRobTjagCQJbe+qJmam/
	uCdmzifYE8jded9u+jPZhB/1uepbgGBCUGmeIUUrLQqoe7DJqqdkkIlNE31opCK2cZRy
	ODusByQfPP4n1eMh9rgl3Po0w1U909XGzoN+8=
Received: by 10.224.10.19 with SMTP id n19mr3568174qan.68.1327596259278;
	Thu, 26 Jan 2012 08:44:19 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id el3sm9399620qab.8.2012.01.26.08.44.18
	(version=SSLv3 cipher=OTHER); Thu, 26 Jan 2012 08:44:18 -0800 (PST)
Message-ID: <4F2182E2.2030101@gmail.com>
Date: Thu, 26 Jan 2012 11:44:18 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: understanding recipes
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
X-List-Received-Date: Thu, 26 Jan 2012 16:44:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to understand the concept of creating a recipe and having it 
included in the build I do.

For example, suppose I want to create the meta-intel/meta-cedartrail BSP 
with the core-image-minimal image, but I wanted to include hello world 
as shown in 3.1.2 Autotooled Package section of the Poky reference Manual.

Where do I put the recipe file?  I'm guessing a recipe-jfa directory at 
the same level as the meta-cedartrail recipe-core, recipe-kernel, 
recipe-graphic, recipe-bsp?

I'm also assuming that helloworld.bb file would contain:

      DESCRIPTION = "GNU Helloworld application"
      SECTION = "examples"
      LICENSE = "GPLv2+"
      LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
      PR = "r0"

      SRC_URI = "${GNU_MIRROR}/hello/hello-${PV}.tar.gz"

      inherit autotools gettext


So where do the values of ${GNU_MIRROR|, and ${PV} get set correctly?

And what does the following line do or require me to do:

  LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"

Is this all that is needed to get helloworld put into /usr/bin so it can 
be executed at the command line when the image is booted?

Jim A



