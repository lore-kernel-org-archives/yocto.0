Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5156DE00B1A; Mon, 20 Nov 2017 12:12:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEBE5E009CB
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 12:12:07 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Nov 2017 12:12:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,429,1505804400"; d="scan'208";a="10003155"
Received: from bplee1-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.64.234])
	by orsmga002.jf.intel.com with ESMTP; 20 Nov 2017 12:12:03 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Tue, 21 Nov 2017 09:12:00 +1300
Message-ID: <4652517.ZQGAsBVoUS@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <16972162.Agi7Apa5Ls@peggleto-mobl.ger.corp.intel.com>
References: <CALbNGRRKv72-BPBKKeEMwCiGUf5VkqCE6gSYf91pUPySX=eK_A@mail.gmail.com>
	<16972162.Agi7Apa5Ls@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Layer index not updated
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
X-List-Received-Date: Mon, 20 Nov 2017 20:12:08 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday, 10 November 2017 8:32:36 AM NZDT Paul Eggleton wrote:
> On Thursday, 9 November 2017 9:36:26 PM NZDT Andreas M=FCller wrote:
> > did not find any heads up here so: Layer index stopped updating ~1,5 mo=
nth.
> > Low priority - this is just notification & thanks in advance for taking
> > care :)
>=20
> I reported this to Michael a week or so ago but I think he's still battli=
ng an=20
> upgrade of the layer index code among other things. Michael, any updates?

Looks like the layer index updates are still broken - Michael?=20

Cheers
Paul

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

