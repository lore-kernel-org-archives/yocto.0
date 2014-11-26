Return-Path: <daniel.pavel19@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A6FE00860; Wed, 26 Nov 2014 06:51:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (daniel.pavel19[at]gmail.com)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66BE7E007B9
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 06:51:14 -0800 (PST)
Received: by mail-wg0-f45.google.com with SMTP id b13so3962106wgh.18
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 06:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=UA3o6SPHEEoLgZWhZsQsU4D76EQmvYyYwceVweWFiWw=;
	b=UUqAHgi8cyf/wR9ugj/rpQM/NvJ0IigRzUMY/IEf1hS2iHUwf9AquYEYmp1OOStFnT
	uF8J68I3EBkFmRdGqqCva/V76gXKRSJ4vuMeLKu8RD+F7dRJLJ648WhOScgiSl9j+Lhv
	yr1uKkBEuQw3byGzGQoXHiPBFceaiOmgpMFDPTAAVWPSEpQBUc5/bz49D25CwsqOLSKQ
	XWfHHQ0RZDdQr4BO99H0JsqbemaNAi+Nq0k9jpxvib5R1F70Bz8CuSSySW6Xj91jlK8k
	Aofnfx+UcvLlRhvyaGRAa1Yb66C8sZ3VGGYJt+EO3d0SB4gc8VzAbs36ERjfbt/t4LP9
	yXwQ==
MIME-Version: 1.0
X-Received: by 10.194.223.9 with SMTP id qq9mr50390153wjc.36.1417013473434;
	Wed, 26 Nov 2014 06:51:13 -0800 (PST)
Received: by 10.217.44.136 with HTTP; Wed, 26 Nov 2014 06:51:13 -0800 (PST)
Date: Wed, 26 Nov 2014 16:51:13 +0200
Message-ID: <CAB1xj1+rrXbdsGhQBtJWsE5Z6EHcoUp=0Urct6f3MpmJdUtEHw@mail.gmail.com>
From: Pavel Daniel <daniel.pavel19@gmail.com>
To: yocto@yoctoproject.org
Subject: Automake error when building core-image-sato
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
X-List-Received-Date: Wed, 26 Nov 2014 14:51:22 -0000
Content-Type: multipart/alternative; boundary=001a11c3aab0b9e2e50508c42863

--001a11c3aab0b9e2e50508c42863
Content-Type: text/plain; charset=UTF-8

Hello, I am new to Yocto and trying to build an Image for Pandaboard using
this guy's guidelines :

http://maniacbug.wordpress.com/2012/08/03/pandayocto/

and encountered the following error when building. Here's my log :

NOTE: make -j 4
  2 Making all in lib
  3 make[1]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib'
  4 cd .. && make  am--refresh
  5 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
  6 make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
  7 cd .. && make  am--refresh
  8 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
  9 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 10 make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 11 make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 12 Making all in Automake
 13 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake'
 14 cd ../.. && make  am--refresh
 15 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 16 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 17 cd ../.. && make  am--refresh
 18 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 19 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 20 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 21 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 22 Making all in .
 23 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake'
 24 cd ../.. && make  am--refresh
 25 make[4]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 26 make[4]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 27 cd ../.. && make  am--refresh
 28 make[4]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 29 make[4]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 30 make[4]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 31 make[4]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 32 rm -f Config.tmp Config.pm
 33 in=`echo Config.pm | sed 's/\.[^.]*$//'`; sed -e
