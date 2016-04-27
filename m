Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C908AE00D69; Tue, 26 Apr 2016 20:52:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Apr 2016 20:52:38 PDT
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D694E00D65
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 20:52:38 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Wed, 27 Apr 2016 13:51:27 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 27 Apr 2016 13:51:26 +1000
Thread-Topic: [PATCH] os-release: put double-quotes around variable contents
Thread-Index: AdEHCDIlpXSktvkyShKh4eue4crWoSZL9I4w
Message-ID: <5500469A22567C4BAF673A6E86AFA3A4022D20C813B2@IR-CENTRAL.corp.innerrange.com>
References: <1444885989-19002-1-git-send-email-craig.mcqueen@innerrange.com>
In-Reply-To: <1444885989-19002-1-git-send-email-craig.mcqueen@innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-8.000.1202-22284.006
x-tm-as-result: No--32.195600-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: [PATCH] os-release: put double-quotes around variable contents
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
X-List-Received-Date: Wed, 27 Apr 2016 03:52:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I notice this patch hasn't been applied. Is there anything I can do to impr=
ove it?

Regards,
Craig McQueen


> -----Original Message-----
> From: Craig McQueen
> Sent: Thursday, 15 October 2015 4:13 PM
> To: yocto@yoctoproject.org
> Cc: Craig McQueen <craig.mcqueen@innerrange.com>
> Subject: [PATCH] os-release: put double-quotes around variable contents
>=20
> This makes the resulting /etc/os-release file have valid shell assignment
> syntax. This makes it loadable by a shell script, using the 'source' comm=
and:
>=20
>     source /etc/os-release
> ---
>  meta/recipes-core/os-release/os-release.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta/recipes-core/os-release/os-release.bb b/meta/recipes-
> core/os-release/os-release.bb
> index db82760..2fda674 100644
> --- a/meta/recipes-core/os-release/os-release.bb
> +++ b/meta/recipes-core/os-release/os-release.bb
> @@ -29,7 +29,7 @@ python do_compile () {
>          for field in d.getVar('OS_RELEASE_FIELDS', True).split():
>              value =3D d.getVar(field, True)
>              if value:
> -                f.write('{0}=3D{1}\n'.format(field, value))
> +                f.write('{0}=3D"{1}"\n'.format(field, value))
>      if d.getVar('RPM_SIGN_PACKAGES', True) =3D=3D '1':
>          rpm_gpg_pubkey =3D d.getVar('RPM_GPG_PUBKEY', True)
>          bb.utils.mkdirhier('${B}/rpm-gpg')
> --
> 2.1.4


