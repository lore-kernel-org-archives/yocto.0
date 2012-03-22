Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CCCFE00747;
	Wed, 21 Mar 2012 20:43:26 -0700 (PDT)
Received: from mail8-ch1-R.bigfish.com (10.43.68.251) by
	CH1EHSOBE018.bigfish.com (10.43.70.68) with Microsoft SMTP Server id
	14.1.225.23; Thu, 22 Mar 2012 03:43:18 +0000
Received: from mail8-ch1 (localhost [127.0.0.1])	by mail8-ch1-R.bigfish.com
	(Postfix) with ESMTP id 633AC2012D;
	Thu, 22 Mar 2012 03:43:18 +0000 (UTC)
X-SpamScore: -15
X-BigFish: VS-15(zz154cP9371I1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail8-ch1 (localhost.localdomain [127.0.0.1]) by mail8-ch1
	(MessageSwitch) id 1332387795205930_27761;
	Thu, 22 Mar 2012 03:43:15 +0000 (UTC)
Received: from CH1EHSMHS014.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.248])	by mail8-ch1.bigfish.com (Postfix) with ESMTP id
	2C9592A0045; Thu, 22 Mar 2012 03:43:15 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS014.bigfish.com
	(10.43.70.14) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 22 Mar 2012 03:43:15 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.230]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Wed, 21 Mar 2012 22:43:21 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto 1.1.1 released.
Thread-Index: AQHNB93srcOWjUmAzkmxcFILMKpstg==
Date: Thu, 22 Mar 2012 03:43:20 +0000
Message-ID: <CAEsOVNcZNVSVQjbSHyoVBfVkYG0BXNz7w2K6gnywZS+R+nEFhA@mail.gmail.com>
References: <CAPhnLPDdD_+TPX32B184jUXOCt+ei87Kk+FNWpZLxii5FFhRzA@mail.gmail.com>
In-Reply-To: <CAPhnLPDdD_+TPX32B184jUXOCt+ei87Kk+FNWpZLxii5FFhRzA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [ANNOUNCEMENT] Yocto 1.1.1 released.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Mar 2012 03:43:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8002A96CBE419940A47C8347B122D7F9@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

I'd like to add that our Freescale BSP which will be released in May
will be based off of this release. Thanks everyone for the hard work.

-M

On Wed, Mar 21, 2012 at 7:05 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> Hello,
>
> Our point release of yocto-1.1.1 edison has been tagged, generated and
> is now available for download. This release is available at:
>
> =A0http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/poky-edis=
on-6.0.1.tar.bz2
> =A0or
> =A0http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/poky-edison-6.0.1.ta=
r.bz2
>
> Additional tarballs for meta-qt3 and eclipse plugin are available at:
>
> =A0 =A0http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/meta-=
qt3-edison-6.0.1.tar.bz2
> =A0 =A0http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclip=
se-poky-edison-6.0.1.tar.bz2
>
> =A0 =A0with mirror locations at:
>
> =A0 =A0http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/meta-qt3-edison-=
6.0.1.tar.bz2
> =A0 =A0http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/eclipse-poky-edi=
son-6.0.1.tar.bz2
>
> Git tags gpg key information is available at:
>
> =A0 =A0http://pgp.mit.edu:11371/pks/lookup?op=3Dvindex&search=3D0x4C8AF84=
FCC12440F
>
> If you notice, this release contains quite a number of upgrades. A
> short list of these upgrades is at the end of this email. For a
> complete patchset, please review the git log.
>
> Elizabeth Flanagan
>
> - --------------------
> edison-6.0.1 Errata
> - --------------------
>
> Release Name: poky-edison-6.0.1
> Branch: =A0edison
> Tag: =A0edison-6.0.1.release
> Git rev: =A00fbd6a161576b2cafa8583adde0ffb15347c884a
> md5: =A02f1695b6a11279a092bd22a38bc3a82e =A0poky-edison-6.0.1.tar.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/poky-edison-=
6.0.1.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/poky-edison-6.0.1.tar.b=
z2
>
> Release Name: eclipse-poky-edison-6.0.1
> Branch: =A0edison
> Tag: =A0edison-6.0.1.release
> Git Rev: =A0e33b9b6e8054bc7b778514b85a5d7505f91885ee
> md5: =A0dc3454c9109f1977b7a760164dfeb14c =A0eclipse-poky-edison-6.0.1.tar=
.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-poky=
-edison-6.0.1.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/eclipse-poky-edison-6.0=
.1.tar.bz2
>
> Release Name: meta-qt3-edison-6.0.1
> Branch: =A0edison
> Tag: =A0edison-6.0.1.release
> Git rev: =A00c3153242344e5113a50002939d36a2b739cc497
> md5: =A010e6a640c8abaf546208128d4ff81fbe =A0meta-qt3-edison-6.0.1.tar.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/meta-qt3-edi=
son-6.0.1.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/meta-qt3-edison-6.0.1.t=
ar.bz2
>
> - --------------------
> Features
> - --------------------
> - - PPC related fixes (kernel, udev, eglibc, etc)
> - - Fixes for the useradd class and various related changes to ensure smo=
oth use
> - - Fixes for sstate generation and various related changes to enhance
> sstate support including metadata changes to:
> =A0- increase the amount of reused sstate cache
> =A0- ensure the ADT installer regenerates in the deploy directory
> =A0- fix an uncommon bug to ensure that when the sstate cache for a
> recipe is not =A0reusable the recipe is correctly rebuilt.
> - - Fetcher fixes including enhancing the git fetcher to cope with
> rebased branches
>
> - --------------------
> Known Issues
> - --------------------
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1983
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2015
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1721
>
>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v2.0.16 (GNU/Linux)
>
> iQEcBAEBAgAGBQJPah1+AAoJEEyK+E/MEkQPeugH/0qL/avSEA9YLDBTExwg2c9w
> cDBPZBxfwOIXbrU+qvQx7eI/xbRs29GETQk2g0xsGb9ZELV1RTg8Vhtf1pPqHhHR
> I1+DSZa6FjF1e+1MfpbTg5t7DmI40sGs4V8TbUsuytF3g2HGVGxD81eBPP5K10Ua
> YWYrGJf5CAOL3vONEyTm3CBoUgxIVORB661eIbCSk/ljRdsW5yR/7napQ1wHxK7G
> 1uYr3XAuvyKU84G1OxkBek9xawTNLUz4T9Sc/bnGYSeyQK1oh7OPxd5HuS0RfOUW
> n/Q04vggJ7abg0nkdYFsvwheJEbcSOW8AN7oI2r3K7fGAwExo1wwq3Ovi2hXHVU=3D
> =3DpSr7
> -----END PGP SIGNATURE-----
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


