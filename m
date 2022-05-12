Return-Path: <chanho61.park@samsung.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FBFC433EF
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 13:32:54 +0000 (UTC)
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
 by mx.groups.io with SMTP id smtpd.web11.4120.1652362366220085383
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 06:32:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=JHQhoD40;
 spf=pass (domain: samsung.com, ip: 203.254.224.33,
 mailfrom: chanho61.park@samsung.com)
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20220512133242epoutp0355e58465e5c1e56737ae02606891e266~uXtBT9gBo2611026110epoutp031
	for <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 13:32:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20220512133242epoutp0355e58465e5c1e56737ae02606891e266~uXtBT9gBo2611026110epoutp031
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1652362362;
	bh=s5SttlAdQaA3c7/dp7N+JsC9viZTnaFVfMeqrNOvuu8=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=JHQhoD40jpKipWSIx3emQyQRo6/oXqp4hn8klzNO7rZy1geAMi34uFelK8i4Az082
	 Y7N1YCVypL875JV2dtMLgey3oM4fztPIZOKfdVyok8pjxwumm8ugngkQUddvnibSOh
	 bXdu+vCiZPss1pnGI1B4AsXpOMxoO3sdWngGpQAU=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220512133241epcas2p2aaa07fcd7ef7702c55cfe2f712ab174b~uXtAjMLQr1306513065epcas2p2M;
	Thu, 12 May 2022 13:32:41 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.90]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4KzXl947Rgz4x9Pv; Thu, 12 May
	2022 13:32:37 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	D0.BB.09694.57C0D726; Thu, 12 May 2022 22:32:37 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
	20220512133236epcas2p204430819f8e8c77f33005328d3e6aef6~uXs8dy06n1306513065epcas2p2G;
	Thu, 12 May 2022 13:32:36 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220512133236epsmtrp2654168e8e1de0eeadd82bf97d8be5ef4~uXs8aEpXG3090930909epsmtrp2K;
	Thu, 12 May 2022 13:32:36 +0000 (GMT)
X-AuditID: b6c32a48-495ff700000025de-bc-627d0c75e88c
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	EC.0F.08924.47C0D726; Thu, 12 May 2022 22:32:36 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20220512133236epsmtip250ba51a3d6229a01b326ccaf821fa6aa~uXs8QjFzf1265012650epsmtip2T;
	Thu, 12 May 2022 13:32:36 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Felix Knorr'" <fknorr@neuroloop.de>, <yocto@lists.yoctoproject.org>
Cc: <Randy.MacLeod@windriver.com>
In-Reply-To: <e1f7dbc8-c091-5891-2d1e-d1fb22ada352@neuroloop.de>
Subject: RE: [yocto] Problems with recipe for our Rust-Software
Date: Thu, 12 May 2022 22:32:36 +0900
Message-ID: <000001d86604$be6ac400$3b404c00$@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQDVpaZ9D0uoj9YNiH2aLG8WR/tsJwGvwpacrxM/PlA=
Content-Language: ko
X-Brightmail-Tracker: 
 H4sIAAAAAAAAA+NgFvrJKsWRmVeSWpSXmKPExsWy7bCmqW4pT22SwcKpshZbPzSwWPz4O4HV
	YmPHO0YHZo+Zpx4xe7Qe+czksX7LVqYA5qhsm4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwND
	XUNLC3MlhbzE3FRbJRefAF23zBygTUoKZYk5pUChgMTiYiV9O5ui/NKSVIWM/OISW6XUgpSc
	AvMCveLE3OLSvHS9vNQSK0MDAyNToMKE7IyuNVYFO6wqJv19y9rAeN6wi5GTQ0LARGL5l0PM
	XYxcHEICOxgl9qybzAjhfGKU2LRuMzuE85lR4nTDBkaYlhff7zKB2EICuxgl/nVqQBS9YJSY
	u/06M0iCTUBf4mXHNlYQW0TAU2LRgyY2EJtZQFFiz49OsGZOAQeJPVMmgdUIC9hL/Gxbzg5i
	swioSvz/cgAszitgKXFp/3ooW1Di5MwnLBBztCWWLXzNDHGQgsTPp8ugdllJHP26hR2iRkRi
	dmcb2G8SAvfYJXb0LGOCaHCRmP/vIdQ3whKvjkM0SAhISXx+t5cNwi6WWDrrExNEcwOjxOVt
	v6ASxhKznrUDNXMAbdCUWL9LH8SUEFCWOHIL6jY+iY7Df9khwrwSHW1CEI3qEge2T2eBsGUl
	uud8Zp3AqDQLyWezkHw2C8kHsxB2LWBkWcUollpQnJueWmxUYAKP6+T83E2M4DSo5bGDcfbb
	D3qHGJk4GA8xSnAwK4nw1jTXJAnxpiRWVqUW5ccXleakFh9iNAWG9URmKdHkfGAiziuJNzSx
	NDAxMzM0NzI1MFcS5/VK2ZAoJJCeWJKanZpakFoE08fEwSnVwBRy7dQf/fw4e+Vw92Slh/3/
	18h0/YxqOuZ/+YLc075M6T1vSr9sK1txMnfn88juxNcL1ewreK4ZcovOmHdobXLvR32B+b26
	+ntDJ6ee+8SfuNbuEF+G9o7qI6XlFgF9Eiw7c3JURB9Jn9RPNbwkeL45Y6Wz2owji6e1yj1p
	mn6A6UvRukdJLXFPsuYpvOIo/rDD4NfGrWunbJgk9rHJSqnwTctxL1Eemarva1bf3Am0fHu+
	Y0+9n9Y2Y559X6PSv64UyevoWvbUZVn8n736redyZ0ectakplRDWClT48Xeqt/5k1WdX32Xu
	/bbOqCYj/UKLRvXVWWUskbOUltxfcyLSbJH2P945e+RCln3iU2Ipzkg01GIuKk4EAMN8UvoM
	BAAA
