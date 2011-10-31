Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C723E00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 08:10:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Oct 2011 08:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,432,1315206000"; d="scan'208";a="79710468"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2011 08:10:25 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 31 Oct 2011 08:10:25 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.38]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.179]) with mapi id
	14.01.0323.003; Mon, 31 Oct 2011 08:10:24 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] any objection to adding a PREMIRRORS section to the QS
	guide?
Thread-Index: AQHMlxH7BCsCldGKikewFCRSVBsb8pWWjsJA
Date: Mon, 31 Oct 2011 15:10:24 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E9FF2E@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1110301034330.32366@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1110301034330.32366@localhost6.localdomain6>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: any objection to adding a PREMIRRORS section to the QS	guide?
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
X-List-Received-Date: Mon, 31 Oct 2011 15:10:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

We do have a question addressed in the Yocto Project Reference Manual that =
talks about premirrors and how Poky finds stuff.  See the H.24 section of t=
he manual http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref=
-manual.html.  Maybe this information is a bit too buried to be useful.  I =
could specifically reference that FAQ entry from within the QS in the same =
area that I mention the other "useful" items to consider in the local.conf =
file, such as BB_NUMBER_THREADS, etc.

Scott



-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Sunday, October 30, 2011 7:40 AM
To: Yocto discussion list
Subject: [yocto] any objection to adding a PREMIRRORS section to the QS gui=
de?


  perhaps outside the scope of QS, but might it be worth adding a
short section on appending something like this to one's local.conf
file before starting the download?

PREMIRRORS_prepend =3D "\
git://.*/.* file:///home/rpjday/dl/ \n \
svn://.*/.* file:///home/rpjday/dl/ \n \
cvs://.*/.* file:///home/rpjday/dl/ \n \
ftp://.*/.* file:///home/rpjday/dl/ \n \
http://.*/.* file:///home/rpjday/dl/ \n \
https://.*/.* file:///home/rpjday/dl/ \n"

  the rationale is that, like myself, a number of people could be
coming to yocto from OE and already have a sizable downloads directory
somewhere on their system that they want to take advantage of and,
with the above, if my downloads directory is up to date, i end up not
having to download a single tarball from the net.

  thoughts?  is the above relatively complete or is there anything
else i would want to add to that variable?  and, again, is it worth
adding a side reference to that for people who could take advantage
of it?

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

