Return-Path: <geoffroy.vancutsem@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 849A6E00AA7; Wed, 18 Jan 2017 03:46:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A660E00AA2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 03:46:27 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 18 Jan 2017 03:46:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,249,1477983600"; d="scan'208";a="32118610"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2017 03:46:25 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.142]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.230]) with mapi id
	14.03.0248.002; Wed, 18 Jan 2017 11:46:25 +0000
From: "VanCutsem, Geoffroy" <geoffroy.vancutsem@intel.com>
To: Paul Barker <paul@paulbarker.me.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Eswaran Vinothkumar (BEG-PT/PJ-IOT1)"
	<Vinothkumar.Eswaran@de.bosch.com>
Thread-Topic: [yocto] Whats the better way to maintain the Yocto project for
	an embedded product - git submodules or repo or using Combo-layer
Thread-Index: AQHScXZP5swmL+bZjUWVQkT/7xXohKE+HOSQ
Date: Wed, 18 Jan 2017 11:46:25 +0000
Message-ID: <B23DE4404747DE4181D616A0059CCECE52C72976@IRSMSX104.ger.corp.intel.com>
References: <b1e7905ec4364774a6848060c6ebee45@FE-MBX1014.de.bosch.com>
	<66BF569C-2E5E-42F7-9CAD-4687CC870171@paulbarker.me.uk>
In-Reply-To: <66BF569C-2E5E-42F7-9CAD-4687CC870171@paulbarker.me.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: Whats the better way to maintain the Yocto project for	an embedded product - git submodules or repo or using Combo-layer
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
X-List-Received-Date: Wed, 18 Jan 2017 11:46:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Paul Barker
> Sent: Wednesday, January 18, 2017 11:09 AM
> To: yocto@yoctoproject.org; Eswaran Vinothkumar (BEG-PT/PJ-IOT1)
> <Vinothkumar.Eswaran@de.bosch.com>
> Subject: Re: [yocto] Whats the better way to maintain the Yocto project f=
or
> an embedded product - git submodules or repo or using Combo-layer
>=20
> On 18 January 2017 09:32:15 GMT+00:00, "Eswaran Vinothkumar (BEG-PT/PJ-
> IOT1)" <Vinothkumar.Eswaran@de.bosch.com> wrote:
> >Hello Yocto community members,
> >
> >Currently I am working on the task of using Yocto to build customized
> >Embedded Linux distribution for an embedded product. I have created a
> >new BSP layer for my project (meta-custommachine) and have successfully
> >created barebox, Linux Kernel and root filesystem images for my board.
> >
> >Now I wish to create an internal repository for Yocto project to track
> >and maintain the changes. I am unclear what is the better way to create
> >an repository. I googled for the same and found that the Freescale
> >community is maintaining their Yocto project using the repo tool. So I
> >tried to have a similar structure for my project. I created a repo with
> >the default.xml file which has the information about where to fetch the
> >repositories for poky, meta-ptx and meta-custommachine. I am seeing the
> >folder structures as expected and build is also fine.
> >
> >I had a discussion with one of my senior team member about this and he
> >is interested in using git submodules. So I tried to add the layers
> >meta-custommachine and meta-ptx within poky repository as sub-
> modules.
> >Is this the proper way of adding new layers within the poky repository?
> >Or may I know how can I maintain a Yocto repository using git
> >submodules. Does git submodules work better than repo tool ?
> >
> >I am newbie to create and maintain a repo, so I am not able to
> >visualize what is the future effect of choosing one over the other.
> >Currently I am using the krogoth release of Yocto and planning to
> >update this with new Yocto releases.
> >
> >Any information on the topic would be helpful.
>=20
> Both of these approaches are widely used, I'd go with whichever feels mos=
t
> comfortable to you/your team. Personally I'm a fan of using repo as I can=
 set
> it to check out the latest commits on a given branch (eg. krogoth) instea=
d of
> always having to set an exact commit hash to use.
>=20
> If using git submodules it is often advised to have a separate top level
> repository which just pulls in the submodules.

Alexander Kanevskiy (aka Sasha) touched on some of that especially in the c=
ontext of delivering a Continuous Integration and Continuous Delivery mecha=
nism in his presentation at the last ELCE in Berlin. You can view his slide=
s here: http://events.linuxfoundation.org/sites/events/files/slides/Creatin=
g%20Continuous%20Delivery%20for%20Yocto%20Based%20IoT%20Distribution%202016=
1012%20LF.pdf

There is a quick summary of the pro's and con's of using combo-tool vs. git=
 submodule on slide 20.

Geoffroy

