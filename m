Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BC41E00A64; Wed, 17 Jun 2015 10:32:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BB37E00A5B
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 10:32:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 17 Jun 2015 10:32:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,634,1427785200"; d="scan'208";a="729362722"
Received: from apulli-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.1.212])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2015 10:32:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 18:32:24 +0100
Message-ID: <12176130.ZhO8ySBba4@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <1434501318-33354-1-git-send-email-anibal.limon@linux.intel.com>
References: <1434501318-33354-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [PATCHv3 09/11][auh] upgradehelper.py: Change policy for send emails and fix error handling.
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
X-List-Received-Date: Wed, 17 Jun 2015 17:32:39 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 17 June 2015 00:35:18 An=EDbal Lim=F3n wrote:
> Add MaintainerError class for identify errors that can be hanlded by
> Maintainers, only send emails when error is instance of MaintainerErr=
or.
>=20
> Get rid of UpgradeNotNeededError when run steps now is handled by
> new upstream version detection only load recipes that need update.
>=20
> [YOCTO #7489]
>=20
> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  errors.py        | 16 ++++++++++++----
>  upgradehelper.py | 16 +++++++---------
>  2 files changed, 19 insertions(+), 13 deletions(-)
>=20
> diff --git a/errors.py b/errors.py
> index c650165..7194944 100644
> --- a/errors.py
> +++ b/errors.py
> @@ -31,6 +31,11 @@ class Error(Exception):
>      def __str__(self):
>          return "Failed(other errors)"
>=20
> +class MaintainerError(Error):
> +    """ Class for group error that can be sent to Maintainer's """
> +    def __init__(self, message=3DNone, stdout=3DNone, stderr=3DNone)=
:
> +        super(MaintainerError, self).__init__(message, stdout, stder=
r)
> +
>  class FetchError(Error):
>      def __init__(self):
>          super(FetchError, self).__init__("do_fetch failed")
> @@ -38,25 +43,28 @@ class FetchError(Error):
>      def __str__(self):
>          return "Failed(do_fetch)"
>=20
> -class PatchError(Error):
> +class PatchError(MaintainerError):
>      def __init__(self):
>          super(PatchError, self).__init__("do_patch failed")
>=20
>      def __str__(self):
>          return "Failed(do_patch)"
>=20
> -class ConfigureError(Error):
> +class ConfigureError(MaintainerError):
>      def __init__(self):
>          super(ConfigureError, self).__init__("do_configure failed")
>=20
> -class CompilationError(Error):
> +    def __str__(self):
> +        return "Failed(do_configure)"
> +
> +class CompilationError(MaintainerError):
>      def __init__(self):
>          super(CompilationError, self).__init__("do_compile failed")
>=20
>      def __str__(self):
>          return "Failed(do_compile)"
>=20
> -class LicenseError(Error):
> +class LicenseError(MaintainerError):
>      def __init__(self):
>          super(LicenseError, self).__init__("license checksum does no=
t
> match")
>=20
> diff --git a/upgradehelper.py b/upgradehelper.py
> index b1f075d..7756b36 100755
> --- a/upgradehelper.py
> +++ b/upgradehelper.py
> @@ -346,8 +346,6 @@ class Updater(object):
>                  self.git.clean_untracked()
>                  return
>=20
> -        status =3D type(err).__name__
> -
>          # drop last upgrade from git. It's safer this way if the upg=
rade
> has # problems and other recipes depend on it. Give the other recipes=
 a #
> chance...
> @@ -381,8 +379,11 @@ class Updater(object):
>                  "Attached are the patch, license diff (if change) an=
d
> bitbake log.\n\n" \ "Regards,\nThe Upgrade Helper"
>=20
> -            # don't bother maintainer with mail if the recipe is alr=
eady up
> to date -            if status =3D=3D "UpgradeNotNeededError":
> +            # only send email to Maintainer when is an error that ca=
n
> handle +            if err and not isinstance(err, MaintainerError):
> +                D( "%s: Don't send email to maintainer because the e=
rror
> was " \ +                   "%s and the information isn't useful, ple=
ase
> review it." \ +                    % (self.pn, type(err).__name__))
>                  return
>=20
>              if self.maintainer in maintainer_override:
> @@ -478,6 +479,7 @@ class Updater(object):
>=20
>          attempted_pkgs =3D 0
>          for self.pn, self.new_ver, self.maintainer in pkgs_to_upgrad=
e:
> +            error =3D None
>              self.recipe =3D None
>              attempted_pkgs +=3D 1
>              I(" ATTEMPT PACKAGE %d/%d" % (attempted_pkgs, total_pkgs=
))
> @@ -489,10 +491,6 @@ class Updater(object):
>                      step()
>=20
>                  I(" %s: Upgrade SUCCESSFUL! Please test!" % self.pn)=

> -                error =3D None
> -            except UpgradeNotNeededError as e:
> -                I(" %s: %s" % (self.pn, e.message))
> -                error =3D e
>              except Error as e:
>                  E(" %s: %s" % (self.pn, e.message))
>                  E(" %s: Upgrade FAILED! Logs and/or file diffs are
> available in %s" % (self.pn, self.workdir)) @@ -667,7 +665,7 @@ class=

> UniverseUpdater(Updater):
>=20
>      # overriding the base method
>      def pkg_upgrade_handler(self, err):
> -        super(UniverseUpdater, self).pkg_upgrade_handler(self)
> +        super(UniverseUpdater, self).pkg_upgrade_handler(err)
>          self.update_history(self.pn, self.new_ver, self.maintainer,
>                  self._get_status_msg(err))

OK, after this v3, this and all other patches in this series look OK.

Acked-by: Paul Eggleton <paul.eggleton@linux.intel.com>

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

