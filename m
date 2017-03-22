Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C652E00A0A; Wed, 22 Mar 2017 13:23:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E41C0E0094C
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 13:23:42 -0700 (PDT)
Received: from SFA-EX01.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.3]) by
	mx28.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA
	bits=256 verify=NO); Wed, 22 Mar 2017 20:23:34 +0000
Received: from SFA-EX01.SAKURAUS.LOCAL (10.16.3.165) by
	SFA-EX01.SAKURAUS.LOCAL (10.16.3.165) with Microsoft SMTP Server (TLS)
	id 15.0.1263.5; Wed, 22 Mar 2017 13:23:24 -0700
Received: from SFA-EX01.SAKURAUS.LOCAL ([fe80::a49b:4710:711c:e005]) by
	SFA-EX01.SAKURAUS.LOCAL ([fe80::a49b:4710:711c:e005%12]) with mapi id
	15.00.1263.000; Wed, 22 Mar 2017 13:23:24 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: akuster808 <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Morty 2.2.1 build failure
Thread-Index: AdKimbo38zQByDKER0OdNn457GOFxgAUeM+AABdky8A=
Date: Wed, 22 Mar 2017 20:23:24 +0000
Message-ID: <83d60adbd65a46faaaaef40bd2667cb3@SFA-EX01.SAKURAUS.LOCAL>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<0943f9a9-703b-d947-e2da-271bb22594be@gmail.com>
In-Reply-To: <0943f9a9-703b-d947-e2da-271bb22594be@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.16.5.198]
MIME-Version: 1.0
X-BESS-ID: 1490214214-637138-1778-243087-1
X-BESS-VER: 2017.3-r1703091851
X-BESS-Apparent-Source-IP: 12.26.104.3
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.179461
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn'
	t match header 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: Morty 2.2.1 build failure
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
X-List-Received-Date: Wed, 22 Mar 2017 20:23:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Armin, et al,

I tried it again this morning and it did get past the file not found error.=
 But when it gets above step 4000 somewhere it gets an error that kills not=
 just the yocto build but the full login session. I'm left staring at the L=
inux Login screen. I originally saw this problem with a git clone of 16.0.0=
, and figured it was a git problem, tried building from a download of the 1=
6.0.1 bz2 file when I ran into the file not found error.

At this point I'm not sure what I can pass on to the list to help find the =
bug, if there are some switches that I can set to get more debug info, or m=
aybe something is already saved that I can send that will help?

Regards,
Greg

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of akuster808
> Sent: Tuesday, March 21, 2017 7:07 PM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Morty 2.2.1 build failure
>=20
>=20
> Greg,
>=20
> On 03/21/2017 04:29 PM, Greg Wilson-Lindberg wrote:
> > Hello List,
> >
> > I got a copy of the book "Embedded Linux Systems with the Yocto Project=
"
> at the SCALE 15x conference and this prompted me to try building the Yoct=
o
> Poky build before getting the Boot to Qt Yocto build environment.
> >
> > I tried building on 2 x86 systems, a 64 bit system at work and a 32 bit=
 system
