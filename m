Return-Path: <martyn.welch@ge.com>
Received: from exprod5og111.obsmtp.com (exprod5og111.obsmtp.com [64.18.0.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B108E003E1
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 01:42:15 -0800 (PST)
Received: from cinmlip12.e2k.ad.ge.com ([165.156.4.1]) (using TLSv1) by
	exprod5ob111.postini.com ([64.18.4.12]) with SMTP
	ID DSNKTz4g9WsHy4SkHi7zHSNOedyvk/E18h5n@postini.com;
	Fri, 17 Feb 2012 01:42:15 PST
Received: from unknown (HELO alpmlef08.e2k.ad.ge.com) ([3.159.18.17])
	by cinmlip12.e2k.ad.ge.com with ESMTP; 17 Feb 2012 04:42:13 -0500
Received: from [3.138.54.92] ([3.138.54.92]) by alpmlef08.e2k.ad.ge.com with
	Microsoft SMTPSVC(6.0.3790.4675); Fri, 17 Feb 2012 04:42:12 -0500
Message-ID: <4F3E20F3.4060202@ge.com>
Date: Fri, 17 Feb 2012 09:42:11 +0000
From: Martyn Welch <martyn.welch@ge.com>
Organization: GE Intelligent Platforms
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.1.2
X-OriginalArrivalTime: 17 Feb 2012 09:42:12.0700 (UTC)
	FILETIME=[6CE8C1C0:01CCED58]
Subject: Perl build failure
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
X-List-Received-Date: Fri, 17 Feb 2012 09:42:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm attempting to build the head of the master branch, targeting
core-image-minimal on qemux86 with an up to date Ubuntu 10.04 32-bit system.

I am getting the following error from perl:

/home/welchma/Documents/linux/yocto/yocto_head/build/tmp/work/i586-poky-linux/perl-5.14.2-r2/perl-5.14.2/Cross/generate_config_sh
config.sh-x86-linux >
/home/welchma/Documents/linux/yocto/yocto_head/build/tmp/work/i586-poky-linux/perl-5.14.2-r2/perl-5.14.2/Cross/../config.sh
Unable to open config.sh-x86-linux at
/home/welchma/Documents/linux/yocto/yocto_head/build/tmp/work/i586-poky-linux/perl-5.14.2-r2/perl-5.14.2/Cross/generate_config_sh
line 47.
make: *** [perl] Error 2

looking in the "Cross" folder there is no config.sh-x86-linux, there is
however a config.sh-i586-linux.

Looking into the Makefile that seems to be run I see:

$(TOPDIR)/generate_config_sh config.sh-$(SYS) > $(TOPDIR)/../config.sh

where:

export SYS=$(ARCH)-$(OS)

The run.do_compile script has:

export ARCH="x86"

Which I guess explains why it's getting that value. Looking at the perl
recipe, the do_configure stage creates a config file and I can see that this
exists in build dir and that contains what I believe are the required values:

ARCH = i586
OS = linux

However this doesn't seem to be explicitly referenced by do_compile and
doesn't seem to be referenced by generate_config_sh.

Any ideas?

Martyn

-- 
Martyn Welch (Lead Software Engineer)  | Registered in England and Wales
GE Intelligent Platforms               | (3828642) at 100 Barbirolli Square
T +44(0)1327322748                     | Manchester, M2 3AB
E martyn.welch@ge.com                  | VAT:GB 927559189

