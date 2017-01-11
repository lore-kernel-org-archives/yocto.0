Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D85DCE00524; Wed, 11 Jan 2017 11:21:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6834AE003C1
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 11:21:14 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jan 2017 11:21:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="1111222589"
Received: from ramkri1-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.169.75])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jan 2017 11:21:11 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Thu, 12 Jan 2017 08:21:08 +1300
Message-ID: <2392707.snCkFY0YiC@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <58764466.8030100@linux.intel.com>
References: <1483651296-8419-1-git-send-email-anibal.limon@linux.intel.com>
	<3147446.lSPnudXIVY@peggleto-mobl.ger.corp.intel.com>
	<58764466.8030100@linux.intel.com>
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
X-List-Received-Date: Wed, 11 Jan 2017 19:21:15 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wed, 11 Jan 2017 08:42:46 An=EDbal Lim=F3n wrote:
> On 01/11/2017 02:59 AM, Paul Eggleton wrote:
> > On Thu, 05 Jan 2017 15:21:36 An=EDbal Lim=F3n wrote:
> >> The new client/server API of tinfoil requires explicit call of
> >> shutdown method to send the event for finalize cooker process.
> >>=20
> >> Also in update_layer remove the databuilder and cache instance
> >> now isn't needed.
> >=20
> > This patch didn't apply against master - the databuilder piece does=
 not
> > appear to be there.
>=20
> Great may be was my own changes against RRS,
>=20
> Only a comment if your layerindex scripts don't call shutdown the upd=
ate
> script seems blocked because never arrives the event.

On the paule/django18 branch the update_layer.py script already calls=20=

shutdown(), and your patch takes care of the rest.

However this seems like a bug to me - if the client neglects to call=20=

shutdown() it would be nice if it didn't break things. Earlier I did us=
e a=20
destructor within the Tinfoil class to call shutdown() if it hadn't alr=
eady=20
been called, but I don't think that's reliable.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

