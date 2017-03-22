Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DC99E0093F; Wed, 22 Mar 2017 02:29:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.129 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 147837 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Mar 2017 02:29:53 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0129.outbound.protection.outlook.com [104.47.38.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1AB2E00655
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 02:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=BG7iKoXtkO/Fjqg8JSgzX0Z/YkQcFgdxctv+BVEQKu4=;
	b=AkbFieEpJujQqHA7ppOMnk0HahiP03Tsu+oU6cuAynvBddmlEmBIsQIgWAsmXGX+qIe1GIt1pgrPZL8fm79o+a88DU69kpUtJxLur8VKV4ctoQN7VZ0DSHBM+FKqiUZAWn40q9aETSV1zlsNyQmE82pW15XFK98hZO4XdYM0vtk=
Received: from BY2PR07MB581.namprd07.prod.outlook.com (10.141.221.143) by
	BY2PR07MB584.namprd07.prod.outlook.com (10.141.221.156) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.961.14; Wed, 22 Mar 2017 09:14:34 +0000
Received: from BY2PR07MB581.namprd07.prod.outlook.com ([10.141.221.143]) by
	BY2PR07MB581.namprd07.prod.outlook.com ([10.141.221.143]) with mapi id
	15.01.0961.018; Wed, 22 Mar 2017 09:14:34 +0000
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: akuster808 <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Morty 2.2.1 build failure
Thread-Index: AdKimbo38zQByDKER0OdNn457GOFxgAFzbiAAA7efcA=
Date: Wed, 22 Mar 2017 09:14:33 +0000
Message-ID: <BY2PR07MB5816023F9A12051A37F17A7963C0@BY2PR07MB581.namprd07.prod.outlook.com>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<0943f9a9-703b-d947-e2da-271bb22594be@gmail.com>
In-Reply-To: <0943f9a9-703b-d947-e2da-271bb22594be@gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=Honeywell.com; 
x-originating-ip: [199.64.75.68]
x-microsoft-exchange-diagnostics: 1; BY2PR07MB584;
	7:5du2z9Fs2RYu+lNqpF/r3oK7TILGGBmgwtnWL3YT/HO0no+RIoILZNjzNHtkN/bqo6rOIToUQ8NBRD35zpdbZksswaA5ORwpiXg0QBI0coC0B9NTlOQkWAhUZ+PQEoS7OZ5k5K8CAdNTRM7cQWJmV1JmwJpyYm+hV59fgoizwemRc3zc9v9IvBLZPXq/AEON33+y5SRYH01UzJxugdu90Bph4QRtykIEcyBm6oc6SL1IE4lmksPox+6u1N8bYlm8FIVG2lJfwSUJNMKbW7hsoguQxJKi0ubOlvopmO0pQt6dXogv3NjidC4t3/G8dpku+RR0ux0/pHxWblWfbflMCQ==;
	20:X8k7QEgJabd9mZx6Hd4WfM3sUVFgfLDj1n7D3fAGc1JpTU0O8RG+L0V2tJYL+Cq8ahcymbbKQMZvJSugnRKXQnrbTkmlJJLvrWAC0wK7h9to1c+FOzA409G3bpMUKW3OQfT3CSNoBx7Lx2h1pMNmoL2QmqGvT+JOc3gMQ2kMsPLxjsIuSBVJNeJlln37kjYwBqkukePh65S8F/3oh/MbyimuN/Z5rSj23ZandVPLatI7wtdLw/wmypsce95GlNcU
x-ms-office365-filtering-correlation-id: c6864909-8928-489b-7578-08d47103db11
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081); SRVR:BY2PR07MB584; 
x-recptdomain: NotTLSDomain
x-microsoft-antispam-prvs: <BY2PR07MB58463C0F06AD0FEA8452570963C0@BY2PR07MB584.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(42262312472803);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6055026)(6041248)(20161123558025)(20161123562025)(20161123564025)(20161123560025)(20161123555025)(6072148);
	SRVR:BY2PR07MB584; BCL:0; PCL:0; RULEID:; SRVR:BY2PR07MB584; 
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39840400002)(39860400002)(39450400003)(39850400002)(39410400002)(57704003)(24454002)(377424004)(55784002)(377454003)(174874002)(38730400002)(966004)(6506006)(8676002)(189998001)(5660300001)(6246003)(229853002)(2501003)(53376002)(77096006)(102836003)(39060400002)(6436002)(50986999)(54356999)(8936002)(33656002)(2906002)(81166006)(3280700002)(6306002)(1720100001)(7736002)(2950100002)(305945005)(3846002)(6116002)(66066001)(76176999)(7696004)(74316002)(53936002)(99286003)(3660700001)(122556002)(55016002)(53546009)(2900100001)(86362001)(575784001)(9686003)(25786009);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR07MB584;
	H:BY2PR07MB581.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2017 09:14:33.5003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR07MB584
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
X-List-Received-Date: Wed, 22 Mar 2017 09:29:57 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

You are right Armin and here is the revert commit for the morty branch:
http://git.yoctoproject.org/cgit.cgi/poky/commit/?h=3Dmorty&id=3De292e935b0=
77a95ae093d4b425c7e95b177b030b

Jo=EBl Esponde

> -----Message d'origine-----
> De=A0: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] De la part de akuster808
> Envoy=E9=A0: mercredi 22 mars 2017 03:07
> =C0=A0: yocto@yoctoproject.org
> Objet=A0: Re: [yocto] Morty 2.2.1 build failure
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

