Return-Path: <vipin.v@calixto.co.in>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 822BFC7EE24
	for <webhook@archiver.kernel.org>; Sat,  3 Jun 2023 10:29:44 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.9258.1685788180297123025
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Jun 2023 03:29:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@calixto-co-in.20221208.gappssmtp.com header.s=20221208 header.b=UOMElWYB;
 spf=softfail (domain: calixto.co.in, ip: 209.85.128.169, mailfrom: vipin.v@calixto.co.in)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-565cdb77b01so29630447b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 03 Jun 2023 03:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=calixto-co-in.20221208.gappssmtp.com; s=20221208; t=1685788179; x=1688380179;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DhqvbN/StbTMtTtZAKUnr8ayUuLOqu8xg1CsbgNapM0=;
        b=UOMElWYBlOtIphEqc9IJW50b7IB0P4x4q8vD+dKFElM2++sUo39owyrl3Dh/zMBPnD
         qKET8a92uJkusD15T4EabEaAe8FsrVo4NL0m67cQ2DNr09ptIi3yisYtbM3jzwihUPSm
         CdVdUjuFkPqLRrF832cC2mDMBgfto5nRYdiscIPZl69jWLeVqF8lVtiAX65mrmvXSE1h
         PXYwFo/92iAeQX9txxqcGA/eEEhReqvIBf7dLR2jgYX9ZRlO8mMaBRkYF+HQLFG4DtU4
         up9ImK8FPOB1Mw7My8Mr3Sr41JGGLBGWoN42VyiyrajVqXihMVOJvF8vDznMpY6y2zsI
         ZA7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685788179; x=1688380179;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DhqvbN/StbTMtTtZAKUnr8ayUuLOqu8xg1CsbgNapM0=;
        b=VwNc4dTRJbgEM53DfePV8ivvGlx2W/J/WeGHwNjHVVAH0+24Vx3yCeRJvHiVazTI3s
         chc4WHtQSp0CPjFu9RnSV25UHdFLxPhT6T4tEfxdjwLSrkeHuIJrfNZ/zI73wNPhLQ09
         xGDPk/lWdFVIUFedQiC1mdlftEUIrXqCVmJqCr6+YNjpJ0SiT+XYa2KumZyY6i1skBIH
         +PvBKHtle84CcB6b0I7Mpbf5UPqy9E3wLfiMeMZCyGIgO6+2/8WM/M/lrA00/ygeqCaI
         fPFhRVfaAQ130EXl2DhjfRW+Q+einHTdnoacY1rarBFXkfaLsTLAEKbgguooHp/DnJtL
         G5Lw==
X-Gm-Message-State: AC+VfDzYKrrSEWkv9arEtgKjveS1WlQ/N9+y06NGkYre0AlC+MGvgE57
	KLqEM9tgdL0FItIaItGBeQB3uBuUSVPNL/3A1lrn2qAF2//IQpU6wYg=
X-Google-Smtp-Source: ACHHUZ7GICETFfFlSEnSNzBiDQam6fmHnfh1YkLABgEhdsYvuf+m6INiwY2eEMQigZrIiwLqzzv7Czu6wt5KPVfFHb8=
X-Received: by 2002:a81:9c14:0:b0:559:e235:5f65 with SMTP id
 m20-20020a819c14000000b00559e2355f65mr2650368ywa.37.1685788178940; Sat, 03
 Jun 2023 03:29:38 -0700 (PDT)
MIME-Version: 1.0
From: Vipin Vijayan <vipin.v@calixto.co.in>
Date: Sat, 3 Jun 2023 15:59:25 +0530
Message-ID: <CAPDLeY0fo=4OQYXRnmK1rcqO_QMEWhLEEx6_exUHnRMH7mjsTg@mail.gmail.com>
Subject: libubootenv setup
To: yocto@lists.yoctoproject.org
Content-Type: multipart/mixed; boundary="00000000000093ed8d05fd3725e9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Jun 2023 10:29:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60168

--00000000000093ed8d05fd3725e9
Content-Type: multipart/alternative; boundary="00000000000093ed8c05fd3725e7"

--00000000000093ed8c05fd3725e7
Content-Type: text/plain; charset="UTF-8"

