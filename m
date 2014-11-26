Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A73DFE00860; Wed, 26 Nov 2014 08:13:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F027E007B9
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 08:13:46 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2A50EF811E3; Wed, 26 Nov 2014 09:13:45 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8A7D7F811DD;
	Wed, 26 Nov 2014 09:13:42 -0700 (MST)
Message-ID: <5475FC3D.3080604@mlbassoc.com>
Date: Wed, 26 Nov 2014 09:13:49 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Pavel Daniel <daniel.pavel19@gmail.com>
References: <CAB1xj1+rrXbdsGhQBtJWsE5Z6EHcoUp=0Urct6f3MpmJdUtEHw@mail.gmail.com>	<5475EAF8.3060803@mlbassoc.com>
	<CAB1xj1LvkOUQq8==bLL+Y1rYpBhC=XuV1ByWPV4vMuu2ZOA5JA@mail.gmail.com>
In-Reply-To: <CAB1xj1LvkOUQq8==bLL+Y1rYpBhC=XuV1ByWPV4vMuu2ZOA5JA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Automake error when building core-image-sato
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
X-List-Received-Date: Wed, 26 Nov 2014 16:13:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-11-26 08:43, Pavel Daniel wrote:
> I am running ubuntu 14.04LTS.
> The reason i'm using poky denzil 7.0 it's the same that the tutorial states : later versions of poky had issues building for pandaboard. Is there a later version of poky that might
> work on building for pandaboard ?.
>

Looking at those instructions, I think that any recent version should work.
If you have problems, I'd suggest asking on the meta-ti mailing list
   meta-ti@yoctoproject.org

n.b. please keep the discussion on the mailing list so that everyone benefits.