X-Brightmail-Tracker: 
 H4sIAAAAAAAAA+NgFnrOLMWRmVeSWpSXmKPExsWy7bCSvG4JT22SwYM5hhZbPzSwWPz4O4HV
	YmPHO0YHZo+Zpx4xe7Qe+czksX7LVqYA5igum5TUnMyy1CJ9uwSujIUtk9kLzppWTOz8z9zA
	eFW7i5GTQ0LAROLF97tMXYxcHEICOxgljv9cxwiRkJV49m4HO4QtLHG/5QgrRNEzRomGbU/A
	itgE9CVedmxjBbFFBLwlNq/YCWYzCyhK7PnRCTV1IqPEq3cb2UASnAIOEnumTAIrEhawl/jZ
	thxsA4uAqsT/LwfA4rwClhKX9q+HsgUlTs58wgIxVFvi6c2ncPayha+ZIa5TkPj5dBnUEVYS
	R79uYYeoEZGY3dnGPIFReBaSUbOQjJqFZNQsJC0LGFlWMUqmFhTnpucWGxYY5aWW6xUn5haX
	5qXrJefnbmIEx4WW1g7GPas+6B1iZOJgPMQowcGsJMJb01yTJMSbklhZlVqUH19UmpNafIhR
	moNFSZz3QtfJeCGB9MSS1OzU1ILUIpgsEwenVAPTob/1Xe8fp3xsrnF68nb6C0bFvWUcM99I
	qbU8ku+amWY5LXpL/J1u30Mid6fop2kqTlNK2cCqdlNF4uLXeU1CByZuZPpxc/+t+CzNKdHP
	V4g0cYs9UmC4sOfYj3kLm88JXm83NVzNcuYag3pl316l33W+rzM1btQ/n3z3vkTwKXPZ+KyZ
	Dmlz1tkzrxPL9I8/rxPmlZIf/J9N0Om+wqn4NMmApXeCje+x5hy0rdUL4T1hslxEP2+5E7OL
	kE3ZvfqPDWf33J/8NETQ/KvqnLPfNzilHz26dMqJrZfvuri/+SC/bfXeXxUHIr4nLT/goHtd
	9GXPYTkGV41dlftsjt+XzHHbv4yvfHGATXqQkNIeJZbijERDLeai4kQAx5ogYfoCAAA=
X-CMS-MailID: 20220512133236epcas2p204430819f8e8c77f33005328d3e6aef6
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220512130957epcas2p47a753e9c7aca42eb59e9f2ec9ba97e12
References: 
 <CGME20220512130957epcas2p47a753e9c7aca42eb59e9f2ec9ba97e12@epcas2p4.samsung.com>
	<e1f7dbc8-c091-5891-2d1e-d1fb22ada352@neuroloop.de>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 13:32:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57077

Hi,

