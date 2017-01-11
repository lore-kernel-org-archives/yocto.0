Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D00BEE00932; Wed, 11 Jan 2017 00:59:18 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE6D5E0030B
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 00:59:15 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 11 Jan 2017 00:59:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,345,1477983600"; d="scan'208";a="1092631384"
Received: from lancehou-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.189.93])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2017 00:59:12 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Wed, 11 Jan 2017 21:59:10 +1300
Message-ID: <3147446.lSPnudXIVY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1483651296-8419-1-git-send-email-anibal.limon@linux.intel.com>
References: <1483651296-8419-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [[PATCH][layerindex]] layerindex: Update tinfoil to call shutdown method
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
X-List-Received-Date: Wed, 11 Jan 2017 08:59:18 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi An=EDbal,

On Thu, 05 Jan 2017 15:21:36 An=EDbal Lim=F3n wrote:
> The new client/server API of tinfoil requires explicit call of
> shutdown method to send the event for finalize cooker process.
>=20
> Also in update_layer remove the databuilder and cache instance
> now isn't needed.

This patch didn't apply against master - the databuilder piece does not=
 appear=20
to be there.

Since it was a simple patch, I've remade the changes (with most of your=
 commit=20
message) and pushed it to the paule/django18 branch that hopefully we'l=
l be=20
moving over to soon.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

