Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A079E007EF; Mon, 11 Sep 2017 08:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11B4CE00349
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 08:23:00 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Sep 2017 08:22:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,378,1500966000"; d="scan'208";a="127605776"
Received: from yctb05.ostc.intel.com (HELO yctb05) ([10.54.69.59])
	by orsmga004.jf.intel.com with ESMTP; 11 Sep 2017 08:22:59 -0700
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: ktreddy 70 <ktreddy70@gmail.com>
References: <CAKXGAjAn=6G=kai8pGBam9U6ff6McV74LA9KWY_eLt7XNOtUyA@mail.gmail.com>
Date: Mon, 11 Sep 2017 08:22:59 -0700
In-Reply-To: <CAKXGAjAn=6G=kai8pGBam9U6ff6McV74LA9KWY_eLt7XNOtUyA@mail.gmail.com>
	(ktreddy's message of "Sat, 2 Sep 2017 11:18:01 -0700")
Message-ID: <5qpoaxmf8s.fsf@yctb05>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.0.50 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: yocto layer dependencies
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
X-List-Received-Date: Mon, 11 Sep 2017 15:23:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

ktreddy 70 <ktreddy70@gmail.com> writes:

> I am trying to set up yocto build environment for openlte, meta-sdr
> has most of the openlte depends
> I am getting following error when I try to build sdr,=C2=A0
>
>
> /build$ bitbake sdr
> Loading cache: 100% |################################################
> #####################################################################
> #######################| Time: 0:00:00
> Loaded 1642 entries from dependency cache.
> ERROR: ParseError at /home/ktreddy/zcu102/sources/poky/../
> meta-openembedded/meta-sdr/recipes-applications/gqrx/gqrx_git.bb:8:
> Could not inherit file classes/qt4x11.bbclass
>
>
> I do have meta-qt4 under meta-openembedded layer=C2=A0 as below.

at bblayers.conf, does BBLAYERS include the above full path of
meta-openembedded/meta-qt4? also, try placing the meta-qt4 at the same
level of meta-openembeded, because these are two independent
repositories (and if you run git clean -fd at meta-openmebeded, you do
not remove meta-qt4 by mistake :) )


>
> zcu102/sources$=C2=A0ls=C2=A0meta-openembedded/meta-qt4/classes/
> qmake2.bbclass =C2=A0qmake_base.bbclass =C2=A0qt4e.bbclass =C2=A0qt4x11.b=
bclass
>
>
> could you please help me on why am I getting this error ?
> How can I make one layer visible to another layer ?

Though BBLAYERS. Include any layer you want and depending on the
priority, bitbake will deal with the corresponding metadata (bbappends, etc=
.)

> Ex: =C2=A0How can I make meta-sdr visible to openlte ? I mean how can I
> say to openlte that the dependency recipes are available under
> meta-sdr ?
>
> if new recipes are available for a layer how can I get those on to my
> build environment ?

basically the latter answer applies to this one.


>
> Thanks for your help.
>
> [no_pho] Click here to=C2=A0Reply=C2=A0or=C2=A0For

