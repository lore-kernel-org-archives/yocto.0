Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB9A2E00C14; Tue, 10 Jun 2014 08:36:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.207.212.93 listed in list.dnswl.org]
X-Greylist: delayed 1421 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Jun 2014 08:35:52 PDT
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com
	[91.207.212.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A6EFE00BF5
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 08:35:52 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx08-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	s5AF9Cv6016731; Tue, 10 Jun 2014 17:12:07 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx08-00178001.pphosted.com with ESMTP id 1mdc41xyq9-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT);
	Tue, 10 Jun 2014 17:12:07 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4816851;
	Tue, 10 Jun 2014 15:12:01 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas5.st.com [10.75.90.71])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8292C2D1B6;
	Tue, 10 Jun 2014 15:12:01 +0000 (GMT)
Received: from SAFEX1MAIL5.st.com ([10.75.90.28]) by Safex1hubcas5.st.com
	([10.75.90.71]) with mapi; Tue, 10 Jun 2014 17:12:01 +0200
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 10 Jun 2014 17:11:59 +0200
Thread-Topic: [yocto] Conditional Configuration Fragments
Thread-Index: Ac+EvQMTZ9ZLd1ktQH2x8DggKfP3nQ==
Message-ID: <888B7DC5D4899F46A9721989283666969C1E50A2A2@SAFEX1MAIL5.st.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.14,
	0.0.0000
	definitions=2014-06-10_05:2014-06-10, 2014-06-10,
	1970-01-01 signatures=0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 10 Jun 2014 15:36:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On Monday 09 June 2014 09:56:20 Paul Eggleton <paul.eggleton@linux.intel.co=
m> wrote:
> On Monday 09 June 2014 12:41:36 Bruce Ashfield wrote:
> > On 14-06-09 11:26 AM, Pierre Yves MORDRET wrote:
> > > Hello,
> > >=20
> > > I really don't know whether this is feasible or not, but I'm trying t=
o
> > > build a yocto image (custom image) with conditional configuration
> > > fragments.
> > >=20
> > > Today I have 2 image type: one for deployment purpose and another for
> > > debug purpose. Debug images is only a superset of deployment image wi=
th
> > > additional debug capabilities: nothing else.
> > >=20
> > > However now I would like to add additional linux kernel features to t=
his
> > > debug image (ex: CONFIG_DEBUG_INFO=3Dy).
> > >=20
> > > I want to add this feature into debug image, but NOT in deployment im=
age.
> > >=20
> > > I was thinking to create a .bbappend to my linux .bb file, but again =
I
> > > don't see how to use .bbappend in a conditional way (based on image n=
ame
> > > for instance)
> > >=20
> > > Do you have any idea to perform such request ?
> >=20
> > Fragments are either just added to the SRC_URI or KERNEL_FEATURES via
> > the normal variable assignment rules.
> >=20
> > So if you have something that you can test on (image/distro feature as
> > an example), you can use anonymous python and do a conditional
> > assignment.
> >=20
> > Others on the list may have more elegant suggestions!
>=20
> This can't work for what Pierre is asking for. You can't have a single re=
cipe=20
> built differently depending on what image is being built - our system doe=
s not=20
> work that way. At a basic level, recipes create packages, and then the im=
age=20
> recipe selects which packages should go into the image.
>=20
> Given that the kernel does not produce named packages in our system, I'm =
not=20
> sure we currently have a way to build two different kernel recipes and se=
lect=20
> one in one image and another in another image (which is the way we normal=
ly=20
> handle this kind of requirement with other recipes.) Probably the only wa=
y to=20
> do this is to have two completely separate build directories.

Many Thanks for your answers.
Thus I was thinking of making 2 separate linux.bb, one for deployment and t=
he other for debug (i.e. linux-debug.bb) and update PREFERRED_PROVIDER_virt=
ual/kernel accordingly.
But is there an automatic way to select proper .bb (linux.bb or linux-debug=
.bb) file like setting this variable(PREFERRED_PROVIDER_virtual/kernel) wit=
hin the .bb image file ? Won't it work ?

Another option which is coming on top of my mind:
SRC_URI_append_<image-name> =3D " file://configuration_segment.cfg"
Is it something realistic and working ?=20

Please advise
Many thanks in advance

