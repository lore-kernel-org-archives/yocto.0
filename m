Return-Path: <cazfi74@gmail.com>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 4892EE0034C
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 13:49:26 -0800 (PST)
Received: by mail-vb0-f52.google.com with SMTP id fa15so2593914vbb.39
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 13:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=lZ/SvKZF/QuzBCWHErO5G5XShVHi6MWeaAi3MNrvXyw=;
	b=RDS5Q9+USMBWNeQ9Sxy2j3oNdJiCaYlTY/tgTGqXymnvV6pWqua2iA8OfyGlEHutTr
	KzDV5A2Cf9hXUrRPWC+wbYLOO6tngNE5Ask/mbSq+YNjQ3qQUS4+J8AroKlVmpmAhfHQ
	ayKF/nz29AobqWKtXaE5fWYoz/uh3Q2FMh++sSCvkMIhJ4P5kcsiLJ5alXV3gYcmIN2x
	j1L1Z9+jrvexcJ0F6P7BOBvxiUtTMEEb42aPhHAGpe6PPkX2cW6L/ewb1tlSVC+It2g2
	L8CjYPZRLHWjJNSLtjRbw6HaIcAo/fFoJpjYp44a+z5TrLuOsJIKlCfE1PCI3WEEajmz
	EwMg==
MIME-Version: 1.0
X-Received: by 10.52.33.228 with SMTP id u4mr7693542vdi.4.1360360165200; Fri,
	08 Feb 2013 13:49:25 -0800 (PST)
Received: by 10.58.80.2 with HTTP; Fri, 8 Feb 2013 13:49:25 -0800 (PST)
In-Reply-To: <51156CA8.4080601@mlbassoc.com>
References: <1360357684-14259-1-git-send-email-cazfi74@gmail.com>
	<51156CA8.4080601@mlbassoc.com>
Date: Fri, 8 Feb 2013 23:49:25 +0200
Message-ID: <CAF6bG8cQYitDLGaura3GMNuEfAFBSE228tvYqr-b=yQNMB6YsA@mail.gmail.com>
From: Marko Lindqvist <cazfi74@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Fix gtk-sato-engine build with automake-1.13
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
X-List-Received-Date: Fri, 08 Feb 2013 21:49:26 -0000
X-Groupsio-MsgNum: 12022
Content-Type: multipart/mixed; boundary=20cf307d03c269d2d904d53d88ab

--20cf307d03c269d2d904d53d88ab
Content-Type: text/plain; charset=UTF-8

On 8 February 2013 23:22, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2013-02-08 14:08, Marko Lindqvist wrote:
>>
>> [PATCH] configure.ac: fix build with automake-1.13
>
> Patch seems to be missing

 This time inlining it to this email. Hope it makes through this way.


 - ML

--20cf307d03c269d2d904d53d88ab
Content-Type: application/octet-stream; 
	name="0001-configure.ac-fix-build-with-automake-1.13.patch"
Content-Disposition: attachment; 
	filename="0001-configure.ac-fix-build-with-automake-1.13.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hcxvakew0

RnJvbSAwZDUwNTc2OGZmYmZhZTljMzgzNTUzYzAxNjgwNWFiYTA2MzgxMzQ3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJrbyBMaW5kcXZpc3QgPGNhemZpNzRAZ21haWwuY29tPgpE
YXRlOiBGcmksIDggRmViIDIwMTMgMjM6MDM6MzEgKzAyMDAKU3ViamVjdDogW1BBVENIXSBjb25m
aWd1cmUuYWM6IGZpeCBidWlsZCB3aXRoIGF1dG9tYWtlLTEuMTMKClJlcGxhY2UgQU1fQ09ORklH
X0hFQURFUiByZW1vdmVkIGZyb20gYXV0b21ha2UtMS4xMyB3aXRoCkFDX0NPTkZJR19IRUFERVJT
LiBSZW1vdmUgQU1fUFJPR19DQ19TVERDIGNvbXBsZXRlbHkgYXMgdGhlcmUKaXMgYWxyZWFkeSBl
cXVpdmFsZW50IEFDX1BST0dfQ0MuCgpTaWduZWQtb2ZmLWJ5OiBNYXJrbyBMaW5kcXZpc3QgPGNh
emZpNzRAZ21haWwuY29tPgotLS0KIGNvbmZpZ3VyZS5hYyB8ICAgIDMgKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvY29uZmln
dXJlLmFjIGIvY29uZmlndXJlLmFjCmluZGV4IGNhOTJiODYuLmViMzhkZTIgMTAwNjQ0Ci0tLSBh
L2NvbmZpZ3VyZS5hYworKysgYi9jb25maWd1cmUuYWMKQEAgLTEsMTEgKzEsMTAgQEAKIEFDX0lO
SVQoW3NhdG8tZW5naW5lXSwgWzAuMy4xXSkKIEFDX0NPTkZJR19TUkNESVIoW1JFQURNRV0pCi1B
TV9DT05GSUdfSEVBREVSKGNvbmZpZy5oKQorQUNfQ09ORklHX0hFQURFUlMoY29uZmlnLmgpCiAK
IEFNX0lOSVRfQVVUT01BS0UKIAogQUNfUFJPR19DQwotQU1fUFJPR19DQ19TVERDCiBBQ19QUk9H
X0lOU1RBTEwKIEFDX1BST0dfTUFLRV9TRVQKIAotLSAKMS43LjEwLjQKCg==

--20cf307d03c269d2d904d53d88ab--
