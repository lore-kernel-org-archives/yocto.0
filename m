Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 852E6D0E6E1
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 10:21:17 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.40931.1729495556824610819
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 00:25:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WbeT0r71;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb599aac99so39786331fa.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 00:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729495553; x=1730100353; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GrBvDBGRacIZUT1yemDqi/fGGOkg3uIqRNZh4w0l5l0=;
        b=WbeT0r71yc66QjMk+xHQHXpCy/2iXgJpYzbkVsCbb1UOBAjjx8qkIJ2YTG3GqPL06i
         sqaY3fpJiMFtnxt3wvheIBPKEdUj+h9+XqGS7/R2fdm0/jObUgCKEQfTjYGVfXyRCXhQ
         WwkXHqGPgLqONfRJKFYELD5QFq0zpESp3Ic1dEFAjX1XgKcynUeDS1WXl4oD39bqQQLT
         q5je9IsJkcsW3pVtd41z3CBLttWPdcf3mc9rUOZiBOWfaMl93iaIqjb36o9C5yQalJuf
         3fwHGERDoLLW2KicRrAvfgJyGz75Nhn8/5xkf3l+SQOsSkZ4gEU+3TvsFgieKfKVm+tL
         UlLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729495553; x=1730100353;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GrBvDBGRacIZUT1yemDqi/fGGOkg3uIqRNZh4w0l5l0=;
        b=Qk3J1r90MOyCWS/Brut5MWdfVkFGZnzwP2WJJlr/KlTVIdaswdnyja6dLs3Lz8rK04
         Y8pWdQPbQUQL9BYLrKFl+8I1OXxOcxR+QjimI3SaS+APMIXYxHYJ1fOyMII+QBncEHQF
         XlA+iHVGx6tAKYNr4fUOxc5je211x62BPjNcAGwr2hp0Q8FqlzTkxDkcxyF0feA5jf0V
         OQ7eGwcL5TV9237jV2HHcXp6CFGzmDwXpQ8Dhs04nbmU3zR1OJONZeJicshQCxnHGoes
         5XLjdSTEiTR42jA/GZrDVypWvhEPQK3KpHPZTLr1HhcetNHF3lsuX+3NaphiRN7b1sxb
         rRoQ==
X-Gm-Message-State: AOJu0YyhmdUdVTfGYYH8Q4EV14wdGUYdY/ZDkaiWl+eFA/O8dOL830BB
	YzfY7SlMvgP6GybWJDacJV04S3/T3mte1qcLzirXs1Edl5ZSdQCb1E2WJ2i1h8AS78QCKvBKd5G
	e55RBhMbmCkJ2ZFWjnlwWnTtoj7THDz9+
X-Google-Smtp-Source: AGHT+IHUrEZoGVzftyjp6nJgUSWinMkbhHf1+wFVxcpUKQV3ep1qupFH8ggOGxbwJBsx4u4OACs9IZqzo6EcL63g8rs=
X-Received: by 2002:a2e:2a83:0:b0:2fb:3e01:b2bd with SMTP id
 38308e7fff4ca-2fb82eb3db2mr37094401fa.21.1729495552964; Mon, 21 Oct 2024
 00:25:52 -0700 (PDT)
MIME-Version: 1.0
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 21 Oct 2024 09:25:39 +0200
Message-ID: <CAGAf8Lya5tRX6CabEYHyMumvahpmd5AUBNERVz2sUyFaLcLUPg@mail.gmail.com>
Subject: ERROR: Nothing PROVIDES 'virtual/kernel'
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="00000000000013568b0624f7906a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 10:21:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64062

--00000000000013568b0624f7906a
Content-Type: text/plain; charset="UTF-8"

Hello Yocto Community Support Team,

I have an interesting problem to report.

Parsing recipes: 100%
|########################################################################|
Time: 0:02:30
Parsing of 2829 .bb files complete (0 cached, 2829 parsed). 4811
targets, 1885 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'quilt-native'
quilt-native was skipped: incompatible with machine beaglebone-yocto
(not in COMPATIBLE_MACHINE)
ERROR: Nothing PROVIDES 'patch-replacement-native'
patch-native PROVIDES patch-replacement-native but was skipped:
incompatible with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
ERROR: Nothing PROVIDES 'virtual/fakeroot-native'
pseudo-native PROVIDES virtual/fakeroot-native but was skipped:
incompatible with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
ERROR: Nothing PROVIDES 'virtual/kernel'
linux-mainline PROVIDES virtual/kernel but was skipped:
PREFERRED_PROVIDER_virtual/kernel set to meta-bbb, not linux-mainline
linux-stable PROVIDES virtual/kernel but was skipped:
PREFERRED_PROVIDER_virtual/kernel set to meta-bbb, not linux-stable
linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible
with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)