I'm also facing same issue behind proxy even though I personally reverted b=
elow patch :(

https://git.yoctoproject.org/poky/commit/meta/classes/cargo_common.bbclass?=
h=3Dkirkstone&id=3D83651eda51d65bcf479a9a8940232b712583e61f

cargo_common: remove http_proxy
Fix the test_sstate_noop_samesigs oe-selftest that
produces an error like:

   core2-64-poky-linux/libstd-rs/1.54.0-r0.do_configure.sigdata differs:
   basehash changed from <hash-a> to <hash-b>
   Variable http_proxy value changed from '' to 'http://example.com/'

by simply removing the proxy config option. This may be added back
after merge to oe-core if needed and if the diffsigs check passes.

Best Regards,
Chanho Park

> -----Original Message-----
> From: yocto=40lists.yoctoproject.org <yocto=40lists.yoctoproject.org> On
> Behalf Of Felix Knorr
> Sent: Thursday, May 12, 2022 10:10 PM
> To: yocto=40lists.yoctoproject.org
> Subject: =5Byocto=5D Problems with recipe for our Rust-Software
>=20
> Hey,
>=20
> I'm struggling with a recipe to build our rust project.
>=20
> I cannot use cargo-bitbake because we use the 2021 edition. Also the
> project is quite complex. We have one repository with 4 different crates,
> some of them are linking c code. I'm trying to create a recipe by hand.
>=20
>=20
> When I run bitbake for the recipe, it will error out with the following
> error message:
>=20
> ERROR: serve-1.0.0-r0 do_compile:
> ExecutionError('/home/felix/git/poky/build/tmp/work/core2-64-poky-
> linux/serve/1.0.0-r0/temp/run.do_compile.400923', 101, None, None)
> ERROR: Logfile of failure stored in:
> /home/felix/git/poky/build/tmp/work/core2-64-poky-linux/serve/1.0.0-
> r0/temp/log.do_compile.400923
> Log data follows:
> =7C DEBUG: Executing shell function do_compile
> =7C     Updating crates.io index
> =7C warning: spurious network error (2 tries remaining): failed to resolv=
e
> address for github.com: Name or service not known; class=3DNet (12)
> =7C warning: spurious network error (1 tries remaining): failed to resolv=
e
> address for github.com: Name or service not known; class=3DNet (12)
> =7C error: failed to get =60anyhow=60 as a dependency of package =60nlpro=
g v0.1.0
> (/home/felix/git/poky/build/tmp/work/core2-64-poky-linux/serve/1.0.0-
> r0/tmp/baroloop/programmer-rust/nlprog)=60
> =7C
> =7C Caused by:
> =7C   failed to fetch =60https://github.com/rust-lang/crates.io-index
> <https://protect2.fireeye.com/v1/url?k=3D68eaf684-3771ce79-68eb7dcb-
> 000babff317b-44b4b436f9e0edc0&q=3D1&e=3D3342104f-017d-4ac5-9d70-
> f1208c419a68&u=3Dhttps%3A%2F%2Fgithub.com%2Frust-lang%2Fcrates.io-index> =
=60
> =7C
> =7C Caused by:
> =7C   network failure seems to have happened
> =7C   if a proxy or similar is necessary =60net.git-fetch-with-cli=60 may=
 help
> here
> =7C   https://doc.rust-lang.org/cargo/reference/config.html=23netgit-fetc=
h-
> with-cli
> =7C
> =7C Caused by:
> =7C   failed to resolve address for github.com: Name or service not known=
;
> class=3DNet (12)
> =7C WARNING: exit code 101 from a shell command.
> ERROR: Task (/home/felix/git/baroloop/programmer-tablet/layers/meta-
> main/recipes-core/programmer/serve_1.0.0.bb:do_compile) failed with exit
> code '1'
>=20
>=20
> However, if I run the devshell for the recipe and run cargo, it will at
> least be able to do the fetching. (It will currently fail in the linker
> step, but I assume thats because I haven't executed oe_cargo_fix_env)
>=20
> if I don't remove the http.multiplexing=3Dfalse from the cargo config, it
> will just hang forever in the devshell (but not error out).
>=20
>=20
> If I set export CARGO_NET_GIT_FETCH_WITH_CLI=3Dtrue the error is slightly
> different, but the git call that is then displayed also works in the
> devshell. Also using a crate://-fetcher doesn't work, which is why I adde=
d
> the CARGO_DISABLE_BITBAKE_VENDORING =3D =221=22 I've been fighting this f=
or
> hours and can't come up with anything. I hope you can help me.
>=20
> PS: I'm using kirkstone, and I'm not having any url sections in
> my .gitconfig
>=20
>=20
> This is the recipe:
>=20
> cargo
>=20
> SUMMARY =3D =22Copy prebuild programmer serve into the image=22
> LICENSE =3D =22CLOSED=22
> LIC_FILES_CHKSUM =3D =22=22
>=20
> SRC_URI=3D=22=5C
>     file://=24=7Bbl_path=7D/programmer-ui/dist =5C
>     file://=24=7Bconfig_path=7D/files/session =5C
>     file:///tmp/baroloop =5C
> =22
> =23   crate://crates.io/tokio/1 =5C
> =23   crate://crates.io/war/0.3 =5C
> =23   crate://crates.io/byte/1 =5C
> =23   crate://crates.io/log/0.4.8 =5C
> =23   crate://crates.io/serde_json/1.0.75 =5C
> =23   crate://crates.io/serde/1.0.133 =5C
> =23   crate://crates.io/docopt/1.1.0 =5C
> =23   crate://crates.io/colored/1.9.3 =5C
> =23   crate://crates.io/chrono/0.4.11 =5C
> =23   crate://crates.io/battery/0.7.7 =5C
> =23   crate://crates.io/uuid/0.8.2 =5C
> =23   crate://crates.io/thiserror/1.0 =5C
> =23   crate://crates.io/anyhow/1 =5C
> =23   crate://crates.io/clap/3.0 =5C
> =23   crate://crates.io/futures/0.3 =5C
> =23   crate://crates.io/wry/0.6.1
> S =3D =22=24=7BWORKDIR=7D=22
>=20
> RDEPENDS:=24=7BPN=7D =3D =22=5C
>     eudev =5C
>     dbus =5C
> =22
>=20
> DEPENDS =3D =22=5C
>     eudev =5C
>     dbus =5C
> =22
>=20
> =23 INSANE_SKIP:=24=7BPN=7D +=3D =22file-rdeps=22
>=20
> FILES:=24=7BPN=7D =3D =22=5C
>     /home/neuro/serve =5C
>     /home/neuro/dist/** =5C
>     =24=7Bsysconfdir=7D/mini_x/session =5C
> =22
>=20
> CARGO_DISABLE_BITBAKE_VENDORING =3D =221=22
>=20
> do_compile() =7B
>     oe_cargo_fix_env
>=20
>     sed -i '/multiplexing =3D false/d' =24CARGO_HOME/config
>     sed -i '/=5C=5Bhttp=5C=5D/d' =24CARGO_HOME/config
>     sed -i '/cainfo/d' =24CARGO_HOME/config
>=20
>     export RUSTFLAGS=3D=22=24=7BRUSTFLAGS=7D=22
>     export RUST_TARGET_PATH=3D=22=24=7BRUST_TARGET_PATH=7D=22
>=20
>     export CARGO_NET_GIT_FETCH_WITH_CLI=3Dtrue
>     cd =24=7BS=7D/tmp/baroloop/programmer-rust/
>     cargo build --release --bin serve
> =7D
>=20
> do_install() =7B
>     =23 this isn_t reached anyway
> 	=23 ...
> =7D
>=20
> --
> Mit freundlichen Gr=C3=BC=C3=9Fen=20neuroloop=20GmbH=0D=0A>=20i.A.=20Feli=
x=20Knorr=0D=0A>=20Senior=20Software=20Developer=0D=0A>=20-----------------=
---------------------=0D=0A>=20neuroloop=20GmbH=0D=0A>=20Engesserstr.=204,=
=2079108=20Freiburg,=20Germany=0D=0A>=20=0D=0A>=20Amtsgericht=20Freiburg=20=
HRB=20713935=0D=0A>=20=0D=0A>=20Gesch=C3=A4ftsf=C3=BChrer:=20Dr.=20Michael=
=20Lauk,=20Dr.=20Dennis=20Plachta=0D=0A>=20=0D=0A>=20=0D=0A>=20=0D=0A>=20Th=
e=20information=20contained=20in=20this=20communication=20is=20confidential=
,=20may=20be=0D=0A>=20attorney-client=20privileged,=20may=20constitute=20in=
side=20information,=20and=20is=0D=0A>=20intended=20only=20for=20the=20use=
=20of=20the=20addressee.=20It=20is=20the=20property=20of=20the=0D=0A>=20com=
pany=20of=20the=20sender=20of=20this=20e-mail.=20Unauthorized=20use,=20disc=
losure,=20or=0D=0A>=20copying=20of=20this=20communication=20or=20any=20part=
=20thereof=20is=20strictly=20prohibited=0D=0A>=20and=20may=20be=20unlawful.=
=20If=20you=20have=20received=20this=20communication=20in=20error,=0D=0A>=
=20please=20notify=20us=20immediately=20by=20return=20e-mail=20and=20destro=
y=20this=0D=0A>=20communication=20and=20all=20copies=20thereof,=20including=
=20all=20attachments.=0D=0A=0D=0A

