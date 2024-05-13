Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E75AC25B4F
	for <webhook@archiver.kernel.org>; Mon, 13 May 2024 00:02:26 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web11.49023.1715558544602937351
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 May 2024 17:02:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=aqZoRX/G;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.222.53, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-7f032da81e4so329517241.1
        for <yocto@lists.yoctoproject.org>; Sun, 12 May 2024 17:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1715558543; x=1716163343; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6Nk5oFgGmqerzpgdmE4tqjQ0BzoCtMAeXTynh4DbJn0=;
        b=aqZoRX/GNXMXv+kcSfbmadu5eKR/eLv3pXrUmKuXkjc4iVuyseBaN3uCrcj5Yd0AaT
         p4dMHxf4KHNzMd9v/1SzUFUXdsE1zyW5cczcB2VLLt3yz/2kS93eOs6LqjECV0CJ5ihJ
         BUiGKE703eV2sgUWz1Mx5amZVD57/LoUJKflGdwqBJf6hgZCV1K84D7ntIRGTndPaczK
         8r0cXYY3f884cGU1gCF12xxh4X+lO7lXXNpeYc8juIU67OVSuMn/z2uelGt2eFhM9qn2
         kdMKFFS40NKgqpaxYU4tJwFEdkVBtyvjh2y5VKezTtYcEkGlqXYOpZEsD0VjwEO3o7jK
         JOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715558543; x=1716163343;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Nk5oFgGmqerzpgdmE4tqjQ0BzoCtMAeXTynh4DbJn0=;
        b=EYKfKiBAnjl9vCeNwRUpRKBsjiRVKnTWqb8o/zwZWhxwfjZXRxSsUoTrGP3N9YQy8I
         OyudxsQJbTMBH+Cuibo1Ea6WvOAqnnA14qW1DKBJXwyFEnxIE+mu8X8+ARJ4KqEda6xQ
         5XWoEo0ywa8hKnl6CM2z4O3xnDQgHBclKwbrVnub6YZUAcCM/jGcbBXt/0r55ajMvaGz
         U3wQ3CtyTN8F2flrwF7frUaKeSPSEgJm+zjQVhmjM1Ny6Zm17iac+lEQ2Flkv120wZVw
         Fy3k1FUndnsUOyyHKhywYbtmkaNZqPvmJNW1IhWR388ug6040AFPYkquJfvh3msnRsyr
         gY0w==
X-Gm-Message-State: AOJu0YyGPXICrh3pXJJuKpdxRrDw+lEW2HE5XuOool4/UejyCg7xSLh1
	vSBHHYWFdYvKFJOabRNft40OJ4M/v5eX4P2gFv58CmY/3OYuQia2hnBvElaVQ2oCjVLJ6f4fpjY
	aT3Ao1CUCXiET9kALkXjA8fDdiZLVOPjAqCq2q7nolFjZqX8bEpo=
X-Google-Smtp-Source: AGHT+IGjThX+FQIeeiuot+V/fKgdry0r01eepTlcW63lCo+rslhDmwTGCWOHbJYt5FOlOIna0h2qKHIGc/HAfAJY94s=
X-Received: by 2002:a05:6122:1da8:b0:4d8:7339:4c35 with SMTP id
 71dfb90a1353d-4df88367d77mr5544621e0c.13.1715558543155; Sun, 12 May 2024
 17:02:23 -0700 (PDT)
MIME-Version: 1.0
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Mon, 13 May 2024 12:02:11 +1200
Message-ID: <CANuMBWHvmSZ1xuEuSW=aUy3ig93ckw7o+Zb6Wd_4hDm=_tscnQ@mail.gmail.com>
Subject: Opkg cannot find anything to satisfy 'kernel-module-iwlmvm'
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008e7aca06184a99bc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 May 2024 00:02:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63074

--0000000000008e7aca06184a99bc
Content-Type: text/plain; charset="UTF-8"

Friends

Where in a yocto build can I find the definition of a package for opkg?

I am building an image for a Toradex NXP.
I have to replace the WiFi chip with a iwlwifi Intel chip
When it is building my core image recipe it fails with the message:

* opkg_prepare_url_for_install: Couldn't find anything to satisfy
'kernel-module-iwlmvm'

I have a working build for an Intel Nuc that uses this chip and builds with
no problems.

In both builds the IMAGE_INSTALL has kernel-module-iwlmvm and
kernel-module-iwlwifi added

I looked into the opkg package list and there is no "kernel-module-iw*",
there is "kmod-iwlwifi" so I switched to that, but the error I got was:

"ERROR: Nothing RPROVIDES 'kmod-iwlwifi"

I searched all of the files, (on both systems) I have and I cannot find
where "kernel-module-iwlmvm" is defined as a package for opkg.  The fact
that changing "kernel-module-iwlwifi" to "kmod-iwlwifi" indicates it is
defined somewhere.

IMAGE_INSTALL += " \
    sentinel \
    gdb \
    strace \
    packagegroup-boot \
    packagegroup-basic \
    packagegroup-base-tdx-cli \
    packagegroup-machine-tdx-cli \
    packagegroup-wifi-tdx-cli \
    packagegroup-wifi-fw-tdx-cli \
    packagegroup-fsl-gpu-libs \
    udev-extraconf \
    storage-mount \
    root-key \
    terminal-server \
    ubx \
    lbtool \
    iw \
    kernel-module-iwlwifi \


    kernel-module-iwlmvm \


"

