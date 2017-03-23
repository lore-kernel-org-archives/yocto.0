Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A72C4E00AAA; Thu, 23 Mar 2017 09:58:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.154.221 listed in list.dnswl.org]
X-Greylist: delayed 74097 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Mar 2017 09:58:29 PDT
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A9B6E00777
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 09:58:29 -0700 (PDT)
Received: from SFA-EX01.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.3]) by
	mx1401.ess.rzc.cudaops.com (version=TLSv1.2 cipher=AES256-SHA
	bits=256 verify=NO); Thu, 23 Mar 2017 16:58:26 +0000
Received: from SFA-EX01.SAKURAUS.LOCAL (10.16.3.165) by
	SFA-EX01.SAKURAUS.LOCAL (10.16.3.165) with Microsoft SMTP Server (TLS)
	id 15.0.1263.5; Thu, 23 Mar 2017 09:58:24 -0700
Received: from SFA-EX01.SAKURAUS.LOCAL ([fe80::a49b:4710:711c:e005]) by
	SFA-EX01.SAKURAUS.LOCAL ([fe80::a49b:4710:711c:e005%12]) with mapi id
	15.00.1263.000; Thu, 23 Mar 2017 09:58:24 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Morty 2.2.1 build failure
Thread-Index: AdKimbo38zQByDKER0OdNn457GOFxgAUeM+AABdky8AAKw4UgAAAN44w
Date: Thu, 23 Mar 2017 16:58:24 +0000
Message-ID: <6a6dd70f430b4a7c8f7c925d18814be8@SFA-EX01.SAKURAUS.LOCAL>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<0943f9a9-703b-d947-e2da-271bb22594be@gmail.com>
	<83d60adbd65a46faaaaef40bd2667cb3@SFA-EX01.SAKURAUS.LOCAL>
	<1800387.CklkhI1oXO@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1800387.CklkhI1oXO@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.16.5.198]
MIME-Version: 1.0
X-BESS-ID: 1490288302-321457-26629-7325-14
X-BESS-VER: 2017.3-r1703091851
X-BESS-Apparent-Source-IP: 12.26.104.3
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.179487
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 MAILTO_TO_SPAM_ADDR    META: Includes a link 
	to a likely spammer email 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=MAILTO_TO_SPAM_ADDR, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 23 Mar 2017 16:58:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

I looked in the logs from the failure yesterday and couldn't find anything,=
 so I restarted the build and it ran for about another 1000 steps before cr=
ashing again. I still can't find anything in any of the logs, syslog, kern.=
log, auth.log, etc.

Cheers,
Greg

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Thursday, March 23, 2017 2:49 AM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: yocto@yoctoproject.org; akuster808 <akuster808@gmail.com>
> Subject: Re: [yocto] Morty 2.2.1 build failure
>=20
> On Thursday, 23 March 2017 9:23:24 AM NZDT Greg Wilson-Lindberg wrote:
> > I tried it again this morning and it did get past the file not found er=
ror.
> > But when it gets above step 4000 somewhere it gets an error that kills
> > not just the yocto build but the full login session. I'm left staring
> > at the Linux Login screen.
>=20
> Your machine isn't running out of RAM by any chance, triggering the OOM
> killer? Anything indicative in your system logs?
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

