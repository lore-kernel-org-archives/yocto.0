Return-Path: <briank@RUSSOUND.COM>
Received: from Pegasus.RUSSOUND.COM (pegasus.russound.com [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2C5CE002E2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 13:27:19 -0700 (PDT)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Wed, 31 Jul 2013 16:27:18 -0400
Received: from HERMES.RUSSOUND.com (10.0.0.14) by HERMES.RUSSOUND.com
	(10.0.0.14) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Wed, 31 Jul 2013 16:27:17 -0400
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Wed, 31 Jul 2013 16:27:17 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Image recipes in Yocto 1.4 (dylan-9.0.0)
Thread-Index: Ac6CSh4ALucdv78GSrWDYfS43Bz9kwL3pC9A
Date: Wed, 31 Jul 2013 20:27:16 +0000
Message-ID: <7e294eee26c84bb695cfc001d9c0fbcb@HERMES.RUSSOUND.com>
References: <7941E07E1E020448937ACA7D4279E632018398AF5AA8@powerhog>
	<1409977.06We3GSB1m@helios>
	<7941E07E1E020448937ACA7D4279E632018398AF5AC0@powerhog>
	<4980830.1VfIILUjWT@helios>
In-Reply-To: <4980830.1VfIILUjWT@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.59]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Image recipes in Yocto 1.4 (dylan-9.0.0)
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
X-List-Received-Date: Wed, 31 Jul 2013 20:27:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Here is a little background of what is going on. I inherited a project that=
 was implemented under and works with Edison. The project has two image rec=
ipes, abc-main.bb and abc-ramdisk.bb. The way the project builds under Edis=
on, abc-main.bb has abc-ramdisk listed in the DEPENDS variable. Abc-main th=
en has an image preprocess command that sneakily goes into the DEPLOY_DIR_I=
MAGE and retrieves the ramdisk image and inserts it into its own IMAGE_ROOT=
FS.

As I've been working on porting to the Dylan version of the build system, I=
 found the whole issue with do_fetch and do_unpack not being run at all for=
 images. I applied the fix you advised of to add a python function that rem=
oves the noexec flag for the two tasks. This apparently only works for one =
build of the image. I either need to do a "cleanall" on the image or bump t=
he rev to get it to build again.

To simplify things, and remove the dependency between the main and ramdisk =
images, I started building just the ramdisk directly. Doing this I see the =
same behavior:
	Bitbake abc-ramdisk -c cleanall
	Bitbake abc-ramdisk			<--- succeeds
	Bitbake abc-ramdisk			<--- fails trying to operate on one the files in the=
 SRC_URI

As I mentioned in the previous post. I'm using the rm_work directive in the=
 local.conf file. Its interesting that the subsequent re-build doesn't dete=
rmine that the WORKDIR needs to be repopulated. Another interesting note th=
at might be of interest is that our LICENCE is defined to "XYZ" and issues =
the following warning, "WARNING: abc-ramdisk: No generic license file exist=
s for: XYZ in any provider", in the first build that succeeds. When the sec=
ond build is run the warning does not appear and the build jumps right to t=
he do_rootfs task where it fails.

Thanks,
Brian=20

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Tuesday, July 16, 2013 1:30 PM
To: Brian Karcz
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Image recipes in Yocto 1.4 (dylan-9.0.0)

Hi Brian,

Sorry this message got lost in my inbox.

On Monday 24 June 2013 16:22:27 Brian Karcz wrote:
> > Paul Eggleton wrote:
> > > Brian Karcz wrote:
> > > Is there a way to stop this optimization and have the image build=20
> > > populate the work directory as it has in the past?
> >=20
> > You should be able to do this in your image recipe:
> >=20
> > python () {
> >         d.delVarFlag("do_fetch", "noexec")
> >         d.delVarFlag("do_unpack", "noexec") }
>
> That was what I needed to get my build(s) moving forward. It has=20
> brought me to a follow-up question. The image in question (a ramdisk=20
> image) is being built as a dependency of a larger image build. When I=20
> rebuild the parent image, bitbake believes the child image needs to be=20
> rebuilt, but when this occurs, do_fetch and do_unpack once again don't=20
> get executed and my build fails as before when it jumps straight to=20
> do_rootfs with an empty work directory. Upon seeing this, I attempted=20
> to re-build the child image from its own recipe, without trying to=20
> build the parent, and the same behavior occurs.
>=20
> I was considering adding the child image to RM_WORK_EXCLUDE in=20
> local.conf, but that didn't seem intuitive to the problem.

So you are using rm_work? If you are I don't think RM_WORK_EXCLUDE will rea=
lly help.

Just to confirm, you're not referring to the WORKDIR of one recipe within t=
he other are you? Also, how are you setting up the dependency relationship =
between the images?

> I would think bitbake would do nothing since nothing has changed, or=20
> the required tasks would be executed, but I wouldn't think telling the=20
> last build to leave the work area would be the fix.
>=20
> Do have any thoughts on making this work past a single build?

So I haven't tested this exact configuration; it's possible that bitbake is=
 eliminating a dependency based on the task being marked as "noexec", but I=
 wouldn't have thought so.

Cheers,
Paul

PS: please keep replies on the mailing list. Thanks.

--=20

Paul Eggleton
Intel Open Source Technology Centre