Hi,
I am working on our custom board with dunfell version and we are using a
custom u-boot for the board. But when i try to use fw_printenv and
fw_setenv iam not being able to access those functionalities. Iam using
libubootenv for those specific functionalities .

iam adding libubootenv-bin in image_install and iam getting the fw_printenv
and fw_setenv in the /usr/bin folder

But when i use fw_printenv and fw_setenv iam getting an error,
Can't read from default
Can't read from file.

We are storing the environment variables in the spi flash /dev/mtd3

When i try hexdump i can find the variables present
But iam not being able to access it with fw_printenv and fw_setenv any
variable using fw_setenv

I should mention that fw_env.config is perfect and does not have any error
in it, because when we try to access those variables using another
fw_printenv, which we got from executing make in the git source , we are
getting the variables printed.

Also during build of the u-boot we are using a patch file which we got from
internet for its build succession, I dont know whether that patch
interferes with anything that hinders its function.

Iam attaching my fw_env.config and also the patch file i used for u-boot
along with this

As iam a beginner in this field, Iam not much aware of these
functionalities in detail. Please look in to the issue and any helps are
appreciated.

Regards,
*Vipin*

--00000000000093ed8c05fd3725e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><div>I am working on our custom board with dunfell=
 version and we are using a custom u-boot for the board. But when i try to =
use fw_printenv and fw_setenv iam not being able to access those functional=
ities. Iam using libubootenv=C2=A0for those specific functionalities .=C2=
=A0</div><div><br></div><div>iam adding libubootenv-bin in image_install an=
d iam getting the fw_printenv and fw_setenv in the /usr/bin folder</div><di=
v><br></div><div>But when i use fw_printenv and fw_setenv iam getting an er=
ror,</div><div>Can&#39;t read from default=C2=A0</div><div>Can&#39;t read f=
rom file.</div><div><br></div><div>We are storing the environment=C2=A0vari=
ables in the spi flash /dev/mtd3</div><div><br></div><div>When i try hexdum=
p i can find the variables present=C2=A0</div><div>But iam not being able t=
o access it with fw_printenv and fw_setenv any variable using fw_setenv</di=
v><div><br></div><div>I should mention that fw_env.config is perfect and do=
es not have any error in it, because when we try to access those variables =
using another fw_printenv, which we got from executing make in the git sour=
ce , we are getting the variables printed.</div><div><br></div><div>Also du=
ring build of the u-boot we are using a patch file which we got from intern=
et for its build succession, I dont=C2=A0know whether that patch interferes=
 with anything that hinders its function.</div><div><br></div><div>Iam atta=
ching my fw_env.config and also the patch file i used for u-boot along with=
 this</div><div><br></div><div>As iam a beginner in this field, Iam not muc=
h aware of these functionalities in detail. Please look in to the issue and=
 any helps are appreciated.</div><div><br></div><div><div><div dir=3D"ltr" =
class=3D"gmail_signature"><div dir=3D"ltr"><div>Regards,</div><div><b><font=
 color=3D"#674ea7">Vipin</font></b></div></div></div></div></div></div></di=
v>

--00000000000093ed8c05fd3725e7--

--00000000000093ed8d05fd3725e9
Content-Type: application/xml; name="fw_env.config"
Content-Disposition: attachment; filename="fw_env.config"
Content-Transfer-Encoding: base64
Content-ID: <f_lifuqu950>
X-Attachment-Id: f_lifuqu950

