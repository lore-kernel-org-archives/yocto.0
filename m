Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C8FBE00C4E; Mon, 28 Jan 2019 09:18:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (edwingate8[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F02DBE00BD5
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 09:18:25 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id w18so21751083ite.1
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 09:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XIuILYYJ7whrDTaRt/TKn2Qoo2wGFdExWKAWHEHUx6Y=;
	b=VEZ4QyJ8R7aS2rHXCOdO99YVhcaMO0uKKUZbPA3ffrBU/yPbXol75dgIUcxmfl1pIh
	MW4/k9dmdKj/RloGOE80lSqmKoM34tjtxzRpUoA71QlxtqGpfmEjkVGdxFEZBq4eP8Er
	no/HmjcgW9VLmgxD8OJihkYJsm3tiPSQbyAGX1aunV4VMOE94BRty1u6dn9TGEA+GVOK
	BwbNoB9zkLPUfS+a4cBr6vjWeIR4A3qOjwJUD6SwDsjS8SXM1SsOJHU+v9sniSxTESqk
	Dj0+Q5myZf3uA1IiLjPxKwTL68FQ+DGgtpcGCYf+9ujccjqFhJUDKidDMWB6HCm4vCHs
	96uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XIuILYYJ7whrDTaRt/TKn2Qoo2wGFdExWKAWHEHUx6Y=;
	b=T/Qiry2C2gf5CnhAVZxiCy0qRZdNSeFNx3665juWnwKTt2+7iNr6wPTMiUgB8X+ozk
	OTgmKhU7Q+Dg8KEVyylhvyWVZis6rZrZc2P3Ui5IiLZH0qMBbFb0jecZkp+krsRcW2v/
	nnpxBMsyk+S80D5q0Fwu3gmBpCmyJZbXkyjgJl430NzxY6D8AWR2l/hefcIDPFW/eSWL
	E65yW8wlQIGb7D8Un75yMxygfs9K0oWdzVgrtMZDcPHRwlWtqGpuci9l5dGeC2t7ZZxF
	lZaLSkhVKXvnOHeS9hWRSKUYD9YKZNGdq4PL5a2jzkMfDGWH46rcH1JBzswVBK8VhUaL
	YR1w==
X-Gm-Message-State: AJcUukf4lVPEje2B4lJK5YTmtg6tG21MEHI1ml6GNCJ6zMCFLm4x6+ke
	eDl7NuLmCWwIGp6Hi4HZJl7Q5ktNwwcxZVT9XDGFMdln
X-Google-Smtp-Source: ALg8bN5X6RIP0ymGN8j8suq43jS0hvQYvLWOnQz5CVTyQhE+Cy3jj+mpNb6IrFnKk9iOvaDNCAtP8a96Un2lPS+UI3k=
X-Received: by 2002:a24:7349:: with SMTP id y70mr6299812itb.48.1548695905090; 
	Mon, 28 Jan 2019 09:18:25 -0800 (PST)
MIME-Version: 1.0
From: Edward Wingate <edwingate8@gmail.com>
Date: Mon, 28 Jan 2019 09:18:13 -0800
Message-ID: <CAGMdoF=M6dQkoveH9=P7gXSWJDWDqaO97DBDGi-Ru5tg9OZ1TA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Help with cleaning/rebuidling
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
X-List-Received-Date: Mon, 28 Jan 2019 17:18:27 -0000
Content-Type: text/plain; charset="UTF-8"

The first time I did a build, my mosquitto recipe worked.  Then I did
a 'bitbake -ccleanall mosquitto', and now when I do 'bitbake
mosquitto', I get this error:

DEBUG: Executing python function sysroot_cleansstate
DEBUG: Python function sysroot_cleansstate finished
DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
'common']
DEBUG: Executing shell function autotools_preconfigure
DEBUG: Shell function autotools_preconfigure finished
DEBUG: Executing python function autotools_copy_aclocals
DEBUG: Python function autotools_copy_aclocals finished
DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
'common']
DEBUG: Executing shell function do_configure
CMake Error: The source directory
"/mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.5.5-r0/mosquitto-1.5.5"
does not exist.
Specify --help for usage, or press the help button on the CMake GUI.
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_configure (log file is located at
/mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.5.5-r0/temp/log.do_configure.37839)

It seems like it doesn't fetch/unpack the source before do_configure.
I tried to do 'bitbake -c fetch mosquitto' and 'bitbake -c unpack
mosquitto', and they both say all tasks didn't need to be rerun. I
forced it by adding '-f', but that didn't help either.

I'm still using jethro and my mosquitto_1.5.5.bb recipe is this:

=== BEGIN RECIPE ===
SUMMARY = "MQTT 3.1 compliant library"
HOMEPAGE = "https://mosquitto.org"
MAINTAINER = "Robert Lehmann <robert.lehmann@sitec-systems.de>"

LICENSE = "EPL-1.0"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=62ddc846179e908dc0c8efec4a42ef20"

SRC_URI = "https://mosquitto.org/files/source/mosquitto-${PV}.tar.gz"
SRC_URI[md5sum] = "a17dffc6f63b2a4ab2eb5c51139e60e9"
SRC_URI[sha256sum] =
"fcdb47e340864c545146681af7253399cc292e41775afd76400fda5b0d23d668"

DEPENDS = "openssl"
RDEPENDS_${PN} = "util-linux"

inherit cmake

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
EXTRA_OECMAKE = " -DCMAKE_SKIP_RPATH=ON "
=== END RECIPE ===

Can anyone help with this?

Thanks,
Ed

