Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42228E00DF1; Sun,  4 Dec 2016 11:49:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7708E00DED
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 11:49:00 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP; 04 Dec 2016 11:49:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,743,1477983600"; d="scan'208";a="37012680"
Received: from patejona-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.157.67])
	by orsmga004.jf.intel.com with ESMTP; 04 Dec 2016 11:48:58 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Frank =?ISO-8859-1?Q?Meerk=F6tter?= <meerkoetter@googlemail.com>
Date: Mon, 05 Dec 2016 08:48:56 +1300
Message-ID: <3062695.A2rY8KLgxq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAEmxt=9e6CiDuvDm9hTDpQ5ewmC665ZOpfNk41LLotMsydT=GQ@mail.gmail.com>
References: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
	<3800149.2tT9rjCn72@peggleto-mobl.ger.corp.intel.com>
	<CAEmxt=9e6CiDuvDm9hTDpQ5ewmC665ZOpfNk41LLotMsydT=GQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [recipetool] Failure to create a new recipe (failed to parse setup.py)
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
X-List-Received-Date: Sun, 04 Dec 2016 19:49:03 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Frank,

On Sun, 04 Dec 2016 20:24:01 Frank Meerk=F6tter wrote:
> Am 04.12.2016 20:15 schrieb "Paul Eggleton" <paul.eggleton@linux.inte=
l.com>:
> > Hmm, it looks like we're treating a byte array as a string (i.e. mi=
ssing
> > decoding) and that doesn't work. Likely this broke during the Pytho=
n3
> > migration, and since there are a number of different code paths in
> > recipetool's python handling code our relatively simplistic automat=
ed
> > tests didn't hit it. I have a fix here and will send it out soon.
>=20
> Just a hint. Something like this also happens when using the "devtool=
 add".

On this same source (octoprint) or something else?

If you mean on octoprint, that would be expected because devtool calls=20=

recipetool internally to create the recipe.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

