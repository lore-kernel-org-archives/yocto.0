Return-Path: <jc@vtkloud.com>
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EECC7E0059B
	for <yocto@yoctoproject.org>; Sat, 14 Sep 2013 08:36:06 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id hq15so1903730wib.0
	for <yocto@yoctoproject.org>; Sat, 14 Sep 2013 08:36:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=9rYE5QDmzIxrzqb795n2l+7nRN75f0UYRM3KxARsiaA=;
	b=kVk/XPeWbZGuvbUrOzO4xCiiO9FZA2cEofU1lPbubVIfqOoZE280cUxNeLE+DNJa2j
	oJkZP8Vk14914CPa3BjoykXDkzB0buuJ+yF1Ac4HHMfp/kDHH5D8m5WbmzZQ/7E/i7G2
	H49Sf9HXkIOgReizj6Iz10fzw2FseB3/wlAKRlp9ju+JJVrIIBoaUnwz4uG3t0kdXA+I
	SnX2REClpNzNsIIC78YtXG4AtWx1mIFIWZxPIx7LU/K5TQqnhzv1KuTqtfU2b+ZuHDSL
	qV4z8VE+ZjzTBdOZ80ggk84tFW5BsweN1HlMtOklIOpaL2okkTfsVZJbDvlDp+l9lUQk
	Ve3g==
X-Gm-Message-State: ALoCoQnl/DOExxMj3rvqotCVzZu6YQMlLXP0p2wiNlRVBXbTuLUYJQIjKB47cdQDhcaX76WlcGMc
X-Received: by 10.180.13.83 with SMTP id f19mr6673697wic.54.1379172965034;
	Sat, 14 Sep 2013 08:36:05 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id mw9sm9985358wib.0.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 14 Sep 2013 08:36:04 -0700 (PDT)
Message-ID: <52348262.6060706@vtkloud.com>
Date: Sat, 14 Sep 2013 17:36:02 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Trying to install some cpan modules - dumper.so wrong ELF class???
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
X-List-Received-Date: Sat, 14 Sep 2013 15:36:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I need a few CPAN modules. For most of them I had no issue with a common 
recipe, but I end up with issues on Net::SDP

here's my recipe :
SUMMARY = "Collection of Perl modules for working with shairport."
SECTION = "libs"
LICENSE = "MIT"
LIC_FILES_CHKSUM = 
"file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI = "http://www.cpan.org/modules/by-module/Net/${BPN}-${PV}.tar.gz "

SRC_URI[md5sum] = "bb70cb8ebb7ca57c20ac134ac4499e66"
SRC_URI[sha256sum] = 
"f43fa0f8f9705ae66a4084d13691c2ad7724b381424d368404c3d825bc5782f0"

require cpan.inc

and cpan.inc is :
S= "${WORKDIR}/${BPN}-${PV}"

inherit cpan

do_compile() {
     export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 
'libc-*.so')"
     cpan_do_compile
}


Here's the error message:

Can't load 
'/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/qemuarm/usr/lib/perl/5.14.3/auto/Data/Dumper/Dumper.so' 
for module Data::Dumper: 
/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/qemuarm/usr/lib/perl/5.14.3/auto/Data/Dumper/Dumper.so: 
wrong ELF class: ELFCLASS32 at 
/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/XSLoader.pm 
li


Does it ring a bell to anyone ???

Regards
Jay

