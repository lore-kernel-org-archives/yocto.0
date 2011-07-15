Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9E644C800A1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 12:27:33 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jul 2011 10:27:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,209,1309762800"; d="scan'208";a="30803457"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jul 2011 10:27:25 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 15 Jul 2011 10:27:26 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.12]) with mapi id
	14.01.0289.001; Fri, 15 Jul 2011 10:27:25 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] last observations about quick start guide, then moving on
Thread-Index: AQHMQxISoqfv7XfLB0Ct+cI8ZhuIa5Ttoqfw
Date: Fri, 15 Jul 2011 17:27:22 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237903180F@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1107151302020.8631@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1107151302020.8631@localhost6.localdomain6>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Subject: Re: last observations about quick start guide, then moving on
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
X-List-Received-Date: Fri, 15 Jul 2011 17:27:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Robert... I will deal with each of these. =20

ScottR

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Friday, July 15, 2011 10:10 AM
To: Yocto discussion list
Subject: [yocto] last observations about quick start guide, then moving on


1)  "This optional GNOME mobile-based UI, which is intended for
     devices with resolution but restricted size screens ..."

     pretty sure there's a word missing before "resolution," no?

2)  "OpenSUSE" vs "OpenSuse" ... actually, both of those are wrong,
    it should be "openSUSE". :-P

3)  near bottom, sample command:

    poky-qemu qemux86 zImage-2.6.34-qemux86-1.0.bin \
       yocto-image-sdk-qemux86-1.0.rootfs.ext3

    neither that kernel image nor rootfs are in downloads, should
    pick args that exist if that matters

  i'll let scott do with that what he will, and move on to manhandle
the poky handbook. :-)

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

