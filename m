Return-Path: <tocallaghan@meyn.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46EA4E00B4C; Mon, 16 Jun 2014 03:50:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.199.154.14 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1lp0014.outbound.protection.outlook.com [213.199.154.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3078E00AEE
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 03:50:35 -0700 (PDT)
Received: from AM3PR05MB308.eurprd05.prod.outlook.com (10.242.247.153) by
	AM3PR05MB307.eurprd05.prod.outlook.com (10.242.247.152) with Microsoft
	SMTP Server (TLS) id 15.0.959.24; Mon, 16 Jun 2014 10:50:33 +0000
Received: from AM3PR05MB308.eurprd05.prod.outlook.com ([10.242.247.153]) by
	AM3PR05MB308.eurprd05.prod.outlook.com ([10.242.247.153]) with mapi id
	15.00.0959.000; Mon, 16 Jun 2014 10:50:33 +0000
From: Tim O' Callaghan <tocallaghan@meyn.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Build Flavours: was Conditional Configuration Fragments 
Thread-Index: AQHPiVDMiLtGyD7oTka0vfp9d9q01A==
Date: Mon, 16 Jun 2014 10:50:33 +0000
Message-ID: <cce28b8fd3934eff848ba235501bf3c0@AM3PR05MB308.eurprd05.prod.outlook.com>
References: <888B7DC5D4899F46A9721989283666969C1E50A2A2@SAFEX1MAIL5.st.com>
	<53972C83.2090100@windriver.com>
	<7086666.QbsYtmnLcv@peggleto-mobl5.ger.corp.intel.com>
	<3643e80fcec242308faf0c59b47ce0d2@AM3PR05MB308.eurprd05.prod.outlook.com>
In-Reply-To: <3643e80fcec242308faf0c59b47ce0d2@AM3PR05MB308.eurprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [93.154.102.135]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:
x-forefront-prvs: 0244637DEA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(428001)(377454003)(51704005)(377424004)(66654002)(189002)(199002)(13464003)(24454002)(66066001)(85852003)(64706001)(33646001)(80022001)(81342001)(76576001)(99396002)(77982001)(85306003)(4396001)(83322001)(79102001)(83072002)(2656002)(20776003)(76176999)(21056001)(74662001)(76482001)(81542001)(93886003)(101416001)(15975445006)(74316001)(86362001)(19580395003)(19580405001)(87936001)(54356999)(50986999)(31966008)(92566001)(46102001)(105586001)(74502001)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:AM3PR05MB307;
	H:AM3PR05MB308.eurprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (: meyn.com does not designate permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tocallaghan@meyn.com; 
MIME-Version: 1.0
X-OriginatorOrg: meyn.com
Subject: Re: Build Flavours: was Conditional Configuration Fragments
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
X-List-Received-Date: Mon, 16 Jun 2014 10:50:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The flavor file appears to have been broken by my mail client. Here is the =
example again for clarity.=20

------ build/conf/flavor.inc -----
# create variable for flavouring
FLAVOUR_IMAGE_KERNELTYPE=3D"DEBUG"

# IIRC export into global namespace, so that the build system uses is
# in hash generation and the variable is exported into the shell
# environment during build
export FLAVOUR_IMAGE_KERNELTYPE
------ cut -------

Essentially it sets a bitbake recipe variable then exports it. The export m=
akes sure the recipe build shell environment has it set, and also that that=
 build caching works, because the build environment variables are part of t=
he hash creation. You need to manage flavour includes for every level of gr=
anularity, image, package-group, and recipes. Changing a flavour can cause =
a full rebuild if that flavour is included at image level.

Yocto currently manages the build infrastructure part of flavouring, I need=
 to run external tooling to properly manage specific flavour includes at th=
e moment, so that I can track what flavour is in what build.

Am I right in assuming that 'build flavours' or something like it is not ye=
t a yocto feature?

Regards,

Tim.
-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Tim O' Callaghan
Sent: maandag 16 juni 2014 11:42
To: yocto@yoctoproject.org
Subject: Re: [yocto] Conditional Configuration Fragments (Build Flavours)

Hi,

This problem is similar to the 'build flavour' problem. That is you have a =
vanilla build, that you want to adjust to taste (e.g. different package con=
figurations.) I'm migrating from 1.2 to 1.6, and I was about to send a post=
 to the list about this, to see if anyone had solved it in an off the shelf=
-standard yocto way yet.=20

The approach I use, is the inclusion of an externally generated file to set=
 flavor specific configurations. This file is put in your build/conf, and t=
hen included in the recipes that need flavoring.
e.g. a sample flavour include file:
------ build/conf/flavor.inc -----
# create variable for flavouring
FLAVOUR_IMAGE_KERNELTYPE=3D"DEBUG"
# IIRC export into global namespace, to that the build system uses is in ha=
sh generation, # and the variable is exported into the shell environment du=
ring build export FLAVOUR_IMAGE_KERNELTYPE
------ cut -------

Then in the recipes that require flavouring you add:
-----
require flavour.inc
-----

You can then use the FLAVOUR_IMAGE_KERNELTYPE in the recipe for picking the=
 right build options, or set other appropriate stuff. do_compile_prepend is=
 useful for that. As the flavor variable is also exported in the build shel=
l environment for the recipe, compile time decisions can be made for applic=
ation pre-configuration purposes.

Am I right in assuming that 'build flavours' or something like it is not a =
standard feature?=20

Tim.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: dinsdag 10 juni 2014 18:09
To: Bruce Ashfield; Pierre Yves MORDRET
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Conditional Configuration Fragments

On Tuesday 10 June 2014 12:04:19 Bruce Ashfield wrote:
> On 14-06-10 11:11 AM, Pierre Yves MORDRET wrote:
> > On Monday 09 June 2014 09:56:20 Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> >> On Monday 09 June 2014 12:41:36 Bruce Ashfield wrote:
> >>> On 14-06-09 11:26 AM, Pierre Yves MORDRET wrote:
> >>>> Hello,
> >>>>=20
> >>>> I really don't know whether this is feasible or not, but I'm=20
> >>>> trying to build a yocto image (custom image) with conditional=20
> >>>> configuration fragments.
> >>>>=20
> >>>> Today I have 2 image type: one for deployment purpose and another=20
> >>>> for debug purpose. Debug images is only a superset of deployment=20
> >>>> image with additional debug capabilities: nothing else.
> >>>>=20
> >>>> However now I would like to add additional linux kernel features=20
> >>>> to this debug image (ex: CONFIG_DEBUG_INFO=3Dy).
> >>>>=20
> >>>> I want to add this feature into debug image, but NOT in=20
> >>>> deployment image.
> >>>>=20
> >>>> I was thinking to create a .bbappend to my linux .bb file, but=20
> >>>> again I don't see how to use .bbappend in a conditional way=20
> >>>> (based on image name for instance)
> >>>>=20
> >>>> Do you have any idea to perform such request ?
> >>>=20
> >>> Fragments are either just added to the SRC_URI or KERNEL_FEATURES=20
> >>> via the normal variable assignment rules.
> >>>=20
> >>> So if you have something that you can test on (image/distro=20
> >>> feature as an example), you can use anonymous python and do a=20
> >>> conditional assignment.
> >>>=20
> >>> Others on the list may have more elegant suggestions!
> >>=20
> >> This can't work for what Pierre is asking for. You can't have a=20
> >> single recipe built differently depending on what image is being=20
> >> built - our system does not work that way. At a basic level,=20
> >> recipes create packages, and then the image recipe selects which=20
> >> packages should go into the image.
> >>=20
> >> Given that the kernel does not produce named packages in our=20
> >> system, I'm not sure we currently have a way to build two different=20
> >> kernel recipes and select one in one image and another in another=20
> >> image (which is the way we normally handle this kind of requirement=20
> >> with other recipes.) Probably the only way to do this is to have=20
> >> two completely separate build directories.
> >=20
> > Many Thanks for your answers.
> > Thus I was thinking of making 2 separate linux.bb, one for=20
> > deployment and the other for debug (i.e. linux-debug.bb) and update=20
> > PREFERRED_PROVIDER_virtual/kernel accordingly. But is there an=20
> > automatic way to select proper .bb (linux.bb or linux-debug.bb) file=20
> > like setting this variable(PREFERRED_PROVIDER_virtual/kernel) within=20
> > the .bb image file ? Won't it work ?
> >=20
> > Another option which is coming on top of my mind:
> > SRC_URI_append_<image-name> =3D " file://configuration_segment.cfg"
> > Is it something realistic and working ?
>=20
> The image name would have to be an OVERRIDE value for variables.
> Last I checked it wasn't, but perhaps Paul can straighten out that=20
> point as well :)

No, you can't do this, nor can you select PREFERRED_PROVIDER from the image=
.=20
You cannot influence the building of other recipes from the image recipe at=
 all.

As I said before, the only way to make this work would be if the kernel pro=
duced uniquely named packages that could be selected from the image; our ke=
rnel recipes don't currently do that though, and it would be a fairly major=
 change in order to do that.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

