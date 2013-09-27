Return-Path: <jc@vtkloud.com>
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F1D0E01653
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 00:50:27 -0700 (PDT)
Received: by mail-wi0-f171.google.com with SMTP id hm2so408714wib.10
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 00:50:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=770G0s7q1UTcO00baiOB8osaQNht6PQGBLVrB27hugs=;
	b=DV46Zyet4xakL0UfaUMbtrmKvupnWJQKkAxWOFkCfxLKCDK7m3I/+hW6X8QQARCQZZ
	JWJo1698GDumuOjIDyAc63shi/q5ffYQIEl2biLCJZol001AnCoMNceTZX6mxwXPFGkY
	XtdKyBV6dZ4oJZp8r+FfPB1VHEEV6cpvdFgioIn+cH/miHSMY8Ef3di5Ws1R/3rCFoKZ
	AL+am3sFpm5kCqmos78GjxSO/L7AgS5atFIt1fbWfCDbuzdPKEQ6xhN8t14hOOEFoubU
	7B+K4127htLfxT8DJf1rm4ruNgHU0gE3eR3QBsoGfT7RuoNo0x+rp90Xk8i6h5yPCIzi
	9YoQ==
X-Gm-Message-State: ALoCoQmByZXhMQnl+CgIGcSjZnLBM95xkU+ohNkdhzOI5WUt1irbFENgHMRDHwBGr+6n2xqu+pQf
X-Received: by 10.180.205.236 with SMTP id lj12mr1478550wic.22.1380268226529; 
	Fri, 27 Sep 2013 00:50:26 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id dx7sm11201306wib.8.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 27 Sep 2013 00:50:25 -0700 (PDT)
Message-ID: <524538BF.2080808@vtkloud.com>
Date: Fri, 27 Sep 2013 09:50:23 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <52348262.6060706@vtkloud.com>
	<ACB3EB40-42EC-4F93-925B-284095121BF9@vtkloud.com>
	<CAMKF1sri3BSObWxcipXXriQY7=M0ekUwmQ3QPxJ+G=71_1zZBA@mail.gmail.com>
In-Reply-To: <CAMKF1sri3BSObWxcipXXriQY7=M0ekUwmQ3QPxJ+G=71_1zZBA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to install some cpan modules - dumper.so wrong ELF class???
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
X-List-Received-Date: Fri, 27 Sep 2013 07:50:32 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 25/09/2013 21:40, Khem Raj wrote:
> On Wed, Sep 25, 2013 at 12:32 PM, Jean-Charles JC Verdié <jc@vtkloud.com> wrote:
>>> Can't load '/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/qemuarm/usr/lib/perl/5.14.3/auto/Data/Dumper/Dumper.so' for module Data::Dumper: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/qemuarm/usr/lib/perl/5.14.3/auto/Data/Dumper/Dumper.so: wrong ELF class: ELFCLASS32 at /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/XSLoader.pm li
> this is reaching out to native-perl mods there. seems its not cross
> compiler friendly
> look out for variables that are being used to construct path for
> XSLoader.pm and use
> the correct target paths
Actually, it seems that this package does not provide the regular .PL 
file expected by cpan.
I found out a way to generate it, and I could compile. But as you can 
see it uses perl native (I get an x86-64 build), and it's trying to 
install on my / directory instead of the rootfs:

ERROR: Logfile of failure stored in: 
/media/yocto/yocto/rpi/tmp/work/armv6-vfp-poky-linux-gnueabi/Net-SDP/0.07-r0/temp/log.do_install.30179
Log data follows:
| DEBUG: Executing shell function do_install
| Building Net-SDP
| WARNING: Can't figure out install path for types: bindoc libdoc
| Files will not be installed.
| !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
| ERROR: Can't create '/usr/lib/perl/site_perl/5.14.3/Net'
| mkdir /usr/lib/perl/site_perl: Permission denied at 
/media/yocto/yocto/rpi/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl//5.14.3/ExtUtils/Install.pm 
line 494
|
| !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
|  at 
/media/yocto/yocto/rpi/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/Module/Build/Base.pm 
line 3569


FWIW, I can do the manual operations in qemu so it's really a matter of 
using target perl instead of hosted perl I think :(


I'm investigating a little bit more or I will post additional 
information for help :)

Thanks anyway,
Regards
Jay


