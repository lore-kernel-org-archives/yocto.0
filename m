Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B21EE00AEB; Tue, 10 Nov 2015 00:54:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8680AE009D9
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 00:54:30 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 10 Nov 2015 00:54:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,269,1444719600"; d="scan'208";a="682000196"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.0.72])
	by orsmga003.jf.intel.com with ESMTP; 10 Nov 2015 00:54:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Tue, 10 Nov 2015 08:54:19 +0000
Message-ID: <1584000.36hq9YZtW0@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.10-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <1447106501-470-5-git-send-email-anibal.limon@linux.intel.com>
References: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
	<1447106501-470-5-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 04/10][AUH] buildhistory.py: Don't modify BB_ENV_EXTRAWHITE before init.
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
X-List-Received-Date: Tue, 10 Nov 2015 08:54:31 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday 09 November 2015 16:01:35 An=EDbal Lim=F3n wrote:
> Move code for add BUILDHISTORY_DIR to __init__ method because
> it fails when import in early step.
>=20
> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  buildhistory.py | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/buildhistory.py b/buildhistory.py
> index 1732f23..6eca6e1 100644
> --- a/buildhistory.py
> +++ b/buildhistory.py
> @@ -30,11 +30,10 @@ from errors import *
>  from bitbake import *
>  from git import Git
>=20
> -os.environ['BB_ENV_EXTRAWHITE'] =3D os.environ['BB_ENV_EXTRAWHITE'] =
+ \
> -                                    " BUILDHISTORY_DIR"
> -
>  class BuildHistory(object):
>      def __init__(self, bb, pn, workdir):
> +        os.environ['BB_ENV_EXTRAWHITE'] =3D os.environ['BB_ENV_EXTRA=
WHITE'] +
> \ +                                    " BUILDHISTORY_DIR"
>          self.bb =3D bb
>          self.pn =3D pn
>          self.workdir =3D workdir

I'm not particularly happy with setting this through the environment. L=
eaving=20
that aside though, rather than putting it at the top of the constructor=
 can=20
you please put this just before the line where we actually set=20
BUILDHISTORY_DIR in the environment?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

