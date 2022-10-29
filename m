Return-Path: <o.kuzhyl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B9A7C38A02
	for <webhook@archiver.kernel.org>; Sat, 29 Oct 2022 19:08:49 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web09.1359.1667070527204017411
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Oct 2022 12:08:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TeRgWc+L;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: o.kuzhyl@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id u8-20020a17090a5e4800b002106dcdd4a0so12701773pji.1
        for <yocto@lists.yoctoproject.org>; Sat, 29 Oct 2022 12:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Tp2NWy6W4vmOZ7sRW0L4Yi1Wv/5Km/nP1szIyKwRNmQ=;
        b=TeRgWc+LU0LAZNIaMfC4GxO+61j5UoEAgIzVsm7wHbBGthBfKyGZ8nTl0ov8LsD8kL
         tGQ7Cs8YuCfcU/56OSKI+6ppjF3Mdxo7MRP9vi5R41mbvu6Ei3s7mLIAngHzORpzXQ0W
         fsNq8lByeXGChaXc4HcenlFNfjJ72++wtZhTXhTnhaXxtOEX9q3C961xt9VNJGeLdlDe
         aEG5Qa4R6TKBndyvwUi0DUgUIvJ/vVbmFJlpun0SJXg1A9t0bA6peoSfnAukTjfXsERC
         aQJWFIYldxW502loiZYUnErY4bEhM5T5cJ+Cw2a7RfCNrQZZDSTqCsOVMY8N3YiFR57w
         ZK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tp2NWy6W4vmOZ7sRW0L4Yi1Wv/5Km/nP1szIyKwRNmQ=;
        b=xszQX1o4cQF4D1TucxRCOIYdGcxRCoO0Ijvpc2JSHmleQARU/Cf2Eyr0u/ZpdhowrD
         WSn4I+V6s69BNXd51UmXK5xAlo5cGYqE08DTYkxZswxiDHmqJL6YO6cxoOPU8zgN0SIw
         NdsZDpUiFO+uGPo+3gifQjKWabBSM8wyrLHS9OxZMtZ706DE/xldu40ML5siK6gI52+c
         Bs17dwYQZjZPsw6rKrK+CejqAoS5uhDcL6XvdBgMQnhqVENsTSML1JW/LYx3JaobTlLP
         xvr+DDnYGiu/Q5E77Poj1XLz753IPq3AmpABFC0IGV+0R1G8KE7RKVv/J+9eYYdB9723
         1C3w==
X-Gm-Message-State: ACrzQf1EQGFp5JTgdNl6TBeeS4qRq5JwgNe5D+k15Hcf7eETQQ2NA9BY
	hmOSBxljZdoUu3s8wSbBXog8TJmXOUfHZvnmN+NJOsBUJg8/Uw==
X-Google-Smtp-Source: AMsMyM6ld1veJpX9E99rjfVS6KSVFCDgfHwM5phHAcNa5EI9Fxf7XreVCanMsR0GLjYF87Zkn/3k6onsBkTbp1ad4FY=
X-Received: by 2002:a17:90b:3c0e:b0:213:5ce5:e60c with SMTP id
 pb14-20020a17090b3c0e00b002135ce5e60cmr21231214pjb.157.1667070526371; Sat, 29
 Oct 2022 12:08:46 -0700 (PDT)
MIME-Version: 1.0
From: Oleh Kuzhylnyi <o.kuzhyl@gmail.com>
Date: Sat, 29 Oct 2022 22:08:35 +0300
Message-ID: <CADW9r6MKrarTpFMGsXDm32YLM9zdWnroOFjsztd4kOzrCY3WPg@mail.gmail.com>
Subject: [meta-rockchip][PATCH] Enable wlan for tinker board (s)
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com
Content-Type: multipart/mixed; boundary="0000000000008a518d05ec311ada"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Oct 2022 19:08:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58439

--0000000000008a518d05ec311ada
Content-Type: multipart/alternative; boundary="0000000000008a518b05ec311ad8"

--0000000000008a518b05ec311ad8
Content-Type: text/plain; charset="UTF-8"

Greetings,

I have faced the issue of missing out-the-box WiFi driver for Tinker board
machines.
It would be great to have it.
Turns out, the open source WiFi driver works well.
So, my proposal, let's enable it for tinker board machine?

Please, review my patch.

Regards,
Oleh Kuzhylnyi

--0000000000008a518b05ec311ad8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings,<div><br></div><div>I have faced the issue of mi=
ssing out-the-box WiFi driver for Tinker board machines.</div><div>It would=
 be great to have it.</div><div>Turns out, the open source WiFi driver work=
s well.</div><div>So, my proposal, let&#39;s enable it for tinker board mac=
hine?</div><div><br></div><div>Please, review my patch.</div><div><br></div=
><div>Regards,</div><div>Oleh Kuzhylnyi</div></div>

--0000000000008a518b05ec311ad8--

