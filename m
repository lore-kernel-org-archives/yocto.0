Return-Path: <woailinux@hotmail.com>
Received: from blu0-omc3-s14.blu0.hotmail.com (blu0-omc3-s14.blu0.hotmail.com
	[65.55.116.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A226DE013E5
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 02:15:03 -0700 (PDT)
Received: from BLU0-SMTP152 ([65.55.116.72]) by blu0-omc3-s14.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 19 Apr 2012 02:15:02 -0700
X-Originating-IP: [114.255.122.12]
X-Originating-Email: [woailinux@hotmail.com]
Message-ID: <BLU0-SMTP1526D7AA79BEFBC15BC6BACB93D0@phx.gbl>
Received: from [172.21.23.12] ([114.255.122.12]) by BLU0-SMTP152.phx.gbl over
	TLS secured channel with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 19 Apr 2012 02:15:02 -0700
Date: Thu, 19 Apr 2012 17:14:57 +0800
From: jack <woailinux@hotmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginalArrivalTime: 19 Apr 2012 09:15:02.0614 (UTC)
	FILETIME=[E6E9DF60:01CD1E0C]
Subject: configure: error: C compiler cannot create executables when creating and building a hello world project.
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
X-List-Received-Date: Thu, 19 Apr 2012 09:15:03 -0000
Content-Type: multipart/alternative;
	boundary="------------090205000504060702080505"

--------------090205000504060702080505
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

hello all!
After creating a project in Eclipse, I tried to Configure the 
Cross-Toolchains.

But I did like this:"Select |Project -> Change Yocto Project Settings|: 
This selection brings up the |Project Yocto Settings| Dialog and allows 
you to make changes specific to an individual project.", there was not 
|Project Yocto Settings| Dialog.

Then I select |Project -> Reconfigure Project|,  the information on the 
console:

Invoking autogen.sh in build directory: /home/jackie/workspace/helloclutter

Command-line environment variables:
      CFLAGS=" -g -O0  -m32   -march=i586 
--sysroot=/home/jackie/sysroot" CXXFLAGS=" -g -O0  -m32   -march=i586 
--sysroot=/home/jackie/sysroot" LDFLAGS="  
--sysroot=/home/jackie/sysroot" CPPFLAGS=" -m32   -march=i586 
--sysroot=/home/jackie/sysroot"

sh /home/jackie/workspace/helloclutter/autogen.sh 
--with-libtool-sysroot=/home/jackie/sysroot --target=i586-poky-linux 
--host=i586-poky-linux --build=i686-linux 
--with-libtool-sysroot=/opt/poky/1.1.1/sysroots/i586-poky-linux
configure.ac:21: installing `./compile'
configure.ac:20: installing `./config.guess'
configure.ac:20: installing `./config.sub'
configure.ac:16: installing `./install-sh'
configure.ac:16: installing `./missing'
src/Makefile.am: installing `./depcomp'
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
configure: error: in `/home/jackie/workspace/helloclutter':
configure: error: in `/home/jackie/workspace/helloclutter':
configure: error: C compiler cannot create executables
configure: error: C compiler cannot create executables
See `config.log' for more details

Configuration failed with error

Who can help me? Thank you!

--------------090205000504060702080505
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    hello all!<br>
    After creating a project in Eclipse, I tried to Configure the
    Cross-Toolchains. <br>
    <br>
    But I did like this:"Select <code class="filename">Project -&gt;
      Change Yocto Project Settings</code>: This selection brings up the
    <code class="filename">Project Yocto Settings</code> Dialog and
    allows you to make changes specific to an individual project.",
    there was not <code class="filename">Project Yocto Settings</code>
    Dialog. <br>
    <br>
    Then I select <code class="filename">Project -&gt; Reconfigure
      Project</code>,&nbsp; the information on the console:<br>
    <br>
    Invoking autogen.sh in build directory:
    /home/jackie/workspace/helloclutter<br>
    <br>
    Command-line environment variables:<br>
    &nbsp;&nbsp;&nbsp; &nbsp;CFLAGS=" -g -O0&nbsp; -m32&nbsp;&nbsp; -march=i586
    --sysroot=/home/jackie/sysroot" CXXFLAGS=" -g -O0&nbsp; -m32&nbsp;&nbsp;
    -march=i586 --sysroot=/home/jackie/sysroot" LDFLAGS="&nbsp;
    --sysroot=/home/jackie/sysroot" CPPFLAGS=" -m32&nbsp;&nbsp; -march=i586
    --sysroot=/home/jackie/sysroot"<br>
    <br>
    sh /home/jackie/workspace/helloclutter/autogen.sh
    --with-libtool-sysroot=/home/jackie/sysroot --target=i586-poky-linux
    --host=i586-poky-linux --build=i686-linux
    --with-libtool-sysroot=/opt/poky/1.1.1/sysroots/i586-poky-linux <br>
    configure.ac:21: installing `./compile'<br>
    configure.ac:20: installing `./config.guess'<br>
    configure.ac:20: installing `./config.sub'<br>
    configure.ac:16: installing `./install-sh'<br>
    configure.ac:16: installing `./missing'<br>
    src/Makefile.am: installing `./depcomp'<br>
    configure: loading site script
    /opt/poky/1.1.1/site-config-i586-poky-linux<br>
    checking for a BSD-compatible install... /usr/bin/install -c<br>
    checking whether build environment is sane... yes<br>
    checking for i586-poky-linux-strip... i586-poky-linux-strip<br>
    checking for a thread-safe mkdir -p... /bin/mkdir -p<br>
    checking for gawk... gawk<br>
    checking whether make sets $(MAKE)... yes<br>
    checking build system type... i686-pc-linux-gnu<br>
    checking host system type... i586-poky-linux-gnu<br>
    checking how to print strings... printf<br>
    checking for style of include used by make... GNU<br>
    checking for i586-poky-linux-gcc... i586-poky-linux-gcc<br>
    checking whether the C compiler works... no<br>
    configure: error: in `/home/jackie/workspace/helloclutter':<br>
    configure: error: in `/home/jackie/workspace/helloclutter':<br>
    configure: error: C compiler cannot create executables<br>
    configure: error: C compiler cannot create executables<br>
    See `config.log' for more details<br>
    <br>
    Configuration failed with error<br>
    <br>
    Who can help me? Thank you!<br>
  </body>
</html>

--------------090205000504060702080505--
