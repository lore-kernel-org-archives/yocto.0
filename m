Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4098EE00DF3; Fri, 26 Jan 2018 15:12:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76CFBE00DD5
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 15:12:21 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jan 2018 15:12:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,419,1511856000"; d="scan'208";a="13299248"
Received: from ttorling-mac01.jf.intel.com ([10.24.14.220])
	by fmsmga007.fm.intel.com with ESMTP; 26 Jan 2018 15:12:20 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 26 Jan 2018 15:12:20 -0800
References: <20180126033303.6842-1-timothy.t.orling@linux.intel.com>
	<20180126033303.6842-2-timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
In-Reply-To: <20180126033303.6842-2-timothy.t.orling@linux.intel.com>
Message-Id: <AE32E7E0-2B18-443F-AFAA-19A0CB470680@linux.intel.com>
X-Mailer: Apple Mail (2.3273)
Subject: Re: [eclipse-poky][oxygen][PATCH v2 2/2] setup.sh: show versions availables and version installed
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
X-List-Received-Date: Fri, 26 Jan 2018 23:12:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I am going to go ahead and merge these as other work is depending on =
these changes.

=E2=80=94Tim

> On Jan 25, 2018, at 7:33 PM, Tim Orling =
<timothy.t.orling@linux.intel.com> wrote:
>=20
> From: Chin Huat Ang <chin.huat.ang@intel.com>
>=20
> Signed-off-by: Chin Huat Ang <chin.huat.ang@intel.com>
> Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
> ---
> scripts/setup.sh | 26 +++++++++++++++-----------
> 1 file changed, 15 insertions(+), 11 deletions(-)
>=20
> diff --git a/scripts/setup.sh b/scripts/setup.sh
> index 024596bfb1e..e3da101cbe5 100755
> --- a/scripts/setup.sh
> +++ b/scripts/setup.sh
> @@ -219,9 +219,13 @@ update_feature_remote()
>   [ $# -lt 3 ] && err_exit 1 "update_feature_remote: invalid =
parameters, $*"
>   check_local_version $2 $3 $4 && echo "Feature $2 is already =
installed" && return 0
>   local installIU=3D""
> +  local all_versions=3D$(get_version $1 $2 'all')
> +
> +  echo "Feature $2 versions available: $all_versions"
> +
>   if [ "x$4" !=3D "x" ]; then
>       #has max version requirement
> -      for i in "`get_version $1 $2 'all'`"; do
> +      for i in $all_versions; do
>         if [ "$i" \> "$3" ] || [ "$i" =3D "$3" ] && [ "$i" \< "$4" ]; =
then
>           [ "$i" \> "$installIU" ] && installIU=3D$i
>         fi
> @@ -264,51 +268,51 @@ fi
> UPDATE_SITE=3D"http://download.eclipse.org/eclipse/updates/4.7"
>=20
> #CDT related
> -echo -e "\nPlease wait. Installing CDT.SDK.FEATURE.GROUP"
> CDTFEAT=3D"9.4.0"
> +echo -e "\nPlease wait. Installing CDT.SDK.FEATURE.GROUP ${CDTFEAT}"
> update_feature_remote ${MAIN_SITE} org.eclipse.cdt.sdk.feature.group =
${CDTFEAT}
>=20
> -echo -e "\nPlease wait. Installing CDT.LAUNCH.REMOTE.FEATURE.GROUP"
> CDTREMOTEVER=3D"9.4.0"
> +echo -e "\nPlease wait. Installing CDT.LAUNCH.REMOTE.FEATURE.GROUP =
${CDTREMOTEVER}"
> update_feature_remote ${MAIN_SITE} =
org.eclipse.cdt.launch.remote.feature.group ${CDTREMOTEVER}
>=20
> #AUTOTOOLS
> -echo -e "\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP"
> ATVER=3D"9.4.0"
> +echo -e "\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP ${ATVER}"
> update_feature_remote ${MAIN_SITE} =
org.eclipse.cdt.autotools.feature.group ${ATVER}
>=20
> #TM Terminal (was RSE) related
> -echo -e "\nPlease wait. Installing TM.TERMINAL.FEATURE.FEATURE.GROUP"
> TMTERMVER=3D"4.3.0"
> +echo -e "\nPlease wait. Installing TM.TERMINAL.FEATURE.FEATURE.GROUP =
${TMTERMVER}"
> update_feature_remote ${MAIN_SITE} =
org.eclipse.tm.terminal.feature.feature.group ${TMTERMVER}
>=20
> -echo -e "\nPlease wait. Installing =
TM.TERMINAL.VIEW.RSE.FEATURE.GROUP"
> TMTERMVIEWRSEVER=3D"4.3.0"
> +echo -e "\nPlease wait. Installing TM.TERMINAL.VIEW.RSE.FEATURE.GROUP =
${TMTERMVIEWRSEVER}"
> update_feature_remote ${MAIN_SITE} =
org.eclipse.tm.terminal.view.rse.feature.feature.group =
${TMTERMVIEWRSEVER}
>=20
> -echo -e "\nPlease wait. Installing TM.TERMINAL.CONTROL.FEATURE.GROUP"
> TMCONTROLVER=3D"4.3.0"
> +echo -e "\nPlease wait. Installing TM.TERMINAL.CONTROL.FEATURE.GROUP =
${TMCONTROLVER}"
> update_feature_remote ${MAIN_SITE} =
org.eclipse.tm.terminal.control.feature.feature.group ${TMCONTROLVER}
>=20
> #RSE_SDK
> -echo -e "\nPlease wait. Installing RSE.SDK.FEATURE.GROUP"
> RSESDKVER=3D"3.7.0"
> +echo -e "\nPlease wait. Installing RSE.SDK.FEATURE.GROUP =
${RSESDKVER}"
> update_feature_remote ${TM_SITE} org.eclipse.rse.sdk.feature.group =
${RSESDKVER}
> #echo -e "\nSkipping RSE.SDK.FEATURE.GROUP"
>=20
> #RSE_TERMINALS
> -echo -e "\nPlease wait. Installing RSE.TERMINALS.FEATURE.GROUP"
> RSETERMVER=3D"3.8.0"
> +echo -e "\nPlease wait. Installing RSE.TERMINALS.FEATURE.GROUP =
${RSETERMVER}"
> update_feature_remote ${TM_SITE} =
org.eclipse.rse.terminals.feature.group ${RSETERMVER}
> #echo -e "\nSkipping RSE.TERMINALS.FEATURE.GROUP"
>=20
> #Lttng2
> TMF_CTF_REL=3D"3.2.0"
> -echo -e "\nPlease wait. Installing =
TRACECOMPASS.LTTNG2.UST.FEATURE.GROUP"
> +echo -e "\nPlease wait. Installing =
TRACECOMPASS.LTTNG2.UST.FEATURE.GROUP ${TMF_CTF_REL}"
> update_feature_remote ${MAIN_SITE} =
org.eclipse.tracecompass.lttng2.ust.feature.group ${TMF_CTF_REL}
>=20
> -echo -e "\nPlease wait. Installing =
OSGI.COMPATIBILITY.PLUGINS.FEATURE.FEATURE.GROUP"
> COMPAT_VER=3D"1.1.1"
> +echo -e "\nPlease wait. Installing =
OSGI.COMPATIBILITY.PLUGINS.FEATURE.FEATURE.GROUP ${COMPAT_VER}"
> update_feature_remote ${UPDATE_SITE} =
org.eclipse.osgi.compatibility.plugins.feature.feature.group =
${COMPAT_VER}
>=20
> echo -e "\nYour build environment is successfully created."
> --=20
> 2.13.6
>=20


