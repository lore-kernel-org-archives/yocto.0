Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF6FC5B543
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 13:25:53 +0000 (UTC)
Received: from mail-10699.protonmail.ch (mail-10699.protonmail.ch [79.135.106.99])
 by mx.groups.io with SMTP id smtpd.web11.16425.1749043549143522881
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Jun 2025 06:25:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=C/N7HTm1;
 spf=pass (domain: protonmail.com, ip: 79.135.106.99, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1749043546; x=1749302746;
	bh=TdQAHEjH2C+60lC79jMRpeS+RFFFc97Z6OW5opYqNzw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=C/N7HTm157XzPz48DME2a04Cj0d8hIODAlF+tXHEzTin2mDQskcWd4It0MF2M6zDf
	 S2B7R5RtSf5hwRmp0/TNxKtXmxnBZWIm/9Gk+5cxRYI4B2iIVx95e+nUsrY7icTPGT
	 y3nohGGBr4w4WBcf2LefLM1z5GqPwztKu1fDU5muZyBMD7sVlsRyuF3J0VHvsjMiz8
	 m59WJt/kX1hS5Xr4gNBr/Hc+GZ0kodxdXwHt2zf2UEqDbGxw9spLEJGV7C9FwJ0D4K
	 +0Kkr6Qudh4fCL2Oy0Eo8ydUs9f0IBzF6cI2tUf2BB+HcLCr1R3+PFRr57zZ7wF0/0
	 09f9S7J/Nx0WA==
Date: Wed, 04 Jun 2025 13:25:42 +0000
To: Gyorgy Sarvari <skandigraun@gmail.com>
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [poky][master] opensbi recipe failed at do_patch
Message-ID: <eJWxq8Go7hA2-rBqhXQ4alCUWIJ0iyC9mSPOhAPNjd2yVMB_TWzwwTVBCOWiS_Stbz8YKouWYfi4Xeei3kcrxwmLSVbUvBSnIhHMuhQ1ALU=@protonmail.com>
In-Reply-To: <2b0b2ffb-a7b3-4143-8b4a-474bdd22a5c1@gmail.com>
References: <lwHV9MLGir2nUyJPc-xQKFx_rhE2ABEfOSLNR5WCWuoPSo4WMQRsKi7YhzMsyTHrAcQkwzyPca57qC3tF0abomOAJ673W2_dgiA04oo1m_s=@protonmail.com> <28713.1748865806847096458@lists.yoctoproject.org> <2b0b2ffb-a7b3-4143-8b4a-474bdd22a5c1@gmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: 36bb81d79275986361a658c58587b84817a8c21b
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1=_aWjS8yZVGupXefnDTyLj9jS92r0wUFeFVJcdqlR4Sok"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jun 2025 13:25:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65465

--b1=_aWjS8yZVGupXefnDTyLj9jS92r0wUFeFVJcdqlR4Sok
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I tried backporting the patch [1], but I am getting stuck at QA Issues.
As per the QA Issues documentation, I tried adding the=20
```
CFLAGS:append =3D " -fPIC "
```
to the opensbi recipe.

I need the OpenSBI v0.9 from a downstream fork [2] provided by the vendor f=
or getting all the cores online, the upstream one needs a few changes which=
 are not yet upstreamed.

> If this old version of opensbi is a must for your board, then you will
> need to backport the C23 patch (it's reasonably small and simple).
> Otherwise the best would be to bump it in opensbi version in meta-riscv,
> is possible.
>=20


Error log:
```
ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: File /share/opensbi/lp64/gen=
eric/firmware/.debug/fw_dynamic.elf in package opensbi-dbg contains referen=
ce to TMPDIR [buildpaths]
ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: File /share/opensbi/lp64/gen=
eric/firmware/.debug/fw_payload.elf in package opensbi-dbg contains referen=
ce to TMPDIR [buildpaths]
ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: File /share/opensbi/lp64/gen=
eric/firmware/.debug/fw_jump.elf in package opensbi-dbg contains reference =
to TMPDIR [buildpaths]
ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: opensbi: ELF binary /share/o=
pensbi/lp64/generic/firmware/fw_dynamic.elf has relocations in .text [textr=
el]
ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: opensbi: ELF binary /share/o=
pensbi/lp64/generic/firmware/fw_payload.elf has relocations in .text [textr=
el]
ERROR: opensbi-1.6-r0 do_package_qa: QA Issue: opensbi: ELF binary /share/o=
pensbi/lp64/generic/firmware/fw_jump.elf has relocations in .text [textrel]
ERROR: opensbi-1.6-r0 do_package_qa: Fatal QA errors were found, failing ta=
sk.
ERROR: Logfile of failure stored in: /home/kanak/yocto/build-beaglev/tmp/wo=
rk/riscv64-poky-linux/opensbi/1.6/temp/log.do_package_qa.3783423
ERROR: Task (/home/kanak/yocto/sources/poky/meta/recipes-bsp/opensbi/opensb=
i_1.6.bb:do_package_qa) failed with exit code '1'
```

Full log attached. I have also attached the patch for your reference.

[1]: https://github.com/riscv-software-src/opensbi/commit/d539d64a23bbd64ba=
324eed595449bcc9c7be0cb
[2]: https://github.com/revyos/thead-opensbi/tree/th1520

Thanks and Regards,
Kanak Shilledar
--b1=_aWjS8yZVGupXefnDTyLj9jS92r0wUFeFVJcdqlR4Sok
Content-Type: text/x-patch; name=0001-include-sbi-backport-changes-for-C23-compilers.patch
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=0001-include-sbi-backport-changes-for-C23-compilers.patch

RnJvbSAwNDAxY2QzMGU3ODU4YTFjYWNjNjJhNTg1NWRlYzljNDgxZGNkZGY5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBLYW5hayBTaGlsbGVkYXIgPGthbmFrc2hpbGxlZGFyMTExQHBy
b3Rvbm1haWwuY29tPgpEYXRlOiBXZWQsIDQgSnVuIDIwMjUgMTg6MjI6NTAgKzA1MzAKU3ViamVj
dDogW1BBVENIIDEvMV0gaW5jbHVkZTogc2JpOiBiYWNrcG9ydCBjaGFuZ2VzIGZvciBDMjMgY29t
cGlsZXJzCgpVcHN0cmVhbS1TdGF0dXM6IFBlbmRpbmcKClNpZ25lZC1vZmYtYnk6IEthbmFrIFNo
aWxsZWRhciA8a2FuYWtzaGlsbGVkYXIxMTFAcHJvdG9ubWFpbC5jb20+Ci0tLQogaW5jbHVkZS9z
YmkvcmlzY3ZfbG9ja3MuaCB8IDIgKy0KIGluY2x1ZGUvc2JpL3NiaV90eXBlcy5oICAgfCA4ICsr
KysrLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9pbmNsdWRlL3NiaS9yaXNjdl9sb2Nrcy5oIGIvaW5jbHVkZS9zYmkvcmlz
Y3ZfbG9ja3MuaAppbmRleCA0OTI5MzVmLi5hZTc3MWQxIDEwMDY0NAotLS0gYS9pbmNsdWRlL3Ni
aS9yaXNjdl9sb2Nrcy5oCisrKyBiL2luY2x1ZGUvc2JpL3Jpc2N2X2xvY2tzLmgKQEAgLTM0LDcg
KzM0LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgewogI2RlZmluZSBERUZJTkVfU1BJTl9MT0NLKHgpCVwK
IAlzcGlubG9ja190IFNQSU5fTE9DS19JTklUKHgpCiAKLWludCBzcGluX2xvY2tfY2hlY2soc3Bp
bmxvY2tfdCAqbG9jayk7Citib29sIHNwaW5fbG9ja19jaGVjayhzcGlubG9ja190ICpsb2NrKTsK
IAogaW50IHNwaW5fdHJ5bG9jayhzcGlubG9ja190ICpsb2NrKTsKIApkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9zYmkvc2JpX3R5cGVzLmggYi9pbmNsdWRlL3NiaS9zYmlfdHlwZXMuaAppbmRleCAzOGUz
NTY1Li44YzQ1ZjlhIDEwMDY0NAotLS0gYS9pbmNsdWRlL3NiaS9zYmlfdHlwZXMuaAorKysgYi9p
bmNsdWRlL3NiaS9zYmlfdHlwZXMuaApAQCAtNDQsNyArNDQsMTEgQEAgdHlwZWRlZiB1bnNpZ25l
ZCBsb25nIGxvbmcJdWludDY0X3Q7CiAjZXJyb3IgIlVuZXhwZWN0ZWQgX19yaXNjdl94bGVuIgog
I2VuZGlmCiAKLXR5cGVkZWYgaW50CQkJYm9vbDsKKyNpZiBfX1NURENfVkVSU0lPTl9fIDwgMjAy
MDAwTAordHlwZWRlZiBfQm9vbCAJCQlib29sOworI2RlZmluZSB0cnVlCQkJMQorI2RlZmluZSBm
YWxzZQkJCTAKKyNlbmRpZgogdHlwZWRlZiB1bnNpZ25lZCBsb25nCQl1bG9uZzsKIHR5cGVkZWYg
dW5zaWduZWQgbG9uZwkJdWludHB0cl90OwogdHlwZWRlZiB1bnNpZ25lZCBsb25nCQlzaXplX3Q7
CkBAIC01Niw4ICs2MCw2IEBAIHR5cGVkZWYgdW5zaWduZWQgbG9uZwkJcGh5c2ljYWxfc2l6ZV90
OwogCiAjZGVmaW5lIFRSVUUJCQkxCiAjZGVmaW5lIEZBTFNFCQkJMAotI2RlZmluZSB0cnVlCQkJ
VFJVRQotI2RlZmluZSBmYWxzZQkJCUZBTFNFCiAKICNkZWZpbmUgTlVMTAkJCSgodm9pZCAqKTAp
CiAKLS0gCjIuNDMuMAoK

--b1=_aWjS8yZVGupXefnDTyLj9jS92r0wUFeFVJcdqlR4Sok
Content-Type: application/octet-stream; name=log.do_package_qa.3783423
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=log.do_package_qa.3783423

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290Ck5P
VEU6IERpcmVjdCBkZXBlbmRlbmNpZXMgYXJlIFsnL2hvbWUva2FuYWsveW9jdG8vc291cmNlcy9w
b2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9iaW51dGlscy9iaW51dGlscy1jcm9zc18yLjQ0LmJi
OmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUva2FuYWsveW9jdG8v
c291cmNlcy9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9wc2V1ZG8vcHNldWRvX2dpdC5iYjpk
b19wb3B1bGF0ZV9zeXNyb290J10KTk9URTogSW5zdGFsbGVkIGludG8gc3lzcm9vdDogW10KTk9U
RTogU2tpcHBpbmcgYXMgYWxyZWFkeSBleGlzdHMgaW4gc3lzcm9vdDogWydnZXR0ZXh0LW1pbmlt
YWwtbmF0aXZlJywgJ2JpbnV0aWxzLWNyb3NzLXJpc2N2NjQnLCAnbGlidG9vbC1uYXRpdmUnLCAn
bTQtbmF0aXZlJywgJ3RleGluZm8tZHVtbXktbmF0aXZlJywgJ3psaWItbmF0aXZlJywgJ2ZsZXgt
bmF0aXZlJywgJ2dudS1jb25maWctbmF0aXZlJywgJ3BzZXVkby1uYXRpdmUnLCAneHotbmF0aXZl
JywgJ2F0dHItbmF0aXZlJywgJ3NxbGl0ZTMtbmF0aXZlJ10KREVCVUc6IFB5dGhvbiBmdW5jdGlv
biBleHRlbmRfcmVjaXBlX3N5c3Jvb3QgZmluaXNoZWQKREVCVUc6IEV4ZWN1dGluZyBweXRob24g
ZnVuY3Rpb24gc3N0YXRlX3Rhc2tfcHJlZnVuYwpERUJVRzogUHl0aG9uIGZ1bmN0aW9uIHNzdGF0
ZV90YXNrX3ByZWZ1bmMgZmluaXNoZWQKREVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24g
ZG9fcGFja2FnZV9xYQpERUJVRzogRXhlY3V0aW5nIHB5dGhvbiBmdW5jdGlvbiByZWFkX3N1YnBh
Y2thZ2VfbWV0YWRhdGEKREVCVUc6IFB5dGhvbiBmdW5jdGlvbiByZWFkX3N1YnBhY2thZ2VfbWV0
YWRhdGEgZmluaXNoZWQKTk9URTogQ2hlY2tpbmcgUGFja2FnZTogb3BlbnNiaS1kZXYKTk9URTog
Q2hlY2tpbmcgUGFja2FnZTogb3BlbnNiaS1zdGF0aWNkZXYKTk9URTogQ2hlY2tpbmcgUGFja2Fn
ZTogb3BlbnNiaS1kYmcKTk9URTogcmlzY3Y2NC1wb2t5LWxpbnV4LW9iamR1bXAgLXAgL2hvbWUv
a2FuYWsveW9jdG8vYnVpbGQtYmVhZ2xldi90bXAvd29yay9yaXNjdjY0LXBva3ktbGludXgvb3Bl
bnNiaS8xLjYvcGFja2FnZXMtc3BsaXQvb3BlbnNiaS1kYmcvc2hhcmUvb3BlbnNiaS9scDY0L2dl
bmVyaWMvZmlybXdhcmUvLmRlYnVnL2Z3X3BheWxvYWQuZWxmCk5PVEU6IHJpc2N2NjQtcG9reS1s
aW51eC1vYmpkdW1wIC1wIC9ob21lL2thbmFrL3lvY3RvL2J1aWxkLWJlYWdsZXYvdG1wL3dvcmsv
cmlzY3Y2NC1wb2t5LWxpbnV4L29wZW5zYmkvMS42L3BhY2thZ2VzLXNwbGl0L29wZW5zYmktZGJn
L3NoYXJlL29wZW5zYmkvbHA2NC9nZW5lcmljL2Zpcm13YXJlLy5kZWJ1Zy9md19qdW1wLmVsZgpO
T1RFOiByaXNjdjY0LXBva3ktbGludXgtb2JqZHVtcCAtcCAvaG9tZS9rYW5hay95b2N0by9idWls
ZC1iZWFnbGV2L3RtcC93b3JrL3Jpc2N2NjQtcG9reS1saW51eC9vcGVuc2JpLzEuNi9wYWNrYWdl
cy1zcGxpdC9vcGVuc2JpLWRiZy9zaGFyZS9vcGVuc2JpL2xwNjQvZ2VuZXJpYy9maXJtd2FyZS8u
ZGVidWcvZndfZHluYW1pYy5lbGYKRVJST1I6IFFBIElzc3VlOiBGaWxlIC9zaGFyZS9vcGVuc2Jp
L2xwNjQvZ2VuZXJpYy9maXJtd2FyZS8uZGVidWcvZndfZHluYW1pYy5lbGYgaW4gcGFja2FnZSBv
cGVuc2JpLWRiZyBjb250YWlucyByZWZlcmVuY2UgdG8gVE1QRElSIFtidWlsZHBhdGhzXQpFUlJP
UjogUUEgSXNzdWU6IEZpbGUgL3NoYXJlL29wZW5zYmkvbHA2NC9nZW5lcmljL2Zpcm13YXJlLy5k
ZWJ1Zy9md19wYXlsb2FkLmVsZiBpbiBwYWNrYWdlIG9wZW5zYmktZGJnIGNvbnRhaW5zIHJlZmVy
ZW5jZSB0byBUTVBESVIgW2J1aWxkcGF0aHNdCkVSUk9SOiBRQSBJc3N1ZTogRmlsZSAvc2hhcmUv
b3BlbnNiaS9scDY0L2dlbmVyaWMvZmlybXdhcmUvLmRlYnVnL2Z3X2p1bXAuZWxmIGluIHBhY2th
Z2Ugb3BlbnNiaS1kYmcgY29udGFpbnMgcmVmZXJlbmNlIHRvIFRNUERJUiBbYnVpbGRwYXRoc10K
Tk9URTogQ2hlY2tpbmcgUGFja2FnZTogb3BlbnNiaS1zcmMKTk9URTogQ2hlY2tpbmcgUGFja2Fn
ZTogb3BlbnNiaS1kb2MKTk9URTogQ2hlY2tpbmcgUGFja2FnZTogb3BlbnNiaS1sb2NhbGUKTk9U
RTogQ2hlY2tpbmcgUGFja2FnZTogb3BlbnNiaQpOT1RFOiByaXNjdjY0LXBva3ktbGludXgtb2Jq
ZHVtcCAtcCAvaG9tZS9rYW5hay95b2N0by9idWlsZC1iZWFnbGV2L3RtcC93b3JrL3Jpc2N2NjQt
cG9reS1saW51eC9vcGVuc2JpLzEuNi9wYWNrYWdlcy1zcGxpdC9vcGVuc2JpL3NoYXJlL29wZW5z
YmkvbHA2NC9nZW5lcmljL2Zpcm13YXJlL2Z3X3BheWxvYWQuZWxmCk5PVEU6IHJpc2N2NjQtcG9r
eS1saW51eC1vYmpkdW1wIC1wIC9ob21lL2thbmFrL3lvY3RvL2J1aWxkLWJlYWdsZXYvdG1wL3dv
cmsvcmlzY3Y2NC1wb2t5LWxpbnV4L29wZW5zYmkvMS42L3BhY2thZ2VzLXNwbGl0L29wZW5zYmkv
c2hhcmUvb3BlbnNiaS9scDY0L2dlbmVyaWMvZmlybXdhcmUvZndfanVtcC5lbGYKTk9URTogcmlz
Y3Y2NC1wb2t5LWxpbnV4LW9iamR1bXAgLXAgL2hvbWUva2FuYWsveW9jdG8vYnVpbGQtYmVhZ2xl
di90bXAvd29yay9yaXNjdjY0LXBva3ktbGludXgvb3BlbnNiaS8xLjYvcGFja2FnZXMtc3BsaXQv
b3BlbnNiaS9zaGFyZS9vcGVuc2JpL2xwNjQvZ2VuZXJpYy9maXJtd2FyZS9md19keW5hbWljLmVs
ZgpFUlJPUjogUUEgSXNzdWU6IG9wZW5zYmk6IEVMRiBiaW5hcnkgL3NoYXJlL29wZW5zYmkvbHA2
NC9nZW5lcmljL2Zpcm13YXJlL2Z3X2R5bmFtaWMuZWxmIGhhcyByZWxvY2F0aW9ucyBpbiAudGV4
dCBbdGV4dHJlbF0KRVJST1I6IFFBIElzc3VlOiBvcGVuc2JpOiBFTEYgYmluYXJ5IC9zaGFyZS9v
cGVuc2JpL2xwNjQvZ2VuZXJpYy9maXJtd2FyZS9md19wYXlsb2FkLmVsZiBoYXMgcmVsb2NhdGlv
bnMgaW4gLnRleHQgW3RleHRyZWxdCkVSUk9SOiBRQSBJc3N1ZTogb3BlbnNiaTogRUxGIGJpbmFy
eSAvc2hhcmUvb3BlbnNiaS9scDY0L2dlbmVyaWMvZmlybXdhcmUvZndfanVtcC5lbGYgaGFzIHJl
bG9jYXRpb25zIGluIC50ZXh0IFt0ZXh0cmVsXQpFUlJPUjogRmF0YWwgUUEgZXJyb3JzIHdlcmUg
Zm91bmQsIGZhaWxpbmcgdGFzay4KREVCVUc6IFB5dGhvbiBmdW5jdGlvbiBkb19wYWNrYWdlX3Fh
IGZpbmlzaGVkCg==

--b1=_aWjS8yZVGupXefnDTyLj9jS92r0wUFeFVJcdqlR4Sok--