Then, many packages fail, since the relationships are incomplete!

Interestingly enough, this happens for the stable kernels'
definitions. For mainline kernels the local config does work, no such
issues!?

The local config is attached to the email or stable kernels.
Namely:

## Define kernel version
PREFERRED_PROVIDER_virtual/kernel ?= "meta-bbb"
PREFERRED_VERSION_meta-bbb ?= "6.11%"
PREFERRED_VERSION_meta-bbb-libc-headers="6.11%"
...
MACHINE ?= "beaglebone-yocto"
## MACHINE ?= "beaglebone"
DISTRO ??= "poky"

For mainline it looks like this:

## Define kernel version
PREFERRED_PROVIDER_virtual/kernel ?= "linux-mainline"
PREFERRED_VERSION_linux-mainline-libc-headers="6.11%"MACHINE ?=
"beaglebone-yocto"
PREFERRED_VERSION_linux-mainline ?= "6.11%"
...
MACHINE ?= "beaglebone-yocto"
## MACHINE ?= "beaglebone"
DISTRO ??= "poky"

Now, I override poky kernel definitions with meta-bbb repo:
https://github.com/ZoranStojsavljevic/meta-bbb/blob/styhead/conf/machine/beaglebone.conf

Both the latest mainline recipe:
https://github.com/ZoranStojsavljevic/meta-bbb/blob/styhead/recipes-kernel/linux/linux-mainline_6.11.bb

And the linux-stable:
https://github.com/ZoranStojsavljevic/meta-bbb/blob/styhead/recipes-kernel/linux/linux-stable_6.11.bb

Any clue what the problem might be?

Thank you,
Zee
_______

--00000000000013568b0624f7906a
Content-Type: text/plain; charset="US-ASCII"; name="local.conf"
Content-Disposition: attachment; filename="local.conf"
Content-Transfer-Encoding: base64
Content-ID: <f_m2ime3ue0>
X-Attachment-Id: f_m2ime3ue0

