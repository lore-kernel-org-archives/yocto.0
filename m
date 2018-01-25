Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F85CE00DBD; Wed, 24 Jan 2018 20:49:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CC11E00D6E;
	Wed, 24 Jan 2018 20:49:40 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Jan 2018 20:49:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,409,1511856000"; d="scan'208";a="14069516"
Received: from ndhanire-mobl1.amr.corp.intel.com ([10.254.16.72])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2018 20:49:39 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <20180125044228.1911-1-timothy.t.orling@linux.intel.com>
Date: Wed, 24 Jan 2018 20:49:40 -0800
Message-Id: <BE6DDB75-97D2-45B6-8E3F-920D85A25517@linux.intel.com>
References: <20180125044228.1911-1-timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Cc: eclipse-poky@yoctoproject.org
Subject: Re: [eclipse-poky][oxygen][PATCH] setup.sh: install feature version which meets minimum version required
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
X-List-Received-Date: Thu, 25 Jan 2018 04:49:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Please note that there is a new eclipse-poky mailing list and we will =
stop sending these patches to yocto@yoctoproject.org soon (we will =
announce the change, but this is the
second heads up).

If you are interested in following eclipse-poky development, please =
register for the new list.

https://lists.yoctoproject.org/listinfo/eclipse-poky

Review comments for our own patches will be on the new list while we =
transition. We will comment on community patches sent to =
yocto@yoctoproject.org that they should be sent to the new list.

> On Jan 24, 2018, at 8:42 PM, Tim Orling =
<timothy.t.orling@linux.intel.com> wrote:
>=20
> From: Chin Huat Ang <chin.huat.ang@intel.com>
>=20
> When only minimum version is specified, install feature with version =
closest
> to the minimum specified.
>=20
> Signed-off-by: Chin Huat Ang <chin.huat.ang@intel.com>
> Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
> ---
> scripts/setup.sh | 8 ++++++--
> 1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/scripts/setup.sh b/scripts/setup.sh
> index 4b160ea16c4..024596bfb1e 100755
> --- a/scripts/setup.sh
> +++ b/scripts/setup.sh
> @@ -228,8 +228,12 @@ update_feature_remote()
>       done
>   else
>       #only has minimum version requirement
> -      local max_remote_ver=3D"`get_version $1 $2 'max'`"
> -      [ "$max_remote_ver" \> "$3" ] || [ "$max_remote_ver" =3D "$3" ] =
&& installIU=3D$max_remote_ver
> +      for i in $all_versions; do
> +        if [ "$i" \> "$3" ] || [ "$i" =3D "$3" ]; then
> +          installIU=3D$i
> +          break
> +        fi
> +      done
>   fi
>=20
>   [ "x$installIU" =3D "x" ] && err_exit 1 "Can NOT find candidates of =
$2 version($3, $4) at $1!"
> --=20
> 2.13.6
>=20