> On Wed, Nov 26, 2014 at 5:00 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2014-11-26 07:51, Pavel Daniel wrote:
>
>         Hello, I am new to Yocto and trying to build an Image for Pandaboard using this guy's guidelines :
>
>         http://maniacbug.wordpress.____com/2012/08/03/pandayocto/ <http://maniacbug.wordpress.__com/2012/08/03/pandayocto/ <http://maniacbug.wordpress.com/2012/08/03/pandayocto/>>
>
>         and encountered the following error when building. Here's my log :
>
>
>     Some information about your build environment will help, in particular
>     what is your build host?
>
>     Also, you might try a newer version of Poky/Yocto.
>
>
>         NOTE: make -j 4
>             2 Making all in lib
>             3 make[1]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib'
>             4 cd .. && make  am--refresh
>             5 make[2]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>             6 make[2]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>             7 cd .. && make  am--refresh
>             8 make[2]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>             9 make[2]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            10 make[2]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            11 make[2]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            12 Making all in Automake
>            13 make[2]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/____Automake'
>            14 cd ../.. && make  am--refresh
>            15 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            16 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            17 cd ../.. && make  am--refresh
>            18 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            19 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            20 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            21 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            22 Making all in .
>            23 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/____Automake'
>            24 cd ../.. && make  am--refresh
>            25 make[4]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            26 make[4]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            27 cd ../.. && make  am--refresh
>            28 make[4]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            29 make[4]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            30 make[4]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            31 make[4]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            32 rm -f Config.tmp Config.pm
>            33 in=`echo Config.pm | sed 's/\.[^.]*$//'`; sed -e 's,[@]APIVERSION[@],1.11,g' -e 's,[@]PACKAGE[@],automake,g' -e 's,[@]PACKAGE_BUGREPORT[@],bug____-automake@gnu.org
>         <mailto:bug__-automake@gnu.org>
>         <mailto:bug-automake@gnu.org <mailto:bug-automake@gnu.org>>,__g' -e 's,[@]PERL[@],/usr/bin/perl,g' -e 's    ,[@]PERL_THREADS[@],1,g' -e 's,[@]SHELL[@],/bin/bash,g' -e
>         's,[@]VERSION[@],1.11.2,g' -e
>         "s,[@]configure_input[@],____Generated from $in.in <http://in.in> <http://in.in/>; do not edit by hand.,g" -e 's,[@]datadir[@],/home/daniel/____Karanka-
>         ntfs3g/yocto/poky-denzil-7.0/____poky-denzil-7.0-build/tmp/____sysroots/x86_64-linux/usr/____share,g' ./Config.in >Config.tmp
>            34 chmod +x Config.tmp
>            35 chmod a-w Config.tmp
>            36 mv -f Config.tmp Config.pm
>            37 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/____Automake'
>            38 Making all in tests
>            39 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/____Automake/tests'
>            40 cd ../../.. && make  am--refresh
>            41 make[4]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            42 make[4]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            43 cd ../../.. && make  am--refresh
>            44 make[4]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            45 make[4]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            46 make[4]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            47 make[4]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            48 make[3]: Nothing to be done for `all'.
>            49 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/____Automake/tests'
>            50 make[2]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/____Automake'
>            51 Making all in am
>            52 make[2]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/__am'
>            53 cd ../.. && make  am--refresh
>         make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            55 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            56 cd ../.. && make  am--refresh
>            57 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            58 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            59 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            60 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            61 make[2]: Nothing to be done for `all'.
>            62 make[2]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/__am'
>            63 make[2]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib'
>            64 cd .. && make  am--refresh
>            65 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            66 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            67 cd .. && make  am--refresh
>            68 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            69 make[3]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            70 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            71 make[3]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            72 make[2]: Nothing to be done for `all-am'.
>            73 make[2]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib'
>            74 make[1]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib'
>            75 Making all in .
>            76 make[1]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            77 rm -f automake automake.tmp
>            78 rm -f aclocal aclocal.tmp
>            79 sed -e 's,[@]APIVERSION[@],1.11,g' -e 's,[@]PACKAGE[@],automake,g' -e 's,[@]PACKAGE_BUGREPORT[@],bug____-automake@gnu.org <mailto:bug__-automake@gnu.org>
>         <mailto:bug-automake@gnu.org <mailto:bug-automake@gnu.org>>,__g' -e
>         's,[@]PACKAGE_URL[@],http://____www.gnu.org/software/automake/____,g <http://www.gnu.org/software/automake/__,g> <http://www.gnu.org/software/__automake/,g
>         <http://www.gnu.org/software/automake/,g>>' -e 's,[@]PATH_SE    PARATOR[@],:,g' -e 's,[@]PERL[@],/usr/bin/perl,g' -e
>         's,[@]PERL_THREADS[@],1,g' -e 's,[@]SHELL[@],/bin/bash,g' -e 's,[@]am_AUTOCONF[@],autoconf,____g' -e 's,[@]am_AUTOM4TE[@],autom4te,____g' -e 's,[@]VERSION[@]    ,1.11.2,g' -e
>         's,[@]configure_input[@],____Generated from automake.in <http://automake.in> <http://automake.in/>; do not edit by hand.,g' -e
>         's,[@]datadir[@],/home/daniel/____Karanka-ntfs3g/yocto/poky-____denzil-7.0/poky-denzil-7.0-____build/tmp/sysroots/x86_64 -linux/usr/share,g' ./automake.in
>         <http://automake.in> <http://automake.in/> >automake.tmp
>            80 sed -e 's,[@]APIVERSION[@],1.11,g' -e 's,[@]PACKAGE[@],automake,g' -e 's,[@]PACKAGE_BUGREPORT[@],bug____-automake@gnu.org <mailto:bug__-automake@gnu.org>
>         <mailto:bug-automake@gnu.org <mailto:bug-automake@gnu.org>>,__g' -e
>         's,[@]PACKAGE_URL[@],http://____www.gnu.org/software/automake/____,g <http://www.gnu.org/software/automake/__,g> <http://www.gnu.org/software/__automake/,g
>         <http://www.gnu.org/software/automake/,g>>' -e 's,[@]PATH_SE    PARATOR[@],:,g' -e 's,[@]PERL[@],/usr/bin/perl,g' -e
>         's,[@]PERL_THREADS[@],1,g' -e 's,[@]SHELL[@],/bin/bash,g' -e 's,[@]am_AUTOCONF[@],autoconf,____g' -e 's,[@]am_AUTOM4TE[@],autom4te,____g' -e 's,[@]VERSION[@]    ,1.11.2,g' -e
>         's,[@]configure_input[@],____Generated from aclocal.in <http://aclocal.in> <http://aclocal.in/>; do not edit by hand.,g' -e
>         's,[@]datadir[@],/home/daniel/____Karanka-ntfs3g/yocto/poky-____denzil-7.0/poky-denzil-7.0-____build/tmp/sysroots/x86_64- linux/usr/share,g' ./aclocal.in
>         <http://aclocal.in> <http://aclocal.in/> >aclocal.tmp
>            81 chmod +x aclocal.tmp
>            82 chmod a-w aclocal.tmp
>            83 mv -f aclocal.tmp aclocal
>            84 chmod +x automake.tmp
>            85 chmod a-w automake.tmp
>            86 mv -f automake.tmp automake
>            87 make[1]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            88 Making all in doc
>            89 make[1]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/doc'
>            90 cd .. && make  am--refresh
>            91 make[2]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            92 make[2]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            93 cd .. && make  am--refresh
>            94 make[2]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            95 make[2]: Entering directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>            96 make[2]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2'
>         make[2]: Leaving directory `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/____ERROR: Function failed: do_compile (see
>         /home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/pok y-denzil-7.0-build/tmp/work/____x86_64-linux/automake-native-____1.11.2-r3/temp/log.do___compile.__17789 for
>         further information)
>            98 x86_64-linux/automake-native-____1.11.2-r3/automake-1.11.2'
>            99 PATH="`pwd`/../tests:$PATH" && export PATH && /bin/bash
>         /home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/____missin g
>         --run help2man
>         --output=automake-1.11.1 automake-1.11
>         100 WARNING: `help2man' is missing on your system.  You should only need it if
>         101          you modified a dependency of a manual page.  You may need the
>         102          `Help2man' package in order for those modifications to take
>         103          effect.  You can get `Help2man' from any GNU archive site.
>         104 Updating ./version.texi
>         105 restore=: && backupdir=".am$$" && \
>         106         am__cwd=`pwd` && CDPATH="${ZSH_VERSION+.}:" && cd . && \
>         107         rm -rf $backupdir && mkdir $backupdir && \
>         108         if (/bin/bash
>         /home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/____missing
>         --run makeinfo
>         --version) >/dev/    null 2>&1; then \
>         109           for f in automake.info <http://automake.info> <http://automake.info/> automake.info-[0-9] automake.info-[0-9][0-9] automake.i[0-9] automake.i[0-9][0-9]; do \
>         110             if test -f $f; then mv $f $backupdir; restore=mv; else :; fi; \
>         111           done; \
>         112         else :; fi && \
>         113         cd "$am__cwd"; \
>         114         if /bin/bash
>         /home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/lib/____missing
>         --run makeinfo   -I . \
>         115          -o automake.info <http://automake.info> <http://automake.info/> automake.texi; \
>         116         then \
>         117           rc=0; \
>         118           CDPATH="${ZSH_VERSION+.}:" && cd .; \
>         119         else \
>         120           rc=$?; \
>         121           CDPATH="${ZSH_VERSION+.}:" && cd . && \
>         122           $restore $backupdir/* `echo "./automake.info <http://automake.info> <http://automake.info/>" | sed 's|[^/]*$||'`; \
>         123         fi; \
>         124         rm -rf $backupdir; exit $rc
>         125 automake.texi:13043: @itemx must follow @item
>         126 automake.texi:13060: @itemx must follow @item
>         127 automake.texi:13066: @itemx must follow @item
>         128 make[1]: *** [automake.info <http://automake.info> <http://automake.info/>] Error 1
>         129 make[1]: Leaving directory
>         `/home/daniel/Karanka-ntfs3g/____yocto/poky-denzil-7.0/poky-____denzil-7.0-build/tmp/work/x86_____64-linux/automake-native-1.__11.__2-r3/automake-1.11.2/doc'
>         130 make: *** [all-recursive] Error 1
>         131 ERROR: oe_runmake failed
>
>
>         Googled a bit about this error and found something that looks fairly similar :
>
>         https://www.dream-multimedia-____tv.de/board/index.php?page=____Thread&threadID=18118 <https://www.dream-multimedia-__tv.de/board/index.php?page=__Thread&threadID=18118>
>         <https://www.dream-multimedia-__tv.de/board/index.php?page=__Thread&threadID=18118 <https://www.dream-multimedia-tv.de/board/index.php?page=Thread&threadID=18118>>
>
>         However I don't know how to configure the particular package.
>
>         Can you guys help me ?
>         Thank you in advance.
>
>
>
>     --
>     ------------------------------__------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------__------------------------------
>     --
>     _________________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.__org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