's,[@]APIVERSION[@],1.11,g' -e 's,[@]PACKAGE[@],automake,g' -e
's,[@]PACKAGE_BUGREPORT[@],bug-automake@gnu.org,g' -e
's,[@]PERL[@],/usr/bin/perl,g' -e 's    ,[@]PERL_THREADS[@],1,g' -e
's,[@]SHELL[@],/bin/bash,g' -e 's,[@]VERSION[@],1.11.2,g' -e
"s,[@]configure_input[@],Generated from $in.in; do not edit by hand.,g" -e
's,[@]datadir[@],/home/daniel/Karanka- ntfs3g/yocto/poky-denzil-7.0/p
oky-denzil-7.0-build/tmp/sysroots/x86_64-linux/usr/share,g' ./Config.in
>Config.tmp
 34 chmod +x Config.tmp
 35 chmod a-w Config.tmp
 36 mv -f Config.tmp Config.pm
 37 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake'
 38 Making all in tests
 39 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake/tests'
 40 cd ../../.. && make  am--refresh
 41 make[4]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 42 make[4]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 43 cd ../../.. && make  am--refresh
 44 make[4]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 45 make[4]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 46 make[4]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 47 make[4]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 48 make[3]: Nothing to be done for `all'.
 49 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake/tests'
 50 make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/Automake'
 51 Making all in am
 52 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/am'
 53 cd ../.. && make  am--refresh
make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 55 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 56 cd ../.. && make  am--refresh
 57 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 58 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 59 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 60 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 61 make[2]: Nothing to be done for `all'.
 62 make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/am'
 63 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib'
 64 cd .. && make  am--refresh
 65 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 66 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 67 cd .. && make  am--refresh
 68 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 69 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 70 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 71 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 72 make[2]: Nothing to be done for `all-am'.
 73 make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib'
 74 make[1]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib'
 75 Making all in .
 76 make[1]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 77 rm -f automake automake.tmp
 78 rm -f aclocal aclocal.tmp
 79 sed -e 's,[@]APIVERSION[@],1.11,g' -e 's,[@]PACKAGE[@],automake,g' -e
's,[@]PACKAGE_BUGREPORT[@],bug-automake@gnu.org,g' -e 's,[@]PACKAGE_URL[@],
http://www.gnu.org/software/automake/,g' -e 's,[@]PATH_SE
PARATOR[@],:,g' -e 's,[@]PERL[@],/usr/bin/perl,g' -e
's,[@]PERL_THREADS[@],1,g' -e 's,[@]SHELL[@],/bin/bash,g' -e
's,[@]am_AUTOCONF[@],autoconf,g' -e 's,[@]am_AUTOM4TE[@],autom4te,g' -e
's,[@]VERSION[@]    ,1.11.2,g' -e 's,[@]configure_input[@],Generated from
automake.in; do not edit by hand.,g' -e 's,[@]datadir[@],/home/daniel/
Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/sysroots/x86_64
-linux/usr/share,g' ./automake.in >automake.tmp
 80 sed -e 's,[@]APIVERSION[@],1.11,g' -e 's,[@]PACKAGE[@],automake,g' -e
's,[@]PACKAGE_BUGREPORT[@],bug-automake@gnu.org,g' -e 's,[@]PACKAGE_URL[@],
http://www.gnu.org/software/automake/,g' -e 's,[@]PATH_SE
PARATOR[@],:,g' -e 's,[@]PERL[@],/usr/bin/perl,g' -e
's,[@]PERL_THREADS[@],1,g' -e 's,[@]SHELL[@],/bin/bash,g' -e
's,[@]am_AUTOCONF[@],autoconf,g' -e 's,[@]am_AUTOM4TE[@],autom4te,g' -e
's,[@]VERSION[@]    ,1.11.2,g' -e 's,[@]configure_input[@],Generated from
aclocal.in; do not edit by hand.,g' -e 's,[@]datadir[@],/home/daniel/
Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/sysroots/x86_64-
linux/usr/share,g' ./aclocal.in >aclocal.tmp
 81 chmod +x aclocal.tmp
 82 chmod a-w aclocal.tmp
 83 mv -f aclocal.tmp aclocal
 84 chmod +x automake.tmp
 85 chmod a-w automake.tmp
 86 mv -f automake.tmp automake
 87 make[1]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 88 Making all in doc
 89 make[1]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/doc'
 90 cd .. && make  am--refresh
 91 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 92 make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 93 cd .. && make  am--refresh
 94 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 95 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
 96 make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2'
make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/ERROR: Function failed:
do_compile (see /home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/pok
y-denzil-7.0-build/tmp/work/x86_64-linux/automake-native-1.
11.2-r3/temp/log.do_compile.17789 for further information)
 98 x86_64-linux/automake-native-1.11.2-r3/automake-1.11.2'
 99 PATH="`pwd`/../tests:$PATH" && export PATH && /bin/bash
/home/daniel/Karanka-ntfs3g/yocto/poky-denzil-7.0/poky-denzi
l-7.0-build/tmp/work/x86_64-linux/automake-native-1.11.2-
r3/automake-1.11.2/lib/missin g --run help2man --output=automake-1.11.1
automake-1.11
100 WARNING: `help2man' is missing on your system.  You should only need it
if
101          you modified a dependency of a manual page.  You may need the
102          `Help2man' package in order for those modifications to take
103          effect.  You can get `Help2man' from any GNU archive site.
104 Updating ./version.texi
105 restore=: && backupdir=".am$$" && \
106         am__cwd=`pwd` && CDPATH="${ZSH_VERSION+.}:" && cd . && \
107         rm -rf $backupdir && mkdir $backupdir && \
108         if (/bin/bash /home/daniel/Karanka-ntfs3g/yo
cto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/missing --run makeinfo
--version) >/dev/    null 2>&1; then \
109           for f in automake.info automake.info-[0-9]
automake.info-[0-9][0-9] automake.i[0-9] automake.i[0-9][0-9]; do \
110             if test -f $f; then mv $f $backupdir; restore=mv; else :;
fi; \
111           done; \
112         else :; fi && \
113         cd "$am__cwd"; \
114         if /bin/bash /home/daniel/Karanka-ntfs3g/yo
cto/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/lib/missing --run makeinfo
 -I . \
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
129 make[1]: Leaving directory `/home/daniel/Karanka-ntfs3g/y
octo/poky-denzil-7.0/poky-denzil-7.0-build/tmp/work/x86_64-
linux/automake-native-1.11.2-r3/automake-1.11.2/doc'
130 make: *** [all-recursive] Error 1
131 ERROR: oe_runmake failed


Googled a bit about this error and found something that looks fairly
similar :

https://www.dream-multimedia-tv.de/board/index.php?page=
Thread&threadID=18118

However I don't know how to configure the particular package.

Can you guys help me ?
Thank you in advance.

--001a11c3aab0b9e2e50508c42863
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">Hello, I am new to Yocto and trying to build an Image for Pandaboard usin=
g this guy&#39;s guidelines :</span><br style=3D"font-family:arial,sans-ser=
if;font-size:13px"><br style=3D"font-family:arial,sans-serif;font-size:13px=
"><a href=3D"http://maniacbug.wordpress.com/2012/08/03/pandayocto/" target=
=3D"_blank" style=3D"font-family:arial,sans-serif;font-size:13px">http://ma=
niacbug.wordpress.<u></u>com/2012/08/03/pandayocto/</a><br style=3D"font-fa=
mily:arial,sans-serif;font-size:13px"><br style=3D"font-family:arial,sans-s=
erif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:=
13px">and encountered the following error when building. Here&#39;s my log =
:</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=
=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-family=
:arial,sans-serif;font-size:13px">NOTE: make -j 4</span><br style=3D"font-f=
amily:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,san=
s-serif;font-size:13px">=C2=A0 2 Making all in lib</span><br style=3D"font-=
family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">=C2=A0 3 make[1]: Entering directory `/home/daniel=
/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:1=
3px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</spa=
n><span style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-den=
zil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px=
"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">denz</spa=
n><span style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/=
tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px=
"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</span=
><span style=3D"font-family:arial,sans-serif;font-size:13px">linux/automake=
-native-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px=
"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.1=
1.2/lib&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:13px=
"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A0 4 cd .=
. &amp;&amp; make=C2=A0 am--refresh</span><br style=3D"font-family:arial,sa=
ns-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">=C2=A0 5 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g=
/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span =
style=3D"font-family:arial,sans-serif;font-size:13px">y</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-=
</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_=
</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-native-1.11=
.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span =
style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</s=
pan><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=
=3D"font-family:arial,sans-serif;font-size:13px">=C2=A0 6 make[2]: Leaving =
directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial=
,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif=
;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sa=
ns-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">denz</span><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sa=
ns-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">linux/automake-native-1.11.</span><u style=3D"font-family:arial,sa=
ns-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-family:arial,sans-s=
erif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:=
13px">=C2=A0 7 cd .. &amp;&amp; make=C2=A0 am--refresh</span><br style=3D"f=
ont-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">=C2=A0 8 make[2]: Entering directory `/home/da=
niel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-si=
ze:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">y<=
/span><span style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky=
-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:=
13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">denz<=
/span><span style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-bu=
ild/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:=
13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</=
span><span style=3D"font-family:arial,sans-serif;font-size:13px">linux/auto=
make-native-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:=
13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</s=
pan><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake=
-1.11.2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:13px=
"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A0 9 make=
[2]: Entering directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"fon=
t-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">y</span><span style=3D"font-family:arial,san=
s-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-f=
amily:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial=
,sans-serif;font-size:13px">denz</span><span style=3D"font-family:arial,san=
s-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-f=
amily:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial=
,sans-serif;font-size:13px">64-</span><span style=3D"font-family:arial,sans=
-serif;font-size:13px">linux/automake-native-1.11.</span><u style=3D"font-f=
amily:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial=
,sans-serif;font-size:13px">2-</span><span style=3D"font-family:arial,sans-=
serif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-famil=
y:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-se=
rif;font-size:13px">=C2=A010 make[2]: Leaving directory `/home/daniel/Karan=
ka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"><=
/u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</span><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.=
0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">denz</span><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/wo=
rk/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-nativ=
e-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span =
style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#3=
9;</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span st=
yle=3D"font-family:arial,sans-serif;font-size:13px">=C2=A011 make[2]: Leavi=
ng directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:ar=
ial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-se=
rif;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial=
,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif=
;font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial=
,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif=
;font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:arial=
,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif=
;font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;font-=
size:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-family:arial,san=
s-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">=C2=A012 Making all in Automake</span><br style=3D"font-family:ari=
al,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">=C2=A013 make[2]: Entering directory `/home/daniel/Karanka-n=
tfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><=
span style=3D"font-family:arial,sans-serif;font-size:13px">y</span><span st=
yle=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/po=
ky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span st=
yle=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x=
86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-native-1.=
11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span styl=
e=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2/lib/</=
span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">Automak</span><span styl=
e=3D"font-family:arial,sans-serif;font-size:13px">e&#39;</span><br style=3D=
"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">=C2=A014 cd ../.. &amp;&amp; make=C2=A0 am--=
refresh</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A015 make[3]: =
Entering directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-fam=
ily:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">y</span><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family=
:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans=
-serif;font-size:13px">denz</span><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family=
:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans=
-serif;font-size:13px">64-</span><span style=3D"font-family:arial,sans-seri=
f;font-size:13px">linux/automake-native-1.11.</span><u style=3D"font-family=
:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans=
-serif;font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-family:ari=
al,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">=C2=A016 make[3]: Leaving directory `/home/daniel/Karanka-nt=
fs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">y</span><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/pok=
y-</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x8=
6_</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span styl=
e=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-native-1.1=
1.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</s=
pan><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=
=3D"font-family:arial,sans-serif;font-size:13px">=C2=A017 cd ../.. &amp;&am=
p; make=C2=A0 am--refresh</span><br style=3D"font-family:arial,sans-serif;f=
ont-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=
=C2=A018 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/</span><u=
 style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">y</span><span style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u st=
