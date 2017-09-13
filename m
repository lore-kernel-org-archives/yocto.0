Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B771AE00CB3; Wed, 13 Sep 2017 07:28:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C002E00C88
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 07:28:45 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Sep 2017 07:28:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,388,1500966000"; d="scan'208";a="311237424"
Received: from yctb05.ostc.intel.com (HELO yctb05) ([10.54.69.59])
	by fmsmga004.fm.intel.com with ESMTP; 13 Sep 2017 07:28:45 -0700
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: "Burton\, Ross" <ross.burton@intel.com>
References: <AM3PR01MB3280CDBFF17DF19270F0E1392690@AM3PR01MB328.eurprd01.prod.exchangelabs.com>
	<CAJTo0LaZYb+ZpDOu3=kqRAwBeTL7qmSTK6sSVpiGzGk_rdZgRQ@mail.gmail.com>
Date: Wed, 13 Sep 2017 07:28:45 -0700
In-Reply-To: <CAJTo0LaZYb+ZpDOu3=kqRAwBeTL7qmSTK6sSVpiGzGk_rdZgRQ@mail.gmail.com>
	(Ross Burton's message of "Wed, 13 Sep 2017 09:55:20 +0100")
Message-ID: <5q377qllk2.fsf@yctb05>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.0.50 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [bitbake] Failed to launch bitbake image -u -g depexp on a Debian 9 host system ?
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
X-List-Received-Date: Wed, 13 Sep 2017 14:28:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

"Burton, Ross" <ross.burton@intel.com> writes:

> On 12 September 2017 at 08:56, Karim ATIKI <karim_atiki@hotmail.com>
> wrote:
>
>=20=20=20=20
>     FATAL: Unable to import extension module "depexp" from bb.ui.
>     Valid extension modules: knotty, ncurses or taskexp
>=20=20=20=20
>
> depexp was renamed to taskexp.

and the -u parameter is the one expecting a user interface, -g is just
for producing the dot files, so flip the parameters. Just tried on
debian 9 and worked as expected.


>
> Ross=C2=A0