IyBCZWFnbGVCb25lIEJsYWNrCkNPTkZfVkVSU0lPTiA9ICIyIgpQQVRDSFJFU09MVkUgPSAibm9v
cCIKU1NUQVRFX0RJUiA/PSAiJHtUT1BESVJ9L3NzdGF0ZS1jYWNoZSIKRExfRElSID89ICIke1RP
UERJUn0vZG93bmxvYWRzIgpUTVBESVIgPz0gIiR7VE9QRElSfS90bXAiClBBQ0tBR0VfQ0xBU1NF
UyA/PSAicGFja2FnZV9ycG0gcGFja2FnZV9kZWIiCiMjIFNlbGVjdCBzeXN0ZW1kIGFzIGluaXQg
bWFuYWdlcgpJTklUX01BTkFHRVIgPz0gInN5c3RlbWQiCiMjIFBBQ0tBR0VDT05GSUdfYXBwZW5k
X3BuLXN5c3RlbWQgPSAiIG5ldHdvcmtkIgoKIyMgRGVmaW5lIGtlcm5lbCB2ZXJzaW9uClBSRUZF
UlJFRF9QUk9WSURFUl92aXJ0dWFsL2tlcm5lbCA/PSAibWV0YS1iYmIiClBSRUZFUlJFRF9WRVJT
SU9OX21ldGEtYmJiID89ICI2LjExJSIKUFJFRkVSUkVEX1ZFUlNJT05fbWV0YS1iYmItbGliYy1o
ZWFkZXJzPSI2LjExJSIKIyMgUFJFRkVSUkVEX1ZFUlNJT05fbWV0YS1iYmIgPz0gIjYuMTAuJSIK
IyMgUFJFRkVSUkVEX1BST1ZJREVSX3ZpcnR1YWwva2VybmVsID89ICJsaW51eC1tYWlubGluZSIK
IyMgUFJFRkVSUkVEX1ZFUlNJT05fbGludXgtbWFpbmxpbmUtbGliYy1oZWFkZXJzPSI2LjExJSIK
IyMgUFJFRkVSUkVEX1ZFUlNJT05fbGludXgtbWFpbmxpbmUgPz0gIjYuMTElIgoKIyMgbWFzayBm
b3Igbm9uLW1lbmRlciBidWlsZHMKQkJNQVNLID0gIm1ldGEtYmJiL3JlY2lwZXMtbWVuZGVyIgoK
IyMgVW5tYXNrIGNhbnV0aWxzIGluIG1ldGEtb3BlbmVtYmVkZGVkLyAob2UpIHNpbmNlIGl0IHdp
bGwgYmUgdHJhY2tlZCBieSBvZSEKIyMgQkJNQVNLICs9ICJtZXRhLW9wZW5lbWJlZGRlZC9tZXRh
LW9lL3JlY2lwZXMtZXh0ZW5kZWQvc29ja2V0Y2FuL2NhbnV0aWxzIgoKRVJST1JfUUE6cmVtb3Zl
OnBuLXUtYm9vdCA9ICJwYXRjaC1zdGF0dXMiCgojIyBtYXNrIGZvciBub24tbGlieGNyeXB0IGJ1
aWxkcyAodG9vIG1hbnkgZGVwZW5kZW5jaWVzKQojIyBCQk1BU0sgKz0gInBva3kvbWV0YS9yZWNp
cGVzLWNvcmUvbGlieGNyeXB0LyIKIyMgTGlzdHMgcGFja2FnZXMgdGhhdCBzaG91bGQgbm90IGJl
IGluc3RhbGxlZCBpbnRvIGFuIGltYWdlCiMjIFBBQ0tBR0VfRVhDTFVERTpwbi10YXJnZXRfaW1h
Z2UgPSAibGlieGNyeXB0IgojIyBJTUFHRV9JTlNUQUxMOnJlbW92ZSA9ICIgbGlieGNyeXB0Igoj
IyBQQUNLQUdFQ09ORklHOnJlbW92ZSA9ICIgbGlieGNyeXB0IgoKRVhUUkFfSU1BR0VfRkVBVFVS
RVMgPSAiZGVidWctdHdlYWtzIgojIyAiZGhjcCI6IG9ic29sZXRlLCBmdW5jdGlvbmFsbHkgcmVw
bGFjZWQgYnkgImRoY3BjZCIgYW5kICJrZWEiCiMjIENPUkVfSU1BR0VfRVhUUkFfSU5TVEFMTCAr
PSAiZGhjcC1saWJzIGRoY3Atc2VydmVyIGRoY3Atc2VydmVyLWNvbmZpZyBkaGNwLWNsaWVudCBk
aGNwLXJlbGF5IGRoY3Atb21zaGVsbCIKQ09SRV9JTUFHRV9FWFRSQV9JTlNUQUxMOmFwcGVuZCA9
ICJvcGVuc3NoIGNtYWtlIGxpYnNvY2tldGNhbiBuZnMtdXRpbHMgcnQtdGVzdHMgc3RyYWNlIHBy
b2NwcyBwYWNrYWdlZ3JvdXAtY29yZS1idWlsZGVzc2VudGlhbCAiCkRJU1RST19GRUFUVVJFUzph
cHBlbmQgPSAiIG5mcyBzeXN0ZW1kIgpJTUFHRV9GU1RZUEVTOmFwcGVuZCA9ICIgY3Bpby54eiIK
IyMgSU5IRVJJVCArPSAiZXh0cmF1c2VycyIKIyMgRVhUUkFfVVNFUlNfUEFSQU1TID0gInVzZXJt
b2QgLVAgcm9vdCByb290OyIKCk1BQ0hJTkUgPz0gImJlYWdsZWJvbmUteW9jdG8iCiMjIE1BQ0hJ
TkUgPz0gImJlYWdsZWJvbmUiCkRJU1RSTyA/Pz0gInBva3kiCkJCTVVMVElDT05GSUcgPz0gIiIK
CiMjIEJCX05VTUJFUl9USFJFQURTID0gIjEiCiMjIFBBUkFMTEVMX01BS0UgPSAiLWogMSIK

--00000000000013568b0624f7906a--

