Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15C69E00BBA; Mon,  9 Jun 2014 09:56:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79236E00B66
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 09:56:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Jun 2014 09:56:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,1003,1392192000"; d="scan'208";a="443416328"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.49])
	by azsmga001.ch.intel.com with ESMTP; 09 Jun 2014 09:56:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Date: Mon, 09 Jun 2014 17:56:20 +0100
Message-ID: <5377311.3J0LvGUs1Q@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.5-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <5395E3C0.2010206@windriver.com>
References: <888B7DC5D4899F46A9721989283666969C1E50A1DC@SAFEX1MAIL5.st.com>
	<5395E3C0.2010206@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Conditional Configuration Fragments
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
X-List-Received-Date: Mon, 09 Jun 2014 16:56:34 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Monday 09 June 2014 12:41:36 Bruce Ashfield wrote:
> On 14-06-09 11:26 AM, Pierre Yves MORDRET wrote:
> > Hello,
> >=20
> > I really don=E2=80=99t know whether this is feasible or not, but I=E2=
=80=99m trying to
> > build a yocto image (custom image) with conditional configuration
> > fragments.
> >=20
> > Today I have 2 image type: one for deployment purpose and another f=
or
> > debug purpose. Debug images is only a superset of deployment image =
with
> > additional debug capabilities: nothing else.
> >=20
> > However now I would like to add additional linux kernel features to=
 this
> > debug image (ex: CONFIG_DEBUG_INFO=3Dy).
> >=20
> > I want to add this feature into debug image, but NOT in deployment =
image.
> >=20
> > I was thinking to create a .bbappend to my linux .bb file, but agai=
n I
> > don=E2=80=99t see how to use .bbappend in a conditional way (based =
on image name
> > for instance)
> >=20
> > Do you have any idea to perform such request ?
>=20
> Fragments are either just added to the SRC_URI or KERNEL_FEATURES via=

> the normal variable assignment rules.
>=20
> So if you have something that you can test on (image/distro feature a=
s
> an example), you can use anonymous python and do a conditional
> assignment.
>=20
> Others on the list may have more elegant suggestions!

This can't work for what Pierre is asking for. You can't have a single =
recipe=20
built differently depending on what image is being built - our system d=
oes not=20
work that way. At a basic level, recipes create packages, and then the =
image=20
recipe selects which packages should go into the image.

Given that the kernel does not produce named packages in our system, I'=
m not=20
sure we currently have a way to build two different kernel recipes and =
select=20
one in one image and another in another image (which is the way we norm=
ally=20
handle this kind of requirement with other recipes.) Probably the only =
way to=20
do this is to have two completely separate build directories.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

