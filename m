Return-Path: <cazfi74@gmail.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id EA474E0034C
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 13:47:12 -0800 (PST)
Received: by mail-ve0-f174.google.com with SMTP id pb11so3781760veb.33
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 13:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=fIRQUsGbeF60TzASkajRiajakHmeyaRgT3IQfiA2hY8=;
	b=mJnjnj8iOXomBEXMjqbpshMoX5g47oqBz4K2mkgk7jiAUE3f03gDnI7C939adNCxrc
	9kTX2EluycXJWQ4FWxzkvfGRkehXoUF/IjoRdWcmXaZFdhaQCD4jYV0i1Ecb0/XuBS4I
	zBWiqQOEpSowUvs46nD9tVU564kdPYZMOzOgFjAdzQkHn+6H3Z6dTefy556+KUlJCMmR
	5hj2ydxmDKkqpkFX4NjOt21OGy5myUwvSk/UAn5Pga6hmrPlPXgcslaErG65ZRG3LvDH
	tVMxDbptIzp1MNqweet/T8cYfz+sEpUM6aZm2XuM6fJu8Wo+LJ+KH4blK6ZJpY0HogAH
	L0dQ==
MIME-Version: 1.0
X-Received: by 10.220.205.195 with SMTP id fr3mr8623383vcb.6.1360360031904;
	Fri, 08 Feb 2013 13:47:11 -0800 (PST)
Received: by 10.58.80.2 with HTTP; Fri, 8 Feb 2013 13:47:11 -0800 (PST)
Date: Fri, 8 Feb 2013 23:47:11 +0200
Message-ID: <CAF6bG8fg4nUAg5aDRFoH=T2jTZ-cMHwY+VmX2hhUcUoiWke=jA@mail.gmail.com>
From: Marko Lindqvist <cazfi74@gmail.com>
To: yocto@yoctoproject.org
Subject: [PATCH] Fix oprofileui build with automake-1.13
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
X-List-Received-Date: Fri, 08 Feb 2013 21:47:13 -0000
X-Groupsio-MsgNum: 12021
Content-Type: multipart/mixed; boundary=14dae9cdc48577e3fb04d53d808e

--14dae9cdc48577e3fb04d53d808e
Content-Type: text/plain; charset=UTF-8

 - ML

--14dae9cdc48577e3fb04d53d808e
Content-Type: application/octet-stream; 
	name="0001-configure.ac-fix-build-with-automake-1.13.patch"
Content-Disposition: attachment; 
	filename="0001-configure.ac-fix-build-with-automake-1.13.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hcxv7nwe0

RnJvbSA5ZTgzNTg0NzAwZjdjM2RkZGM1NTI4ZTRhNDJhYWU0MmVjYmI3ZDc1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJrbyBMaW5kcXZpc3QgPGNhemZpNzRAZ21haWwuY29tPgpE
YXRlOiBGcmksIDggRmViIDIwMTMgMjM6NDA6NDYgKzAyMDAKU3ViamVjdDogW1BBVENIXSBjb25m
aWd1cmUuYWM6IGZpeCBidWlsZCB3aXRoIGF1dG9tYWtlLTEuMTMKClJlcGxhY2UgQU1fQ09ORklH
X0hFQURFUiByZW1vdmVkIGZyb20gYXV0b21ha2UtMS4xMyB3aXRoCkFDX0NPTkZJR19IRUFERVJT
LiBSZW1vdmUgQU1fUFJPR19DQ19TVERDIGNvbXBsZXRlbHkgYXMgdGhlcmUKaXMgYWxyZWFkeSBl
cXVpdmFsZW50IEFDX1BST0dfQ0MuCgpTaWduZWQtb2ZmLWJ5OiBNYXJrbyBMaW5kcXZpc3QgPGNh
emZpNzRAZ21haWwuY29tPgotLS0KIGNvbmZpZ3VyZS5hYyB8ICAgIDMgKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvY29uZmln
dXJlLmFjIGIvY29uZmlndXJlLmFjCmluZGV4IDJhNzAxMGIuLjYyYTE3N2UgMTAwNjQ0Ci0tLSBh
L2NvbmZpZ3VyZS5hYworKysgYi9jb25maWd1cmUuYWMKQEAgLTMsMTEgKzMsMTAgQEAgZG5sIFBy
b2Nlc3MgdGhpcyBmaWxlIHdpdGggYXV0b2NvbmYgdG8gcHJvZHVjZSBhIGNvbmZpZ3VyZSBzY3Jp
cHQuCiBBQ19JTklUKG9wcm9maWxldWksIDAuMi4wKQogCiBBTV9JTklUX0FVVE9NQUtFKEFDX1BB
Q0tBR0VfTkFNRSwgQUNfUEFDS0FHRV9WRVJTSU9OKQotQU1fQ09ORklHX0hFQURFUihjb25maWcu
aCkKK0FDX0NPTkZJR19IRUFERVJTKGNvbmZpZy5oKQogCiBBQ19JU0NfUE9TSVgKIEFDX1BST0df
Q0MKLUFNX1BST0dfQ0NfU1REQwogQUNfSEVBREVSX1NUREMKIEFDX1BST0dfUkFOTElCCiBBQ19Q
Uk9HX0lOVExUT09MCi0tIAoxLjcuMTAuNAoK

--14dae9cdc48577e3fb04d53d808e--
