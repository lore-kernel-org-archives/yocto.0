Return-Path: <Maxin.John@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3AC6DE006AD
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 07:07:32 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.318.1;
	Tue, 19 Mar 2013 15:07:30 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 59311288B02;
	Tue, 19 Mar 2013 15:07:30 +0100 (CET)
Date: Tue, 19 Mar 2013 15:07:30 +0100
From: "Maxin B. John" <maxin.john@enea.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20130319140730.GA14702@sestofb10.enea.se>
MIME-Version: 1.0
In-Reply-To: <1363699671.16482.101.camel@ted>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org, tom.zanussi@linux.intel.com
Subject: Re: perf build breaks in poky master branch
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
X-List-Received-Date: Tue, 19 Mar 2013 14:07:32 -0000
Content-Type: text/plain; charset="unknown-8bit"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Richard,

 On Tue, Mar 19, 2013 at 01:27:51PM +0000, Richard Purdie wrote:
 > On Tue, 2013-03-19 at 14:06 +0100, Maxin B. John wrote:
 > > Hi,
 > >=C2=B7
 > > Perf build fails while trying to build core-image-minimal for qemux86,=
=C2=B7
 > > $ git clone git://git.yoctoproject.org/poky
 > > $ cd poky
 > > $ source oe-init-build-env
 > > $ bitbake core-image-minimal
 >=C2=B7
 > Sorry about this, I merged a patch which didn't work in a build from
 > scratch and the autobuilder just reported the same issue. I've merged a
 > fix for it.
 >=C2=B7

 It works fine now. Thanks a lot !=20

 > Cheers,
 > Richard

Thanks & Regards,
Maxin