yle=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font=
-family:arial,sans-serif;font-size:13px">denz</span><span style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u st=
yle=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font=
-family:arial,sans-serif;font-size:13px">64-</span><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">linux/automake-native-1.11.</span><u st=
yle=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font=
-family:arial,sans-serif;font-size:13px">2-</span><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=
=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-family=
:arial,sans-serif;font-size:13px">=C2=A019 make[3]: Entering directory `/ho=
me/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;fo=
nt-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">y</span><span style=3D"font-family:arial,sans-serif;font-size:13px">octo=
/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-=
size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">=
denz</span><span style=3D"font-family:arial,sans-serif;font-size:13px">il-7=
.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-=
size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">=
64-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">linux=
/automake-native-1.11.</span><u style=3D"font-family:arial,sans-serif;font-=
size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">=
2-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/aut=
omake-1.11.2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size=
:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A020=
 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">y</span><span style=3D"font-family:arial=
,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"fo=
nt-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:a=
rial,sans-serif;font-size:13px">denz</span><span style=3D"font-family:arial=
,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"fo=
nt-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:a=
rial,sans-serif;font-size:13px">64-</span><span style=3D"font-family:arial,=
sans-serif;font-size:13px">linux/automake-native-1.11.</span><u style=3D"fo=
nt-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:a=
rial,sans-serif;font-size:13px">2-</span><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-f=
amily:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,san=
s-serif;font-size:13px">=C2=A021 make[3]: Leaving directory `/home/daniel/K=
aranka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13p=
x"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</span>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzi=
l-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">denz</span>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tm=
p/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><=
span style=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-n=
ative-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.=
2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A022 Making all=
 in .</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A023 make[3]: En=
