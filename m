Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CADDBE00E04; Sun,  4 Dec 2016 13:50:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E18FE00DFB
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 13:50:10 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 04 Dec 2016 13:50:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,301,1477983600"; d="scan'208";a="13530940"
Received: from patejona-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.157.67])
	by orsmga002.jf.intel.com with ESMTP; 04 Dec 2016 13:50:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Frank =?ISO-8859-1?Q?Meerk=F6tter?= <meerkoetter@googlemail.com>
Date: Mon, 05 Dec 2016 10:50:04 +1300
Message-ID: <2591989.V4Met3S8nY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAEmxt=-MDi_wBj+A6vuvw6vfVUAMmuaYmqXJ6bTEhyTzbDp5yA@mail.gmail.com>
References: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
	<1563495.jI1DcjphDF@peggleto-mobl.ger.corp.intel.com>
	<CAEmxt=-MDi_wBj+A6vuvw6vfVUAMmuaYmqXJ6bTEhyTzbDp5yA@mail.gmail.com>
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
X-List-Received-Date: Sun, 04 Dec 2016 21:50:12 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sun, 04 Dec 2016 22:41:29 Frank Meerk=F6tter wrote:
> ANSI_X3.4-1968

That's strange - it should be "UTF-8". That's certainly what would caus=
e this=20
problem. If you run "locale" what does that print?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

