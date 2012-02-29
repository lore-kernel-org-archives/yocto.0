Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA4CAE013E8
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 13:37:39 -0800 (PST)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 29 Feb 2012 13:37:38 -0800
Received: by lahi5 with SMTP id i5so3133621lah.25
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 13:37:18 -0800 (PST)
Received-SPF: pass (google.com: domain of elizabeth.flanagan@intel.com
	designates 10.112.98.36 as permitted sender)
	client-ip=10.112.98.36; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	elizabeth.flanagan@intel.com designates 10.112.98.36 as
	permitted sender) smtp.mail=elizabeth.flanagan@intel.com
Received: from mr.google.com ([10.112.98.36])
	by 10.112.98.36 with SMTP id ef4mr1028348lbb.55.1330551438071 (num_hops
	= 1); Wed, 29 Feb 2012 13:37:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.98.36 with SMTP id ef4mr838880lbb.55.1330551437956; Wed,
	29 Feb 2012 13:37:17 -0800 (PST)
Received: by 10.112.114.231 with HTTP; Wed, 29 Feb 2012 13:37:17 -0800 (PST)
In-Reply-To: <4F4E68FF.8090600@mindchasers.com>
References: <4F4E68FF.8090600@mindchasers.com>
Date: Wed, 29 Feb 2012 13:37:17 -0800
Message-ID: <CAPhnLPCJQdfcep6Pt+nd_0WnBEp_pNMA9Emgp2APBhB=pdN=oA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Bob Cochran <yocto@mindchasers.com>
X-Gm-Message-State: ALoCoQk0LpYCnR+nVPQD9X/Psx2rLaNCrrHpFamkzMCBQstOEsnHfyfyxiRxni7F87V7+iTzN8YP
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder] [PATCH] ppc & mips names are switched for builders
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Feb 2012 21:37:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bob,

Thanks! Do you have a branch I can cherry-pick this from? If not, I'll
just commit with attribution.

-b

On Wed, Feb 29, 2012 at 10:05 AM, Bob Cochran <yocto@mindchasers.com> wrote=
:
> I have noticed in the nightly buildbot failure reports for ppc & mips tha=
t
> the build names are switched (e.g., nightly-mips triggers the nightly-ppc
> build and vice versa).
>
> The name and builderNames appear to be switched in yoctoABConfig.py, and =
I
> think this patch will correct this one.
>
>
> Signed-off-by: Robert Cochran<yocto@mindchasers.com>
> ---
> yocto-master/yoctoABConfig.py | =A0 =A04 ++--
> =A01 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/yocto-master/yoctoABConfig.py b/yocto-master/yoctoABConfig.p=
y
> index 0d4ed13..2e0cf27 100644
> --- a/yocto-master/yoctoABConfig.py
> +++ b/yocto-master/yoctoABConfig.py
> @@ -864,8 +864,8 @@ yocto_builders.append(b65)
> =A0yocto_sched.append(triggerable.Triggerable(name=3D"nightly-x86",
> builderNames=3D["nightly-x86"]))
> =A0yocto_sched.append(triggerable.Triggerable(name=3D"nightly-x86-64",
> builderNames=3D["nightly-x86-64"]))
> =A0yocto_sched.append(triggerable.Triggerable(name=3D"nightly-arm",
> builderNames=3D["nightly-arm"]))
> -yocto_sched.append(triggerable.Triggerable(name=3D"nightly-ppc",
> builderNames=3D["nightly-mips"]))
> -yocto_sched.append(triggerable.Triggerable(name=3D"nightly-mips",
> builderNames=3D["nightly-ppc"]))
> +yocto_sched.append(triggerable.Triggerable(name=3D"nightly-mips",
> builderNames=3D["nightly-mips"]))
> +yocto_sched.append(triggerable.Triggerable(name=3D"nightly-ppc",
> builderNames=3D["nightly-ppc"]))
> =A0yocto_sched.append(triggerable.Triggerable(name=3D"eclipse-plugin",
> builderNames=3D["eclipse-plugin"]))
>
>
> #########################################################################=
#######
> --
> 1.7.5.4
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

