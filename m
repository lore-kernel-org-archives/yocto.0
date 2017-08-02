Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D618CE00CAB; Wed,  2 Aug 2017 00:48:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.81 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout03.t-online.de (mailout03.t-online.de [194.25.134.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EE84E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 00:48:11 -0700 (PDT)
Received: from fwd31.aul.t-online.de (fwd31.aul.t-online.de [172.20.26.136])
	by mailout03.t-online.de (Postfix) with SMTP id F34314242084
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 09:48:09 +0200 (CEST)
Received: from genericx86-64.Speedport_W_724V_01011603_05_032
	(SgVshwZDYhTXL3see-OWIa2Og8AnZ5YKXLdeb5zVoUqwVxHMr4hHR0gobhqSIOeZWW@[84.146.40.121])
	by fwd31.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1dcoNy-1nPpbM0; Wed, 2 Aug 2017 09:48:06 +0200
Date: Wed, 2 Aug 2017 09:48:05 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170802094805.09f396cb7e1c99a9e031984c@t-online.de>
In-Reply-To: <20170801215816.44e8bc72bd0f99260cdc79da@t-online.de>
References: <20170731172707.99f391941732c2321f9862d6@t-online.de>
	<20170801215816.44e8bc72bd0f99260cdc79da@t-online.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: SgVshwZDYhTXL3see-OWIa2Og8AnZ5YKXLdeb5zVoUqwVxHMr4hHR0gobhqSIOeZWW
X-TOI-MSGID: ab13e544-f5a0-4bf6-be25-1c18be743a52
Subject: Re: installing iso images in legacy mode
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
X-List-Received-Date: Wed, 02 Aug 2017 07:48:12 -0000
X-Groupsio-MsgNum: 37268
Content-Type: multipart/mixed;
	boundary="Multipart=_Wed__2_Aug_2017_09_48_05_+0200_nNxDH8UhPmSDyBnA"

--Multipart=_Wed__2_Aug_2017_09_48_05_+0200_nNxDH8UhPmSDyBnA
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Perhaps the issue should be fixed by making this switch static ?



On Tue, 1 Aug 2017 21:58:16 +0200
Markus Volk <f_l_k@t-online.de> wrote:

> I had some time to look at this issue today. Since grub was recently upda=
ted i tried using the old recipes from pyro. This fixed booting without efi=
. Then i had a look at meta/recipes-core/initrdscripts/files/init-install.sh
>=20
> My suspicion was, that this line
>=20
> grub_version=3D$(grub-install -v|sed 's/.* \([0-9]\).*/\1/')
>=20
> turns out to be zero with grub-202, and thereby messes the whole thing up
>=20
> Changing to:
>=20
> grub_version=3D202
>=20
> fixed my legacy boot problem.
>=20
> :)
>=20
> On Mon, 31 Jul 2017 17:27:07 +0200
> Markus Volk <f_l_k@t-online.de> wrote:
>=20
> > Iso Images (x86_64) created with the current master fail when trying to=
 install using the legacy bios startup. Live boot from usb is fine, but whe=
n installing, i=B4m getting an error ... "/usr/share/locale" could not be f=
ound. After reboot i'm getting dropped to grub-shell, because the kernel co=
uld not be loaded.
> >=20
> > When setting the bios startup to uefi mode, everything works as expecte=
d.
> >=20
> > Has legacy pcbios mode been dropped or is this some kind of bug ?
> >=20
> > --=20
> > Markus Volk <f_l_k@t-online.de>
> > --=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> --=20
> Markus Volk <f_l_k@t-online.de>
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Markus Volk <f_l_k@t-online.de>

--Multipart=_Wed__2_Aug_2017_09_48_05_+0200_nNxDH8UhPmSDyBnA
Content-Type: application/octet-stream;
 name="0001-init-install.sh-fix-grub-install-for-legacy-pcbios.patch"
Content-Disposition: attachment;
 filename="0001-init-install.sh-fix-grub-install-for-legacy-pcbios.patch"
Content-Transfer-Encoding: base64

RnJvbSA3NmYzY2ExYThiNjIzNTcyNTIwOThhYTRkMzAzM2E5ODU0OGQyNThmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJrdXNWb2xrIDxmX2xfa0B0LW9ubGluZS5kZT4KRGF0ZTog
V2VkLCAyIEF1ZyAyMDE3IDA5OjM4OjQyICswMjAwClN1YmplY3Q6IFtQQVRDSF0gaW5pdC1pbnN0
YWxsLnNoOiBmaXggZ3J1YiBpbnN0YWxsIGZvciBsZWdhY3kgcGNiaW9zCk1JTUUtVmVyc2lvbjog
MS4wCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOApDb250ZW50LVRyYW5z
ZmVyLUVuY29kaW5nOiA4Yml0CgpTaWduZWQtb2ZmLWJ5OiBNYXJrdXNWb2xrIDxmX2xfa0B0LW9u
bGluZS5kZT4KCmdydWJfdmVyc2lvbj0kKGdydWItaW5zdGFsbCAtdnxzZWQgJ3MvLiogXChbMC05
XVwpLiovXDEvJykKClRoaXMgc3dpdGNoIGluc2lkZSB0aGUgc2NyaXB0IHNlZW1zIHRvIGZhaWwg
Zm9yIGdydWItMi4wMi4gRHVlIHRvIHRoZSBmYWN0LAp0aGF0IHRoZXJlIGlzbsK0dCBhbnkgbGVn
YWN5IGdydWIgcmVjaXBlIGluc2lkZSB0aGUgeW9jdG8gbGF5ZXIgaXQgc2hvdWxkIGJlIG1vcmUg
ZmFpbHByb29mIHRvIG1ha2UgdGhpcyBzd2l0Y2ggc3RhdGljCgpUaGUgYXNzdW1wdGlvbiwgdGhl
IG91dHB1dCBvZiBncnViLWluc3RhbGwgd291bGRuwrR0IGNoYW5nZSBpbnNpZGUgbWlub3IgcmVs
ZWFzZXMgdHVybnMgb3V0ICB0byBiZSAgc29tZXdoYXQgYXVkYWNpb3VzLgoKU2lnbmVkLW9mZi1i
eTogTWFya3VzVm9sayA8Zl9sX2tAdC1vbmxpbmUuZGU+Ci0tLQogLi4uL3JlY2lwZXMtY29yZS9p
bml0cmRzY3JpcHRzL2ZpbGVzL2luaXQtaW5zdGFsbC5zaCB8IDIwICsrKysrKysrKystLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvbWV0YS9yZWNpcGVzLWNvcmUvaW5pdHJkc2NyaXB0cy9maWxlcy9pbml0LWlu
c3RhbGwuc2ggYi9tZXRhL3JlY2lwZXMtY29yZS9pbml0cmRzY3JpcHRzL2ZpbGVzL2luaXQtaW5z
dGFsbC5zaAppbmRleCA1NzI2MTNlY2Q0Li5hYzM5M2Q5MjdkIDEwMDY0NAotLS0gYS9tZXRhL3Jl
Y2lwZXMtY29yZS9pbml0cmRzY3JpcHRzL2ZpbGVzL2luaXQtaW5zdGFsbC5zaAorKysgYi9tZXRh
L3JlY2lwZXMtY29yZS9pbml0cmRzY3JpcHRzL2ZpbGVzL2luaXQtaW5zdGFsbC5zaApAQCAtMTMy
LDkgKzEzMiw5IEBAIGZpCiAKIGRpc2tfc2l6ZT0kKHBhcnRlZCAke2RldmljZX0gdW5pdCBtYiBw
cmludCB8IGdyZXAgJ15EaXNrIC4qOiAuKk1CJyB8IGN1dCAtZCIgIiAtZiAzIHwgc2VkIC1lICJz
L01CLy8iKQogCi1ncnViX3ZlcnNpb249JChncnViLWluc3RhbGwgLXZ8c2VkICdzLy4qIFwoWzAt
OV1cKS4qL1wxLycpCitsZWdhY3lfZ3J1Yj0wCiAKLWlmIFsgJGdydWJfdmVyc2lvbiAtZXEgMCBd
IDsgdGhlbgoraWYgWyAkbGVnYWN5X2dydWIgLWVxIDEgXSA7IHRoZW4KICAgICBiaW9zX2Jvb3Rf
c2l6ZT0wCiBlbHNlCiAgICAgIyBGb3IgR1JVQiAyIHdlIG5lZWQgc2VwYXJhdGUgcGFyaXRpb24g
dG8gc3RvcmUgc3RhZ2UyIGdydWIgaW1hZ2UKQEAgLTE2Niw3ICsxNjYsNyBAQCBpZiBbIC1uIGBy
ZWFkbGluayAvZGV2L2Rpc2svYnktaWQvdXNiKiB8IGdyZXAgJFRBUkdFVF9ERVZJQ0VfTkFNRWAg
XTsgdGhlbgogICAgIHJvb3R3YWl0PSJyb290d2FpdCIKIGZpCiAKLWlmIFsgJGdydWJfdmVyc2lv
biAtZXEgMCBdIDsgdGhlbgoraWYgWyAkbGVnYWN5X2dydWIgLWVxIDEgXSA7IHRoZW4KICAgICBi
aW9zX2Jvb3Q9JycKICAgICBib290ZnM9JHtkZXZpY2V9JHtwYXJ0X3ByZWZpeH0xCiAgICAgcm9v
dGZzPSR7ZGV2aWNlfSR7cGFydF9wcmVmaXh9MgpAQCAtMTc5LDcgKzE3OSw3IEBAIGVsc2UKIGZp
CiAKIGVjaG8gIioqKioqKioqKioqKioqKioqIgotWyAkZ3J1Yl92ZXJzaW9uIC1uZSAwIF0gJiYg
ZWNobyAiQklPUyBib290IHBhcnRpdGlvbiBzaXplOiAkYmlvc19ib290X3NpemUgTUIgKCRiaW9z
X2Jvb3QpIgorWyAkbGVnYWN5X2dydWIgLW5lIDEgXSAmJiBlY2hvICJCSU9TIGJvb3QgcGFydGl0
aW9uIHNpemU6ICRiaW9zX2Jvb3Rfc2l6ZSBNQiAoJGJpb3NfYm9vdCkiCiBlY2hvICJCb290IHBh
cnRpdGlvbiBzaXplOiAgICRib290X3NpemUgTUIgKCRib290ZnMpIgogZWNobyAiUm9vdGZzIHBh
cnRpdGlvbiBzaXplOiAkcm9vdGZzX3NpemUgTUIgKCRyb290ZnMpIgogZWNobyAiU3dhcCBwYXJ0
aXRpb24gc2l6ZTogICAkc3dhcF9zaXplIE1CICgkc3dhcCkiCkBAIC0xODgsNyArMTg4LDcgQEAg
ZWNobyAiRGVsZXRpbmcgcGFydGl0aW9uIHRhYmxlIG9uICR7ZGV2aWNlfSAuLi4iCiBkZCBpZj0v
ZGV2L3plcm8gb2Y9JHtkZXZpY2V9IGJzPTUxMiBjb3VudD0zNQogCiBlY2hvICJDcmVhdGluZyBu
ZXcgcGFydGl0aW9uIHRhYmxlIG9uICR7ZGV2aWNlfSAuLi4iCi1pZiBbICRncnViX3ZlcnNpb24g
LWVxIDAgXSA7IHRoZW4KK2lmIFsgJGxlZ2FjeV9ncnViIC1lcSAxIF0gOyB0aGVuCiAgICAgcGFy
dGVkICR7ZGV2aWNlfSBta3RhYmxlIG1zZG9zCiAgICAgZWNobyAiQ3JlYXRpbmcgYm9vdCBwYXJ0
aXRpb24gb24gJGJvb3RmcyIKICAgICBwYXJ0ZWQgJHtkZXZpY2V9IG1rcGFydCBwcmltYXJ5IGV4
dDMgMCUgJGJvb3Rfc2l6ZQpAQCAtMjAyLDExICsyMDIsMTEgQEAgZWxzZQogZmkKIAogZWNobyAi
Q3JlYXRpbmcgcm9vdGZzIHBhcnRpdGlvbiBvbiAkcm9vdGZzIgotWyAkZ3J1Yl92ZXJzaW9uIC1l
cSAwIF0gJiYgcG5hbWU9J3ByaW1hcnknIHx8IHBuYW1lPSdyb290JworWyAkbGVnYWN5X2dydWIg
LWVxIDEgXSAmJiBwbmFtZT0ncHJpbWFyeScgfHwgcG5hbWU9J3Jvb3QnCiBwYXJ0ZWQgJHtkZXZp
Y2V9IG1rcGFydCAkcG5hbWUgZXh0MyAkcm9vdGZzX3N0YXJ0ICRyb290ZnNfZW5kCiAKIGVjaG8g
IkNyZWF0aW5nIHN3YXAgcGFydGl0aW9uIG9uICRzd2FwIgotWyAkZ3J1Yl92ZXJzaW9uIC1lcSAw
IF0gJiYgcG5hbWU9J3ByaW1hcnknIHx8IHBuYW1lPSdzd2FwJworWyAkbGVnYWN5X2dydWIgLWVx
IDEgXSAmJiBwbmFtZT0ncHJpbWFyeScgfHwgcG5hbWU9J3N3YXAnCiBwYXJ0ZWQgJHtkZXZpY2V9
IG1rcGFydCAkcG5hbWUgbGludXgtc3dhcCAkc3dhcF9zdGFydCAxMDAlCiAKIHBhcnRlZCAke2Rl
dmljZX0gcHJpbnQKQEAgLTIzMCw3ICsyMzAsNyBAQCBtb3VudCAtbyBydyxsb29wLG5vYXRpbWUs
bm9kaXJhdGltZSAvcnVuL21lZGlhLyQxLyQyIC9zcmNfcm9vdAogZWNobyAiQ29weWluZyByb290
ZnMgZmlsZXMuLi4iCiBjcCAtYSAvc3JjX3Jvb3QvKiAvdGd0X3Jvb3QKIGlmIFsgLWQgL3RndF9y
b290L2V0Yy8gXSA7IHRoZW4KLSAgICBpZiBbICRncnViX3ZlcnNpb24gLW5lIDAgXSA7IHRoZW4K
KyAgICBpZiBbICRsZWdhY3lfZ3J1YiAtbmUgMSBdIDsgdGhlbgogICAgICAgICBib290X3V1aWQ9
JChibGtpZCAtbyB2YWx1ZSAtcyBVVUlEICR7Ym9vdGZzfSkKICAgICAgICAgc3dhcF9wYXJ0X3V1
aWQ9JChibGtpZCAtbyB2YWx1ZSAtcyBQQVJUVVVJRCAke3N3YXB9KQogICAgICAgICBib290ZGV2
PSJVVUlEPSRib290X3V1aWQiCkBAIC0yNTIsNyArMjUyLDcgQEAgdW1vdW50IC9zcmNfcm9vdAog
IyBIYW5kbGluZyBvZiB0aGUgdGFyZ2V0IGJvb3QgcGFydGl0aW9uCiBtb3VudCAkYm9vdGZzIC9i
b290CiBlY2hvICJQcmVwYXJpbmcgYm9vdCBwYXJ0aXRpb24uLi4iCi1pZiBbIC1mIC9ldGMvZ3J1
Yi5kLzAwX2hlYWRlciAtYSAkZ3J1Yl92ZXJzaW9uIC1uZSAwIF0gOyB0aGVuCitpZiBbIC1mIC9l
dGMvZ3J1Yi5kLzAwX2hlYWRlciAtYSAkbGVnYWN5X2dydWIgLW5lIDEgXSA7IHRoZW4KICAgICBl
Y2hvICJQcmVwYXJpbmcgY3VzdG9tIGdydWIyIG1lbnUuLi4iCiAgICAgcm9vdF9wYXJ0X3V1aWQ9
JChibGtpZCAtbyB2YWx1ZSAtcyBQQVJUVVVJRCAke3Jvb3Rmc30pCiAgICAgYm9vdF91dWlkPSQo
YmxraWQgLW8gdmFsdWUgLXMgVVVJRCAke2Jvb3Rmc30pCkBAIC0yNjgsNyArMjY4LDcgQEAgX0VP
RgogZmkKIGdydWItaW5zdGFsbCAke2RldmljZX0KIAotaWYgWyAkZ3J1Yl92ZXJzaW9uIC1lcSAw
IF0gOyB0aGVuCitpZiBbICRsZWdhY3lfZ3J1YiAtZXEgMSBdIDsgdGhlbgogICAgIGVjaG8gIiho
ZDApICR7ZGV2aWNlfSIgPiAvYm9vdC9ncnViL2RldmljZS5tYXAKICAgICBlY2hvICJQcmVwYXJp
bmcgY3VzdG9tIGdydWIgbWVudS4uLiIKICAgICBlY2hvICJkZWZhdWx0IDAiID4gL2Jvb3QvZ3J1
Yi9tZW51LmxzdAotLSAKMi4xMS4xCgo=

--Multipart=_Wed__2_Aug_2017_09_48_05_+0200_nNxDH8UhPmSDyBnA--