IyBDb25maWd1cmF0aW9uIGZpbGUgZm9yIGZ3XyhwcmludGVudi9zZXRlbnYpIHV0aWxpdHkuCiMg
VXAgdG8gdHdvIGVudHJpZXMgYXJlIHZhbGlkLCBpbiB0aGlzIGNhc2UgdGhlIHJlZHVuZGFudAoj
IGVudmlyb25tZW50IHNlY3RvciBpcyBhc3N1bWVkIHByZXNlbnQuCiMgTm90aWNlLCB0aGF0IHRo
ZSAiTnVtYmVyIG9mIHNlY3RvcnMiIGlzIG5vdCByZXF1aXJlZCBvbiBOT1IgYW5kIFNQSS1kYXRh
Zmxhc2guCiMgRnV0aGVybW9yZSwgaWYgdGhlIEZsYXNoIHNlY3RvciBzaXplIGlzIG9taXR0ZWQs
IHRoaXMgdmFsdWUgaXMgYXNzdW1lZCB0bwojIGJlIHRoZSBzYW1lIGFzIHRoZSBFbnZpcm9ubWVu
dCBzaXplLCB3aGljaCBpcyB2YWxpZCBmb3IgTk9SIGFuZCBTUEktZGF0YWZsYXNoCiMgRGV2aWNl
IG9mZnNldCBtdXN0IGJlIHByZWZpeGVkIHdpdGggMHggdG8gYmUgcGFyc2VkIGFzIGEgaGV4YWRl
Y2ltYWwgdmFsdWUuCgojIE5PUiBleGFtcGxlCiMgTVREIGRldmljZSBuYW1lCURldmljZSBvZmZz
ZXQJRW52LiBzaXplCUZsYXNoIHNlY3RvciBzaXplCU51bWJlciBvZiBzZWN0b3JzCiMvZGV2L210
ZDEJCTB4MDAwMAkJMHg0MDAwCQkweDQwMDAKIy9kZXYvbXRkMgkJMHgwMDAwCQkweDQwMDAJCTB4
NDAwMAoKIyBNVEQgU1BJLWRhdGFmbGFzaCBleGFtcGxlCiMgTVREIGRldmljZSBuYW1lCURldmlj
ZSBvZmZzZXQJRW52LiBzaXplCUZsYXNoIHNlY3RvciBzaXplCU51bWJlciBvZiBzZWN0b3JzCi9k
ZXYvbXRkMgkJMHgwQTAwMDAgICAgICAgIDB4MDEwMDAwCi9kZXYvbXRkMwkJMHgwQjAwMDAgICAg
ICAgIDB4MDEwMDAwCgojIE5BTkQgZXhhbXBsZQojL2Rldi9tdGQwCQkweDQwMDAJCTB4NDAwMAkJ
MHgyMDAwMAkJCTIKCiMgT24gYSBibG9jayBkZXZpY2UgYSBuZWdhdGl2ZSBvZmZzZXQgaXMgdHJl
YXRlZCBhcyBhIGJhY2t3YXJkcyBvZmZzZXQgZnJvbSB0aGUKIyBlbmQgb2YgdGhlIGRldmljZS9w
YXJ0aXRpb24sIHJhdGhlciB0aGFuIGEgZm9yd2FyZHMgb2Zmc2V0IGZyb20gdGhlIHN0YXJ0LgoK
IyBCbG9jayBkZXZpY2UgZXhhbXBsZQojL2Rldi9tbWNibGswCQkweGMwMDAwCQkweDIwMDAwCiMv
ZGV2L21tY2JsazAJCS0weDIwMDAwCTB4MjAwMDAKCiMgVkZBVCBleGFtcGxlCiMvYm9vdC91Ym9v
dC5lbnYJMHgwMDAwICAgICAgICAgIDB4NDAwMAoKIyBVQkkgdm9sdW1lCiMvZGV2L3ViaTBfMAkJ
MHgwCQkweDFmMDAwCQkweDFmMDAwCiMvZGV2L3ViaTBfMQkJMHgwCQkweDFmMDAwCQkweDFmMDAw
CgojIFVCSSB2b2x1bWUgYnkgbmFtZQojL2Rldi91YmkwOmVudgkJMHgwCQkweDFmMDAwCQkweDFm
MDAwCiMvZGV2L3ViaTA6ZW52LXJlZHVuZAkweDAJCTB4MWYwMDAJCTB4MWYwMDAK
--00000000000093ed8d05fd3725e9
Content-Type: application/octet-stream; name="test.patch"
Content-Disposition: attachment; filename="test.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lifuqu9c1>
X-Attachment-Id: f_lifuqu9c1

