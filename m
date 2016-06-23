Return-Path: <patrick@stwcx.xyz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84956E00CA1; Thu, 23 Jun 2016 09:18:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.201.84.163 listed in list.dnswl.org]
Received: from sender163-mail.zoho.com (sender163-mail.zoho.com
	[74.201.84.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50482E00A10
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 09:18:21 -0700 (PDT)
Received: from localhost (76-250-84-236.lightspeed.austtx.sbcglobal.net
	[76.250.84.236]) by mx.zohomail.com
	with SMTPS id 1466698688181384.9403311605215;
	Thu, 23 Jun 2016 09:18:08 -0700 (PDT)
Date: Thu, 23 Jun 2016 11:18:06 -0500
From: Patrick Williams <patrick@stwcx.xyz>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160623161806.GE20922@asimov.austin.ibm.com>
References: <20160622164325.GB20922@asimov.austin.ibm.com>
	<CAJTo0Lb9zaufhDTaObFPYJK7ZU-H3bXD7-8y11+eAx=Btiwj4A@mail.gmail.com>
	<CAJTo0LZiTspQ+46fcuMUvaa7uHqodtfG0cTkqXN51gytOr70Gg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZiTspQ+46fcuMUvaa7uHqodtfG0cTkqXN51gytOr70Gg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Zoho-Virus-Status: 1
Cc: Yocto Maillist <yocto@yoctoproject.org>,
	Bradley Bishop <bradleyb@fuzziesquirrel.com>
Subject: Re: uninative support on non-x86 platforms
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
X-List-Received-Date: Thu, 23 Jun 2016 16:18:25 -0000
X-Groupsio-MsgNum: 30729
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VUDLurXRWRKrGuMn"
Content-Disposition: inline

--VUDLurXRWRKrGuMn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 22, 2016 at 09:02:46PM +0100, Burton, Ross wrote:
> On 22 June 2016 at 21:00, Burton, Ross <ross.burton@intel.com> wrote:
>=20
> The best solution here would be to build your own uninative tarball for
> ppc64le and verify it works, then we could add that to the yocto downloads
> so it works out of the box.
>=20
> Ross
Ross,

Thanks. We will give it a try.  I suspected there might be more to it than =
that
based on this line:

UNINATIVE_LOADER ?=3D "${STAGING_DIR}-uninative/${BUILD_ARCH}-linux/lib/${@=
bb.utils.contains('BUILD_ARCH', 'x86_64', 'ld-linux-x86-64.so.2', 'ld-linux=
=2Eso.2', d)}"


Which tag should we use to build this for publication?

I was discussing with two of my colleagues and they mentioned that there
is a free-for-opensource path to get a ppc64le virtual machine:
    http://osuosl.org/services/powerdev/request_hosting
Would it be useful for us to set this up to build the uninative
tarballs?  I don't know what the process is for updating them for the
x86 builds.

It seems that the current autobuild runs on an x86 machine as well.
Would there be any interest in a ppc64le slave?
--=20
Patrick Williams

--VUDLurXRWRKrGuMn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXbAu+AAoJEKsDR8wtAMEZjHMQAKIi60FkyC00Ph9dTt9b6bXk
Xa7DWuIKvHhsWwX9VsEHUcTvCysNSLlaKQDPH59C6hCF08dwxx86yLZwyMMXbzRT
EEhC9gmxqBIUMl/Bv1FQ1EMn30h8y7+rY2qUag5pQLH7pDcgLiuo3ScqK+L2XVZT
1S56NnRWEBWOBv1LISTQJ39XgJYsVsEfYI/PeNGl+FhKBexYP55P2Yh6gwCokuGP
8kMXNV6sa7DToUTyAfiZcr639xbxpSSKhcPMdtmhfC2SiWYCAuXATrDggWPyNBoc
8Q2lK8+1sa8BQJ3Pkrlr+Ymz1Bm8d+N5oVWt7NPSx6UKWngT0/3DebEEuvpChGfE
aUTDQal54uTaccE7pYfITgoQ4vk3Gpa0EVAdQHro54fhsuWIrjrKe4t31YFCIckV
HE984rHPfMGL7Ipr2ADKwRsKEtIU18aax/K1CBtKi+sjOctSsGRE970n9O2vqpqW
0Jo7Z6cJXa+1xqPWdbQ1mhDVPs2HTZyv7395FMKcx4B+nGDOMcjRWJVnxRudzEa2
8E7Lwxc3+ZbLouesQ6EBD+CUigWsS6AVWY9mQ1dd/Abb+2EOVHf+kkegK3OMmpgM
L/R/+iuauoAwOrE7MJplroWz8NTe4G00h1BoqgfF9JVHVeyxx/dW26QcBa4yFyk4
Y8JHmcq5zG2Ol1jtZcpb
=0Djm
-----END PGP SIGNATURE-----

--VUDLurXRWRKrGuMn--