--0000000000008e7aca06184a99bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5GcmllbmRzPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5XaGVy
ZSBpbiBhIHlvY3RvIGJ1aWxkIGNhbiBJIGZpbmQgdGhlIGRlZmluaXRpb24gb2YgYSBwYWNrYWdl
IGZvciBvcGtnPzwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+SSBhbSBidWlsZGluZyBhbiBpbWFn
ZSBmb3IgYSBUb3JhZGV4IE5YUC48L2Rpdj48ZGl2PkkgaGF2ZSB0byByZXBsYWNlIHRoZSBXaUZp
IGNoaXAgd2l0aCBhIGl3bHdpZmkgSW50ZWwgY2hpcDwvZGl2PjxkaXY+V2hlbiBpdCBpcyBidWls
ZGluZyBteSBjb3JlIGltYWdlIHJlY2lwZSBpdCBmYWlscyB3aXRoIHRoZSBtZXNzYWdlOjwvZGl2
PjxkaXY+PGJyPjwvZGl2PjxkaXY+KiBvcGtnX3ByZXBhcmVfdXJsX2Zvcl9pbnN0YWxsOiBDb3Vs
ZG4mIzM5O3QgZmluZCBhbnl0aGluZyB0byBzYXRpc2Z5ICYjMzk7a2VybmVsLW1vZHVsZS1pd2xt
dm0mIzM5OzwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+SSBoYXZlIGEgd29ya2luZyBidWlsZCBm
b3IgYW4gSW50ZWwgTnVjIHRoYXQgdXNlcyB0aGlzIGNoaXAgYW5kIGJ1aWxkcyB3aXRoIG5vIHBy
b2JsZW1zLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+SW4gYm90aCBidWlsZHMgdGhlIElNQUdF
X0lOU1RBTEwgaGFzIGtlcm5lbC1tb2R1bGUtaXdsbXZtIGFuZCBrZXJuZWwtbW9kdWxlLWl3bHdp
ZmkgYWRkZWQ8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkkgbG9va2VkIGludG8gdGhlIG9wa2cg
cGFja2FnZSBsaXN0IGFuZCB0aGVyZSBpcyBubyAmcXVvdDtrZXJuZWwtbW9kdWxlLWl3KiZxdW90
OywgdGhlcmUgaXMgJnF1b3Q7a21vZC1pd2x3aWZpJnF1b3Q7IHNvIEkgc3dpdGNoZWQgdG8gdGhh
dCwgYnV0IHRoZSBlcnJvciBJIGdvdCB3YXM6PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj4mcXVv
dDtFUlJPUjogTm90aGluZyBSUFJPVklERVMgJiMzOTtrbW9kLWl3bHdpZmkmcXVvdDs8L2Rpdj48
ZGl2Pjxicj48L2Rpdj48ZGl2Pkkgc2VhcmNoZWQgYWxsIG9mIHRoZSBmaWxlcywgKG9uIGJvdGgg
c3lzdGVtcykgSSBoYXZlIGFuZCBJIGNhbm5vdCBmaW5kIHdoZXJlICZxdW90O2tlcm5lbC1tb2R1
bGUtaXdsbXZtJnF1b3Q7IGlzIGRlZmluZWQgYXMgYSBwYWNrYWdlIGZvciBvcGtnLsKgIFRoZSBm
YWN0IHRoYXQgY2hhbmdpbmcgJnF1b3Q7a2VybmVsLW1vZHVsZS1pd2x3aWZpJnF1b3Q7IHRvICZx
dW90O2ttb2QtaXdsd2lmaSZxdW90OyBpbmRpY2F0ZXMgaXQgaXMgZGVmaW5lZCBzb21ld2hlcmUu
PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+SU1BR0VfSU5TVEFMTCArPSAmcXVvdDsgXDxi
cj7CoCDCoCBzZW50aW5lbCBcPGJyPsKgIMKgIGdkYiBcPGJyPsKgIMKgIHN0cmFjZSBcPGJyPsKg
IMKgIHBhY2thZ2Vncm91cC1ib290IFw8YnI+wqAgwqAgcGFja2FnZWdyb3VwLWJhc2ljIFw8YnI+
wqAgwqAgcGFja2FnZWdyb3VwLWJhc2UtdGR4LWNsaSBcPGJyPsKgIMKgIHBhY2thZ2Vncm91cC1t
YWNoaW5lLXRkeC1jbGkgXDxicj7CoCDCoCBwYWNrYWdlZ3JvdXAtd2lmaS10ZHgtY2xpIFw8YnI+
wqAgwqAgcGFja2FnZWdyb3VwLXdpZmktZnctdGR4LWNsaSBcPGJyPsKgIMKgIHBhY2thZ2Vncm91
cC1mc2wtZ3B1LWxpYnMgXDxicj7CoCDCoCB1ZGV2LWV4dHJhY29uZiBcPGJyPsKgIMKgIHN0b3Jh
Z2UtbW91bnQgXDxicj7CoCDCoCByb290LWtleSBcPGJyPsKgIMKgIHRlcm1pbmFsLXNlcnZlciBc
PGJyPsKgIMKgIHVieCBcPGJyPsKgIMKgIGxidG9vbCBcPGJyPsKgIMKgIGl3IFw8L2Rpdj48ZGl2
PsKgIMKgIGtlcm5lbC1tb2R1bGUtaXdsd2lmaSBcIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPsKgIMKgIGtlcm5lbC1tb2R1bGUtaXdsbXZtIFwgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPjwvZGl2Pjxk
aXY+JnF1b3Q7PGJyPjwvZGl2PjwvZGl2Pg0K
--0000000000008e7aca06184a99bc--