tering directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-famil=
y:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,san=
s-serif;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;=
font-size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">r3/automake-1.11.2/lib/</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">Automak</span><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">e&#39;</span><br style=3D"font-family:arial,sans-serif;font-=
size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=
=A024 cd ../.. &amp;&amp; make=C2=A0 am--refresh</span><br style=3D"font-fa=
mily:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans=
-serif;font-size:13px">=C2=A025 make[4]: Entering directory `/home/daniel/K=
aranka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13p=
x"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</span>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzi=
l-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">denz</span>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tm=
p/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><=
span style=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-n=
ative-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.=
2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A026 make[4]: L=
eaving directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-famil=
y:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,san=
s-serif;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;=
font-size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-family:arial=
,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">=C2=A027 cd ../.. &amp;&amp; make=C2=A0 am--refresh</span><br =
style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-f=
amily:arial,sans-serif;font-size:13px">=C2=A028 make[4]: Entering directory=
 `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-ser=
if;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px">y</span><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;=
font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:1=
3px">denz</span><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;=
font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:1=
3px">64-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">=
linux/automake-native-1.11.</span><u style=3D"font-family:arial,sans-serif;=
font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:1=
3px">2-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">r=
3/automake-1.11.2&#39;</span><br style=3D"font-family:arial,sans-serif;font=
-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=
=A029 make[4]: Entering directory `/home/daniel/Karanka-ntfs3g/</span><u st=
yle=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font=
-family:arial,sans-serif;font-size:13px">y</span><span style=3D"font-family=
:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=
=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">denz</span><span style=3D"font-family=
:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=
=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">64-</span><span style=3D"font-family:=
arial,sans-serif;font-size:13px">linux/automake-native-1.11.</span><u style=
=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">2-</span><span style=3D"font-family:a=
rial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"=
font-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:ari=
al,sans-serif;font-size:13px">=C2=A030 make[4]: Leaving directory `/home/da=
niel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-si=
ze:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">y<=
/span><span style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky=
-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:=
13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">denz<=
/span><span style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-bu=
ild/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:=
13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</=
span><span style=3D"font-family:arial,sans-serif;font-size:13px">linux/auto=
make-native-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:=
13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</s=
pan><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake=
-1.11.2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:13px=
"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A031 make=
[4]: Leaving directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font=
-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:ari=
al,sans-serif;font-size:13px">y</span><span style=3D"font-family:arial,sans=
-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-fa=
mily:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,=
sans-serif;font-size:13px">denz</span><span style=3D"font-family:arial,sans=
-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-fa=
mily:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,=
sans-serif;font-size:13px">64-</span><span style=3D"font-family:arial,sans-=
serif;font-size:13px">linux/automake-native-1.11.</span><u style=3D"font-fa=
mily:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,=
sans-serif;font-size:13px">2-</span><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-family=
:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">=C2=A032 rm -f Config.tmp Config.pm</span><br style=3D"f=
ont-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">=C2=A033 in=3D`echo Config.pm | sed &#39;s/\.[=
^.]*$//&#39;`; sed -e &#39;s,[@]APIVERSION[@],1.11,g&#39; -e &#39;s,[@]PACK=
AGE[@],automake,g&#39; -e &#39;s,[@]PACKAGE_BUGREPORT[@],</span><a href=3D"=
mailto:bug-automake@gnu.org" target=3D"_blank" style=3D"font-family:arial,s=
ans-serif;font-size:13px">bug<u></u>-automake@gnu.org</a><span style=3D"fon=
t-family:arial,sans-serif;font-size:13px">,g&#39; -e &#39;s,[@]PERL[@],/usr=
/bin/perl,g&#39; -e &#39;s=C2=A0 =C2=A0 ,[@]PERL_THREADS[@],1,g&#39; -e &#3=
9;s,[@]SHELL[@],/bin/bash,g&#39; -e &#39;s,[@]VERSION[@],1.11.2,g&#39; -e &=
quot;s,[@]configure_input[@],</span><u style=3D"font-family:arial,sans-seri=
f;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size=
:13px">Gener</span><span style=3D"font-family:arial,sans-serif;font-size:13=
px">ated from $</span><a href=3D"http://in.in/" target=3D"_blank" style=3D"=
font-family:arial,sans-serif;font-size:13px">in.in</a><span style=3D"font-f=
amily:arial,sans-serif;font-size:13px">; do not edit by hand.,g&quot; -e &#=
39;s,[@]datadir[@],/home/daniel/</span><u style=3D"font-family:arial,sans-s=
erif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">Karanka- ntfs3g/yocto/poky-denzil-7.0/</span><u style=3D"font-fam=
ily:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">p</span><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">oky-denzil-7.0-build/tmp/</span><u style=3D"font-family:=
arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-=
serif;font-size:13px">sysro</span><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">ots/x86_64-linux/usr/</span><u style=3D"font-family:aria=
l,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-seri=
f;font-size:13px">share,g&#39; ./Config.in &gt;Config.tmp</span><br style=
=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-family=
:arial,sans-serif;font-size:13px">=C2=A034 chmod +x Config.tmp</span><br st=
yle=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">=C2=A035 chmod a-w Config.tmp</span><b=
r style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font=
-family:arial,sans-serif;font-size:13px">=C2=A036 mv -f Config.tmp Config.p=
m</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">=C2=A037 make[3]: Leavin=
g directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:ari=
al,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;font-=
size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">r3/automake-1.11.2/lib/</span><u style=3D"font-family:arial,sans-=
serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-=
size:13px">Automak</span><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">e&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:=
13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A038 =
Making all in tests</span><br style=3D"font-family:arial,sans-serif;font-si=
ze:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A0=
39 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/</span><u style=
=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">y</span><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">denz</span><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">64-</span><span style=3D"font-family:ari=
al,sans-serif;font-size:13px">linux/automake-native-1.11.</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">2-</span><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">r3/automake-1.11.2/lib/</span><u style=3D"font=
-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:ari=
al,sans-serif;font-size:13px">Automak</span><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">e/tests&#39;</span><br style=3D"font-family:ar=
ial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;=
font-size:13px">=C2=A040 cd ../../.. &amp;&amp; make=C2=A0 am--refresh</spa=
n><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"=
font-family:arial,sans-serif;font-size:13px">=C2=A041 make[4]: Entering dir=
ectory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sa=
ns-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">y</span><span style=3D"font-family:arial,sans-serif;font-size=
:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-=
serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-=
size:13px">denz</span><span style=3D"font-family:arial,sans-serif;font-size=
:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-=
serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-=
size:13px">64-</span><span style=3D"font-family:arial,sans-serif;font-size:=
13px">linux/automake-native-1.11.</span><u style=3D"font-family:arial,sans-=
serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-=
size:13px">2-</span><span style=3D"font-family:arial,sans-serif;font-size:1=
3px">r3/automake-1.11.2&#39;</span><br style=3D"font-family:arial,sans-seri=
f;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">=C2=A042 make[4]: Leaving directory `/home/daniel/Karanka-ntfs3g/</span>=
<u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D=
"font-family:arial,sans-serif;font-size:13px">y</span><span style=3D"font-f=
amily:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u =
style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">denz</span><span style=3D"font-f=
amily:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u =
style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">64-</span><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">linux/automake-native-1.11.</span><u =
style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">2-</span><span style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><br styl=
e=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">=C2=A043 cd ../../.. &amp;&amp; make=C2=
=A0 am--refresh</span><br style=3D"font-family:arial,sans-serif;font-size:1=
3px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A044 m=
ake[4]: Entering directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"=
font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family=
:arial,sans-serif;font-size:13px">y</span><span style=3D"font-family:arial,=
sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"fon=
t-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">denz</span><span style=3D"font-family:arial,=
sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"fon=
t-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">64-</span><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">linux/automake-native-1.11.</span><u style=3D"fon=
t-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">2-</span><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-fa=
mily:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans=
-serif;font-size:13px">=C2=A045 make[4]: Entering directory `/home/daniel/K=
aranka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13p=
x"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</span>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzi=
l-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">denz</span>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tm=
p/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><=
span style=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-n=
ative-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.=
2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A046 make[4]: L=
eaving directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-famil=
y:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,san=
s-serif;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;=
font-size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-family:arial=
,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">=C2=A047 make[4]: Leaving directory `/home/daniel/Karanka-ntfs=
3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">y</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-=
</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_=
</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-native-1.11=
.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span =
style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</s=
pan><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=
=3D"font-family:arial,sans-serif;font-size:13px">=C2=A048 make[3]: Nothing =
to be done for `all&#39;.</span><br style=3D"font-family:arial,sans-serif;f=
ont-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=
=C2=A049 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/</span><u =
style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">y</span><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u sty=
le=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-=
family:arial,sans-serif;font-size:13px">denz</span><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u sty=
le=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-=
family:arial,sans-serif;font-size:13px">64-</span><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">linux/automake-native-1.11.</span><u sty=
le=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-=
family:arial,sans-serif;font-size:13px">2-</span><span style=3D"font-family=
:arial,sans-serif;font-size:13px">r3/automake-1.11.2/lib/</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">Automak</span><span style=3D"font-family=
:arial,sans-serif;font-size:13px">e/tests&#39;</span><br style=3D"font-fami=
ly:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">=C2=A050 make[2]: Leaving directory `/home/daniel/Kara=
nka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13px">=
</u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</span><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7=
.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u=
><span style=3D"font-family:arial,sans-serif;font-size:13px">denz</span><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/w=
ork/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u=
><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-nati=
ve-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u=
><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2/l=
ib/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">Automak</span><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">e&#39;</span><br sty=
le=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">=C2=A051 Making all in am</span><br sty=
le=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">=C2=A052 make[2]: Entering directory `/=
home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;=
font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:1=
3px">y</span><span style=3D"font-family:arial,sans-serif;font-size:13px">oc=
to/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;fon=
t-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px=
">denz</span><span style=3D"font-family:arial,sans-serif;font-size:13px">il=
-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;fon=
t-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px=
">64-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">lin=
ux/automake-native-1.11.</span><u style=3D"font-family:arial,sans-serif;fon=
t-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px=
">2-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/a=
utomake-1.11.2/lib/am&#39;</span><br style=3D"font-family:arial,sans-serif;=
font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>=C2=A053 cd ../.. &amp;&amp; make=C2=A0 am--refresh</span><br style=3D"fon=
t-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,=
sans-serif;font-size:13px">make[3]: Entering directory `/home/daniel/Karank=
a-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></=
u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</span><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0=
/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><=
span style=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/wor=
k/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><=
span style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span =
style=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-native=
-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><=
span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39=
;</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">=C2=A055 make[3]: Leavin=
g directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:ari=
al,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;font-=
size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-family:arial,sans=
-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px">=C2=A056 cd ../.. &amp;&amp; make=C2=A0 am--refresh</span><br style=
=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-family=
:arial,sans-serif;font-size:13px">=C2=A057 make[3]: Entering directory `/ho=
me/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;fo=
nt-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">y</span><span style=3D"font-family:arial,sans-serif;font-size:13px">octo=
/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-=
size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">=
denz</span><span style=3D"font-family:arial,sans-serif;font-size:13px">il-7=
.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-=
size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">=
64-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">linux=
/automake-native-1.11.</span><u style=3D"font-family:arial,sans-serif;font-=
size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">=
2-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/aut=
omake-1.11.2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size=
:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A058=
 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/</span><u style=
