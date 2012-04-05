Return-Path: <446257357@qq.com>
Received: from smtpbg55.qq.com (smtpbg55.qq.com [64.71.138.44])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3B6ABE00723
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 06:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s0907;
	t=1333633309; bh=llJD9ln92/qDnEVuocXuQ+9H3w4pbrgMpyu2Riocqc0=;
	h=X-QQ-mid:Received:X-QQ-SSF:Message-ID:Date:From:User-Agent:
	MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=SSMl0HIaVbF42zom1nUiIsbkZ1WbER9/w/ab1vt6IMvGzNwOrWPWBiSWF/1ObhANr
	ta9qMoTJVrOgFsKM0AHaarBsLxBW4rSVTg5BdnboCG7q517jIaY0Pu1LTyRFpgz
X-QQ-mid: esmtp1t1333633307t171t07589
Received: from [10.99.161.218] (unknown [202.120.116.89])
	by esmtp4.qq.com (ESMTP) with SMTP id 0
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2012 21:41:46 +0800 (CST)
X-QQ-SSF: 00000000000000F0FLF00F000000000
Message-ID: <4F7DA11A.3090401@qq.com>
Date: Thu, 05 Apr 2012 21:41:46 +0800
From: =?UTF-8?B?5rKI5Y2O5piO?= <446257357@qq.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 05 Apr 2012 07:47:14 -0700
Subject: Eclipse-ADT-build-error
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
X-List-Received-Date: Thu, 05 Apr 2012 13:41:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I have installed the ADT and configured the Eclipse. When build my first 
project,it comes the error.

The console shows these:
enerating Makefile in build directory: /home/shm/workspace/test1

Command-line environment variables:
      CFLAGS=" -g -O0  -m32   -march=i586 
--sysroot=/home/shm/qemux86-sato" CXXFLAGS=" -g -O0  -m32   -march=i586 
--sysroot=/home/shm/qemux86-sato" LDFLAGS="  
--sysroot=/home/shm/qemux86-sato" CPPFLAGS=" -m32   -march=i586 
--sysroot=/home/shm/qemux86-sato"

sh /home/shm/workspace/test1/configure 
--with-libtool-sysroot=/home/shm/qemux86-sato --host=i586-poky-linux 
--build=i686-linux --target=i586-poky-linux
configure: loading site script /opt/poky/1.1.1/site-config-i586-poky-linux
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for i586-poky-linux-strip... i586-poky-linux-strip
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking build system type... i686-pc-linux-gnu
checking host system type... i586-poky-linux-gnu
checking how to print strings... printf
checking for style of include used by make... GNU
checking for i586-poky-linux-gcc... i586-poky-linux-gcc
checking whether the C compiler works... no
configure: error: in `/home/shm/workspace/test1':
configure: error: in `/home/shm/workspace/test1':
configure: error: C compiler cannot create executables
configure: error: C compiler cannot create executables
See `config.log' for more details

Configuration failed with error

**** Build of configuration Build (GNU) for project test1 ****

make all
make: *** No rule to make target `all'.  Stop.

**** Build Finished ****

Thank you for you help~


