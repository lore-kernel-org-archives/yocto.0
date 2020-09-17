Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.10922.1600331075328080046
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 01:24:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4BsVPX5tFhz5tlR;
	Thu, 17 Sep 2020 10:24:32 +0200 (CEST)
Date: Thu, 17 Sep 2020 10:24:31 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] wvdial
Message-ID: <20200917082431.3ysiw3k5lcdd2s7v@qschulz>
References: <CAHwRhWYozz7T9j_8TbpuamuQzOSgXpLRcaEqeHS_BdYeYe2+5g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHwRhWYozz7T9j_8TbpuamuQzOSgXpLRcaEqeHS_BdYeYe2+5g@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi

On Thu, Sep 17, 2020 at 10:02:47AM +0200, Zoltan Kerenyi Nagy wrote:
[...]
> file://04_signed_request.diff anywhere. The paths that were searched we=
re:
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams-4.6.1/nodistro
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams/nodistro
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/files/nodistro
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams-4.6.1/barix-ipam400
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams/barix-ipam400
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/files/barix-ipam400
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams-4.6.1/sun8i
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams/sun8i
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/files/sun8i
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams-4.6.1/armv7ve
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams/armv7ve
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/files/armv7ve
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams-4.6.1/arm
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams/arm
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/files/arm
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams-4.6.1/
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams/
>=20
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/files/
>   /home/kerenyiz/oe-core/build/downloadsERROR: wvstreams-4.6.1-r0 do_fe=
tch:
> Fetcher failure for URL: 'file://04_signed_request.diff'. Unable to fet=
ch
> URL from any source.ERROR: wvstreams-4.6.1-r0 do_fetch: Function failed=
:
> base_do_fetchERROR: Logfile of failure stored in:
> /home/kerenyiz/oe-core/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-li=
nux-gnueabi/wvstreams/4.6.1-r0/temp/log.do_fetch.8864ERROR:
> Task
> (/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipe=
s-connectivity/wvstreams/wvstreams_4.6.1.bb:do_fetch)
> failed with exit code '1'*
>=20
> *Here i sthe folder structure:*
>=20
> =E2=94=9C=E2=94=80=E2=94=80 file
          ^^^

If you read carefully the paths that were searched you'll see that this
directory is missing a trailing s :) It should be `files` and not `file`.

Cheers,
Quentin