=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">y</span><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">denz</span><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">64-</span><span style=3D"font-family:ari=
al,sans-serif;font-size:13px">linux/automake-native-1.11.</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">2-</span><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"fon=
t-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,=
sans-serif;font-size:13px">=C2=A059 make[3]: Leaving directory `/home/danie=
l/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:=
13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</sp=
an><span style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-de=
nzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13p=
x"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">denz</sp=
an><span style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build=
/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13p=
x"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</spa=
n><span style=3D"font-family:arial,sans-serif;font-size:13px">linux/automak=
e-native-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13p=
x"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span=
><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.=
11.2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><=
span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A060 make[3]=
: Leaving directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-fa=
mily:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,=
sans-serif;font-size:13px">y</span><span style=3D"font-family:arial,sans-se=
rif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-famil=
y:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,san=
s-serif;font-size:13px">denz</span><span style=3D"font-family:arial,sans-se=
rif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-famil=
y:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,san=
s-serif;font-size:13px">64-</span><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">linux/automake-native-1.11.</span><u style=3D"font-famil=
y:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,san=
s-serif;font-size:13px">2-</span><span style=3D"font-family:arial,sans-seri=
f;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-family:ar=
ial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;=
font-size:13px">=C2=A061 make[2]: Nothing to be done for `all&#39;.</span><=
br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"fon=
t-family:arial,sans-serif;font-size:13px">=C2=A062 make[2]: Leaving directo=
ry `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-s=
erif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">y</span><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-seri=
f;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size=
:13px">denz</span><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-seri=
f;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size=
:13px">64-</span><span style=3D"font-family:arial,sans-serif;font-size:13px=
">linux/automake-native-1.11.</span><u style=3D"font-family:arial,sans-seri=
f;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size=
:13px">2-</span><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>r3/automake-1.11.2/lib/am&#39;</span><br style=3D"font-family:arial,sans-s=
erif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:=
13px">=C2=A063 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/</s=
pan><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span styl=
e=3D"font-family:arial,sans-serif;font-size:13px">y</span><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span=
><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span style=3D"=
font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</sp=
an><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">linux/automake-native-1.11.</sp=
an><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2/lib&#39;</spa=
n><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"=
font-family:arial,sans-serif;font-size:13px">=C2=A064 cd .. &amp;&amp; make=
=C2=A0 am--refresh</span><br style=3D"font-family:arial,sans-serif;font-siz=
e:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A06=
5 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/</span><u style=
=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">y</span><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">denz</span><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">64-</span><span style=3D"font-family:ari=
al,sans-serif;font-size:13px">linux/automake-native-1.11.</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">2-</span><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"fon=
t-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,=
sans-serif;font-size:13px">=C2=A066 make[3]: Leaving directory `/home/danie=
l/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:=
13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</sp=
an><span style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-de=
nzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13p=
x"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">denz</sp=
an><span style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build=
/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13p=
x"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</spa=
n><span style=3D"font-family:arial,sans-serif;font-size:13px">linux/automak=
e-native-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13p=
x"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span=
><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.=
11.2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><=
span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A067 cd .. &=
amp;&amp; make=C2=A0 am--refresh</span><br style=3D"font-family:arial,sans-=
serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size=
:13px">=C2=A068 make[3]: Entering directory `/home/daniel/Karanka-ntfs3g/</=
span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">y</span><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</spa=
n><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span style=3D"=
font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</sp=
an><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">linux/automake-native-1.11.</sp=
an><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><b=
r style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font=
-family:arial,sans-serif;font-size:13px">=C2=A069 make[3]: Entering directo=
ry `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-s=
erif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">y</span><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-seri=
f;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size=
:13px">denz</span><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-seri=
f;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size=
:13px">64-</span><span style=3D"font-family:arial,sans-serif;font-size:13px=
">linux/automake-native-1.11.</span><u style=3D"font-family:arial,sans-seri=
f;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size=
:13px">2-</span><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>r3/automake-1.11.2&#39;</span><br style=3D"font-family:arial,sans-serif;fo=
nt-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=
=C2=A070 make[3]: Leaving directory `/home/daniel/Karanka-ntfs3g/</span><u =
style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">y</span><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u sty=
le=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-=
family:arial,sans-serif;font-size:13px">denz</span><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u sty=
le=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-=
family:arial,sans-serif;font-size:13px">64-</span><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">linux/automake-native-1.11.</span><u sty=
le=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-=
family:arial,sans-serif;font-size:13px">2-</span><span style=3D"font-family=
:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=
=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-family=
:arial,sans-serif;font-size:13px">=C2=A071 make[3]: Leaving directory `/hom=
e/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;fon=
t-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px=
">y</span><span style=3D"font-family:arial,sans-serif;font-size:13px">octo/=
poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-s=
ize:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">d=
enz</span><span style=3D"font-family:arial,sans-serif;font-size:13px">il-7.=
0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-s=
ize:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">6=
4-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">linux/=
automake-native-1.11.</span><u style=3D"font-family:arial,sans-serif;font-s=
ize:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">2=
-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/auto=
make-1.11.2&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:=
13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A072 =
make[2]: Nothing to be done for `all-am&#39;.</span><br style=3D"font-famil=
y:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-se=
rif;font-size:13px">=C2=A073 make[2]: Leaving directory `/home/daniel/Karan=
ka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"><=
/u><span style=3D"font-family:arial,sans-serif;font-size:13px">y</span><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.=
0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">denz</span><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/wo=
rk/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-nativ=
e-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span =
style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2/li=
b&#39;</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A074 make[1]: L=
eaving directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-famil=
y:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,san=
s-serif;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;=
font-size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">r3/automake-1.11.2/lib&#39;</span><br style=3D"font-family:a=
rial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif=
;font-size:13px">=C2=A075 Making all in .</span><br style=3D"font-family:ar=
ial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;=
font-size:13px">=C2=A076 make[1]: Entering directory `/home/daniel/Karanka-=
ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">y</span><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/p=
oky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/=
x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span st=
yle=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-native-1=
.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;<=
/span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=
=3D"font-family:arial,sans-serif;font-size:13px">=C2=A077 rm -f automake au=
tomake.tmp</span><br style=3D"font-family:arial,sans-serif;font-size:13px">=
<span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A078 rm -f =
aclocal aclocal.tmp</span><br style=3D"font-family:arial,sans-serif;font-si=
ze:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A0=
79 sed -e &#39;s,[@]APIVERSION[@],1.11,g&#39; -e &#39;s,[@]PACKAGE[@],autom=
ake,g&#39; -e &#39;s,[@]PACKAGE_BUGREPORT[@],</span><a href=3D"mailto:bug-a=
utomake@gnu.org" target=3D"_blank" style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">bug<u></u>-automake@gnu.org</a><span style=3D"font-family:ari=
al,sans-serif;font-size:13px">,g&#39; -e &#39;s,[@]PACKAGE_URL[@],</span><a=
 href=3D"http://www.gnu.org/software/automake/,g" target=3D"_blank" style=
