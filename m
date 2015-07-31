Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CE62E00B67; Fri, 31 Jul 2015 06:48:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29379E009F0
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 06:48:04 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 31 Jul 2015 06:48:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,584,1432623600"; d="scan'208";a="616778864"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.23.101])
	by orsmga003.jf.intel.com with ESMTP; 31 Jul 2015 06:48:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Fri, 31 Jul 2015 14:48:01 +0100
Message-ID: <1780734.Ehxby87hf5@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <1438203053-7909-6-git-send-email-anibal.limon@linux.intel.com>
References: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
	<1438203053-7909-6-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 05/10][auh] upgradehelper.py: Add own step for loading environment
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
X-List-Received-Date: Fri, 31 Jul 2015 13:48:07 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 29 July 2015 15:50:48 An=EDbal Lim=F3n wrote:
> Instead of load environment in detecting git repository use own
> function making easy to debug.

The changes here don't seem to entirely match up with the commit messag=
e.

> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  upgradehelper.py | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>=20
> diff --git a/upgradehelper.py b/upgradehelper.py
> index 13fc7dd..9119cb0 100755
> --- a/upgradehelper.py
> +++ b/upgradehelper.py
> @@ -147,6 +147,7 @@ class Updater(object):
>=20
>          self.upgrade_steps =3D [
>              (self._create_workdir, None),
> +            (self._get_env, "Loading environment ..."),
>              (self._detect_repo, "Detecting git repository location .=
.."),
>              (self._clean_repo, "Cleaning git repository of temporary=
 branch
> ..."), (self._detect_recipe_type, None),
> @@ -205,18 +206,16 @@ class Updater(object):
>                  os.remove(os.path.join(self.workdir, f))
>=20
>      def _detect_repo(self):
> -        self._get_env()
> -
> -        if self.env['PV'] =3D=3D self.new_ver:
> +        if self.env['PKGV'] =3D=3D self.new_ver:
>              raise UpgradeNotNeededError
>=20
> -        if self.git is not None:
> +        # UniverseUpdater use git poky respository
> +        if isinstance(self.git, UniverseUpdater):
>              return
>=20
>          self.git =3D Git(self.recipe_dir)
>=20
>          stdout =3D self.git.status()
> -
>          if stdout !=3D "":
>              if self.interactive:
>                  W(" %s: git repository has uncommited work which wil=
l be
> dropped! Proceed? (y/N)" % self.pn) @@ -527,6 +526,8 @@ class
> Updater(object):
>  class UniverseUpdater(Updater):
>      def __init__(self):
>          Updater.__init__(self, True, True)
> +
> +        # XXX: assume that the poky directory is the first entry in =
the
> PATH self.git =3D Git(os.path.dirname(os.getenv('PATH',
> False).split(':')[0]))
>=20
>          # read history file

--=20

Paul Eggleton
Intel Open Source Technology Centre

