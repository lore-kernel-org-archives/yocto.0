Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD614E013A6
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 08:01:58 -0700 (PDT)
Received: from cpe00259c3f7b80-cm001cea397c84.cpe.net.cable.rogers.com
	([99.246.186.249]:43967 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SbvGf-0002du-99; Tue, 05 Jun 2012 11:01:57 -0400
Date: Tue, 5 Jun 2012 11:01:50 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Wang, Shane" <shane.wang@intel.com>
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC23BCA9CF@SHSMSX102.ccr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1206051100550.2774@oneiric>
References: <alpine.DEB.2.02.1206031757260.20352@oneiric>
	<alpine.DEB.2.02.1206040435060.9995@oneiric>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA4CB@SHSMSX102.ccr.corp.intel.com>
	<CAMKF1srmT8221t=XuXJ-fReqwCK3QQb8ri2rxDjb8bHwFUbh9A@mail.gmail.com>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA672@SHSMSX102.ccr.corp.intel.com>
	<alpine.DEB.2.02.1206050929001.4572@oneiric>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA9CF@SHSMSX102.ccr.corp.intel.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: something about gtk+-2.24.8.tar.bz2 that requires constant downloading?
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
X-List-Received-Date: Tue, 05 Jun 2012 15:01:59 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-680880399-1338908517=:2774"

--8323329-680880399-1338908517=:2774
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Tue, 5 Jun 2012, Wang, Shane wrote:

> Robert P. J. Day wrote on=C2=A02012-06-05:

> >   at this point, has the problem been identified?  or does this still
> > require a bugzilla submission?  it would appear that the issue
> > involves any package with a "+" in the package name which, for now,
> > appears to be just that gtk+ package.  would any other special
> > characters trigger this?  that's the only package i've tripped over
> > that caused this behaviour.
> >
> > rday
> >
>
> Yes, it has been identified. If you can't submit a bug, I can do.
> Yes, I believe other special characters will trigger that.
>
> Just because I am not familiar with all fetch code, I can fix it for
> gtk+ now but I am not sure whether that fix will bring any
> regression bugs. Give me more time.

  ok, i'll leave it in your capable hands and go find something else
to nitpick.

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

--8323329-680880399-1338908517=:2774--
