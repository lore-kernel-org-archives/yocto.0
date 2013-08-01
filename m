Return-Path: <briank@RUSSOUND.COM>
Received: from Pegasus.RUSSOUND.COM (pegasus.russound.com [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3161CE014E4
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 07:00:27 -0700 (PDT)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Thu, 1 Aug 2013 10:00:25 -0400
Received: from HERMES.RUSSOUND.com (10.0.0.14) by HERMES.RUSSOUND.com
	(10.0.0.14) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Thu, 1 Aug 2013 10:00:25 -0400
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Thu, 1 Aug 2013 10:00:25 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Image recipes in Yocto 1.4 (dylan-9.0.0)
Thread-Index: Ac6CSh4ALucdv78GSrWDYfS43Bz9kwL3pC9AACJiFwAAAW340A==
Date: Thu, 1 Aug 2013 14:00:24 +0000
Message-ID: <5b0db42f24db43c9a5ac1348d1dee721@HERMES.RUSSOUND.com>
References: <7941E07E1E020448937ACA7D4279E632018398AF5AA8@powerhog>
	<4980830.1VfIILUjWT@helios>
	<7e294eee26c84bb695cfc001d9c0fbcb@HERMES.RUSSOUND.com>
	<4649053.56DKkDXgDi@helios>
In-Reply-To: <4649053.56DKkDXgDi@helios>
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
X-List-Received-Date: Thu, 01 Aug 2013 14:00:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

I'll keep the do_rootfs dependency adjustment for the main image on ready. =
I'd like to try to fix the simple case first of only building the ramdisk i=
mage directly then trying to rebuild it. With the latter case fixed, the fo=
rmer might be fine as is.

As a sanity check last night, I blew away the entire build directory and on=
ly built the ramdisk image recipe. I wanted to make sure there was nothing =
left in there from a main image build that might be effecting an explicit r=
amdisk image build. This overnight build succeeded. When I performed the re=
build this morning, the same behavior occurred of the IMAGE_PREPROCESS_COMM=
AND not being able to find a file in the WORKDIR. This wasn't surprising, b=
ut I wanted to make sure that there wasn't something being left in the buil=
d directory from the main image build that was effecting this.

Sorry for the confusion about the license data. I wasn't interested, necess=
arily, in the content or cause of the warning, but more the task flow of th=
e build that was causing the warning to appear in one build and not the oth=
er. I wasn't sure if the do_populate_lic dependency change might trigger an=
y thoughts on the do_fetch dependencies.

One thing I had a question about was in regards to image vs package recipes=
 and the population of the rootfs. Package recipes populate the rootfs by a=
ppending/prepending the do_install task and install things from the WORKDIR=
 to the $D destination directory. Our image recipes, as I've inherited them=
, create and assign a new IMAGE_PREPROCESS_COMMAND, that install files from=
 the WORKDIR to the IMAGE_ROOTFS destination directory. Is it abnormal/non-=
standard for an image recipe to have its own SRC_URI entries and subsequent=
 WORKDIR population?

I'm wondering if there is a catch-22 going on here regarding the use of RM_=
WORK and the fact that the checksums for the SRC_URI contents haven't chang=
ed. It seems as though the build is determining that do_fetch doesn't need =
to be run because nothing is changed, like in a package recipe, but doesn't=
 realize that do_rootfs will always be executed for an image recipe build a=
nd might depend on those contents. I'm wondering if this worked under Ediso=
n because it didn't have the SRC_URI checksums and a different dependency m=
odel that forced the do_fetch prior to do_rootfs for image recipe builds.

Thanks,
Brian


-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Thursday, August 01, 2013 4:26 AM
To: Brian Karcz
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Image recipes in Yocto 1.4 (dylan-9.0.0)

On Wednesday 31 July 2013 20:27:16 Brian Karcz wrote:
> Here is a little background of what is going on. I inherited a project=20
> that was implemented under and works with Edison. The project has two=20
> image recipes, abc-main.bb and abc-ramdisk.bb. The way the project=20
> builds under Edison, abc-main.bb has abc-ramdisk listed in the DEPENDS va=
riable.
> Abc-main then has an image preprocess command that sneakily goes into=20
> the DEPLOY_DIR_IMAGE and retrieves the ramdisk image and inserts it=20
> into its own IMAGE_ROOTFS.
>=20
> As I've been working on porting to the Dylan version of the build=20
> system, I found the whole issue with do_fetch and do_unpack not being=20
> run at all for images. I applied the fix you advised of to add a=20
> python function that removes the noexec flag for the two tasks. This=20
> apparently only works for one build of the image. I either need to do=20
> a "cleanall" on the image or bump the rev to get it to build again.

I haven't had time to try to reproduce this here yet, sorry.
=20
However, aside from the files in SRC_URI which could presumably be handled =
in a separate recipe, one possible solution for the ramdisk part did occur =
to me - I'd suggest doing the following in the main image:

do_rootfs[depends] +=3D "abc-ramdisk:do_rootfs"

Then add to ROOTFS_POSTPROCESS_COMMAND or IMAGE_POSTPROCESS_COMMAND (whiche=
ver is appropriate) a call to a shell function that performs whatever neede=
d operation on the abc-ramdisk.

> Another interesting note that might be of interest is that our LICENCE=20
> is defined to "XYZ" and issues the following warning, "WARNING:=20
> abc-ramdisk: No generic license file exists for: XYZ in any provider",=20
> in the first build that succeeds.

I'm no expert on this area but to me it doesn't make sense for an image con=
taining multiple differently-licensed components to have a declared license=
 in the recipe. We tend to keep things simple and just set LICENSE =3D "MIT=
" on the image recipe (*not* implying anything about the contents of the im=
age), with each installed package license and therefore the image's license=
 manifest indicating all of the licenses of the components that make up the=
 image.=20
Perhaps a LICENSE value of "N/A" for the image would be more appropriate, a=
lthough the system currently doesn't support any special casing of LICENSE =
for image recipes, and if you are pulling in files in SRC_URI in the image =
recipe there might be some validity to having a LICENSE value to apply to t=
hose.

> When the second build is run the warning does not appear and the build=20
> jumps right to the do_rootfs task where it fails.

That's because this check is done in do_populate_lic which isn't getting re=
- executed on the second time (presumably because nothing that that task de=
pends upon has changed).

Cheers,
Paul
=20
--=20

Paul Eggleton
Intel Open Source Technology Centre