=3D"font-family:arial,sans-serif;font-size:13px">http://<u></u>www.gnu.org/=
software/automake/<u></u>,g</a><span style=3D"font-family:arial,sans-serif;=
font-size:13px">&#39; -e &#39;s,[@]PATH_SE=C2=A0 =C2=A0 PARATOR[@],:,g&#39;=
 -e &#39;s,[@]PERL[@],/usr/bin/perl,g&#39; -e &#39;s,[@]PERL_THREADS[@],1,g=
&#39; -e &#39;s,[@]SHELL[@],/bin/bash,g&#39; -e &#39;s,[@]am_AUTOCONF[@],au=
toconf,</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">g&#39; -e &#39;=
s,[@]am_AUTOM4TE[@],autom4te,</span><u style=3D"font-family:arial,sans-seri=
f;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size=
:13px">g&#39; -e &#39;s,[@]VERSION[@]=C2=A0 =C2=A0 ,1.11.2,g&#39; -e &#39;s=
,[@]configure_input[@],</span><u style=3D"font-family:arial,sans-serif;font=
-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>Gener</span><span style=3D"font-family:arial,sans-serif;font-size:13px">at=
ed from=C2=A0</span><a href=3D"http://automake.in/" target=3D"_blank" style=
=3D"font-family:arial,sans-serif;font-size:13px">automake.in</a><span style=
=3D"font-family:arial,sans-serif;font-size:13px">; do not edit by hand.,g&#=
39; -e &#39;s,[@]datadir[@],/home/daniel/</span><u style=3D"font-family:ari=
al,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">Karanka-ntfs3g/yocto/poky-</span><u style=3D"font-family=
:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans=
-serif;font-size:13px">denz</span><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">il-7.0/poky-denzil-7.0-</span><u style=3D"font-family:ar=
ial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-se=
rif;font-size:13px">build/</span><span style=3D"font-family:arial,sans-seri=
f;font-size:13px">tmp/sysroots/x86_64 -linux/usr/share,g&#39; ./</span><a h=
ref=3D"http://automake.in/" target=3D"_blank" style=3D"font-family:arial,sa=
ns-serif;font-size:13px">automake.in</a><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">=C2=A0&gt;automake.tmp</span><br style=3D"font-fam=
ily:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-=
serif;font-size:13px">=C2=A080 sed -e &#39;s,[@]APIVERSION[@],1.11,g&#39; -=
e &#39;s,[@]PACKAGE[@],automake,g&#39; -e &#39;s,[@]PACKAGE_BUGREPORT[@],</=
span><a href=3D"mailto:bug-automake@gnu.org" target=3D"_blank" style=3D"fon=
t-family:arial,sans-serif;font-size:13px">bug<u></u>-automake@gnu.org</a><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">,g&#39; -e &#39;s=
,[@]PACKAGE_URL[@],</span><a href=3D"http://www.gnu.org/software/automake/,=
g" target=3D"_blank" style=3D"font-family:arial,sans-serif;font-size:13px">=
http://<u></u>www.gnu.org/software/automake/<u></u>,g</a><span style=3D"fon=
t-family:arial,sans-serif;font-size:13px">&#39; -e &#39;s,[@]PATH_SE=C2=A0 =
=C2=A0 PARATOR[@],:,g&#39; -e &#39;s,[@]PERL[@],/usr/bin/perl,g&#39; -e &#3=
9;s,[@]PERL_THREADS[@],1,g&#39; -e &#39;s,[@]SHELL[@],/bin/bash,g&#39; -e &=
#39;s,[@]am_AUTOCONF[@],autoconf,</span><u style=3D"font-family:arial,sans-=
serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-=
size:13px">g&#39; -e &#39;s,[@]am_AUTOM4TE[@],autom4te,</span><u style=3D"f=
ont-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:=
arial,sans-serif;font-size:13px">g&#39; -e &#39;s,[@]VERSION[@]=C2=A0 =C2=
=A0 ,1.11.2,g&#39; -e &#39;s,[@]configure_input[@],</span><u style=3D"font-=
family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">Gener</span><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">ated from=C2=A0</span><a href=3D"http://aclocal.i=
n/" target=3D"_blank" style=3D"font-family:arial,sans-serif;font-size:13px"=
>aclocal.in</a><span style=3D"font-family:arial,sans-serif;font-size:13px">=
; do not edit by hand.,g&#39; -e &#39;s,[@]datadir[@],/home/daniel/</span><=
u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"=
font-family:arial,sans-serif;font-size:13px">Karanka-ntfs3g/yocto/poky-</sp=
an><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span style=3D"=
font-family:arial,sans-serif;font-size:13px">il-7.0/poky-denzil-7.0-</span>=
<u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D=
"font-family:arial,sans-serif;font-size:13px">build/</span><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">tmp/sysroots/x86_64- linux/usr/=
share,g&#39; ./</span><a href=3D"http://aclocal.in/" target=3D"_blank" styl=
e=3D"font-family:arial,sans-serif;font-size:13px">aclocal.in</a><span style=
=3D"font-family:arial,sans-serif;font-size:13px">=C2=A0&gt;aclocal.tmp</spa=
n><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"=
font-family:arial,sans-serif;font-size:13px">=C2=A081 chmod +x aclocal.tmp<=
/span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=
=3D"font-family:arial,sans-serif;font-size:13px">=C2=A082 chmod a-w aclocal=
.tmp</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span =
style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A083 mv -f acloca=
l.tmp aclocal</span><br style=3D"font-family:arial,sans-serif;font-size:13p=
x"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A084 chm=
od +x automake.tmp</span><br style=3D"font-family:arial,sans-serif;font-siz=
e:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A08=
5 chmod a-w automake.tmp</span><br style=3D"font-family:arial,sans-serif;fo=
nt-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=
=C2=A086 mv -f automake.tmp automake</span><br style=3D"font-family:arial,s=
ans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-=
size:13px">=C2=A087 make[1]: Leaving directory `/home/daniel/Karanka-ntfs3g=
/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span =
style=3D"font-family:arial,sans-serif;font-size:13px">y</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-=
</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_=
</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-native-1.11=
.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span =
style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</s=
pan><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=
=3D"font-family:arial,sans-serif;font-size:13px">=C2=A088 Making all in doc=
</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span styl=
e=3D"font-family:arial,sans-serif;font-size:13px">=C2=A089 make[1]: Enterin=
g directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:ari=
al,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;font-=
size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">r3/automake-1.11.2/doc&#39;</span><br style=3D"font-family:arial,=
sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font=
-size:13px">=C2=A090 cd .. &amp;&amp; make=C2=A0 am--refresh</span><br styl=
e=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">=C2=A091 make[2]: Entering directory `/h=
ome/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;f=
ont-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13=
px">y</span><span style=3D"font-family:arial,sans-serif;font-size:13px">oct=
o/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font=
-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>denz</span><span style=3D"font-family:arial,sans-serif;font-size:13px">il-=
7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;font=
-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>64-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">linu=
x/automake-native-1.11.</span><u style=3D"font-family:arial,sans-serif;font=
-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>2-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/au=
tomake-1.11.2&#39;</span><br style=3D"font-family:arial,sans-serif;font-siz=
e:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A09=
2 make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/</span><u style=
=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">y</span><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">denz</span><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">64-</span><span style=3D"font-family:ari=
al,sans-serif;font-size:13px">linux/automake-native-1.11.</span><u style=3D=
"font-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">2-</span><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><br style=3D"fon=
t-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,=
sans-serif;font-size:13px">=C2=A093 cd .. &amp;&amp; make=C2=A0 am--refresh=
</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span styl=
e=3D"font-family:arial,sans-serif;font-size:13px">=C2=A094 make[2]: Enterin=
g directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:ari=
al,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;font-=
size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:arial,=
sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;=
font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">r3/automake-1.11.2&#39;</span><br style=3D"font-family:arial,sans=
-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px">=C2=A095 make[2]: Entering directory `/home/daniel/Karanka-ntfs3g/<=
/span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span st=
yle=3D"font-family:arial,sans-serif;font-size:13px">y</span><span style=3D"=
font-family:arial,sans-serif;font-size:13px">octo/poky-denzil-7.0/poky-</sp=
an><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">denz</span><span style=3D"=
font-family:arial,sans-serif;font-size:13px">il-7.0-build/tmp/work/x86_</sp=
an><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">linux/automake-native-1.11.</sp=
an><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span style=
=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2&#39;</span><b=
r style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font=
-family:arial,sans-serif;font-size:13px">=C2=A096 make[2]: Leaving director=
y `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-se=
rif;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">y</span><span style=3D"font-family:arial,sans-serif;font-size:13px=
">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif=
;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:=
13px">denz</span><span style=3D"font-family:arial,sans-serif;font-size:13px=
">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif=
;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:=
13px">64-</span><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>linux/automake-native-1.11.</span><u style=3D"font-family:arial,sans-serif=
;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:=
13px">2-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">=
r3/automake-1.11.2&#39;</span><br style=3D"font-family:arial,sans-serif;fon=
t-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">ma=
ke[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"fo=
nt-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:a=
rial,sans-serif;font-size:13px">y</span><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-=
family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">denz</span><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">il-7.0-build/tmp/work/</span><u style=3D"font-fami=
ly:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">ERROR: Function failed: do_compile (see /home/dani=
el/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size=
:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">yo</=
span><span style=3D"font-family:arial,sans-serif;font-size:13px">cto/poky-d=
enzil-7.0/pok y-denzil-7.0-build/tmp/work/</span><u style=3D"font-family:ar=
ial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-se=
rif;font-size:13px">x8</span><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">6_64-linux/automake-native-</span><u style=3D"font-family:ari=
al,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">1.</span><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">11.2-r3/temp/log.do_compile.</span><u style=3D"font-family:ari=
al,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">17</span><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">789 for further information)</span><br style=3D"font-family:ar=
ial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;=
font-size:13px">=C2=A098 x86_64-linux/automake-native-</span><u style=3D"fo=
nt-family:arial,sans-serif;font-size:13px"></u><span style=3D"font-family:a=
rial,sans-serif;font-size:13px">1</span><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">.11.2-r3/automake-1.11.2&#39;</span><br style=3D"f=
ont-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">=C2=A099 PATH=3D&quot;`pwd`/../tests:$PATH&quo=
t; &amp;&amp; export PATH &amp;&amp; /bin/bash /home/daniel/Karanka-ntfs3g/=
</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">yo</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">cto/poky-denzil-7.0/poky-<=
/span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span st=
yle=3D"font-family:arial,sans-serif;font-size:13px">denzi</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">l-7.0-build/tmp/work/x86_<=
/span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span st=
yle=3D"font-family:arial,sans-serif;font-size:13px">64-</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-native-1.11=
.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span =
style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2/lib/</s=
pan><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><span styl=
e=3D"font-family:arial,sans-serif;font-size:13px">missin g --run help2man -=
-output=3Dautomake-1.11.1 automake-1.11</span><br style=3D"font-family:aria=
l,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">100 WARNING: `help2man&#39; is missing on your system.=C2=A0 =
You should only need it if</span><br style=3D"font-family:arial,sans-serif;=
font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>101=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 you modified a dependency of a manua=
l page.=C2=A0 You may need the</span><br style=3D"font-family:arial,sans-se=
rif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:1=
3px">102=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 `Help2man&#39; package in order =
for those modifications to take</span><br style=3D"font-family:arial,sans-s=
erif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:=
13px">103=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 effect.=C2=A0 You can get `Help=
2man&#39; from any GNU archive site.</span><br style=3D"font-family:arial,s=
ans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-=
size:13px">104 Updating ./version.texi</span><br style=3D"font-family:arial=
,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">105 restore=3D: &amp;&amp; backupdir=3D&quot;.am$$&quot; &amp;=
&amp; \</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">106=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0am__cwd=3D`pwd` &amp;&amp; CDPATH=3D&quot;${ZSH_VERSION=
+.}:&quot; &amp;&amp; cd . &amp;&amp; \</span><br style=3D"font-family:aria=
l,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">107=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf $backupdir &amp;&=
amp; mkdir $backupdir &amp;&amp; \</span><br style=3D"font-family:arial,san=
s-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">108=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (/bin/bash /home/daniel/Ka=
ranka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif;font-size:13px=
"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">yo</span>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">cto/poky-denzil=
-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;font-size:13px"><=
/u><span style=3D"font-family:arial,sans-serif;font-size:13px">denzi</span>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">l-7.0-build/tmp=
/work/x86_</span><u style=3D"font-family:arial,sans-serif;font-size:13px"><=
/u><span style=3D"font-family:arial,sans-serif;font-size:13px">64-</span><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">linux/automake-na=
tive-1.11.</span><u style=3D"font-family:arial,sans-serif;font-size:13px"><=
/u><span style=3D"font-family:arial,sans-serif;font-size:13px">2-</span><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">r3/automake-1.11.2=
/lib/</span><u style=3D"font-family:arial,sans-serif;font-size:13px"></u><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">missing --run mak=
einfo --version) &gt;/dev/=C2=A0 =C2=A0 null 2&gt;&amp;1; then \</span><br =
style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-f=
amily:arial,sans-serif;font-size:13px">109=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0for f in=C2=A0</span><a href=3D"http://automake.info/" target=3D"=
_blank" style=3D"font-family:arial,sans-serif;font-size:13px">automake.info=
</a><span style=3D"font-family:arial,sans-serif;font-size:13px">=C2=A0autom=
ake.info-[0-9] automake.info-[0-9][0-9] automake.i[0-9] automake.i[0-9][0-9=
]; do \</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">110=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if test -f $f; then mv $f $backupdir; res=
tore=3Dmv; else :; fi; \</span><br style=3D"font-family:arial,sans-serif;fo=
nt-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">1=
11=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done; \</span><br style=3D"font-=
family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">112=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else :; fi &a=
mp;&amp; \</span><br style=3D"font-family:arial,sans-serif;font-size:13px">=
<span style=3D"font-family:arial,sans-serif;font-size:13px">113=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0cd &quot;$am__cwd&quot;; \</span><br style=3D"font-=
family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">114=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if /bin/bash =
/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:arial,sans-serif=
;font-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:=
13px">yo</span><span style=3D"font-family:arial,sans-serif;font-size:13px">=
cto/poky-denzil-7.0/poky-</span><u style=3D"font-family:arial,sans-serif;fo=
nt-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">denzi</span><span style=3D"font-family:arial,sans-serif;font-size:13px">=
l-7.0-build/tmp/work/x86_</span><u style=3D"font-family:arial,sans-serif;fo=
nt-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">64-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">li=
nux/automake-native-1.11.</span><u style=3D"font-family:arial,sans-serif;fo=
nt-size:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">2-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">r3/=
automake-1.11.2/lib/</span><u style=3D"font-family:arial,sans-serif;font-si=
ze:13px"></u><span style=3D"font-family:arial,sans-serif;font-size:13px">mi=
ssing --run makeinfo=C2=A0 =C2=A0-I . \</span><br style=3D"font-family:aria=
l,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">115=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -o=C2=A0</span><a href=
=3D"http://automake.info/" target=3D"_blank" style=3D"font-family:arial,san=
s-serif;font-size:13px">automake.info</a><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">=C2=A0automake.texi; \</span><br style=3D"font-fa=
mily:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans=
-serif;font-size:13px">116=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0then \</span><b=
r style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font=
-family:arial,sans-serif;font-size:13px">117=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0rc=3D0; \</span><br style=3D"font-family:arial,sans-serif;font-si=
ze:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">118=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CDPATH=3D&quot;${ZSH_VERSION+.}:&quot=
; &amp;&amp; cd .; \</span><br style=3D"font-family:arial,sans-serif;font-s=
ize:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">119=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else \</span><br style=3D"font-family:ari=
al,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">120=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc=3D$?; \</span=
><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">121=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0CDPATH=3D&quot;${ZSH_VERSION+.}:&quot; &amp;&amp; cd . &amp;&a=
mp; \</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">122=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0$restore $backupdir/* `echo &quot;./</span><a href=
=3D"http://automake.info/" target=3D"_blank" style=3D"font-family:arial,san=
s-serif;font-size:13px">automake.info</a><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">&quot; | sed &#39;s|[^/]*$||&#39;`; \</span><br s=
tyle=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">123=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
fi; \</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">124=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rm -rf $backupdir; exit $rc</span><br style=3D"font-family=
:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-ser=
if;font-size:13px">125 automake.texi:13043: @itemx must follow @item</span>=
<br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">126 automake.texi:13060: @itemx =
must follow @item</span><br style=3D"font-family:arial,sans-serif;font-size=
:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">127 auto=
make.texi:13066: @itemx must follow @item</span><br style=3D"font-family:ar=
ial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;=
font-size:13px">128 make[1]: *** [</span><a href=3D"http://automake.info/" =
target=3D"_blank" style=3D"font-family:arial,sans-serif;font-size:13px">aut=
omake.info</a><span style=3D"font-family:arial,sans-serif;font-size:13px">]=
 Error 1</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">129 make[1]: Leav=
