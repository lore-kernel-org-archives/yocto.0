Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web09.2941.1606904375951827712
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 02:19:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4CmFM93kR3z5tlJ;
	Wed,  2 Dec 2020 11:19:33 +0100 (CET)
Date: Wed, 2 Dec 2020 11:19:32 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: vijayrakeshmunganda@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to write custom recipe to install AWS C SDK from github #dunfell #linux #yocto
Message-ID: <20201202101932.bzer6ox4irlzwx4v@qschulz>
References: <ed8Q.1606903359819273417.jd39@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <ed8Q.1606903359819273417.jd39@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi VR,

On Wed, Dec 02, 2020 at 02:02:39AM -0800, vijayrakeshmunganda@gmail.com wrote:
> Hi,
> 
> I'm trying to write a recipe to install AWS SDK into the build(https://github.com/aws/aws-iot-device-sdk-embedded-C), but I complete don't know how to do it. Based on online example https://github.com/joaocfernandes/Learn-Yocto/blob/master/develop/Recipe-CMake.md I have written my recipe file and download the sdk into files folder of my recipe. When I run build do_configure got failed.
> 

If you don't give us the log, we won't be able to help you.

> SUMMARY = "AWS IoT SDK EMBEDDED C"
> SECTION = "examples"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> 
> SRC_URI = "file://CMakeLists.txt"
> 

Where is the sdk? You need to add it into your SRC_URI (you can also
just pass a URL to a git repo or tarball download link).

Quentin
