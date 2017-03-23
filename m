Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 319F5E00546; Thu, 23 Mar 2017 13:11:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01845E003E1
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 13:11:44 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx4.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Thu, 23 Mar 2017 20:11:41 +0000
Received: from SFA-EX01.SAKURAUS.LOCAL (10.16.3.165) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 23 Mar 2017 13:11:39 -0700
Received: from SFA-EX01.SAKURAUS.LOCAL ([fe80::a49b:4710:711c:e005]) by
	SFA-EX01.SAKURAUS.LOCAL ([fe80::a49b:4710:711c:e005%12]) with mapi id
	15.00.1263.000; Thu, 23 Mar 2017 13:11:40 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: akuster <akuster@mvista.com>
Thread-Topic: [yocto] Morty 2.2.1 build failure
Thread-Index: AdKimbo38zQByDKER0OdNn457GOFxgAUeM+AABdky8AAKw4UgAAAN44wABPnLoAAAEbugAAOMczw
Date: Thu, 23 Mar 2017 20:11:40 +0000
Message-ID: <377dbeeeb1774e2883147b2b12a05e6d@SFA-EX01.SAKURAUS.LOCAL>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<1800387.CklkhI1oXO@peggleto-mobl.ger.corp.intel.com>
	<6a6dd70f430b4a7c8f7c925d18814be8@SFA-EX01.SAKURAUS.LOCAL>
	<13191224.qIYrFqvWFr@peggleto-mobl.ger.corp.intel.com>
	<6ffd54ff-01dd-c263-5e44-ca26be3cb9c0@mvista.com>
In-Reply-To: <6ffd54ff-01dd-c263-5e44-ca26be3cb9c0@mvista.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.16.5.198]
MIME-Version: 1.0
X-BESS-ID: 1490299901-298555-24473-87185-1
X-BESS-VER: 2017.3-r1703091851
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.179494
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 MAILTO_TO_SPAM_ADDR    META: Includes a link 
	to a likely spammer email 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=MAILTO_TO_SPAM_ADDR, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Morty 2.2.1 build failure
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
X-List-Received-Date: Thu, 23 Mar 2017 20:11:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Armin & Paul,

First there is nothing in the X log files.
I'm building on a desktop machine with 12GB of memory and an 8 core process=
or running Kubuntu 14.04.
I added the PARALLEL_MAKE parameter set to 4, no effect, still built with 8=
 threads, crashed.
Set BB_NUMBER_THREADS to 4, built with 4 threads, still crashed.

Regards,
Greg

> -----Original Message-----
> From: akuster [mailto:akuster@mvista.com]
> Sent: Thursday, March 23, 2017 12:33 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: Paul Eggleton <paul.eggleton@linux.intel.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] Morty 2.2.1 build failure
>=20
>=20
>=20
> On 03/23/2017 12:25 PM, Paul Eggleton wrote:
> > That's really bizarre. There shouldn't be anything in a bitbake build
> > that could cause anything like this (other than possibly how intensive
> > it is, which might trigger out-of-memory or an underlying
> hardware/software failure).
>=20
> I usually get my builds to reboot my system when I build on a loptop. I h=
ave
> not seen this on a tower style work station. You may want to play with th=
e
> BB_NUMBER_THREADS=3D# and PARALLEL_MAKE =3D "-j #" settings in your
> local.conf.
>=20
> - armin
> >
> > Assuming the X session is ending is there anything in your
> > ~/.xsession-errors or /var/log/Xorg.*.log?
> >
> > Cheers,
> > Paul
> >
> > On Friday, 24 March 2017 5:58:24 AM NZDT Greg Wilson-Lindberg wrote:
> >> Hi Paul,
> >>
> >> I looked in the logs from the failure yesterday and couldn't find
> >> anything, so I restarted the build and it ran for about another 1000
> >> steps before crashing again. I still can't find anything in any of
> >> the logs, syslog, kern.log, auth.log, etc.
> >>
> >> Cheers,
> >> Greg
> >>
> >>> -----Original Message-----
> >>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >>> Sent: Thursday, March 23, 2017 2:49 AM
> >>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> >>> Cc: yocto@yoctoproject.org; akuster808 <akuster808@gmail.com>
> >>> Subject: Re: [yocto] Morty 2.2.1 build failure
> >>>
> >>> On Thursday, 23 March 2017 9:23:24 AM NZDT Greg Wilson-Lindberg
> wrote:
> >>>> I tried it again this morning and it did get past the file not
> >>>> found error.
> >>>> But when it gets above step 4000 somewhere it gets an error that
> >>>> kills not just the yocto build but the full login session. I'm left
> >>>> staring at the Linux Login screen.
> >>> Your machine isn't running out of RAM by any chance, triggering the
> >>> OOM killer? Anything indicative in your system logs?
> >>>
> >>> Cheers,
> >>> Paul
> >>>
> >>> --
> >>>
> >>> Paul Eggleton
> >>> Intel Open Source Technology Centre
> >


