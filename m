Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15886E00A18; Fri,  3 Mar 2017 06:29:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.40.44.56 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0056.hostedemail.com
	[216.40.44.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7782E009C3
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 06:29:28 -0800 (PST)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 34B9AC1F73;
	Fri,  3 Mar 2017 14:29:27 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: eggs21_354863be9351a
X-Filterd-Recvd-Size: 2399
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Fri,  3 Mar 2017 14:29:26 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "'Robert P. J. Day'" <rpjday@crashcourse.ca>
References: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
	<CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
	<00b801d29425$cfb126c0$6f137440$@sdcsystems.com>
	<alpine.LFD.2.20.1703030902230.11821@uk63952.mitel.com>
In-Reply-To: <alpine.LFD.2.20.1703030902230.11821@uk63952.mitel.com>
Date: Fri, 3 Mar 2017 14:29:23 -0000
Organization: SDC Systems Limited
Message-ID: <00cc01d2942a$8eb416f0$ac1c44d0$@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIjTc6c856XHZevdzrH9qEnCanSkAKDdE6vAdzf3kwCHVMUr6Ctyr7Q
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: any rumblings about a newer YP powerpc reference board than mpc8315e-rdb?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andy.pont@sdcsystems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 Mar 2017 14:29:32 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

Robert wrote...

> > I would look at one of the P10xx series QorIQ boards.  Digi-Key list
> > the P1021RDB-PC-ND and P1024RDB-PA-ND as being active parts which
> > are either single or dual e500 cores.
>=20
>   i would start with the machine definition files in the meta-fsl-ppc
> layer:
>=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/conf/machine
>=20
> and see what looks promising. however, IIRC, one of the properties of
> a YP reference board is that it shouldn't be stupid, crazy expensive,
> no? so anything climbing above $500 (USD) might not be an option.
> people used to spending $60 for a beaglebone black might have a
> seizure to suddenly realize they need $500 for a powerpc reference
> board.

Using Digi-Key UK as my reference, they list the MPC8308-RDB-ND and
MPC8313E-RDBC-ND as being available for less than =A3250 which makes =
them sub
$300 which is probably the best price I have seen for Power Architecture
reference boards.

Granted, they are still more expensive than a BBB, RPi or something like
that but cheap compared to >$2,000 reference boards we used to have to =
buy
in the old days!

-Andy




