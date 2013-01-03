Return-Path: <ronan@fridu.net>
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA9FEE006D2
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 04:48:16 -0800 (PST)
Received: by mail-qc0-f173.google.com with SMTP id b12so7908022qca.18
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2013 04:48:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=d0WrNbjcN3cKttm5VeLPNPdf7kcnpa5IFqo9wtaHufk=;
	b=muJGPWi7xdT9eCLydXJ8dooVopICI4kUwO2xYZ/+ngCMozfxN2bx+SemTwvCvSfcX2
	N7IFY3Zln10b6bcFuOThvWoXCx2aZbTMWB7WBRgCBBYK3vX8N3vAjqBLUdTGaBhneszI
	jsMWSDRSRVpkHAopxBV52pk/19Er5dNZJL3QGvwzzEfjusGLHEc4QvrP8Mhx/1vGt/J9
	VF+6cILv8Uy7c4IxTm5UgZYBSGhqU8P1X/JmHYfbofw60O23woCQ5W8IATE0X6ehs7mR
	b7OMqWgkfg5tZ2LQdZf8w35C/k/G0BBGcuyAIvT4M36Zx0RoMMxHTh/alDzRy2CGOSq8
	Yg4g==
MIME-Version: 1.0
Received: by 10.49.130.167 with SMTP id of7mr32387399qeb.22.1357217295657;
	Thu, 03 Jan 2013 04:48:15 -0800 (PST)
Received: by 10.49.58.194 with HTTP; Thu, 3 Jan 2013 04:48:15 -0800 (PST)
Date: Thu, 3 Jan 2013 13:48:15 +0100
Message-ID: <CAEmu=9FBbN0x+iTj07Wz1qb2Xht8wi-CMr_s5GojtoW3b3VCpA@mail.gmail.com>
From: Ronan Le Martret <ronan@fridu.net>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQk7I/wsE26tHKgR7rUTinJ/zobbtWOQ2ytGQV76E7A2ZuOYiNK83NSIjkfL/BsSVDi85979
X-Mailman-Approved-At: Fri, 04 Jan 2013 09:33:47 -0800
Subject: cairo failed on openSUSE
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
X-List-Received-Date: Thu, 03 Jan 2013 12:48:17 -0000
X-Groupsio-MsgNum: 11356
Content-Type: multipart/mixed; boundary=047d7bdc1a86ca6b6004d261c63b

--047d7bdc1a86ca6b6004d261c63b
Content-Type: text/plain; charset=ISO-8859-1

- add libpng version 15 to configure.ac of cairo. (libpng12 confict.)

-- 
Ronan Le Martret
Intel Open Source Technology Center

--047d7bdc1a86ca6b6004d261c63b
Content-Type: application/octet-stream; name="bug_cairo_png_version.patch"
Content-Disposition: attachment; filename="bug_cairo_png_version.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hbhqkpzo0

ZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1ncmFwaGljcy9jYWlyby9jYWlyb18xLjEyLjguYmIg
Yi9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MvY2Fpcm8vY2Fpcm9fMS4xMi44LmJiCmluZGV4IDA1ODg1
NGMuLjhjZjkzZjkgMTAwNjQ0Ci0tLSBhL21ldGEvcmVjaXBlcy1ncmFwaGljcy9jYWlyby9jYWly
b18xLjEyLjguYmIKKysrIGIvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL2NhaXJvL2NhaXJvXzEuMTIu
OC5iYgpAQCAtNCw3ICs0LDkgQEAgTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vQ09QWUlORztt
ZDU9ZTczZTk5OWUwYzcyYjVhYzkwMTI0MjRmYTE1N2FkNzciCiAKIFBSID0gInIwIgogCi1TUkNf
VVJJID0gImh0dHA6Ly9jYWlyb2dyYXBoaWNzLm9yZy9yZWxlYXNlcy9jYWlyby0ke1BWfS50YXIu
eHoiCitTUkNfVVJJID0gImh0dHA6Ly9jYWlyb2dyYXBoaWNzLm9yZy9yZWxlYXNlcy9jYWlyby0k
e1BWfS50YXIueHogXAorICAgICAgICAgICBmaWxlOi8vbGlicG5nX2FkZHZlcnNpb24ucGF0Y2gg
XAorICAgICAgICAgICIKIAogU1JDX1VSSVttZDVzdW1dID0gIjhiM2RjYWRlODU5YzQ0ZmI3ZTU2
ZmM2OGVkZmU5YTQ1IgogU1JDX1VSSVtzaGEyNTZzdW1dID0gIjhmYmI2ZmM2NjExN2FiNDEwMGJh
ZDgzMGNiNDQ3OTQ5N2U1M2M2ZjNmYWNiOThiZjA1YzhkMjk4NTU0ZWJkZDkiCmRpZmYgLS1naXQg
YS9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MvY2Fpcm8vZmlsZXMvbGlicG5nX2FkZHZlcnNpb24ucGF0
Y2ggYi9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MvY2Fpcm8vZmlsZXMvbGlicG5nX2FkZHZlcnNpb24u
cGF0Y2gKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uMGY0MGZiMwotLS0gL2Rl
di9udWxsCisrKyBiL21ldGEvcmVjaXBlcy1ncmFwaGljcy9jYWlyby9maWxlcy9saWJwbmdfYWRk
dmVyc2lvbi5wYXRjaApAQCAtMCwwICsxLDEzIEBACitkaWZmIC0tZ2l0IGEvY29uZmlndXJlLmFj
IGIvY29uZmlndXJlLmFjCitpbmRleCBmNTIzMjg0Li4yMjM1YzE2IDEwMDY0NAorLS0tIGEvY29u
ZmlndXJlLmFjCisrKysgYi9jb25maWd1cmUuYWMKK0BAIC0zMDgsNyArMzA4LDcgQEAgQ0FJUk9f
RU5BQkxFX0ZVTkNUSU9OUyhwbmcsIFBORywgeWVzLCBbCisgICBBQ19BUkdfVkFSKFtwbmdfUkVR
VUlSRVNdLCBbbW9kdWxlIG5hbWUgZm9yIGxpYnBuZyB0byBzZWFyY2ggZm9yIHVzaW5nIHBrZy1j
b25maWddKQorICAgaWYgdGVzdCAieCRwbmdfUkVRVUlSRVMiID0geDsgdGhlbgorICAgICAjIGxp
YnBuZzEzIGlzIEdudVdpbjMyJ3MgbGlicG5nLTEuMi44IDotKAorLSAgICBmb3IgbCBpbiBsaWJw
bmcgbGlicG5nMTQgbGlicG5nMTIgbGlicG5nMTMgbGlicG5nMTA7IGRvCisrICAgIGZvciBsIGlu
IGxpYnBuZyBsaWJwbmcxNSBsaWJwbmcxNCBsaWJwbmcxMiBsaWJwbmcxMyBsaWJwbmcxMDsgZG8K
KyAgICAgICBpZiAkUEtHX0NPTkZJRyAtLWV4aXN0cyAkbCA7IHRoZW4KKyAgICAgICAgIHBuZ19S
RVFVSVJFUz0kbAorICAgICAgICAgdXNlX3BuZz15ZXMK

--047d7bdc1a86ca6b6004d261c63b--