--0000000000008a518d05ec311ada
Content-Type: application/octet-stream; 
	name="0001-net-enable-wlan-for-tinker-board-s.patch"
Content-Disposition: attachment; 
	filename="0001-net-enable-wlan-for-tinker-board-s.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_l9uapyqh0>
X-Attachment-Id: f_l9uapyqh0

RnJvbSAzNTc0MTRlZjg4OGY4YTdmZjBhZDdiM2VlOWVlY2M0MjViMDUyY2M4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBPbGVoIEt1emh5bG55aSA8b2xlaC5rdXpoeWxueWlAcmluZ3Rl
YW0uY29tPgpEYXRlOiBTYXQsIDI5IE9jdCAyMDIyIDIwOjU0OjQ5ICswMzAwClN1YmplY3Q6IFtQ
QVRDSF0gbmV0OiBlbmFibGUgd2xhbiBmb3IgdGlua2VyIGJvYXJkIChzKQoKVGhlIFdpRmkgZHJp
dmVyIGZvciBUaW5rZXIgYm9hcmQgYW5kIFRpbmtlciBib2FyZCBTCmlzIG5vdCBlbmFibGVkIGJ5
IGRlZmF1bHQgZGVmY29uZmlnLgpMZXQncyBlbmFibGUgb3BlbnNvdXJjZSBkcml2ZXIgZm9yIHJ0
bDg3MjMgd2hpY2ggd29ya3Mgd2VsbCBvbiBib3RoIGRldiBib2FyZHMuCgp3bGFuMDogPEJST0FE
Q0FTVCxNVUxUSUNBU1QsVVAsTE9XRVJfVVA+IG10dSAxNTAwIHFkaXNjIG1xIHFsZW4gMTAwMAog
ICAgbGluay9ldGhlciA4MDpjNTpmMjpmZTo1OTpiZiBicmQgZmY6ZmY6ZmY6ZmY6ZmY6ZmYKICAg
IGluZXQgMTkyLjE2OC44OC44OC8yNCBicmQgMTkyLjE2OC44OC4yNTUgc2NvcGUgZ2xvYmFsIHds
YW4wCiAgICAgICB2YWxpZF9sZnQgZm9yZXZlciBwcmVmZXJyZWRfbGZ0IGZvcmV2ZXIKClNpZ25l
ZC1vZmYtYnk6IE9sZWggS3V6aHlsbnlpIDxvLmt1emh5bEBnbWFpbC5jb20+Ci0tLQogcmVjaXBl
cy1rZXJuZWwvbGludXgvZmlsZXMvdGlua2VyLXdsYW4uY2ZnIHwgMiArKwogcmVjaXBlcy1rZXJu
ZWwvbGludXgvbGludXgteW9jdG8lLmJiYXBwZW5kIHwgMyArKysKIDIgZmlsZXMgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgcmVjaXBlcy1rZXJuZWwvbGludXgv
ZmlsZXMvdGlua2VyLXdsYW4uY2ZnCgpkaWZmIC0tZ2l0IGEvcmVjaXBlcy1rZXJuZWwvbGludXgv
ZmlsZXMvdGlua2VyLXdsYW4uY2ZnIGIvcmVjaXBlcy1rZXJuZWwvbGludXgvZmlsZXMvdGlua2Vy
LXdsYW4uY2ZnCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLjQ2YmY5YzIKLS0t
IC9kZXYvbnVsbAorKysgYi9yZWNpcGVzLWtlcm5lbC9saW51eC9maWxlcy90aW5rZXItd2xhbi5j
ZmcKQEAgLTAsMCArMSwyIEBACitDT05GSUdfUlRMODcyM0JTPW0KK0NPTkZJR19SVExMSUI9bQpk
aWZmIC0tZ2l0IGEvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8lLmJiYXBwZW5kIGIv
cmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8lLmJiYXBwZW5kCmluZGV4IDQ3MGRjMDku
LjU4ODFlMjYgMTAwNjQ0Ci0tLSBhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvJS5i
YmFwcGVuZAorKysgYi9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0byUuYmJhcHBlbmQK
QEAgLTEyLDMgKzEyLDYgQEAgQ09NUEFUSUJMRV9NQUNISU5FOnJvY2s2NCA9ICJyb2NrNjQiCiBD
T01QQVRJQkxFX01BQ0hJTkU6cm9jay1waS1lID0gInJvY2stcGktZSIKIAogRklMRVNFWFRSQVBB
VEhTOnByZXBlbmQgOj0gIiR7VEhJU0RJUn0vZmlsZXM6IgorCitTUkNfVVJJOmFwcGVuZDp0aW5r
ZXItYm9hcmQgPSAiIGZpbGU6Ly90aW5rZXItd2xhbi5jZmciCitTUkNfVVJJOmFwcGVuZDp0aW5r
ZXItYm9hcmQtcyA9ICIgZmlsZTovL3Rpbmtlci13bGFuLmNmZyIKLS0gCjIuMjUuMQoK
--0000000000008a518d05ec311ada--

