Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2574E00CB0; Thu, 24 Aug 2017 23:58:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8906CE00C1C
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 23:58:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 24 Aug 2017 23:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,424,1498546800"; d="scan'208";a="1166003681"
Received: from dsadberr-mobl1.amr.corp.intel.com ([10.252.202.185])
	by orsmga001.jf.intel.com with ESMTP; 24 Aug 2017 23:58:31 -0700
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <CC45D5CE9E0D434F8BF079FB4CE69702@PAULD>
Date: Thu, 24 Aug 2017 23:58:31 -0700
Message-Id: <2250D359-2C92-4512-8D44-15B538443B42@linux.intel.com>
References: <CC45D5CE9E0D434F8BF079FB4CE69702@PAULD>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Mailer: Apple Mail (2.3273)
Cc: yocto@yoctoproject.org
Subject: Re: Yocto plug-in not running cmake
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
X-List-Received-Date: Fri, 25 Aug 2017 06:58:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

My _guess_ is that Cmake is not installed on the host? or you do not =
have the SDK populated?

Please look at =
https://wiki.yoctoproject.org/wiki/TipsAndTricks/Cmake,Eclipse,_and_SDKS
and let us know if that helps.

> On Aug 24, 2017, at 4:46 PM, Paul D. DeRocco <pderocco@ix.netcom.com> =
wrote:
>=20
> Yocto 2.2.1, standard SDK for RPi, Yocto plug-in for Eclipse Mars
>=20
> I do File -> New -> C Project, give it a name, select Project Type ->
> Yocto Project SDK CMake Project -> Hello World C CMake Project, click
> Finish, and it creates a project. I click the build button, and it =
runs
> "make all" and complains "make: *** No rule to make target 'all'. =
Stop."
>=20
> Why is it running make and not cmake? It's hard to imagine that I made =
a
> mistake somewhere in those two steps.
>=20
> --=20
>=20
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


