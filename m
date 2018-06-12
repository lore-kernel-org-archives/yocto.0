Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E1A3E02476; Mon, 11 Jun 2018 20:35:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [203.222.77.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.innerrange.com.au (mail.innerrange.com.au [203.222.77.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 810C4E00AD8
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 20:35:21 -0700 (PDT)
Received: from ir-mail.corp.innerrange.com.au (192.168.4.15) by
	ir-mail.corp.innerrange.com.au (192.168.4.15) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.1.544.27; Tue, 12 Jun 2018 13:35:19 +1000
Received: from ir-mail.corp.innerrange.com.au ([fe80::b00d:e485:459b:788f]) by
	ir-mail.corp.innerrange.com.au ([fe80::b00d:e485:459b:788f%2]) with
	mapi id 15.01.0544.030; Tue, 12 Jun 2018 13:35:19 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "ajlennon@gmail.com" <ajlennon@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: mono-native is trying to install files into a shared area...
Thread-Index: AdPhD++O+rvl88kJTyWaau1I0cIc9wdqhH8QANELUyA=
Date: Tue, 12 Jun 2018 03:35:19 +0000
Message-ID: <48aca69585934356ae110e8647a8453f@innerrange.com>
References: <fbde2f2fc27041fbb13d6f9c9eb3f881@innerrange.com>
	<9178069e17354c5daa14353f7e248009@innerrange.com>
In-Reply-To: <9178069e17354c5daa14353f7e248009@innerrange.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.105.136]
MIME-Version: 1.0
Subject: Re: mono-native is trying to install files into a shared area...
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
X-List-Received-Date: Tue, 12 Jun 2018 03:35:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I wrote:
>=20
> I wrote:
> >
> > Lately, I'm trying to upgrade to a later version of mono, 5.4.1.6.
> > When I try to do a build of my Yocto image, bitbake gets to the end of
> > building mono- native, and then gets an error:
> >
> >
> > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: The recipe mono-
> > native is trying to install files into a shared area when those files a=
lready
> exist.
> > Those files and their manifest location are:
> >    /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> > linux/usr/lib/mono/lldb/mono.py
> >  Matched in b''
> >  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> > linux/usr/lib/mono/4.6.1-api/System.Web.Http.SelfHost.dll
> >  Matched in b''
> > ...
> > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> >
> linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.CommonTypes.
> > xsd
> >  Matched in b''
> >  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> > linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.Core.xsd
> >  Matched in b''
> >  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> >
> linux/usr/lib/mono/xbuild/14.0/Microsoft.Common.targets/ImportAfter/Mi
> > c
> > rosoft.NuGet.ImportAfter.targets
> >  Matched in b''
> > Please verify which recipe should provide the above files.
> > The build has stopped as continuing in this scenario WILL break
> > things, if not now, possibly in the future (we've seen builds fail
> > several months later). If the system knew how to recover from this
> > automatically it would however there are several different scenarios
> > which can result in this and we don't know which one this is. It may
> > be you have switched providers of something like virtual/kernel (e.g.
> > from linux-yocto to linux-yocto-dev), in that case you need to execute =
the
> clean task for both recipes and it will resolve this error.
> > It may be you changed DISTRO_FEATURES from systemd to udev or vice
> > versa. Cleaning those recipes should again resolve this error however
> > switching DISTRO_FEATURES on an existing build directory is not
> > supported, you should really clean out tmp and rebuild (reusing sstate
> > should be safe). It could be the overlapping files detected are
> > harmless in which case adding them to SSTATE_DUPWHITELIST may be the
> > correct solution. It could also be your buil  d is including two
> > different conflicting versions of things (e.g. bluez
> > 4 and bluez 5 and the correct solution for that would be to resolve
> > the conflict. If in doubt, please ask on the mailing list, sharing the
> > error and filelist above.
> > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: If the above
> > message is too much, the simpler version is you're advised to wipe out
> > tmp and rebuild (reusing sstate is fine). That will likely fix things
> > in most (but not all) cases.
> > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: Function failed:
> > sstate_task_postfunc
> > ERROR: Logfile of failure stored in:
> > /home/craigm/yocto/poky/build/tmp/work/x86_64-linux/mono-
> > native/5.4.1.6-r0/temp/log.do_populate_sysroot.108358
> > ERROR: Task (/home/craigm/yocto/poky/build/../../meta-mono/recipes-
> > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot) failed with
> exit
> > code '1'
> > NOTE: Tasks Summary: Attempted 670 tasks of which 662 didn't need to
> > be rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >   /home/craigm/yocto/poky/build/../../meta-mono/recipes-
> > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot
> > Summary: There were 3 ERROR messages shown, returning a non-zero exit
> > code.
> >
> >
> > I'm building with Yocto poky morty branch (currently commit
> > 0e730770a9), meta-mono master (commit dced6635ca). I'm building on
> Ubuntu 16.04.4.
> >
> > I have tried deleting the tmp directory, deleting all mono and
> > mono-native from sstate, cleaning mono and meta-mono, etc, to no avail.
> >
> > It's puzzling why I'm getting these errors, because it says "Matched
> > in b''", so the files are not clashing with another recipe. It seems
> > to be somehow trying to install its own files twice, or something like
> > that. If I look under tmp/work/x86_64-linux/mono-native/5.4.1.6-r0/,
> > then I see the files present in both:
> >
> > sysroot-destdir/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> linux
> > / and image/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/
> >
> > Is that part of the problem?
>=20
>=20
> I haven't had any success figuring out what is going on. I tried doing a =
new
> clean build, and got the same error.
>=20
> Does anyone else have this problem? Is it an incompatibility with Yocto
> morty, which I'm using? Any pointers on how to narrow down the cause?

I tried updating from morty to rocko, and no longer got this error. So it s=
eems it's somehow an issue with meta-mono in conjunction with morty.

--=20
Craig McQueen


