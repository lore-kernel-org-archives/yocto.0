Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7C61E00A4C; Tue, 16 Jun 2015 06:02:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA676E009E6
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 06:01:54 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 16 Jun 2015 06:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,626,1427785200"; d="scan'208";a="588808536"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.25.227])
	by orsmga003.jf.intel.com with ESMTP; 16 Jun 2015 06:01:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Tue, 16 Jun 2015 14:01:52 +0100
Message-ID: <2202663.KVYxiN3Sl2@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <1434139845-34607-1-git-send-email-anibal.limon@linux.intel.com>
References: <1434139845-34607-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2 09/11][auh] upgradehelper.py: Change policy for send emails and fix error passing
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
X-List-Received-Date: Tue, 16 Jun 2015 13:02:02 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi An=EDbal,

On Friday 12 June 2015 20:10:45 An=EDbal Lim=F3n wrote:
> Now send emails almost in all cases this give the maintainer
> patches and diff to continue work also if the build isn't
> succesful.
>=20
> [YOCTO #7489]
>=20
> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  upgradehelper.py | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>=20
> diff --git a/upgradehelper.py b/upgradehelper.py
> index b1f075d..d065fba 100755
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
> @@ -381,8 +379,14 @@ class Updater(object):
>                  "Attached are the patch, license diff (if change) an=
d
> bitbake log.\n\n" \ "Regards,\nThe Upgrade Helper"
>=20
> -            # don't bother maintainer with mail if the recipe is alr=
eady up
> to date -            if status =3D=3D "UpgradeNotNeededError":
> +            # if error only send email when useful infomration for
> maintainers exist +            if err and not (isinstance(err, PatchE=
rror)
> or \
> +               isinstance(err, ConfigureError) or \
> +               isinstance(err, CompilationError) or \
> +               isinstance(err, LicenseError)):
> +                D( "%s: Don't send email to maintainer because the e=
rror
> was " \ +                   "%s and the information isn't useful, ple=
ase
> review it." \ +                    % (self.pn, type(err).__name__))
>                  return

I think a better approach here would be to have the classes of error th=
at are=20
likely to be fixable by the maintainer as inheriting from a particular =
class=20
(e.g. MaintainerError) and then we can just check for that rather than =
having=20
to extend this code every time we add a new type of error.

>              if self.maintainer in maintainer_override:
> @@ -478,6 +482,7 @@ class Updater(object):
>=20
>          attempted_pkgs =3D 0
>          for self.pn, self.new_ver, self.maintainer in pkgs_to_upgrad=
e:
> +            error =3D None
>              self.recipe =3D None
>              attempted_pkgs +=3D 1
>              I(" ATTEMPT PACKAGE %d/%d" % (attempted_pkgs, total_pkgs=
))
> @@ -489,10 +494,6 @@ class Updater(object):
>                      step()
>=20
>                  I(" %s: Upgrade SUCCESSFUL! Please test!" % self.pn)=

> -                error =3D None
> -            except UpgradeNotNeededError as e:
> -                I(" %s: %s" % (self.pn, e.message))
> -                error =3D e

I'm confused by this. Won't this change result in UpgradeNotNeededError=
 being=20
treated as an actual error? Surely we don't actually want that?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

