Return-Path: <gruntblue@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F5B6E00B1B; Fri, 12 Apr 2019 06:19:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gruntblue[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
	[209.85.217.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45FBEE00A54
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:19:16 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id d8so5513229vsp.2
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=l3RPr9Ctb6GRwXwPgWQrzhmfFqFyyk5hvVK3wfnlt/c=;
	b=iUcdRPjMMMpRayQIsf/CshLKyti85n0B08j9HKW82KHEE7LeWof5zK3DXSTB4wQD1D
	bQvWPCxTE13ahkzu91hWktotogV4CvI+tXbNyylimSLU3/wfzYUYunWjT97xyu+LTQBH
	iTSxAMbTiiea6H/y6BCE1kw/W6z3cF1et4C0fKPnACK0nZMawOognt7PkdLSCnHfKiop
	tezOXbrq7JDu8ca8patIDYLpGHIf7Ztt6FYRxNjnfmK0GScWTi9WO1uX6XCRo/affT+d
	nYGddH4P/fAJ6aKrEALLY/zWQsJqJu9h7P94eyUR0b/BmpJmy+zROmxmop3RCAzZONYy
	S02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=l3RPr9Ctb6GRwXwPgWQrzhmfFqFyyk5hvVK3wfnlt/c=;
	b=WveDgJXzRCoiKBgyoIA2/ARzfKjrYIhO/MUgeBkdoVeJiXLTafw3ecVbIAABA9qUgw
	k/ADwes8mWNV5WKo2xnrYI6R5UngskVsOEVn2A9DK6hec+YayXaB8CoOCXTYn+qSc1/f
	gA4omyZC8NB4JlLtfGCDeycCObIx0tcWOxMnr3TeZiVUIZoY0dBJxjOdLKKeK3qJdBlI
	hxjX4bfv/N67YBtBt8AK33ip8xqF80sDwbtVICgzLLgVsaJyChOK686NSODLvEcthyE4
	R7cbC3oiKVyKcx042FMXCrmpGiJ5NjBSsPiVXWEsv9MIKZfcfRZ3s3LprCOgwhqn97nA
	xKjw==
X-Gm-Message-State: APjAAAV4qpCwPQdwWLzgjofWjaDMJ4sKpmkKWQ2mswp8nXyCoZEVDsTo
	hvhRdiE5gJTgZVr2jgNxvxaVupzkypt4C1hbwXm74QY6
X-Google-Smtp-Source: APXvYqz8NMKUH7hKEB+do1sqecdK6DAt7bQ4ifFfF3Z7tvNWXzdhi9msOUUG6Vtk/32EuPZRiMAqHeGi3vAkrS/+ZWU=
X-Received: by 2002:a67:b44c:: with SMTP id c12mr21120671vsm.169.1555075155412;
	Fri, 12 Apr 2019 06:19:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:7025:0:0:0:0:0 with HTTP; Fri, 12 Apr 2019 06:19:14
	-0700 (PDT)
From: Eric Grunt <gruntblue@gmail.com>
Date: Fri, 12 Apr 2019 20:19:14 +0700
Message-ID: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Dependencies on other file system types for custom file system type
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
X-List-Received-Date: Fri, 12 Apr 2019 13:19:17 -0000
X-Groupsio-MsgNum: 44784
Content-Type: multipart/mixed; boundary="0000000000003ce3b505865526e2"

--0000000000003ce3b505865526e2
Content-Type: text/plain; charset="UTF-8"

Dependencies on other file system types for custom file system type

I'd like to add a custom fs type - a squashfs-xz on an ubi (instead of ubifs).
For this purpose I created a new class, inherited image_types and added
a dependency on squashfs-xz and also on squashfs-tools-native and
mtd-utils-native:

inherit image_types

IMAGE_TYPEDEP_squashfs-xz-ubi = "squashfs-xz"

do_image_squashfs-xz-ubi[depends] += "mtd-utils-native:do_populate_sysroot"
do_image_squashfs-xz-ubi[depends] += "squashfs-tools-native:do_populate_sysroot"

(full class file is attached to this mail)

But the dependency handling is not working corrently in my solution:

1. If I modify the class file inheriting image_types only (and nothing
else in the rootfs),
   the squashfs-xz is not created and thus not found.
   As a workaround, I have to call ${IMAGE_CMD_squashfs-xz} manually.

2. A symlink to the squashfs-xz image file in tmp/deploy/images/.../
   is created, no matter, if I add it to IMAGE_FSTYPES or not.
  (In comparison, if I remove ubifs, the symlink to the ubifs image
  is not created (but the ubifs image is created anyway))

    So do I need to change the way how I handle dependencies to squashfs-xz?


Thank you,

Eric

--0000000000003ce3b505865526e2
Content-Type: application/octet-stream; name="squashfs-xz-ubi.bbclass"
Content-Disposition: attachment; filename="squashfs-xz-ubi.bbclass"
Content-Transfer-Encoding: base64
X-Attachment-Id: file0

aW5oZXJpdCBpbWFnZV90eXBlcwoKSU1BR0VfVFlQRURFUF9zcXVhc2hmcy14ei11YmkgPSAic3F1
YXNoZnMteHoiCgpkb19pbWFnZV9zcXVhc2hmcy14ei11YmlbZGVwZW5kc10gKz0gIm10ZC11dGls
cy1uYXRpdmU6ZG9fcG9wdWxhdGVfc3lzcm9vdCIKZG9faW1hZ2Vfc3F1YXNoZnMteHotdWJpW2Rl
cGVuZHNdICs9ICJzcXVhc2hmcy10b29scy1uYXRpdmU6ZG9fcG9wdWxhdGVfc3lzcm9vdCIKCklN
QUdFX0NNRF9zcXVhc2hmcy14ei11YmkgKCkgewoJc3F1YXNoZnN1YmlfbWtmcyAiJHtNS1VCSUZT
X0FSR1N9IiAiJHtVQklOSVpFX0FSR1N9Igp9CgpzcXVhc2hmc3ViaV9ta2ZzKCkgewoJbG9jYWwg
bWt1Ymlmc19hcmdzPSIkMSIKCWxvY2FsIHViaW5pemVfYXJncz0iJDIiCglDRkdfTkFNRT11Ymlu
aXplLSR7SU1BR0VfTkFNRX0tc3F1YXNoZnMteHotdWJpLmNmZwogICAgCiAgICAgICAgIyBBZGRl
ZCBwcm9tcHQgZXJyb3IgbWVzc2FnZSBmb3IgdWJpIGFuZCB1YmlmcyBpbWFnZSBjcmVhdGlvbi4K
ICAgICAgICBpZiBbIC16ICIkbWt1Ymlmc19hcmdzIl0gfHwgWyAteiAiJHViaW5pemVfYXJncyIg
XTsgdGhlbgogICAgICAgICAgICBiYmZhdGFsICJNS1VCSUZTX0FSR1MgYW5kIFVCSU5JWkVfQVJH
UyBoYXZlIHRvIGJlIHNldCwgc2VlIGh0dHA6Ly93d3cubGludXgtbXRkLmluZnJhZGVhZC5vcmcv
ZmFxL3ViaWZzLmh0bWwgZm9yIGRldGFpbHMiCiAgICAgICAgZmkKICAgIAoJZWNobyBcW3ViaWZz
XF0gPiAke0NGR19OQU1FfQoJZWNobyBtb2RlPXViaSA+PiAke0NGR19OQU1FfQoJZWNobyBpbWFn
ZT0ke0lNR0RFUExPWURJUn0vJHtJTUFHRV9OQU1FfSR7SU1BR0VfTkFNRV9TVUZGSVh9LnNxdWFz
aGZzLXh6ID4+ICR7Q0ZHX05BTUV9CgllY2hvIHZvbF9pZD0wID4+ICR7Q0ZHX05BTUV9CgllY2hv
IHZvbF90eXBlPWR5bmFtaWMgPj4gJHtDRkdfTkFNRX0KCWVjaG8gdm9sX25hbWU9JHtVQklfVk9M
TkFNRX0gPj4gJHtDRkdfTkFNRX0KCWVjaG8gdm9sX2ZsYWdzPWF1dG9yZXNpemUgPj4gJHtDRkdf
TkFNRX0KCSMgbm9ybWFsbHkgd2Ugc2hvdWxkbid0IG5lZWQgdG8gY3JlYXRlIHRoZSBzcXVhc2hm
cyBpbWFnZSBvdXJzZWx2ZXMsCgkjIGJlY2F1c2Ugd2UgaGF2ZSBhIGRlcGVuZGVuY3kgZGVjbGFy
ZWQgKElNQUdFX1RZUEVERVApCgkjIEJ1dCwgaWYgdGhpcyBmaWxlIGlzIG1vZGlmaWVkLCB0aGUg
ZGVwZW5kZW5jeSBpcyBfbm90XyByZWJ1aWxkLCBzbyB3ZSBoYXZlIHRvIGRvIHRoaXMgb3Vyc2Vs
dmVzLgoJaWYgWyAhIC1lICR7SU1HREVQTE9ZRElSfS8ke0lNQUdFX05BTUV9JHtJTUFHRV9OQU1F
X1NVRkZJWH0uc3F1YXNoZnMteHogXQoJdGhlbgoJCWJid2FybiAiJHtJTUdERVBMT1lESVJ9LyR7
SU1BR0VfTkFNRX0ke0lNQUdFX05BTUVfU1VGRklYfS5zcXVhc2hmcy14eiBkb2VzIG5vdCBleGlz
dC4gQ3JlYXRpbmcuIgoJCSR7SU1BR0VfQ01EX3NxdWFzaGZzLXh6fQoJZmkKCXViaW5pemUgLW8g
JHtJTUdERVBMT1lESVJ9LyR7SU1BR0VfTkFNRX0ke0lNQUdFX05BTUVfU1VGRklYfS5zcXVhc2hm
cy14ei11YmkgJHt1YmluaXplX2FyZ3N9ICR7Q0ZHX05BTUV9CgoJIyBDbGVhbnVwIGNmZyBmaWxl
CgltdiAke0NGR19OQU1FfSAke0lNR0RFUExPWURJUn0vCn0KCg==

--0000000000003ce3b505865526e2--
