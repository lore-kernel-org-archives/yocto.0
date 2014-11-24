Return-Path: <daniel.pavel19@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BB78E00832; Mon, 24 Nov 2014 08:53:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (daniel.pavel19[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C69D5E00832
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 08:53:08 -0800 (PST)
Received: by mail-wg0-f47.google.com with SMTP id n12so12735865wgh.6
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 08:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=HzaQikCW9CKqPQODRpwLMfWUQXscEAcwBrp2YSyJFCQ=;
	b=qT7/9tPwWbHb7PhOVNnJRv5/JpbPjVtGDGx80ZIYHeb6Kc9fm02WSXafUhxXeHr3Js
	Nj50OwLjxpM7/koZAcAazH8Cew+nUeag/HTWW1cx/QlE8hsXAabmw50DzLJPzn/OmcFN
	Mv0wV8/HMnOJJbMzSF5QISxMUElFh4jVpLccBQ+b4OVstEiUJIpRnujr9bR43t3RiVjl
	/1gUz/CYDKoEYSGzcLdhBSSJhzSMlFGD6NLNmMCCjBG2DYh+6r5uuGX45OygKH7O4WVe
	U/h0ToQexeILJ634ja0b9JJvRuh4UR5enSQrOZLuAt6EptiKA2Y61qhMUadXNjtPrh9b
	OAvg==
X-Received: by 10.180.103.33 with SMTP id ft1mr23000483wib.71.1416847987292;
	Mon, 24 Nov 2014 08:53:07 -0800 (PST)
Received: from [172.16.6.24] ([141.85.225.204])
	by mx.google.com with ESMTPSA id n3sm21779480wjz.21.2014.11.24.08.53.06
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 24 Nov 2014 08:53:06 -0800 (PST)
Message-ID: <54736271.7000207@gmail.com>
Date: Mon, 24 Nov 2014 18:53:05 +0200
From: Daniel Pavel <daniel.pavel19@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Error
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
X-List-Received-Date: Mon, 24 Nov 2014 16:53:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello, I am new to Yocto and trying to build an Image for Pandaboard 
using this guy's guidelines :

http://maniacbug.wordpress.com/2012/08/03/pandayocto/

and encountered the following error when building. Here's my log :

NOTE: make -j 4
   2 Making all in lib
   3 make[1]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib'
   4 cd .. && make  am--refresh
   5 make[2]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
   6 make[2]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
   7 cd .. && make  am--refresh
   8 make[2]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
   9 make[2]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  10 make[2]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  11 make[2]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  12 Making all in Automake
  13 make[2]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake'
  14 cd ../.. && make  am--refresh
  15 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  16 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  17 cd ../.. && make  am--refresh
  18 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  19 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  20 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  21 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  22 Making all in .
  23 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake'
  24 cd ../.. && make  am--refresh
  25 make[4]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  26 make[4]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  27 cd ../.. && make  am--refresh
  28 make[4]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  29 make[4]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  30 make[4]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  31 make[4]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  32 rm -f Config.tmp Config.pm
  33 in=`echo Config.pm | sed 's/\.[^.]*$//'`; sed -e 
's,[@]APIVERSION[@],1.11,g' -e 's,[@]PACKAGE[@],automake,g' -e 
's,[@]PACKAGE_BUGREPORT[@],bug-automake@gnu.org,g' -e 
's,[@]PERL[@],/usr/bin/perl,g' -e 's    ,[@]PERL_THREADS[@],1,g' -e 
's,[@]SHELL[@],/bin/bash,g' -e 's,[@]VERSION[@],1.11.2,g' -e 
"s,[@]configure_input[@],Generated from $in.in; do not edit by hand.,g" 
-e 's,[@]datadir[@],/home/daniel/Karanka- 
ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/sysroots/x86_64-linux/usr/share,g' 
./Config.in >Config.tmp
  34 chmod +x Config.tmp
  35 chmod a-w Config.tmp
  36 mv -f Config.tmp Config.pm
  37 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake'
  38 Making all in tests
  39 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake/tests'
  40 cd ../../.. && make  am--refresh
  41 make[4]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  42 make[4]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  43 cd ../../.. && make  am--refresh
  44 make[4]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  45 make[4]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  46 make[4]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  47 make[4]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  48 make[3]: Nothing to be done for `all'.
  49 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake/tests'
  50 make[2]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake'
  51 Making all in am
  52 make[2]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/am'
  53 cd ../.. && make  am--refresh
make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  55 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  56 cd ../.. && make  am--refresh
  57 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  58 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  59 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  60 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  61 make[2]: Nothing to be done for `all'.
  62 make[2]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/am'
  63 make[2]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib'
  64 cd .. && make  am--refresh
  65 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  66 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  67 cd .. && make  am--refresh
  68 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  69 make[3]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  70 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  71 make[3]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  72 make[2]: Nothing to be done for `all-am'.
  73 make[2]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib'
  74 make[1]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib'
  75 Making all in .
  76 make[1]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  77 rm -f automake automake.tmp
  78 rm -f aclocal aclocal.tmp
  79 sed -e 's,[@]APIVERSION[@],1.11,g' -e 's,[@]PACKAGE[@],automake,g' 
-e 's,[@]PACKAGE_BUGREPORT[@],bug-automake@gnu.org,g' -e 
's,[@]PACKAGE_URL[@],http://www.gnu.org/software/automake/,g' -e 
's,[@]PATH_SE    PARATOR[@],:,g' -e 's,[@]PERL[@],/usr/bin/perl,g' -e 
's,[@]PERL_THREADS[@],1,g' -e 's,[@]SHELL[@],/bin/bash,g' -e 
's,[@]am_AUTOCONF[@],autoconf,g' -e 's,[@]am_AUTOM4TE[@],autom4te,g' -e 
's,[@]VERSION[@]    ,1.11.2,g' -e 's,[@]configure_input[@],Generated 
from automake.in; do not edit by hand.,g' -e 
's,[@]datadir[@],/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/sysroots/x86_64 
-linux/usr/share,g' ./automake.in >automake.tmp
  80 sed -e 's,[@]APIVERSION[@],1.11,g' -e 's,[@]PACKAGE[@],automake,g' 
-e 's,[@]PACKAGE_BUGREPORT[@],bug-automake@gnu.org,g' -e 
's,[@]PACKAGE_URL[@],http://www.gnu.org/software/automake/,g' -e 
's,[@]PATH_SE    PARATOR[@],:,g' -e 's,[@]PERL[@],/usr/bin/perl,g' -e 
's,[@]PERL_THREADS[@],1,g' -e 's,[@]SHELL[@],/bin/bash,g' -e 
's,[@]am_AUTOCONF[@],autoconf,g' -e 's,[@]am_AUTOM4TE[@],autom4te,g' -e 
's,[@]VERSION[@]    ,1.11.2,g' -e 's,[@]configure_input[@],Generated 
from aclocal.in; do not edit by hand.,g' -e 
's,[@]datadir[@],/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/sysroots/x86_64- 
linux/usr/share,g' ./aclocal.in >aclocal.tmp
  81 chmod +x aclocal.tmp
  82 chmod a-w aclocal.tmp
  83 mv -f aclocal.tmp aclocal
  84 chmod +x automake.tmp
  85 chmod a-w automake.tmp
  86 mv -f automake.tmp automake
  87 make[1]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  88 Making all in doc
  89 make[1]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/doc'
  90 cd .. && make  am--refresh
  91 make[2]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  92 make[2]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  93 cd .. && make  am--refresh
  94 make[2]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  95 make[2]: Entering directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  96 make[2]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
make[2]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/ERROR: 
Function failed: do_compile (see 
/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/pok 
y-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/temp/log.do_compile.17789 
for further information)
  98 x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
  99 PATH="`pwd`/../tests:$PATH" && export PATH && /bin/bash 
/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/missin 
g --run help2man --output=automake-1.11.1 automake-1.11
100 WARNING: `help2man' is missing on your system.  You should only need 
it if
101          you modified a dependency of a manual page.  You may need the
102          `Help2man' package in order for those modifications to take
103          effect.  You can get `Help2man' from any GNU archive site.
104 Updating ./version.texi
105 restore=: && backupdir=".am$$" && \
106         am__cwd=`pwd` && CDPATH="${ZSH_VERSION+.}:" && cd . && \
107         rm -rf $backupdir && mkdir $backupdir && \
108         if (/bin/bash 
/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/missing 
--run makeinfo --version) >/dev/    null 2>&1; then \
109           for f in automake.info automake.info-[0-9] 
automake.info-[0-9][0-9] automake.i[0-9] automake.i[0-9][0-9]; do \
110             if test -f $f; then mv $f $backupdir; restore=mv; else 
:; fi; \
111           done; \
112         else :; fi && \
113         cd "$am__cwd"; \
114         if /bin/bash 
/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/lib/missing 
--run makeinfo   -I . \
115          -o automake.info automake.texi; \
116         then \
117           rc=0; \
118           CDPATH="${ZSH_VERSION+.}:" && cd .; \
119         else \
120           rc=$?; \
121           CDPATH="${ZSH_VERSION+.}:" && cd . && \
122           $restore $backupdir/* `echo "./automake.info" | sed 
's|[^/]*$||'`; \
123         fi; \
124         rm -rf $backupdir; exit $rc
125 automake.texi:13043: @itemx must follow @item
126 automake.texi:13060: @itemx must follow @item
127 automake.texi:13066: @itemx must follow @item
128 make[1]: *** [automake.info] Error 1
129 make[1]: Leaving directory 
`/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2/doc'
130 make: *** [all-recursive] Error 1
131 ERROR: oe_runmake failed


Googled a bit about this error and found something that looks fairly 
similar :

https://www.dream-multimedia-tv.de/board/index.php?page=Thread&threadID=18118

However I don't know how to configure the particular package.

Can you guys help me ?
Thank you in advance.



