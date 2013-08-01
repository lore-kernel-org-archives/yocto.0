Return-Path: <briank@RUSSOUND.COM>
Received: from Pegasus.RUSSOUND.COM (pegasus.russound.com [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 197B2E014E4
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 09:09:26 -0700 (PDT)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Thu, 1 Aug 2013 12:09:25 -0400
Received: from HERMES.RUSSOUND.com (10.0.0.14) by HERMES.RUSSOUND.com
	(10.0.0.14) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Thu, 1 Aug 2013 12:09:25 -0400
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Thu, 1 Aug 2013 12:09:25 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Image recipes in Yocto 1.4 (dylan-9.0.0)
Thread-Index: Ac6CSh4ALucdv78GSrWDYfS43Bz9kwL3pC9AACJiFwAAAW340AALNFSAAAXF8zA=
Date: Thu, 1 Aug 2013 16:09:25 +0000
Message-ID: <add7f39d4cf64ad0ae12b6a85835a690@HERMES.RUSSOUND.com>
References: <7941E07E1E020448937ACA7D4279E632018398AF5AA8@powerhog>
	<4649053.56DKkDXgDi@helios>
	<5b0db42f24db43c9a5ac1348d1dee721@HERMES.RUSSOUND.com>
	<2224533.7EszYEDFKv@helios>
In-Reply-To: <2224533.7EszYEDFKv@helios>
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
X-List-Received-Date: Thu, 01 Aug 2013 16:09:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

I commented out all the noexec flag settings in image.bbclass and the resul=
ts are still the same.

I was starting to get the suspicion that all of that content needed to be m=
oved to a separate package recipe. I'll experiment with that and see where =
I get. Hopefully that, combined with the information about the checksums yo=
u gave me on the other thread can get me back to where we are with Edison, =
but in a more standardized fashion.

Thanks,
Brian


-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Thursday, August 01, 2013 10:27 AM
To: Brian Karcz
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Image recipes in Yocto 1.4 (dylan-9.0.0)

On Thursday 01 August 2013 14:00:24 Brian Karcz wrote:
> I'll keep the do_rootfs dependency adjustment for the main image on ready=
.
> I'd like to try to fix the simple case first of only building the=20
> ramdisk image directly then trying to rebuild it. With the latter case=20
> fixed, the former might be fine as is.
>=20
> As a sanity check last night, I blew away the entire build directory=20
> and only built the ramdisk image recipe. I wanted to make sure there=20
> was nothing left in there from a main image build that might be=20
> effecting an explicit ramdisk image build. This overnight build=20
> succeeded. When I performed the rebuild this morning, the same=20
> behavior occurred of the IMAGE_PREPROCESS_COMMAND not being able to find =
a file in the WORKDIR.
>
> Sorry for the confusion about the license data. I wasn't interested,=20
> necessarily, in the content or cause of the warning, but more the task=20
> flow of the build that was causing the warning to appear in one build=20
> and not the other. I wasn't sure if the do_populate_lic dependency=20
> change might trigger any thoughts on the do_fetch dependencies.
>=20
> One thing I had a question about was in regards to image vs package=20
> recipes and the population of the rootfs. Package recipes populate the=20
> rootfs by appending/prepending the do_install task and install things=20
> from the WORKDIR to the $D destination directory.

To be completely accurate, they don't populate the rootfs directly, they in=
stall files into the ${D} directory (${WORKDIR}/image) during do_install, t=
hen do_package creates package definitions from this, then do_package_write=
_* create the actual packages based upon the definitions, and then later wh=
en the image is constructed some subset of those packages may be installed =
into the rootfs.

> Our image recipes, as I've inherited them, create and assign a new=20
> IMAGE_PREPROCESS_COMMAND, that install files from the WORKDIR to the=20
> IMAGE_ROOTFS destination directory. Is it abnormal/non-standard for an=20
> image recipe to have its own SRC_URI entries and subsequent WORKDIR popul=
ation?

It is considered so, yes. We disabled this functionality by default in the =
denzil release (1.2) on the assumption that image recipes shouldn't really =
be doing this - additional files that need to be pulled in should be pulled=
 in via packages created by a separate recipe. It's perfectly fine for the =
image to be modifying or creating small files from scratch particularly if =
they're constructed from dynamic data, but bringing in extra static files s=
hould really be handled via additional packages.

> I'm wondering if there is a catch-22 going on here regarding the use=20
> of RM_WORK and the fact that the checksums for the SRC_URI contents=20
> haven't changed. It seems as though the build is determining that=20
> do_fetch doesn't need to be run because nothing is changed, like in a=20
> package recipe, but doesn't realize that do_rootfs will always be=20
> executed for an image recipe build and might depend on those contents.=20
> I'm wondering if this worked under Edison because it didn't have the=20
> SRC_URI checksums and a different dependency model that forced the=20
> do_fetch prior to do_rootfs for image recipe builds.

Could you run a test for me - if you comment out the setting of noexec on a=
ll of the tasks at the end image.bbclass does the rebuilding problem go awa=
y?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

