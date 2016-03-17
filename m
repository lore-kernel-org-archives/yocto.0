Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6582E00BBF; Thu, 17 Mar 2016 01:57:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,URI_NOVOWEL autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	*  0.5 URI_NOVOWEL URI: URI hostname has long non-vowel sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 010BDE00B8C
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 01:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=Mime-Version:To:Message-Id:Date:Subject:
	Content-Type:From; bh=jflseq97eOPUpp0+JeWeNhFEmwBiUW5tk48wZj/W7SU=;
	b=JZTxYF7
	VgAMU8FYrEK2+8DZcfQm8VcWK0iwvt3kV2iKg6XpAK+CWlQYdr+ply+f5FakE01zJx+Sd5gbjTkQW
	LPt1h4twiE0AO7Vne8Yobc6xtQ+GWd+SQ5ayJpJRwZ9Cc53LTW7c71GpYfFUI8hoKT4sPO2rIicw5
	eLlU34LY2U=;
Received: from durham.keylevel.com ([88.97.63.243]:32364
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86_1) (envelope-from <opensource@keylevel.com>)
	id 1agTkN-000jte-MV
	for yocto@yoctoproject.org; Thu, 17 Mar 2016 08:57:35 +0000
From: Chris Tapp <opensource@keylevel.com>
X-Pgp-Agent: GPGMail 2.6b2
Date: Thu, 17 Mar 2016 08:57:19 +0000
Message-Id: <AC14D1AE-9912-433D-BD90-A8519C28BA10@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Possible introspection failure in master
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
X-List-Received-Date: Thu, 17 Mar 2016 08:57:42 -0000
X-Groupsio-MsgNum: 29068
Content-Type: multipart/signed;
	boundary="Apple-Mail=_08F7CA02-247C-44A6-8BE9-E3EBF589F027";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_08F7CA02-247C-44A6-8BE9-E3EBF589F027
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I=E2=80=99m trying to build gstreamer1.0-plugins-base_git.bb under =
master. Compilation is failing with:

| g-ir-scanner: link: ../../../libtool --mode=3Dlink --tag=3DCC =
x86_64-poky-linux-gcc -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse =
-msse4.2 =
--sysroot=3D/media/SSD-Build/build-jethro-opty4-v2/tmp/sysroots/valleyisla=
nd-64 -o =
/media/SSD-Build/build-jethro-opty4-v2/tmp/work/corei7-64-poky-linux/gstre=
amer1.0-plugins-base/1.7.2+gitAUTOINC+97e108beba-r0/build/gst-libs/gst/fft=
/tmp-introspectIeb9nD/GstFft-1.0 -export-dynamic -O2 -pipe -g =
-feliminate-unused-debug-types =
-fdebug-prefix-map=3D/media/SSD-Build/build-jethro-opty4-v2/tmp/work/corei=
7-64-poky-linux/gstreamer1.0-plugins-base/1.7.2+gitAUTOINC+97e108beba-r0/b=
uild=3D/usr/src/gstreamer1.0-plugins-base =
-fdebug-prefix-map=3D/media/SSD-Build/build-jethro-opty4-v2/tmp/work/corei=
7-64-poky-linux/gstreamer1.0-plugins-base/1.7.2+gitAUTOINC+97e108beba-r0/g=
it=3D/usr/src/gstreamer1.0-plugins-base =
-fdebug-prefix-map=3D/media/SSD-Build/build-jethro-opty4-v2/tmp/sysroots/x=
86_64-linux=3D =
-fdebug-prefix-map=3D/media/SSD-Build/build-jethro-opty4-v2/tmp/sysroots/v=
alleyisland-64=3D -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed =
tmp-introspectIeb9nD/media/SSD-Build/build-jethro-opty4-v2/tmp/work/corei7=
-64-poky-linux/gstreamer1.0-plugins-base/1.7.2+gitAUTOINC+97e108beba-r0/bu=
ild/gst-libs/gst/fft/tmp-introspectIeb9nD/GstFft-1.0.o -L. =
libgstfft-1.0.la -lgio-2.0 -Wl,--export-dynamic -lgmodule-2.0 -pthread =
-lgstreamer-1.0 -lgobject-2.0 -lglib-2.0
| Caught exception: <type 'exceptions.OSError'> OSError(2, 'No such file =
or directory')
| > =
/media/SSD-Build/build-jethro-opty4-v2/tmp/sysroots/x86_64-linux/usr/lib/p=
ython2.7/subprocess.py(1335)_execute_child()
| -> raise child_exception
| (Pdb)

I=E2=80=99ve tried removing tmp/ and cleansstate but this didn=E2=80=99t =
help.

I=E2=80=99m not sure what to try next. Any pointers?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_08F7CA02-247C-44A6-8BE9-E3EBF589F027
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW6nGAAAoJEAM2GeiJDBSGAm4QAI1xIizhZezzFRNvxA8t70O8
6vFZMMdOh6n/lz60HR/hwWKvk/a3NSMWgNjEAeQ58S0DgPnPvFvPqla5QmMN45AM
1LKE0QvHRx1il3V9NojTntgh+WWKRnkxCvN0OIkC/Ak5NrCy1ueY3OeiBTcleuHw
7fHhNrHh9FEiLWvX/4vTOWJdnDeSs82f9gUlzPg6RFf1I5aUMeATVEMMPwl3g4r8
H4zKfrZxpLq3shNbIQrZDHZWx6Zc/PDvuqrp6Z37/mgeMxRL9Bfz2elG5pRgqkb3
FN0jteuae92NH7WH/uLWwrjHkJRrX6NkqrKpwWZNbfl9wzKxiGRzLpPkNiv9B159
DPc4hoshi/CfA3dtPTeY5w3wgwVItT8NdNJVfdUC3EwEpbxZ7xpTMbBgMV4QBzwy
H7dIA+UF/m1RrgTsBO7zRiolo0KeHDLLMeln7rAM27L0XvFvG16vM95KacrXV2/D
raUioP/+EeoEcwWleokzcY5KGDjsznVKcjlScoTh+5uuWJ/N4RmnYdx6rs5eBlfD
zut9FlsabuSamwiin1E/q92b1o5kGsStEM1Y7plurOic+iH8LbHi9erYN1/nWB7T
P7fWWoatOHQKe+RH6WGnzc17AMEpgYVOqUaWS0WXZsI9a0yyZ1wgkCCCcyeHEr5g
JbW0HoTDLvPqYNVSqAvI
=lve3
-----END PGP SIGNATURE-----

--Apple-Mail=_08F7CA02-247C-44A6-8BE9-E3EBF589F027--
