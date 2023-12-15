Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 437FEC4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 01:26:14 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web11.49725.1702603568298227632
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 17:26:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=McrjAJJU;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6d9d2f2b25aso165771a34.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 17:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702603567; x=1703208367; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gx9C7PmaQl76fHu8dLTctq4K0xuUruJKXoywj8/p3Dg=;
        b=McrjAJJUMg12l+EO6EHevstmQt4rgeBb6vF9vWLA3hTkuKWSf0QVrFPJi7z020+lKD
         IMyQ0XjjyIHehc3oVsRkWu/0pKxbhZU60WmFvFC4hpSi3UpjlEKMbzrDSMGqokRkCxsC
         nrMLy4MLvVWCz0lkUus0AopqZ/WFUaVYfc84MXVWu7GuKRsYec8r4LKsl7WktRngGQZf
         fAFw1Tqn6hM4IUyUU1ZraoXm0gNhhG4tFCZ6BLmlx6q2g65YvoeDXuTF+jVpJ9ssritG
         xDUwCNWjGVMlMO2/i8BK5ifD+G2mqG8Aq1V1MOLn2HzBtClO9PCuiWYiXc6DvE509760
         fYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702603567; x=1703208367;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gx9C7PmaQl76fHu8dLTctq4K0xuUruJKXoywj8/p3Dg=;
        b=emaMUhyOU3J4Glt3SktJR3s9WmwDSiapUqq1tVLLIJbptxgfxOHSDk7MKm5eun5VbD
         CBgPD0SPJRTTL7FDgEgTWVBC3qab5j3EIKiHoIDmwJEWd7I1F5U1/iY1C8LBNt8QHUTB
         NAUfAQGpLbKAxxnvj0HOPm+hQ89ReStgW7L79xGvT8V442AMCW/kqD52Up9QqgTvR9Vc
         UVKzM2wzfbCkTF5x1XuJ2xuRsMQETTcwL2TgaUhoa3N/EgjTZ6IBIASzWDhd66YTpf9X
         2UDo9MJQJvCN+/PrG3EwTLcYrzmWwIYp92xkLxy3ao849g5rRs5JAQStA+1Mh6gCSu3g
         UsTA==
X-Gm-Message-State: AOJu0YzZyjZeObLH/Xg3SRuDmcTlQZEa4pyAWWnx34EN9n9vX0t4i4u+
	XNmW1Vmr4WIJFcGVdCG1X3nkgi1SM2MjlomQYn4=
X-Google-Smtp-Source: AGHT+IHddBqXR1CAbze8+8sM7IaRj0RuPDF6MybHjEL0gsNmr6N2HONLT035GljmHMtgxqA+TfFEWi3NCevmyxyh0rU=
X-Received: by 2002:a05:6830:1e58:b0:6d6:9ece:73e2 with SMTP id
 e24-20020a0568301e5800b006d69ece73e2mr10783967otj.17.1702603567449; Thu, 14
 Dec 2023 17:26:07 -0800 (PST)
MIME-Version: 1.0
References: <53e087bd-6afc-47b7-9810-5307ae91728d@mistywest.com>
 <CAMKF1spgfn9YXR5CZONfiD8gQgsPFaD2uMmh+X=-uSS5Y_Ce0w@mail.gmail.com> <0c6d9ef6-daa1-42cf-ba50-ac4ff5465456@mistywest.com>
In-Reply-To: <0c6d9ef6-daa1-42cf-ba50-ac4ff5465456@mistywest.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Dec 2023 17:25:56 -0800
Message-ID: <CAMKF1socA86Z+tfGCh7JJQMQC5pLTXisPW8TTJOi0Wh8g5KqNg@mail.gmail.com>
Subject: Re: [yocto] how to create symlink in dunfell after compilation of
 library file
To: Ron Eggler <ron.eggler@mistywest.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d4cafb060c8248d6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 01:26:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61896

--000000000000d4cafb060c8248d6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 5:13=E2=80=AFPM Ron Eggler <ron.eggler@mistywest.co=
m> wrote:

