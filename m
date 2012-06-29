Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FD66E006D9
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 11:11:13 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 29 Jun 2012 11:11:11 -0700
Received: by lbbgj3 with SMTP id gj3so4396473lbb.25
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 11:11:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=m2md7TRstRG4x6JmMU99xC86azYLKgShaemU6g7cR04=;
	b=gEEzTciL0vjuenV6uFnKIZXwkY82iXRzGHpgFj/CfWQ31lkarTejeVe0XyZGtoLR+r
	77G4lSal+hbW0A1yYB1B/63UhyC323A6NEC1lOHPnLszL3TkU+ke1yHLnCDiFZznwZ9t
	fbu56LdkbPZ+dzoXuOKBVlJCnP3tw0bYJ2V7mK9cCL5gIDcfKM4l/spGgiqaQTqFv3mc
	lU5WLJoV3cxZlZCGa4eGrX953wlwiwojBrjC1tKziePed7gW91Ic5LQqPbmh7eLgwtu0
	Ovdss4C5EQ7VGfy7DSlpg9QfH002Up5hJAZXslRxv1McmoSTHrtzxOc0XyGvtoW9lnMc
	AGDQ==
MIME-Version: 1.0
Received: by 10.112.85.225 with SMTP id k1mr1724997lbz.38.1340993469554; Fri,
	29 Jun 2012 11:11:09 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Fri, 29 Jun 2012 11:11:09 -0700 (PDT)
In-Reply-To: <CAPhnLPCzO2GXRYH6waJU2R2D53FxcTussVoAPdm-WKRBzAh+RA@mail.gmail.com>
References: <CAPhnLPCzO2GXRYH6waJU2R2D53FxcTussVoAPdm-WKRBzAh+RA@mail.gmail.com>
Date: Fri, 29 Jun 2012 11:11:09 -0700
Message-ID: <CAPhnLPA=egW+rTM8GYEmDcOMwXbTya_F4KrQhf6KUTQ0PaHTrg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQkwY9MqBPRXIrTlw0CjOU1VbyinDIufvEQMupNt1Ay9L+Om6lMgfbLalwfNKfMeQI/rIagM
Subject: Re: [ANNOUNCEMENT] Yocto 1.3 Milestone 1 Released
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
X-List-Received-Date: Fri, 29 Jun 2012 18:11:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,

Sorry, two people proof reading didn't catch this. This is for Yocto 1.3!

-b

On Fri, Jun 29, 2012 at 11:03 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> Hello,
>
> We are pleased to announce the third milestone of the coming release
> of Yocto 1.2. This milestone release is available at:
>
> =A0http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-=
m1/poky-yocto-1.3-m1.tar.bz2
> =A0or
> =A0http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/poky-yoc=
to-1.3-m1.tar.bz2
>
> Additional tarballs for meta-qt3 and the eclipse plugin are available at:
>
> =A0http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-=
m1/eclipse-poky-yocto-1.3-m1.tar.bz2
> =A0http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-=
m1/meta-qt3-yocto-1.3-m1.tar.bz2
>
> with mirror locations at:
>
> =A0http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/eclipse-=
poky-yocto-1.3-m1.tar.bz2
> =A0http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/meta-qt3=
-yocto-1.3-m1.tar.bz2
>
> For information on 1.3 M1 test results see:
>
> =A0http://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_Report
>
> Thank you everyone for all the hard work.
>
>
> Elizabeth Flanagan
> Yocto Build and Release
> <elizabeth.flanagan@intel.com>
>
> - --------------------
> yocto-1.3-m1 Errata
> - --------------------
>
> Release Name: eclipse-poky-yocto-1.3-m1
> Branch: =A01.3_M1
> Tag: =A01.3_M1.final
> Hash: =A049849f3d70fb05bfca76bf8be685f0531ceba908
> md5: =A07ee1876de459b25860b77083b3a5911b =A0eclipse-poky-yocto-1.3-m1.tar=
.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m1/=
eclipse-poky-yocto-1.3-m1.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/eclipse-pok=
y-yocto-1.3-m1.tar.bz2
>
> Release Name: meta-qt3-yocto-1.3-m1
> Branch: =A01.3_M1
> Tag: =A01.3_M1.final
> Hash: =A0f8475d5c5935695d4d1dfff1d7be30f49e162094
> md5: =A0c93851e71cc9ffcf80b17dc383132937 =A0meta-qt3-yocto-1.3-m1.tar.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m1/=
meta-qt3-yocto-1.3-m1.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/meta-qt3-yo=
cto-1.3-m1.tar.bz2
>
> Release Name: poky-yocto-1.3-m1
> Branch: =A01.3_M1
> Tag: =A01.3_M1.final
> Hash: =A07f017cab0b3e4d5a4fc356eccd8eb8429b0531d0
> md5: =A07c2d38265314f37ee88ff7fdc549b7de =A0poky-yocto-1.3-m1.tar.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m1/=
poky-yocto-1.3-m1.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m1/poky-yocto-=
1.3-m1.tar.bz2
>
> - --------------------
> Features
> - --------------------
> - - GCC 4.7 update and integration.
> - - Core bitbake fixes and incremental refactoring.
> - - Fixes for incremental RPM image generation.
> - - HOB 2 improvements and fixes.
>
> - --------------------
> Known Issues
> - --------------------
> Bug #2535: syslog is not started by default in background on BSPs
>
>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v2.0.14 (GNU/Linux)
>
> iQEcBAEBAgAGBQJP7e0eAAoJEEyK+E/MEkQPAsEIAN2Q8y51iVZGKb82LjDW5FUB
> QpsWtCEganCbA1gGFOMHh7uUOUoojjpkVSrmrhiLiNwsbL0taQqHb0IjNg8lNuSZ
> jby20LELj0o3Bk0Q5AZlsW+eY/NJlwaVQakxC6Ep1WaAap12d4L3wBeAj4iXQgN+
> OVmfIVhCvcasYeT/fnaov95dbUKmger8fipyv7kyCwuTSh5w6rzNdzE6fs+tou4s
> akeTTnRdGp+bJ9nH89XmcI/bQqt+z3ak8KgiO0kBujaT5Kaw9irj0DizjqMogNFA
> ew91ZhQaZig1AdqMff0+P0N4duFj/yKHX/bEE0Q1+N3UMZxc3iaGv38+w/XASak=3D
> =3DaJUl
> -----END PGP SIGNATURE-----



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