RnJvbSBiZGFhNzNhNWIzOTIzMjU3YWRkMTgyYjRhYjgwNThkYmZhMzM0MjFiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTdGVmYW5vIEJhYmljIDxzYmFiaWNAZGVueC5kZT4KRGF0ZTog
V2VkLCAxMyBNYXIgMjAxOSAwOTo0Njo0NSArMDEwMApTdWJqZWN0OiBbUEFUQ0hdIEFkZCB0YXJn
ZXQgdG8gZ2VuZXJhdGUgaW5pdGlhbCBlbnZpcm9ubWVudAoKVGhlIGluaXRpYWwgZW52aXJvbm1l
bnQgaXMgbGlua2VkIHRvIHRoZSB1LWJvb3QgYmluYXJ5LiBNb2RpZnlpbmcgdGhlCmVudmlyb25t
ZW50IGZyb20gVXNlciBTcGFjZSB3aXRoIHRoZSBlbnYgdG9vbHMgcmVxdWlyZXMgdGhhdCB0aGUg
dG9vbHMKYXJlIGFsd2F5cyBidWlsdCB0b2dldGhlciB3aXRoIHRoZSBib290bG9hZGVyIHRvIGJl
IHN1cmUgdGhhdCB0aGV5CmNvbnRhaW4gdGhlIGluaXRpYWwgZW52aXJvbm1lbnQgaW4gY2FzZSBu
byBlbnZpcm9ubWVudCBpcyBzdG9yZWQgaW50bwpwZXJzaXN0ZW50IHN0b3JhZ2Ugb3Igd2hlbiBh
IGJvYXJkIGJvb3RzIHdpdGgganVzdCB0aGUgZGVmYXVsdAplbnZpcm9ubWVudC4gVGhpcyBtYWtl
cyBkaWZmaWN1bHQgZm9yIGRpc3Ryb3MgdG8gcHJvdmlkZSBhIGdlbmVyYWwKcGFja2FnZSB0byBh
Y2Nlc3MgdGhlIGVudmlyb25tZW50LiBBIHNpbXBsZXIgd2F5IGlzIGlmIHRoZSB0b29scyBhcmUK
Z2VuZXJpYyBmb3IgYWxsIGJvYXJkcyBhbmQgYSBjb25maWd1cmF0aW9uIGZpbGUgaXMgZ2l2ZW4g
dG8gcHJvdmlkZSB0aGUKaW5pdGlhbCBlbnZpcm9ubWVudC4KClRoZSBwYXRjaCBqdXN0IGdlbmVy
YXRlcyB0aGUgaW5pdGlhbCBlbnZpcm9ubWVudCBieSBleHRyYWN0aW5nIGl0IGZyb20KdGhlIGNv
bXBpbGVkIG9iamVjdC4gVGhpcyBmaWxlIGNhbiB0aGVuIGJlIHVzZWQgZm9yIHRvb2xzIGluIHVz
ZXIgc3BhY2UKdG8gaW5pdGlhbGl6ZSB0aGUgZW52aXJvbm1lbnQuCgpTaWduZWQtb2ZmLWJ5OiBT
dGVmYW5vIEJhYmljIDxzYmFiaWNAZGVueC5kZT4KLS0tCiBNYWtlZmlsZSB8IDcgKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIv
TWFrZWZpbGUKaW5kZXggNjZhMDlhYzkwMGMzLi5mMmM3YmI2MDQxYTIgMTAwNjQ0Ci0tLSBhL01h
a2VmaWxlCisrKyBiL01ha2VmaWxlCkBAIC0xOTc3LDYgKzE5NzcsMTMgQEAgZW5kaWYKIAkkKGJ1
aWxkKT0kKGJ1aWxkLWRpcikgJChAOi5rbz0ubykKIAkkKFEpJChNQUtFKSAtZiAkKHNyY3RyZWUp
L3NjcmlwdHMvTWFrZWZpbGUubW9kcG9zdAogCitxdWlldF9jbWRfZ2VuZW52ID0gR0VORU5WICRA
CitjbWRfZ2VuZW52ID0gJChPQkpDT1BZKSAtLWR1bXAtc2VjdGlvbiAucm9kYXRhLmRlZmF1bHRf
ZW52aXJvbm1lbnQ9JEAgZW52L2NvbW1vbi5vOyBcCisJc2VkIC0taW4tcGxhY2UgLWUgJ3MvXHgw
MC9ceDBBL2cnICRACisKK3UtYm9vdC1pbml0aWFsLWVudjogdS1ib290LmJpbgorCSQoY2FsbCBp
Zl9jaGFuZ2VkLGdlbmVudikKKwogIyBDb25zaXN0ZW5jeSBjaGVja3MKICMgLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCiAK
--00000000000093ed8d05fd3725e9--

