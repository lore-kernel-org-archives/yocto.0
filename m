Return-Path: <prashantpurohit025@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE514E0076F; Tue, 10 Mar 2015 06:25:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prashantpurohit025[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C16E00750
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 06:24:58 -0700 (PDT)
Received: by pdjp10 with SMTP id p10so1676485pdj.10
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 06:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Ccnz9e1MXfnu3FWZBVdSI9qjfGN4rKImfNliEO2KVh4=;
	b=WSAfwtZKaFUQx+Y0AudO9HbMxn/fWAM+zCdsxPSo8fBZmbnhD/XOJJc97SJzM+AHoy
	02zoK61gH7bfFFXB0/7fh7gBdgfHm29klifVS/kZn7I5xIVcey+CUUFIYhtjmpqOTIh9
	sajsuAnSKFZYuGxZ/qgbFKC4dmxc4zNTB1XjplDB4Jb59/R6oPrSpGaym+/eB9dZ+hRk
	1VxCXlOsAyCMxrtJ1liHpjEU272a85J15cAjW3wGMGrnnk7ZAs4wRvK7nHXqipw6kDFx
	I0McsB5YLN71gsZQlGFyne4nHBvRd6la9KBqlWkvZzGHpIKlFMKHxVdMBvoyX3moY79Q
	OP7w==
MIME-Version: 1.0
X-Received: by 10.67.7.135 with SMTP id dc7mr66983738pad.140.1425993897975;
	Tue, 10 Mar 2015 06:24:57 -0700 (PDT)
Received: by 10.70.85.36 with HTTP; Tue, 10 Mar 2015 06:24:57 -0700 (PDT)
Date: Tue, 10 Mar 2015 18:54:57 +0530
Message-ID: <CACmjmcxNjHE0t+Qe23_z8y3kAa1gg4sgGd-g2qGLN+_6f9uuAg@mail.gmail.com>
From: Prashant Purohit <prashantpurohit025@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 10 Mar 2015 08:04:10 -0700
Subject: : Kernel panic issue for 'armv7athf-neon' target variant.
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
X-List-Received-Date: Tue, 10 Mar 2015 13:25:01 -0000
X-Groupsio-MsgNum: 23941
Content-Type: multipart/mixed; boundary=001a1133c5a0beecf50510ef1353

--001a1133c5a0beecf50510ef1353
Content-Type: multipart/alternative; boundary=001a1133c5a0beecf00510ef1351

--001a1133c5a0beecf00510ef1351
Content-Type: text/plain; charset=UTF-8

Hi,

I am trying to boot kernel image for 'armv7athf-neon' using QEMU.

To do the same, I have included the 'tune-arma7.inc'
(/meta/conf/machine/include/arm/arch-armv7a.inc) and configured DEFAULTTUNE
variable to 'armv7athf-neon'.
I am successful in building the kernel image and QEMU for this variant but
when I try to boot the image using runqemu, I am getting kernel panic error.

The log for the same is attached with this mail.
Has anyone faced the same issue previously or has any inputs for it?

Regards,
Prashant

--001a1133c5a0beecf00510ef1351
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi,<br><br></div>I am t=
rying to boot kernel image for &#39;armv7athf-neon&#39; using QEMU.<br><br>=
</div>To do the same, I have included the &#39;tune-arma7.inc&#39; (/meta/c=
onf/machine/include/arm/arch-armv7a.inc) and configured DEFAULTTUNE variabl=
e to &#39;armv7athf-neon&#39;.<br></div>I am successful in building the ker=
nel image and QEMU for this variant but when I try to boot the image using =
runqemu, I am getting kernel panic error.<br><br></div>The log for the same=
 is attached with this mail.<br></div><div>Has anyone faced the same issue =
previously or has any inputs for it?<br></div><br></div>Regards,<br></div>P=
rashant<br></div>

--001a1133c5a0beecf00510ef1351--

--001a1133c5a0beecf50510ef1353
Content-Type: text/x-log; charset=US-ASCII; name="error.log"
Content-Disposition: attachment; filename="error.log"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i73bu6uy0