>
> On 2023-12-14 5:00 p.m., Khem Raj wrote:
>
> On Thu, Dec 14, 2023 at 4:26=E2=80=AFPM Mistyron <ron.eggler@mistywest.co=
m> <ron.eggler@mistywest.com> wrote:
>
> Hi,
>
> I'm working with dunfell and want to create a symlink after compilation
> of the library:
>
> I added the following in aziot-keys_%.bbapend:
>
> do_install_append() {
>      install -d ${D}/usr/lib
>      lnr ${D}/usr/lib64/rust/libaziot_keys.so ${D}/usr/lib/libaziot_keys.=
so
>
> try using ln -rs instead of lnr.
>
> With ln -rs I get the following error:
>
> ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_package: QA Issue:
> aziot-keys: Files/directories were installed but not shipped in any
> package:
> /usr/lib
> /usr/lib/libaziot_keys.so
>

Right so you need to add /usr/lib to FILES variable
But I do wonder if your link should be inside ${libdir} which is /usr/lib64
in your case

>
> Please set FILES such that these items are packaged. Alternatively if the=
y
> are unneeded, avoid installing them or delete them within do_install.
> aziot-keys: 2 installed and not shipped files. [installed-vs-shipped]
> ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_package: Fatal QA errors
> found, failing task.
> ERROR: Logfile of failure stored in:
> /home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/aziot-keys/1=
.4.7.AUTOINC+91e058880c-r0/temp/log.do_package.64055
> ERROR: Task
> (/home/yocto/rzv_vlp_v3.0.0/build/../meta-iotedge/recipes-core/aziot-keys=
/aziot-keys_1.4.7.bb:do_package)
> failed with exit code '1'
>
> I came across a post that read that for dunfell, lnr shoudl be used
> (rather than ln -r for newer versions)
>
> }
>
> Yet, after building the image,
> I do not see the symlink in/usr/lib/
>
> I did find the recipe for which I created the bbappend with:
> oe-pkgdata-util find-path /usr/lib64/rust/libaziot_keys.so
>
> What is missing?
>
> Thank you,
> Ron
>
> --
> Mistyron
>
>
> --
> Mistyron
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61892): https://lists.yoctoproject.org/g/yocto/messag=
e/61892
> Mute This Topic: https://lists.yoctoproject.org/mt/103181952/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000d4cafb060c8248d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPjxicj48L2Rpdj48ZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90
ZSI+PGRpdiBkaXI9Imx0ciIgY2xhc3M9ImdtYWlsX2F0dHIiPk9uIFRodSwgRGVjIDE0LCAyMDIz
IGF0IDU6MTPigK9QTSBSb24gRWdnbGVyICZsdDs8YSBocmVmPSJtYWlsdG86cm9uLmVnZ2xlckBt
aXN0eXdlc3QuY29tIj5yb24uZWdnbGVyQG1pc3R5d2VzdC5jb208L2E+Jmd0OyB3cm90ZTo8YnI+
PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAw
cHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0LXdpZHRoOjFweDtib3JkZXItbGVmdC1zdHlsZTpzb2xp
ZDtwYWRkaW5nLWxlZnQ6MWV4O2JvcmRlci1sZWZ0LWNvbG9yOnJnYigyMDQsMjA0LDIwNCkiPjx1
PjwvdT4NCg0KICANCiAgICANCiAgDQogIDxkaXY+DQogICAgPHA+PGJyPg0KICAgIDwvcD4NCiAg
ICA8ZGl2Pk9uIDIwMjMtMTItMTQgNTowMCBwLm0uLCBLaGVtIFJhag0KICAgICAgd3JvdGU6PGJy
Pg0KICAgIDwvZGl2Pg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAgICAgPHByZSBz
dHlsZT0iZm9udC1mYW1pbHk6bW9ub3NwYWNlIj5PbiBUaHUsIERlYyAxNCwgMjAyMyBhdCA0OjI2
4oCvUE0gTWlzdHlyb24gPGEgaHJlZj0ibWFpbHRvOnJvbi5lZ2dsZXJAbWlzdHl3ZXN0LmNvbSIg
dGFyZ2V0PSJfYmxhbmsiIHN0eWxlPSJmb250LWZhbWlseTptb25vc3BhY2UiPiZsdDtyb24uZWdn
bGVyQG1pc3R5d2VzdC5jb20mZ3Q7PC9hPiB3cm90ZToNCjwvcHJlPg0KICAgICAgPGJsb2NrcXVv
dGUgdHlwZT0iY2l0ZSI+DQogICAgICAgIDxwcmUgc3R5bGU9ImZvbnQtZmFtaWx5Om1vbm9zcGFj
ZSI+SGksDQoNCkkmIzM5O20gd29ya2luZyB3aXRoIGR1bmZlbGwgYW5kIHdhbnQgdG8gY3JlYXRl
IGEgc3ltbGluayBhZnRlciBjb21waWxhdGlvbg0Kb2YgdGhlIGxpYnJhcnk6DQoNCkkgYWRkZWQg
dGhlIGZvbGxvd2luZyBpbiBhemlvdC1rZXlzXyUuYmJhcGVuZDoNCg0KZG9faW5zdGFsbF9hcHBl
bmQoKSB7DQogICAgIGluc3RhbGwgLWQgJHtEfS91c3IvbGliDQogICAgIGxuciAke0R9L3Vzci9s
aWI2NC9ydXN0L2xpYmF6aW90X2tleXMuc28gJHtEfS91c3IvbGliL2xpYmF6aW90X2tleXMuc28N
CjwvcHJlPg0KICAgICAgPC9ibG9ja3F1b3RlPg0KICAgICAgPHByZSBzdHlsZT0iZm9udC1mYW1p
bHk6bW9ub3NwYWNlIj50cnkgdXNpbmcgbG4gLXJzIGluc3RlYWQgb2YgbG5yLjwvcHJlPg0KICAg
IDwvYmxvY2txdW90ZT4NCiAgICA8cD5XaXRoIGxuIC1ycyBJIGdldCB0aGUgZm9sbG93aW5nIGVy
cm9yOjxicj4NCiAgICAgIDxicj4NCiAgICAgIEVSUk9SOiBhemlvdC1rZXlzLTEuNC43LkFVVE9J
TkMrOTFlMDU4ODgwYy1yMCBkb19wYWNrYWdlOiBRQQ0KICAgICAgSXNzdWU6IGF6aW90LWtleXM6
IEZpbGVzL2RpcmVjdG9yaWVzIHdlcmUgaW5zdGFsbGVkIGJ1dCBub3QNCiAgICAgIHNoaXBwZWQg
aW4gYW55DQpwYWNrYWdlOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgDQovdXNyL2xpYsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoA0KICAgICAgL3Vz
ci9saWIvbGliYXppb3Rfa2V5cy5zbzwvcD48L2Rpdj48L2Jsb2NrcXVvdGU+PGRpdiBkaXI9ImF1
dG8iPjxicj48L2Rpdj48ZGl2IGRpcj0iYXV0byI+UmlnaHQgc28geW91IG5lZWQgdG8gYWRkIC91
c3IvbGliIHRvIEZJTEVTIHZhcmlhYmxlwqA8L2Rpdj48ZGl2IGRpcj0iYXV0byI+QnV0IEkgZG8g
d29uZGVyIGlmIHlvdXIgbGluayBzaG91bGQgYmUgaW5zaWRlICR7bGliZGlyfSB3aGljaCBpcyAv
dXNyL2xpYjY0IGluIHlvdXIgY2FzZcKgPC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1
b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0LXdpZHRoOjFw
eDtib3JkZXItbGVmdC1zdHlsZTpzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4O2JvcmRlci1sZWZ0LWNv
bG9yOnJnYigyMDQsMjA0LDIwNCkiPjxkaXY+PHAgZGlyPSJhdXRvIj48YnI+DQogICAgICBQbGVh
c2Ugc2V0IEZJTEVTIHN1Y2ggdGhhdCB0aGVzZSBpdGVtcyBhcmUgcGFja2FnZWQuIEFsdGVybmF0
aXZlbHkNCiAgICAgIGlmIHRoZXkgYXJlIHVubmVlZGVkLCBhdm9pZCBpbnN0YWxsaW5nIHRoZW0g
b3IgZGVsZXRlIHRoZW0gd2l0aGluDQogICAgICBkb19pbnN0YWxsLjxicj4NCiAgICAgIGF6aW90
LWtleXM6IDIgaW5zdGFsbGVkIGFuZCBub3Qgc2hpcHBlZCBmaWxlcy4NCiAgICAgIFtpbnN0YWxs
ZWQtdnMtc2hpcHBlZF08YnI+DQogICAgICBFUlJPUjogYXppb3Qta2V5cy0xLjQuNy5BVVRPSU5D
KzkxZTA1ODg4MGMtcjAgZG9fcGFja2FnZTogRmF0YWwgUUENCiAgICAgIGVycm9ycyBmb3VuZCwg
ZmFpbGluZyB0YXNrLjxicj4NCiAgICAgIEVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVk
IGluOg0KL2hvbWUveW9jdG8vcnp2X3ZscF92My4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1w
b2t5LWxpbnV4L2F6aW90LWtleXMvMS40LjcuQVVUT0lOQys5MWUwNTg4ODBjLXIwL3RlbXAvbG9n
LmRvX3BhY2thZ2UuNjQwNTU8YnI+DQogICAgICBFUlJPUjogVGFzaw0KKC9ob21lL3lvY3RvL3J6
dl92bHBfdjMuMC4wL2J1aWxkLy4uL21ldGEtaW90ZWRnZS9yZWNpcGVzLWNvcmUvYXppb3Qta2V5
cy9hemlvdC1rZXlzXzEuNC43LmJiOmRvX3BhY2thZ2UpDQogICAgICBmYWlsZWQgd2l0aCBleGl0
IGNvZGUgJiMzOTsxJiMzOTs8c3BhbiBzdHlsZT0id2hpdGUtc3BhY2U6cHJlLXdyYXAiPg0KPC9z
cGFuPjwvcD4NCiAgICA8cD48c3BhbiBzdHlsZT0id2hpdGUtc3BhY2U6cHJlLXdyYXAiPg0KPC9z
cGFuPjwvcD4NCiAgICA8cD48c3BhbiBzdHlsZT0id2hpdGUtc3BhY2U6cHJlLXdyYXAiPkkgY2Ft
ZSBhY3Jvc3MgYSBwb3N0IHRoYXQgcmVhZCB0aGF0IGZvciBkdW5mZWxsLCBsbnIgc2hvdWRsIGJl
IHVzZWQgKHJhdGhlciB0aGFuIGxuIC1yIGZvciBuZXdlciB2ZXJzaW9ucykNCjwvc3Bhbj48c3Bh
biBzdHlsZT0id2hpdGUtc3BhY2U6cHJlLXdyYXAiPg0KPC9zcGFuPjwvcD48L2Rpdj48ZGl2Pg0K
ICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAgICAgPGJsb2NrcXVvdGUgdHlwZT0iY2l0
ZSI+DQogICAgICAgIDxwcmUgc3R5bGU9ImZvbnQtZmFtaWx5Om1vbm9zcGFjZSI+fQ0KDQpZZXQs
IGFmdGVyIGJ1aWxkaW5nIHRoZSBpbWFnZSwNCkkgZG8gbm90IHNlZSB0aGUgc3ltbGluayBpbi91
c3IvbGliLw0KDQpJIGRpZCBmaW5kIHRoZSByZWNpcGUgZm9yIHdoaWNoIEkgY3JlYXRlZCB0aGUg
YmJhcHBlbmQgd2l0aDoNCm9lLXBrZ2RhdGEtdXRpbCBmaW5kLXBhdGggL3Vzci9saWI2NC9ydXN0
L2xpYmF6aW90X2tleXMuc28NCg0KV2hhdCBpcyBtaXNzaW5nPw0KDQpUaGFuayB5b3UsDQpSb24N
Cg0KLS0NCk1pc3R5cm9uDQoNCg0KLS0NCk1pc3R5cm9uDQoNCi09LT0tPS09LT0tPS09LT0tPS09
LT0tDQpMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4N
CllvdSBhdXRvbWF0aWNhbGx5IGZvbGxvdyBhbnkgdG9waWNzIHlvdSBzdGFydCBvciByZXBseSB0
by4NClZpZXcvUmVwbHkgT25saW5lICgjNjE4OTIpOiA8YSBocmVmPSJodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzYxODkyIiB0YXJnZXQ9Il9ibGFuayIgc3R5
bGU9ImZvbnQtZmFtaWx5Om1vbm9zcGFjZSI+aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L2cveW9jdG8vbWVzc2FnZS82MTg5MjwvYT4NCk11dGUgVGhpcyBUb3BpYzogPGEgaHJlZj0iaHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzEwMzE4MTk1Mi8xOTk3OTE0IiB0YXJnZXQ9
Il9ibGFuayIgc3R5bGU9ImZvbnQtZmFtaWx5Om1vbm9zcGFjZSI+aHR0cHM6Ly9saXN0cy55b2N0
b3Byb2plY3Qub3JnL210LzEwMzE4MTk1Mi8xOTk3OTE0PC9hPg0KR3JvdXAgT3duZXI6IDxhIGhy
ZWY9Im1haWx0bzp5b2N0bytvd25lckBsaXN0cy55b2N0b3Byb2plY3Qub3JnIiB0YXJnZXQ9Il9i
bGFuayIgc3R5bGU9ImZvbnQtZmFtaWx5Om1vbm9zcGFjZSI+eW9jdG8rb3duZXJAbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZzwvYT4NClVuc3Vic2NyaWJlOiA8YSBocmVmPSJodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1YiIgdGFyZ2V0PSJfYmxhbmsiIHN0eWxlPSJmb250
LWZhbWlseTptb25vc3BhY2UiPmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3Rv
L3Vuc3ViPC9hPiBbPGEgaHJlZj0ibWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiIHN0eWxlPSJmb250LWZhbWlseTptb25vc3BhY2UiPnJhai5raGVtQGdtYWlsLmNvbTwv
YT5dDQotPS09LT0tPS09LT0tPS09LT0tPS09LTwvcHJlPg0KICAgICAgPC9ibG9ja3F1b3RlPg0K
ICAgIDwvYmxvY2txdW90ZT4NCiAgICA8ZGl2PiA8L2Rpdj4NCiAgPC9kaXY+DQoNCjwvYmxvY2tx
dW90ZT48L2Rpdj48L2Rpdj4NCg==
--000000000000d4cafb060c8248d6--

