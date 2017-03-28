Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F254E00B01; Tue, 28 Mar 2017 01:54:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.187 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Mar 2017 01:54:48 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA96E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 01:54:48 -0700 (PDT)
Received: from oxbsltgw11.schlund.de ([172.19.249.28]) by
	mrelayeu.kundenserver.de (mreue003 [212.227.15.163]) with ESMTPSA
	(Nemesis) id 0Lgc4H-1cPUCw2b0n-00nwM2 for <yocto@yoctoproject.org>;
	Tue, 28 Mar 2017 10:49:43 +0200
Date: Tue, 28 Mar 2017 09:49:43 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org
Message-ID: <1037607058.234848.1490690983542@email.1and1.co.uk>
In-Reply-To: <CAJTo0LajEvXnv+_L-udEejKu6c56xOrKwekoNRNzn29R_ihqZg@mail.gmail.com>
References: <1e0b01d2a79a$18c68030$4a538090$@ln-systems.com>
	<CAJTo0LajEvXnv+_L-udEejKu6c56xOrKwekoNRNzn29R_ihqZg@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev32
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:Azrh0mfvcgBbvEnnCFYqo36ixHt5pq0lsyKeDDNaJ+rfBDstGSG
	4T6+151gKkK4CQ9KmByzAQX+tq9xnAVZTv2bwb0ra0LefwtHklbFJuEfCEANiIhlqUuwIRY
	eWAbqCOsM5xmWSu5BbIf017VdCqhoonoMg8CjVZbtKGNkaCgd0bSQQh1LdT/ITWMf+0dEXJ
	E90vW3RRZ1IuLzCndg2FA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:naAA3loJx5M=:43eqjYv8nE7vVVS2otGy5D
	AKuq+b3Yr6UmVY+zC/9sDqFgLpYrrdVwiMR+hqIYCGWMXDskwlO6UTx8zKXlkEJpiLcnwoS7V
	v9WEtrCoOxA91M3jbuO21BvJRTCoVaOSJ2gB63OwCpfHNg1nm12GmnRunoMa/BrmKasJW7CVi
	FXPLfRL5gMtt7vKMJEXezaEySdLLcoqjUPjrbee1bhd/3w91PzhN/A+MtKXz/ha/k9MJz5P7J
	ZLRxjICwMc5sFBbX1fwh30bF+EPjTocvJrLN1/WyRxHiR47CC8zNwY7LkqDTQU94fxP/ZiXhq
	c/lq9lSFnJ13XdNAxKIsMo4QMxAv6f9NrWd7rpPbNq4GJ2g6fToNxy4xe3leL/IZKYsJ4xAQw
	yTimapyWa1s3vAKHuvoyLCh9c3mrdhR7xrdX9vXDJaD60xgqQe2uK5OdKmamIHnWBnEyBg9hc
	YmBWm0jRcqsjHX1vsOWTP9KBFTNr+PtPz67GGbVMIexh58ca0wXtLjJk+V5VtMo5ICPnh3r1f
	gljwD26W9omxNKxH+6S953OXzZz6zmDIIRYo2ht5IK/gysR6V0iIk9tiPbzJd9mHZ63N8UEOE
	AzdV3nTYxL+mDE8f3AxmdcYsiNoFFD7tT2PECDqisvqRORSgDRTwJyFanFoZh46OjefU5EVq/
	PmqcbkZq4aO5LcQy516NNkvPdszul6Gs0f/fpoBRLHw9cQd73maRaQ220vrLKr6uJQ90NYYn0
	r8SiLeyW85iOUTqQ
Subject: Re: Current situation with gobject introspection?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Mar 2017 08:54:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> On 28 March 2017 at 09:39 "Burton, Ross" <ross.burton@intel.com> wrote:
>=20
> On 28 March 2017 at 09:05, <colin.helliwell@ln-systems.com> wrote:
>=20
> > So I wondered what the latest [krogoth] situation is =E2=80=93 am I lik=
ely to be able to get this package to build, and where/how might I get star=
ted?
>=20
> Krogoth (2.1) isn't the latest, that's Morty (2.2) released in October 20=
16 and next month Pyro (2.3) is being released.
>

Yeah, sorry - I meant 'the latest situation w.r.t Krogoth', rather than Kro=
goth being the latest version :)

> Krogoth has support for gobject-introspection, and is covered in the docu=
mentation:
>=20
> http://www.yoctoproject.org/docs/2.2.1/dev-manual/dev-manual.html#enablin=
g-gobject-introspection-support
>=20

Thanks guys, I'll get moved over to Krogoth and take it from there.