RnJlZWluZyB1bnVzZWQga2VybmVsIG1lbW9yeTogMzMySyAoYzA3ODUwMDAgLSBjMDdkODAwMCkK
Cktlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBBdHRlbXB0ZWQgdG8ga2lsbCBpbml0ISBleGl0
Y29kZT0weDAwMDAwMDA0CgogCgpDUFU6IDAgUElEOiAxIENvbW06IGluaXQgTm90IHRhaW50ZWQg
My4xNC4yOWx0c2kteW9jdG8tc3RhbmRhcmQgIzEKCkJhY2t0cmFjZToKCls8YzAwMTFhNmM+XSAo
ZHVtcF9iYWNrdHJhY2UpIGZyb20gWzxjMDAxMWNjYz5dIChzaG93X3N0YWNrKzB4MjAvMHgyNCkK
CnI2OmM3ODcwMDAwIHI1OmMwODM0YWU4IHI0OmM3ODcwMDAwCgpbPGMwMDExY2FjPl0gKHNob3df
c3RhY2spIGZyb20gWzxjMDVhMDBmMD5dIChkdW1wX3N0YWNrKzB4MjAvMHgyOCkKCls8YzA1YTAw
ZDA+XSAoZHVtcF9zdGFjaykgZnJvbSBbPGMwNTljNGZjPl0gKHBhbmljKzB4OGMvMHgxZDQpCgpb
PGMwNTljNDc0Pl0gKHBhbmljKSBmcm9tIFs8YzAwMWVlNjQ+XSAoZG9fZXhpdCsweDQ0Yy8weDg1
MCkKCnIzOmM3ODc4MDAwIHIyOmM3ODcwMDAwIHIxOjAwMDAwMDA0IHIwOmMwNmYwNjQ1CgpyNzow
MDAwMDAwMQoKWzxjMDAxZWExOD5dIChkb19leGl0KSBmcm9tIFs8YzAwMWYzMTA+XSAoZG9fZ3Jv
dXBfZXhpdCsweDVjLzB4YmMpCgpyNzpjNzg2ZTAxOAoKWzxjMDAxZjJiND5dIChkb19ncm91cF9l
eGl0KSBmcm9tIFs8YzAwMmJlNGM+XSAoZ2V0X3NpZ25hbF90b19kZWxpdmVyKzB4NGM0LzB4NTE4
KQoKcjQ6MDAwMDAwMDQKCls8YzAwMmI5ODg+XSAoZ2V0X3NpZ25hbF90b19kZWxpdmVyKSBmcm9t
IFs8YzAwMTEwMzg+XSAoZG9fc2lnbmFsKzB4YzQvMHgzZGMpCgpyMTA6Yzc4NmUwMDAgcjk6MDAw
MDAwMDAgcjg6Yzc4NmUwMTAgcjc6MDAwMDAwMDAgcjY6MDAwMDAwMDAgcjU6Yzc4NmZmYjAKCnI0
OjAwMDAwMDAwCgpbPGMwMDEwZjc0Pl0gKGRvX3NpZ25hbCkgZnJvbSBbPGMwMDExNGQwPl0gKGRv
X3dvcmtfcGVuZGluZysweDZjLzB4ZjgpCgpyMTA6Yzc4NmUwMDAgcjk6Yzc4NmUwMDAgcjg6MDAw
MDAwMDAgcjc6MDAwMDAwMDAgcjY6Yzc4NmZmYjAgcjU6Yzc4NmUwMDAKCnI0OjAwMDAwMDAwCgpb
PGMwMDExNDY0Pl0gKGRvX3dvcmtfcGVuZGluZykgZnJvbSBbPGMwMDBlMzdjPl0gKHdvcmtfcGVu
ZGluZysweGMvMHgyMCkKCnI2OmZmZmZmZmZmIHI1OjIwMDAwMDEwIHI0OmI2ZmJhZTQwCg==

--001a1133c5a0beecf50510ef1353--