> at my home, both failed in the same way:
> >
> > gwilson 11:06:54:~/yocto/poky-morty-16.0.1$ source ./oe-init-build-env
> > You had no conf/local.conf file. This configuration file has therefore
> > been created for you with some default values. You may wish to edit it
> > to, for example, select a different MACHINE (target hardware). See
> > conf/local.conf for more information as common configuration options ar=
e
> commented.
> >
> > You had no conf/bblayers.conf file. This configuration file has
> > therefore been created for you with some default values. To add
> > additional metadata layers into your configuration please add entries t=
o
> conf/bblayers.conf.
> >
> > The Yocto Project has extensive documentation about OE including a
> > reference manual which can be found at:
> >      http://yoctoproject.org/documentation
> >
> > For more information about OpenEmbedded see their website:
> >      http://www.openembedded.org/
> >
> >
> > ### Shell environment set up for builds. ###
> >
> > You can now run 'bitbake <target>'
> >
> > Common targets are:
> >      core-image-minimal
> >      core-image-sato
> >      meta-toolchain
> >      meta-ide-support
> >
> > You can also run generated qemu images with a command like 'runqemu
> qemux86'
> > gwilson 11:07:08:~/yocto/poky-morty-16.0.1/build$
> > gwilson 11:07:10:~/yocto/poky-morty-16.0.1/build$
> > gwilson 11:07:11:~/yocto/poky-morty-16.0.1/build$ bitbake
> > core-image-sato Parsing recipes: 100%
> >
> |#########################################################
> ###################################| Time: 0:00:29 Parsing of 864
> .bb files complete (0 cached, 864 parsed). 1318 targets, 50 skipped, 0 ma=
sked,
> 0 errors.
> > NOTE: Resolving any missing task queue dependencies
> >
> > Build Configuration:
> > BB_VERSION        =3D "1.32.0"
> > BUILD_SYS         =3D "x86_64-linux"
> > NATIVELSBSTRING   =3D "Ubuntu-14.04"
> > TARGET_SYS        =3D "i586-poky-linux"
> > MACHINE           =3D "qemux86"
> > DISTRO            =3D "poky"
> > DISTRO_VERSION    =3D "2.2.1"
> > TUNE_FEATURES     =3D "m32 i586"
> > TARGET_FPU        =3D ""
> > meta
> > meta-poky
> > meta-yocto-bsp    =3D "<unknown>:<unknown>"
> >
> > NOTE: Fetching uninative binary shim from
> > http://downloads.yoctoproject.org/releases/uninative/1.4/x86_64-native
> > sdk-
> libc.tar.bz2;sha256sum=3D101ff8f2580c193488db9e76f9646fb6ed38b65fb76
> > f403acb0e2178ce7127ca
> > --2017-03-20 11:07:57--
> > http://downloads.yoctoproject.org/releases/uninative/1.4/x86_64-native
> > sdk-libc.tar.bz2 Resolving downloads.yoctoproject.org
> > (downloads.yoctoproject.org)... 198.145.20.127 Connecting to
> > downloads.yoctoproject.org
> (downloads.yoctoproject.org)|198.145.20.127|:80... connected.
> > HTTP request sent, awaiting response... 200 OK
> > Length: 2473216 (2.4M) [application/octet-stream] Saving to:
> > '/home/gwilson/yocto/poky-morty-
> 16.0.1/build/downloads/uninative/101ff8f2580c193488db9e76f9646fb6ed38b
> 65fb76f403acb0e2178ce7127ca/x86_64-nativesdk-libc.tar.bz2'
> >
> >
> > 2017-03-20 11:07:58 (6.62 MB/s) -
> > '/home/gwilson/yocto/poky-morty-
> 16.0.1/build/downloads/uninative/101ff
> >
> 8f2580c193488db9e76f9646fb6ed38b65fb76f403acb0e2178ce7127ca/x86_64-
> nat
> > ivesdk-libc.tar.bz2' saved [2473216/2473216]
> >
> > Initialising tasks: 100%
> >
> |#########################################################
> ############
> > ####################| Time: 0:00:15
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > WARNING: flex-native-2.6.0-r0 do_fetch: Failed to fetch URL
> > http://downloads.sourceforge.net/flex/flex-2.6.0.tar.bz2, attempting
> > MIRRORS if available
> > WARNING: file-native-5.28-r0 do_fetch: Failed to fetch URL
> > git://github.com/file/file.git, attempting MIRRORS if available
> > ERROR: file-native-5.28-r0 do_fetch: Fetcher failure: Unable to find
> > revision 3c521817322a6bf5160cfeb09b9145ccde587b2a in branch master
> > even from upstream
> > ERROR: file-native-5.28-r0 do_fetch: Fetcher failure for URL:
> 'git://github.com/file/file.git'. Unable to fetch URL from any source.
>=20
> this is a known issue and should be fixed now (again). The upstream repo
> had issues which caused the hashes to not match. I heard the repo got
> corrected.
>=20
> > ERROR: file-native-5.28-r0 do_fetch: Function failed: base_do_fetch
> > ERROR: Logfile of failure stored in:
> > /home/gwilson/yocto/poky-morty-16.0.1/build/tmp/work/x86_64-
> linux/file
> > -native/5.28-r0/temp/log.do_fetch.23747
> > ERROR: Task (virtual:native:/home/gwilson/yocto/poky-morty-
> 16.0.1/meta/recipes-devtools/file/file_5.28.bb:do_fetch) failed with exit
> code '1'
> > NOTE: Tasks Summary: Attempted 203 tasks of which 0 didn't need to be
> rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >
> > virtual:native:/home/gwilson/yocto/poky-morty-16.0.1/meta/recipes-devt
> > ools/file/file_5.28.bb:do_fetch
> > Summary: There were 2 WARNING messages shown.
> > Summary: There were 3 ERROR messages shown, returning a non-zero exit
> code.
> > gwilson 11:13:14:~/yocto/poky-morty-16.0.1/build$
> >
> > I get 1 file that needs to go to a mirror and a second file that can't =
be found
> at all.
> Please try again.
> >
> > Are these known bugs? Do I need to just back up and use Morty 2.2?
> This affected 2.1, 2.2 and master.
>=20
> regards,
> Armin
> >
> > Regards,
> >
> > Greg Wilson-Lindberg
> > Sakura Finetek
> > 310-783-5075
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

