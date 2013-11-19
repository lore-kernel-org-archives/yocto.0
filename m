Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f44.google.com (mail-qe0-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06288E00543
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 08:18:08 -0800 (PST)
Received: by mail-qe0-f44.google.com with SMTP id ne12so4462195qeb.17
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 08:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dq2A6fZmz+RvysD8Ldzg5ZSHCzcFBElQZvUB6VJo1Xc=;
	b=N/tGbRq9/8ymCHFHIxwdm9lxSFvNk25Q3Ok0DoNLfXW6tAkdjyYFF9dexz5Dgwyeez
	aKw+Hpci+T7p0reYW37J3Op5pO5L/fIsTnBaoA/aCabLHUd8sXo4PTA7q7fMWQ8rQw+c
	yIwV5+IscuP9auQrUxD2so7Dy8uFm3zkXqhMBM/kVFuYngXXTa/trEPxy+k4vMT9yjCV
	k2PjhWdTxSFB0nxwEfRod6YYQy2CRcVqC16Pbg9PPFjalxW8W3Bxm3T2FGI1UzF/pxrh
	UdmpYKf7oGewvrRt/6vM30ly7+s+3MANsMNHWSXKKwm0phvPUnLSEY8ATsRB6JD3tXCe
	T5dw==
MIME-Version: 1.0
X-Received: by 10.229.79.137 with SMTP id p9mr44095212qck.12.1384877887416;
	Tue, 19 Nov 2013 08:18:07 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Tue, 19 Nov 2013 08:18:07 -0800 (PST)
Date: Tue, 19 Nov 2013 09:18:07 -0700
Message-ID: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Tue, 19 Nov 2013 16:18:11 -0000
Content-Type: multipart/alternative; boundary=001a1134a67a8970f204eb8a029b

--001a1134a67a8970f204eb8a029b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGVsbG8sDQpUbyBnZXQgbXkgQzkyMCBjYW1lcmEgdG8gd29yayB3aXRoIHRoZSB6ZWRib2FyZA0K
SSBuZWVkZWQgdG8gYWRkIHY0bC11dGlscyBhbmQgdGhlbiBJIG5lZWQgc2V2ZXJhbCBtb2R1bGVz
IHRoYXQgSSBhZGQgdG8gMy42DQprZXJuZWwNCmh0dHBzOi8vZ2l0aHViLmNvbS9EaWdpbGVudC9s
aW51eC1kaWdpbGVudC5naXQNCiAgICAzLjYuMC1kaWdpbGVudC0xMy4wMS0wMDAwMi1nMDZiMzg4
OS8NCiAgICDilJzilIDilIAga2VybmVsDQogICAg4pSCICAg4pSU4pSA4pSAIGRyaXZlcnMNCiAg
ICDilIIgICAgICAg4pSc4pSA4pSAIG1lZGlhDQogICAg4pSCICAgICAgIOKUgiAgIOKUlOKUgOKU
gCB2aWRlbw0KICAgIOKUgiAgICAgICDilIIgICAgICAg4pSc4pSA4pSAIGdzcGNhDQogICAg4pSC
ICAgICAgIOKUgiAgICAgICDilIIgICDilJTilIDilIAgZ3NwY2FfbWFpbi5rbw0KICAgIOKUgiAg
ICAgICDilIIgICAgICAg4pSc4pSA4pSAIHV2Yw0KICAgIOKUgiAgICAgICDilIIgICAgICAg4pSC
ICAg4pSU4pSA4pSAIHV2Y3ZpZGVvLmtvDQogICAg4pSCICAgICAgIOKUgiAgICAgICDilJzilIDi
lIAgdjRsMi1jb21tb24ua28NCiAgICDilIIgICAgICAg4pSCICAgICAgIOKUnOKUgOKUgCB2NGwy
LWludC1kZXZpY2Uua28NCiAgICDilIIgICAgICAg4pSCICAgICAgIOKUnOKUgOKUgCB2aWRlb2J1
ZjItY29yZS5rbw0KICAgIOKUgiAgICAgICDilIIgICAgICAg4pSc4pSA4pSAIHZpZGVvYnVmMi1t
ZW1vcHMua28NCiAgICDilIIgICAgICAg4pSCICAgICAgIOKUnOKUgOKUgCB2aWRlb2J1ZjItdm1h
bGxvYy5rbw0KICAgIOKUgiAgICAgICDilIIgICAgICAg4pSU4pSA4pSAIHZpZGVvZGV2LmtvDQpI
b3BlIHRoaXMgaGVscHMNCg==

--001a1134a67a8970f204eb8a029b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj48ZGl2PjxkaXY+SGVsbG8sPGJyPjwvZGl2PjxkaXY+VG8gZ2V0
IG15IEM5MjAgY2FtZXJhIHRvIHdvcmsgd2l0aCB0aGUgemVkYm9hcmQ8YnI+PC9kaXY+SSBuZWVk
ZWQgdG8gYWRkIHY0bC11dGlscyBhbmQgdGhlbiBJIG5lZWQgc2V2ZXJhbCBtb2R1bGVzIHRoYXQg
SSBhZGQgdG8gMy42IGtlcm5lbCA8YnI+PGEgaHJlZj0iaHR0cHM6Ly9naXRodWIuY29tL0RpZ2ls
ZW50L2xpbnV4LWRpZ2lsZW50LmdpdCI+aHR0cHM6Ly9naXRodWIuY29tL0RpZ2lsZW50L2xpbnV4
LWRpZ2lsZW50LmdpdDwvYT48YnI+DQrCoMKgwqAgMy42LjAtZGlnaWxlbnQtMTMuMDEtMDAwMDIt
ZzA2YjM4ODkvPGJyPsKgwqDCoCDilJzilIDilIAga2VybmVsPGJyPsKgwqDCoCDilILCoMKgIOKU
lOKUgOKUgCBkcml2ZXJzPGJyPsKgwqDCoCDilILCoMKgwqDCoMKgwqAg4pSc4pSA4pSAIG1lZGlh
PGJyPsKgwqDCoCDilILCoMKgwqDCoMKgwqAg4pSCwqDCoCDilJTilIDilIAgdmlkZW88YnI+wqDC
oMKgIOKUgsKgwqDCoMKgwqDCoCDilILCoMKgwqDCoMKgwqAg4pSc4pSA4pSAIGdzcGNhPGJyPsKg
wqDCoCDilILCoMKgwqDCoMKgwqAg4pSCwqDCoMKgwqDCoMKgIOKUgsKgwqAg4pSU4pSA4pSAIGdz
cGNhX21haW4ua288YnI+wqDCoMKgIOKUgsKgwqDCoMKgwqDCoCDilILCoMKgwqDCoMKgwqAg4pSc
4pSA4pSAIHV2Yzxicj4NCsKgwqDCoCDilILCoMKgwqDCoMKgwqAg4pSCwqDCoMKgwqDCoMKgIOKU
gsKgwqAg4pSU4pSA4pSAIHV2Y3ZpZGVvLmtvPGJyPsKgwqDCoCDilILCoMKgwqDCoMKgwqAg4pSC
wqDCoMKgwqDCoMKgIOKUnOKUgOKUgCB2NGwyLWNvbW1vbi5rbzxicj7CoMKgwqAg4pSCwqDCoMKg
wqDCoMKgIOKUgsKgwqDCoMKgwqDCoCDilJzilIDilIAgdjRsMi1pbnQtZGV2aWNlLmtvPGJyPsKg
wqDCoCDilILCoMKgwqDCoMKgwqAg4pSCwqDCoMKgwqDCoMKgIOKUnOKUgOKUgCB2aWRlb2J1ZjIt
Y29yZS5rbzxicj7CoMKgwqAg4pSCwqDCoMKgwqDCoMKgIOKUgsKgwqDCoMKgwqDCoCDilJzilIDi
lIAgdmlkZW9idWYyLW1lbW9wcy5rbzxicj4NCsKgwqDCoCDilILCoMKgwqDCoMKgwqAg4pSCwqDC
oMKgwqDCoMKgIOKUnOKUgOKUgCB2aWRlb2J1ZjItdm1hbGxvYy5rbzxicj7CoMKgwqAg4pSCwqDC
oMKgwqDCoMKgIOKUgsKgwqDCoMKgwqDCoCDilJTilIDilIAgdmlkZW9kZXYua288YnI+PC9kaXY+
SG9wZSB0aGlzIGhlbHBzPGJyPjwvZGl2Pjxicj48L2Rpdj4NCg==

--001a1134a67a8970f204eb8a029b--