ing directory `/home/daniel/Karanka-ntfs3g/</span><u style=3D"font-family:a=
rial,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">y</span><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">octo/poky-denzil-7.0/poky-</span><u style=3D"font-family:aria=
l,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-seri=
f;font-size:13px">denz</span><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">il-7.0-build/tmp/work/x86_</span><u style=3D"font-family:aria=
l,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-seri=
f;font-size:13px">64-</span><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">linux/automake-native-1.11.</span><u style=3D"font-family:aria=
l,sans-serif;font-size:13px"></u><span style=3D"font-family:arial,sans-seri=
f;font-size:13px">2-</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">r3/automake-1.11.2/doc&#39;</span><br style=3D"font-family:aria=
l,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">130 make: *** [all-recursive] Error 1</span><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">131 ERROR: oe_runmake failed</span><br style=3D"f=
ont-family:arial,sans-serif;font-size:13px"><br style=3D"font-family:arial,=
sans-serif;font-size:13px"><br style=3D"font-family:arial,sans-serif;font-s=
ize:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">Googl=
ed a bit about this error and found something that looks fairly similar :</=
span><br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D=
"font-family:arial,sans-serif;font-size:13px"><a href=3D"https://www.dream-=
multimedia-tv.de/board/index.php?page=3DThread&amp;threadID=3D18118" target=
=3D"_blank" style=3D"font-family:arial,sans-serif;font-size:13px">https://w=
ww.dream-multimedia-<u></u>tv.de/board/index.php?page=3D<u></u>Thread&amp;t=
hreadID=3D18118</a><br style=3D"font-family:arial,sans-serif;font-size:13px=
"><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"=
font-family:arial,sans-serif;font-size:13px">However I don&#39;t know how t=
o configure the particular package.</span><br style=3D"font-family:arial,sa=
ns-serif;font-size:13px"><br style=3D"font-family:arial,sans-serif;font-siz=
e:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">Can you=
 guys help me ?</span><br style=3D"font-family:arial,sans-serif;font-size:1=
3px"><span style=3D"font-family:arial,sans-serif;font-size:13px">Thank you =
in advance.</span><br></div>

--001a11c3aab0b9e2e50508c42863--
