Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9C83E01374
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 11:37:36 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Mar 2012 11:37:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="114957490"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 05 Mar 2012 11:37:36 -0800
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 5 Mar 2012 11:37:22 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.234]) with mapi id
	14.01.0355.002; Mon, 5 Mar 2012 11:37:22 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] in ref manual,	images list (and other lists) appear
	incomplete
Thread-Index: AQHM+iI4VzRXoNZCRUygTU33JOGjkZZcGOnw
Date: Mon, 5 Mar 2012 19:37:21 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123793B743CEC@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203041109200.9209@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203041109200.9209@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: in ref manual, images list (and other lists) appear incomplete
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Mar 2012 19:37:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am looking at http://www.yoctoproject.org/docs/latest/poky-ref-manual/pok=
y-ref-manual.html#ref-images and agree that we are missing some images.  Ea=
ch image you noted below (except the core-image-rt and core-image-rt-sdk) i=
s missing.  The latest version of the YP Reference Manual lists these real-=
time images in the image appendix.=20

So what I need to know is a couple things:

1. Do we want to include these three images as part of this list (hob-image=
, self-hosted-image, and the qt4e-demo-image)
2. If so, can someone provide me with short descriptions for each image's p=
urpose?

Thanks for noting these Robert.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Sunday, March 04, 2012 10:17 AM
To: Yocto discussion list
Subject: [yocto] in ref manual, images list (and other lists) appear incomp=
lete


  just wandering through the yocto/poky reference manual, and it seems
that some of the lists there are missing a few entries.

  first, in the images section,

file:///home/rpjday/yocto/git/documentation/poky-ref-manual/poky-ref-manual=
.html#ref-images

if you run the given command:

  $ ls meta*/recipes*/images/*.bb

you'll get at least a couple more recipes directory (recipes-rt,
recipes-qt) than is mentioned there, and more image recipe files:

$ ls -1 meta*/recipes*/images/*.bb
meta-hob/recipes-core/images/hob-image.bb        <-- not listed
meta/recipes-core/images/core-image-base.bb
meta/recipes-core/images/core-image-core.bb
meta/recipes-core/images/core-image-minimal.bb
meta/recipes-core/images/core-image-minimal-dev.bb
meta/recipes-core/images/core-image-minimal-initramfs.bb
meta/recipes-core/images/core-image-minimal-mtdutils.bb
meta/recipes-core/images/self-hosted-image.bb    <-- not listed
meta/recipes-extended/images/core-image-basic.bb
meta/recipes-extended/images/core-image-lsb.bb
meta/recipes-extended/images/core-image-lsb-dev.bb
meta/recipes-extended/images/core-image-lsb-sdk.bb
meta/recipes-graphics/images/core-image-clutter.bb
meta/recipes-graphics/images/core-image-gtk-directfb.bb
meta/recipes-qt/images/qt4e-demo-image.bb       <-- not listed
meta/recipes-rt/images/core-image-rt.bb         <-- not listed
meta/recipes-rt/images/core-image-rt-sdk.bb     <-- not listed
meta/recipes-sato/images/core-image-sato.bb
meta/recipes-sato/images/core-image-sato-dev.bb
meta/recipes-sato/images/core-image-sato-sdk.bb
$

  also, in Appendix E, the various lists there look incomplete as
well.  for example, it would appear that the valid options for
DISTRO_FEATURES should include things like x11, opengl, pulseaudio and
more.

  just making observations.

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

