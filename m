Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46F4EE00655
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 07:37:15 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:52445 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TeSeP-0003Ut-Lp; Fri, 30 Nov 2012 10:37:13 -0500
Date: Fri, 30 Nov 2012 10:37:10 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
In-Reply-To: <20121130163419.6cff9aa0@eb-e6520>
Message-ID: <alpine.DEB.2.02.1211301036190.6067@oneiric>
References: <alpine.DEB.2.02.1211291032530.27333@oneiric>
	<50B7AE45.1070301@am.sony.com>
	<alpine.DEB.2.02.1211300848590.1918@oneiric>
	<20121130163419.6cff9aa0@eb-e6520>
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
Subject: Re: chris larson's cool "bitbake-env" utility
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
X-List-Received-Date: Fri, 30 Nov 2012 15:37:15 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1912183583-1354289833=:6067"

--8323329-1912183583-1354289833=:6067
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Fri, 30 Nov 2012, Eric B=E9nard wrote:

> Le Fri, 30 Nov 2012 08:53:35 -0500 (EST),
> "Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
>
> > On Thu, 29 Nov 2012, Tim Bird wrote:
> >
> > > I put a link to your page on my bitbake cheat sheet page at:
> > > http://elinux.org/Bitbake_Cheat_Sheet
> >
> >   as someone who has never bothered to play with any of the UIs and is
> > thus asking from a position of total ignorance, i have a couple
> > questions about the "User interfaces" section of that cheat sheet.
> >
> >   using stock oe-core, i followed your cheat sheet and tried this:
> >
> > $ bitbake
> >
> > and got:
> >
> > ERROR: Timeout while attempting to communicate with bitbake server
> >
> > so i need to start the server?  should that be mentioned there?
> >
> what would you expect to get when launching bitbake without any
> argument ?
>
> >   i then tried:
> >
> > $ bitbake -u knotty2
> > FATAL: Invalid user interface 'knotty2' specified.
> > Valid interfaces: depexp, goggle, ncurses, hob, knotty [default].
> > $
> >
> this is valid in denzil and no more in danny and up because of this
> commit :
> commit b97d50618b2187bcfd7d25f64d1444482ca62ef7
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Wed Aug 15 17:50:22 2012 +0100
>
>     knotty: Fold knotty2 into knotty and make it the default

  i was just pointing out the potential confusion in the cheat sheet
for people unfamiliar with the UIs, nothing more.

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

--8323329-1912183583-1354289833=:6067--
