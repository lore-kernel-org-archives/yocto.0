Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 334C1E0097D; Mon, 12 Jan 2015 12:03:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0332E009A5
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 12:02:52 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1YAlCO-0007aR-JA from Joe_MacDonald@mentor.com ;
	Mon, 12 Jan 2015 12:02:52 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 12 Jan 2015 12:02:51 -0800
Received: by burninator (Postfix, from userid 1000)	id 4EA385809F6; Mon, 12
	Jan 2015 15:02:48 -0500 (EST)
Date: Mon, 12 Jan 2015 15:02:48 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Shrikant Bobade <bobadeshrikant@gmail.com>
Message-ID: <20150112200247.GK6167@mentor.com>
References: <1416384786-18424-1-git-send-email-bobadeshrikant@gmail.com>
	<CALwQEroEVq9XKxpy86M+38KQW2ojWFTFr-8-T66CaLMKo6TqDg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALwQEroEVq9XKxpy86M+38KQW2ojWFTFr-8-T66CaLMKo6TqDg@mail.gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org, Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH 1/3] V2 refpolicy:20140311 update for systemd
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
X-List-Received-Date: Mon, 12 Jan 2015 20:03:09 -0000
X-Groupsio-MsgNum: 22950
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="aYrjF+tKt+ApYAdb"
Content-Disposition: inline

--aYrjF+tKt+ApYAdb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Shrikant,

All three of these have been merged.  Thanks.  And my apologies to
everyone on the delay for these patches.

-J.

[Re: [yocto] [meta-selinux][PATCH 1/3] V2 refpolicy:20140311 update for sys=
temd] On 15.01.05 (Mon 17:12) Shrikant Bobade wrote:

> Hello,
>=20
> Please provide review comments or feedback if any, It will be a great hel=
p.=20
> @Ping.
>=20
> Thanks
> Shrikant
>=20
> On Wed, Nov 19, 2014 at 1:43 PM, Shrikant Bobade <bobadeshrikant@gmail.co=
m>
> wrote:
>=20
>     From: Shrikant Bobade <Shrikant_Bobade@mentor.com>
>=20
>     Systemd init type and related allow rules
>     updated for refpolicy.
>=20
>     Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
>     ---
>      .../refpolicy-update-for_systemd.patch             |   46
>     ++++++++++++++++++++
>      .../refpolicy/refpolicy_2.20140311.inc             |    1 +
>      2 files changed, 47 insertions(+)
>      create mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/
>     refpolicy-update-for_systemd.patch
>=20
>     diff --git a/recipes-security/refpolicy/refpolicy-2.20140311/
>     refpolicy-update-for_systemd.patch b/recipes-security/refpolicy/
>     refpolicy-2.20140311/refpolicy-update-for_systemd.patch
>     new file mode 100644
>     index 0000000..80b420c
>     --- /dev/null
>     +++ b/recipes-security/refpolicy/refpolicy-2.20140311/
>     refpolicy-update-for_systemd.patch
>     @@ -0,0 +1,46 @@
>     +refpolicy: update for systemd
>     +
>     +It provides the systemd support for refpolicy
>     +and related allow rules.
>     +The restorecon provides systemd init labeled
>     +as init_exec_t.
>     +
>     +Upstream-Status: Pending
>     +
>     +
>     +Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
>     +
>     +--- a/policy/modules/contrib/shutdown.fc
>     ++++ b/policy/modules/contrib/shutdown.fc
>     +@@ -5,6 +5,9 @@
>     + /sbin/shutdown        --      gen_context
>     (system_u:object_r:shutdown_exec_t,s0)
>     + /sbin/shutdown\.sysvinit      --      gen_context
>     (system_u:object_r:shutdown_exec_t,s0)
>     +
>     ++# systemd support
>     ++/bin/systemctl        --      gen_context
>     (system_u:object_r:shutdown_exec_t,s0)
>     ++
>     + /usr/lib/upstart/shutdown     --      gen_context
>     (system_u:object_r:shutdown_exec_t,s0)
>     +
>     + /usr/sbin/shutdown    --      gen_context
>     (system_u:object_r:shutdown_exec_t,s0)
>     +--- a/policy/modules/system/init.fc
>     ++++ b/policy/modules/system/init.fc
>     +@@ -31,6 +31,8 @@
>     + #
>     + /sbin/init(ng)?               --      gen_context
>     (system_u:object_r:init_exec_t,s0)
>     + /sbin/init\.sysvinit  --      gen_context
>     (system_u:object_r:init_exec_t,s0)
>     ++# systemd support
>     ++/lib/systemd/systemd  --      gen_context
>     (system_u:object_r:init_exec_t,s0)
>     + # because nowadays, /sbin/init is often a symlink to /sbin/upstart
>     + /sbin/upstart         --      gen_context
>     (system_u:object_r:init_exec_t,s0)
>     +
>     +--- a/policy/modules/system/init.te
>     ++++ b/policy/modules/system/init.te
>     +@@ -913,3 +913,8 @@
>     + optional_policy(`
>     +       zebra_read_config(initrc_t)
>     + ')
>     ++
>     ++# systemd related allow rules
>     ++allow kernel_t init_t:process dyntransition;
>     ++allow devpts_t device_t:filesystem associate;
>     ++allow init_t self:capability2 block_suspend;
>     diff --git a/recipes-security/refpolicy/refpolicy_2.20140311.inc b/
>     recipes-security/refpolicy/refpolicy_2.20140311.inc
>     index 8894583..557b4ab 100644
>     --- a/recipes-security/refpolicy/refpolicy_2.20140311.inc
>     +++ b/recipes-security/refpolicy/refpolicy_2.20140311.inc
>     @@ -29,6 +29,7 @@ SRC_URI +=3D "file://poky-fc-subs_dist.patch \
>                  file://poky-fc-rpm.patch \
>                  file://poky-fc-ftpwho-dir.patch \
>                  file://poky-fc-fix-real-path_su.patch \
>     +            file://refpolicy-update-for_systemd.patch \
>                 "
>=20
>      # Specific policy for Poky
>     --
>     1.7.9.5
>=20
>=20
>=20

--=20
-Joe MacDonald.
:wq

--aYrjF+tKt+ApYAdb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUtChnAAoJEEn8ffcsOfaW3g0H/A6kvvcmvtA30pK/ykfGZUX5
YAHrpZPN0f2/TtWd/yLyZSdmwPsxFxJT+auEW6LK7DOTi8sGJq3DWEnZsHsIltbG
MzjtjHYZK+KhGEdTA1RA/CkXGe9k4SPitMZCHVe3fYUYRJ41vQAhOUTinBobXPAQ
DIHNSGYc86tcSgXKtAq2uMua5eeIoHgmjkxDrGgTNY3rnFoM8Skz7teFmh13Egy8
nsdQWQIWjRf23eWj8CD43IWlhwQMJ7NIctsSAE5lHJP6ZYbVPSuHLmmsvAExy4AI
IIhnz5/2lTkj+OdYPdG//tjn9etpAhqWcr744FCIXMzSljzl8fbFOoihvcB2b2s=
=ZpkU
-----END PGP SIGNATURE-----

--aYrjF+tKt+ApYAdb--
