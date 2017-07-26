Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C954EE00BEC; Wed, 26 Jul 2017 09:41:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [194.25.134.21 listed in dnsbl.sorbs.net]
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5891E00BAF
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 09:41:25 -0700 (PDT)
Received: from fwd36.aul.t-online.de (fwd36.aul.t-online.de [172.20.26.137])
	by mailout10.t-online.de (Postfix) with SMTP id 5E49941ECA1E
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 18:41:24 +0200 (CEST)
Received: from genericx86-64.Speedport_W_724V_01011603_05_032
	(XNayZUZGgh0Z5YHecIWIRa0JWTpegL2z+U0WnJDq0H062z3Qhu5Jt0dxYCItcUEwgh@[84.146.40.121])
	by fwd36.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1daPNC-159ESO0; Wed, 26 Jul 2017 18:41:22 +0200
Date: Wed, 26 Jul 2017 18:41:22 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170726184122.e8c6490a303a63f96fa23241@t-online.de>
In-Reply-To: <20170726174831.508d9a1e159141570a927549@t-online.de>
References: <20170726174831.508d9a1e159141570a927549@t-online.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: XNayZUZGgh0Z5YHecIWIRa0JWTpegL2z+U0WnJDq0H062z3Qhu5Jt0dxYCItcUEwgh
X-TOI-MSGID: cd84a5f7-ce11-4d76-bba2-e97e53750bc2
Subject: Re: cogl-1.0-dev
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
X-List-Received-Date: Wed, 26 Jul 2017 16:41:28 -0000
X-Groupsio-MsgNum: 37164
Content-Type: multipart/mixed;
	boundary="Multipart=_Wed__26_Jul_2017_18_41_22_+0200_xm5cekL6_gxf__df"

--Multipart=_Wed__26_Jul_2017_18_41_22_+0200_xm5cekL6_gxf__df
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

the problem could also be resolved in the way it was done here:

https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D8e15e9b6e478f6=
368034519b2a8fd3c7ea71d23b


On Wed, 26 Jul 2017 17:48:31 +0200
Markus Volk <f_l_k@t-online.de> wrote:

> Hi,
>=20
> I build myself an image (x86_64) for my NUC. Because i=B4m including all =
dev packages i encountered the following problem while switching from pyro =
to the recent poky master
>=20
> do_rootfs crashes with an error message because cogl-1.0-dev wants to ins=
tall package cogl-1.0. Cogl-1.0 is empty and has therefore not been created.
>=20
> I tried to fix this with a line in cogl-1.0_%.bbappend
>=20
> ALLOW_EMPTY_${PN} =3D "1"
>=20
> next error ... cogl-1.0-dev is missing the package libcogl20
>=20
> At this point i=B4ve simply overwritten the files variables in my bbappen=
d like this
>=20
> FILES_${PN} =3D "*"
> FILES_${PN}-examples =3D "$ {bindir} / * $ {datadir} / cogl / examples-da=
ta / *"
> FILES_libcogl =3D ""
> FILES_libcogl-gles2 =3D ""
> FILES_libcogl-pango =3D ""
>=20
> FILES_libcogl-path =3D ""
>=20
> The problem is gone, but i guess this would not be a proper solution for =
the project. I=B4m pretty sure, i saw those cogl errors in the do_rootfs lo=
g in pyro also, but log_check didn=B4t care about that so far
>=20
> Markus
> --=20
> Markus Volk <f_l_k@t-online.de>
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Markus Volk <f_l_k@t-online.de>

--Multipart=_Wed__26_Jul_2017_18_41_22_+0200_xm5cekL6_gxf__df
Content-Type: application/octet-stream;
 name="0001-cogl-1.0-Fix-packages-so-dev-pkgs-image-generation-w.patch"
Content-Disposition: attachment;
 filename="0001-cogl-1.0-Fix-packages-so-dev-pkgs-image-generation-w.patch"
Content-Transfer-Encoding: base64

RnJvbSAyNGI1NmE4MmE0NjdhMWMxYzRhNmY5ZjJhMGRiZTYxMGU5ZTVmYjc2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJrdXNWb2xrIDxmX2xfa0B0LW9ubGluZS5kZT4KRGF0ZTog
V2VkLCAyNiBKdWwgMjAxNyAxODozMzo1MyArMDIwMApTdWJqZWN0OiBbUEFUQ0hdIGNvZ2wtMS4w
OkZpeCBwYWNrYWdlcyBzbyBkZXYtcGtncyBpbWFnZSBnZW5lcmF0aW9uIHdvcmtzCgpTaWduZWQt
b2ZmLWJ5OiBNYXJrdXNWb2xrIDxmX2xfa0B0LW9ubGluZS5kZT4KLS0tCiBtZXRhL3JlY2lwZXMt
Z3JhcGhpY3MvY29nbC9jb2dsLTEuMC5pbmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL2NvZ2wvY29nbC0x
LjAuaW5jIGIvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL2NvZ2wvY29nbC0xLjAuaW5jCmluZGV4IDdh
NzlhYTc4OWEuLjBjOGY4Y2JiMmYgMTAwNjQ0Ci0tLSBhL21ldGEvcmVjaXBlcy1ncmFwaGljcy9j
b2dsL2NvZ2wtMS4wLmluYworKysgYi9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MvY29nbC9jb2dsLTEu
MC5pbmMKQEAgLTY5LDYgKzY5LDggQEAgRklMRVNfbGliY29nbC1wYW5nbyA9ICIke2xpYmRpcn0v
bGliY29nbC1wYW5nbyR7U09MSUJTfSAke2xpYmRpcn0vZ2lyZXBvc2l0b3J5LTEKIAogRklMRVNf
bGliY29nbC1wYXRoID0gIiR7bGliZGlyfS9saWJjb2dsLXBhdGgke1NPTElCU30iCiAKK1JERVBF
TkRTXyR7UE59LWRldiA9ICIiCisKICMgRm9yIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IGFmdGVy
IERlYmlhbi1yZW5hbWluZwogUlBST1ZJREVTX2xpYmNvZ2wgPSAiY29nbC0xLjAiCiBSQ09ORkxJ
Q1RTX2xpYmNvZ2wgPSAiY29nbC0xLjAiCi0tIAoyLjExLjEKCg==

--Multipart=_Wed__26_Jul_2017_18_41_22_+0200_xm5cekL6_gxf__df--
