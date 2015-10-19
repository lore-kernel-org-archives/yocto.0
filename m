Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA043E00C08; Mon, 19 Oct 2015 04:22:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5BECE00B9D
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 04:22:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Oct 2015 04:21:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,701,1437462000"; d="scan'208";a="796844737"
Received: from ggwalsh-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.6.253])
	by orsmga001.jf.intel.com with ESMTP; 19 Oct 2015 04:21:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?J=E9r=F4me?= OLIVIER <jerome.olivier@outlook.com>
Date: Mon, 19 Oct 2015 12:21:48 +0100
Message-ID: <1530167.LUOFWmWLxU@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <DUB125-W70B91D5FCA7A2A9CC289A78A3A0@phx.gbl>
References: <DUB125-W70B91D5FCA7A2A9CC289A78A3A0@phx.gbl>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Disable sstate-cache for one recipe
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
X-List-Received-Date: Mon, 19 Oct 2015 11:22:09 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi J=E9r=F4me,

On Monday 19 October 2015 10:18:41 J=E9r=F4me OLIVIER wrote:
> I use yocto 1.7.2. I have some problem with sstate-cache.
> I would like to disable totally sstate_cache for only one recipe. Is =
that
> possible?

Not really I'm afraid - what is the problem you are experiencing?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

