Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC669C04FFE
	for <webhook@archiver.kernel.org>; Fri, 17 May 2024 10:47:14 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.36645.1715940816437790096
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 May 2024 03:13:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Dt6qbeWs;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-602801ea164so871090a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 03:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715940816; x=1716545616; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7QvAJ8WBmsVgmPX3DpZ1Fb5/Ldj+8lIgQ9LYbEvXZFM=;
        b=Dt6qbeWsBHPN4bU4d/UwC1KcKdvEXuNXZnOs4maVfx4CrxWlbLzq7uTdFTwPGKX72K
         ua3Aiz3lPdqUvtNZnnB0V8WSNXNuAD2iEXjLOej0AOr9ZzKfOujtFCBqDldM+gY1+el2
         5JZyA62LYPBC6uGO2FW6Px5D+9zn2RwlvCSvq0jiBfP+SM1FVKoBGdvnGYkBXc9bo//R
         oguA2QrwZEIhWa14a9pjvvG9VdzsDMvP9UGFL+ImwjRRoZ0SeAneBqbwQF47GD6JgSoV
         6KoB6dDQnYQvjmjbwwqXvDhl/XZYVot6Q//2GtbwJXoOWkm0Px8yGm2CDjW5xFj/PPAv
         0xpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715940816; x=1716545616;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7QvAJ8WBmsVgmPX3DpZ1Fb5/Ldj+8lIgQ9LYbEvXZFM=;
        b=jLKLxH8ZJIRU0UhIoKEOQvWxknGGiDO5qCAYT+SAYBPw01vAK1SAAxQiZeA3tA3nIE
         MzrtrToawpCNBkMqEAgibq8L2UzXIEGI1VCqthYtvcGNFlSkTYMz5qdtOVRbDA+4qgmk
         0CFwfPtO8fmSqa6n8kXcX7KwK7R7127JgArz0/A0s8MN+Kaj7WBfPQl7ecrojKNZhLRa
         VUu3ObuETNJtHveKxapVnjb4EAI/nroG+PtmMvJegSCBcbGWqeTqEPXqdOVZIn4hZPz7
         Xj1g4FVQL10WxXD38BvPVei34DEDrgj1aavzcgKhjXOsDs97l83IMJySj6xN09XgPWL6
         tyiA==
X-Forwarded-Encrypted: i=1; AJvYcCUpKU3sY2jHggTkrIkhFoVkCIZgpMyjpo+YiMHe/X+vOJB6zAPyXSBB9Y/JwEs1JOCQ8B3A5YBE+pe4XYJlk+1DxPcYNsCE57blL0tD
X-Gm-Message-State: AOJu0YzDPgASE8Yzo5ZvyF5w4WiJo3q9nF9krjSGcpJSCRRyuf5V3z9Q
	63k4KU9RG2tcdwacg2/wu8Zo9dvoIi+kShQ6VgcGfmnf/H6yFu4NRZgHE9ZR934L53/+hDVWJoG
	aldZmoA+A6+rv22U02LoAAUAxbfw=
X-Google-Smtp-Source: AGHT+IF6kM6FPL1g56qjjrg0YIhIrnSGawvxdez+an4Bc2ID+El1oftRl4NtiEJV8wDJly2Cb9f2wImTgzMVFWBWgVM=
X-Received: by 2002:a05:6a20:d805:b0:1b0:2e69:8722 with SMTP id
 adf61e73a8af0-1b02e698a0fmr3818167637.54.1715940815587; Fri, 17 May 2024
 03:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de> <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
 <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com> <CAMKF1sowdVbtY7ipA44GzMDcWUVY-qejW33UDB6Q75zfwh-rTg@mail.gmail.com>
In-Reply-To: <CAMKF1sowdVbtY7ipA44GzMDcWUVY-qejW33UDB6Q75zfwh-rTg@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 17 May 2024 12:13:23 +0200
Message-ID: <CAGAf8LwTKLZq00Jf16gcwkbYieKXDGoQC4BQAmH4-ZVaYRmB7Q@mail.gmail.com>
Subject: Re: [yocto] Strange errors while executing poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
To: Khem Raj <raj.khem@gmail.com>
Cc: Ross Burton <ross.burton@arm.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>
Content-Type: multipart/mixed; boundary="000000000000c4ea6b0618a39a60"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 10:47:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63130

--000000000000c4ea6b0618a39a60
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello People,

Thank you very much for helping me with uninative.

This command does it for time being (as said): INHERIT:remove =3D =E2=80=9C=
uninative=E2=80=9D

I fixed a few issues furthermore (my own mess).

But interesting enough, I have another package issue which popped up
(the last obstacle before building .cpio):

ERROR: cracklib-native-2.9.11-r0 do_compile: oe_runmake failed
ERROR: cracklib-native-2.9.11-r0 do_compile:
ExecutionError('/home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/buil=
d/tmp/work/x86_64-linux/cracklib-native/2.9.11/temp/run.do_compile.628699',
1, None, None)
ERROR: Logfile of failure stored in:
/home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/tmp/work/x86_6=
4-linux/cracklib-native/2.9.11/temp/log.do_compile.628699

I even have no idea what the purpose of cracklib-native package is?

Should I disable it (if not important) in local.conf?

The .log. (cracklib-native.log) file is attached to this email.

Zee
_______

On Thu, May 16, 2024 at 5:58=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:
>
> We need a new uninative tarball generated with gcc14 for f40 so there mig=
ht be issues like you are seeing due to that. You can disable uninative tem=
porarily in your build and see if that works for the moment
>
> On Thu, May 16, 2024 at 8:39=E2=80=AFAM Ross Burton via lists.yoctoprojec=
t.org <ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
>>
>>
>>
>> > On 16 May 2024, at 16:31, Zoran via lists.yoctoproject.org <zoran.stoj=
savljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
>> > The full log (full_log.txt) is attached to this @, as per Ur request
>> > (lot of stuff, echt!).
>>
>> From your log:
>>
>> WARNING: Host distribution "fedora-40" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
>>
>> This is saying that Fedora 40 has not been validated and you may experie=
nce unexpected failures.
>>
>> Later in the log:
>>
>> pzstd: /home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/tmp/=
sysroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `CXXABI_1.3=
.15' not found (required by pzstd)
>>
>> That is the sort of unexpected failure you can expect when using Fedora =
40, because it has not been validated.
>>
>> This is an incompatibility with Fedora 40 and uninative, so until this i=
s resolved you can disable uninative with this in your local.conf:
>>
>> INHERIT:remove =3D =E2=80=9Cuninative=E2=80=9D
>>
>> Ross
>>=20
>>

--000000000000c4ea6b0618a39a60
Content-Type: text/x-log; charset="UTF-8"; name="cracklib-native.log"
Content-Disposition: attachment; filename="cracklib-native.log"
Content-Transfer-Encoding: base64
Content-ID: <f_lwaitzfq0>
X-Attachment-Id: f_lwaitzfq0

U3N0YXRlIHN1bW1hcnk6IFdhbnRlZCAyMCBMb2NhbCAwIE1pcnJvcnMgMCBNaXNzZWQgMjAgQ3Vy
cmVudCAyMzg0ICgwJSBtYXRjaCwgOTklIGNvbXBsZXRlKTAKSW5pdGlhbGlzaW5nIHRhc2tzOiAx
MDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyN8
IFRpbWU6IDA6MDA6MDUKTk9URTogRXhlY3V0aW5nIFRhc2tzCkVSUk9SOiBjcmFja2xpYi1uYXRp
dmUtMi45LjExLXIwIGRvX2NvbXBpbGU6IG9lX3J1bm1ha2UgZmFpbGVkCkVSUk9SOiBjcmFja2xp
Yi1uYXRpdmUtMi45LjExLXIwIGRvX2NvbXBpbGU6IEV4ZWN1dGlvbkVycm9yKCcvaG9tZS92dXNl
ci9wcm9qZWN0czIveW9jdG8veW9jdG9fdGVzdDIvYmJiLXlvY3RvL3Bva3kvYnVpbGQvdG1wL3dv
cmsveDg2XzY0LWxpbnV4L2NyYWNrbGliLW5hdGl2ZS8yLjkuMTEvdGVtcC9ydW4uZG9fY29tcGls
ZS42Mjg2OTknLCAxLCBOb25lLCBOb25lKQpFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3Jl
ZCBpbjogL2hvbWUvdnVzZXIvcHJvamVjdHMyL3lvY3RvL3lvY3RvX3Rlc3QyL2JiYi15b2N0by9w
b2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9jcmFja2xpYi1uYXRpdmUvMi45LjExL3Rl
bXAvbG9nLmRvX2NvbXBpbGUuNjI4Njk5CkxvZyBkYXRhIGZvbGxvd3M6CnwgREVCVUc6IEV4ZWN1
dGluZyBweXRob24gZnVuY3Rpb24gYXV0b3Rvb2xzX2FjbG9jYWxzCnwgREVCVUc6IFNJVEUgZmls
ZXMgWydlbmRpYW4tbGl0dGxlJywgJ2NvbW1vbi1saW51eCcsICdjb21tb24tZ2xpYmMnLCAnYml0
LTY0JywgJ3g4Nl82NC1saW51eCcsICdjb21tb24nXQp8IERFQlVHOiBQeXRob24gZnVuY3Rpb24g
YXV0b3Rvb2xzX2FjbG9jYWxzIGZpbmlzaGVkCnwgREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5j
dGlvbiBkb19jb21waWxlCnwgTk9URTogbWFrZSAtaiA0CnwgbWFrZSAgYWxsLXJlY3Vyc2l2ZQp8
IG1ha2VbMV06IEVudGVyaW5nIGRpcmVjdG9yeSAnL2hvbWUvdnVzZXIvcHJvamVjdHMyL3lvY3Rv
L3lvY3RvX3Rlc3QyL2JiYi15b2N0by9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9j
cmFja2xpYi1uYXRpdmUvMi45LjExL2J1aWxkJwp8IE1ha2luZyBhbGwgaW4gbTQKfCBtYWtlWzJd
OiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL3Z1c2VyL3Byb2plY3RzMi95b2N0by95b2N0b190
ZXN0Mi9iYmIteW9jdG8vcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvY3JhY2tsaWIt
bmF0aXZlLzIuOS4xMS9idWlsZC9tNCcKfCBtYWtlWzJdOiBOb3RoaW5nIHRvIGJlIGRvbmUgZm9y
ICdhbGwnLgp8IG1ha2VbMl06IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9tZS92dXNlci9wcm9qZWN0
czIveW9jdG8veW9jdG9fdGVzdDIvYmJiLXlvY3RvL3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0
LWxpbnV4L2NyYWNrbGliLW5hdGl2ZS8yLjkuMTEvYnVpbGQvbTQnCnwgTWFraW5nIGFsbCBpbiBs
aWIKfCBtYWtlWzJdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL3Z1c2VyL3Byb2plY3RzMi95
b2N0by95b2N0b190ZXN0Mi9iYmIteW9jdG8vcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtbGlu
dXgvY3JhY2tsaWItbmF0aXZlLzIuOS4xMS9idWlsZC9saWInCnwgL2Jpbi9iYXNoIC4uL2xpYnRv
b2wgIC0tdGFnPUNDICAgLS1tb2RlPWNvbXBpbGUgZ2NjICAtREhBVkVfQ09ORklHX0ggLUkuIC1J
Li4vLi4vZ2l0L3NyYy9saWIgLUkuLiAgLUkuIC1JLi4gLUkuLi8uLi9naXQvc3JjL2xpYiAtRElO
X0NSQUNLTElCICctRERFRkFVTFRfQ1JBQ0tMSUJfRElDVD0iL2hvbWUvdnVzZXIvcHJvamVjdHMy
L3lvY3RvL3lvY3RvX3Rlc3QyL2JiYi15b2N0by9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1s
aW51eC9jcmFja2xpYi1uYXRpdmUvMi45LjExL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Ivc2hh
cmUvY3JhY2tsaWIvcHdfZGljdCInIC1XYWxsIC1pc3lzdGVtL2hvbWUvdnVzZXIvcHJvamVjdHMy
L3lvY3RvL3lvY3RvX3Rlc3QyL2JiYi15b2N0by9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1s
aW51eC9jcmFja2xpYi1uYXRpdmUvMi45LjExL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvaW5j
bHVkZSAgLWlzeXN0ZW0vaG9tZS92dXNlci9wcm9qZWN0czIveW9jdG8veW9jdG9fdGVzdDIvYmJi
LXlvY3RvL3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LWxpbnV4L2NyYWNrbGliLW5hdGl2ZS8y
LjkuMTEvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9pbmNsdWRlIC1PMiAtcGlwZSAtYyAtbyBw
YWNrbGliLmxvIC4uLy4uL2dpdC9zcmMvbGliL3BhY2tsaWIuYwp8IGxpYnRvb2w6IGNvbXBpbGU6
ICBnY2MgLURIQVZFX0NPTkZJR19IIC1JLiAtSS4uLy4uL2dpdC9zcmMvbGliIC1JLi4gLUkuIC1J
Li4gLUkuLi8uLi9naXQvc3JjL2xpYiAtRElOX0NSQUNLTElCIC1EREVGQVVMVF9DUkFDS0xJQl9E
SUNUPVwiL2hvbWUvdnVzZXIvcHJvamVjdHMyL3lvY3RvL3lvY3RvX3Rlc3QyL2JiYi15b2N0by9w
b2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9jcmFja2xpYi1uYXRpdmUvMi45LjExL3Jl
Y2lwZS1zeXNyb290LW5hdGl2ZS91c3Ivc2hhcmUvY3JhY2tsaWIvcHdfZGljdFwiIC1XYWxsIC1p
c3lzdGVtL2hvbWUvdnVzZXIvcHJvamVjdHMyL3lvY3RvL3lvY3RvX3Rlc3QyL2JiYi15b2N0by9w
b2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9jcmFja2xpYi1uYXRpdmUvMi45LjExL3Jl
Y2lwZS1zeXNyb290LW5hdGl2ZS91c3IvaW5jbHVkZSAtaXN5c3RlbS9ob21lL3Z1c2VyL3Byb2pl
Y3RzMi95b2N0by95b2N0b190ZXN0Mi9iYmIteW9jdG8vcG9reS9idWlsZC90bXAvd29yay94ODZf
NjQtbGludXgvY3JhY2tsaWItbmF0aXZlLzIuOS4xMS9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNy
L2luY2x1ZGUgLU8yIC1waXBlIC1jIC4uLy4uL2dpdC9zcmMvbGliL3BhY2tsaWIuYyAgLWZQSUMg
LURQSUMgLW8gLmxpYnMvcGFja2xpYi5vCnwgLi4vLi4vZ2l0L3NyYy9saWIvcGFja2xpYi5jOiBJ
biBmdW5jdGlvbiDigJhId21zSG9zdFRvQmlnRW5kaWFu4oCZOgp8IC4uLy4uL2dpdC9zcmMvbGli
L3BhY2tsaWIuYzoxNTM6MTM6IHdhcm5pbmc6IHZhbHVlIGNvbXB1dGVkIGlzIG5vdCB1c2VkIFst
V3VudXNlZC12YWx1ZV0KfCAgIDE1MyB8ICAgICAgICAgICAgICpwSHdtczY0Kys7CnwgICAgICAg
fCAgICAgICAgICAgICBefn5+fn5+fn5+CnwgLi4vLi4vZ2l0L3NyYy9saWIvcGFja2xpYi5jOjE2
NDoxMzogd2FybmluZzogdmFsdWUgY29tcHV0ZWQgaXMgbm90IHVzZWQgWy1XdW51c2VkLXZhbHVl
XQp8ICAgMTY0IHwgICAgICAgICAgICAgKnBId21zMzIrKzsKfCAgICAgICB8ICAgICAgICAgICAg
IF5+fn5+fn5+fn4KfCAuLi8uLi9naXQvc3JjL2xpYi9wYWNrbGliLmM6IEluIGZ1bmN0aW9uIOKA
mEh3bXNCaWdFbmRpYW5Ub0hvc3TigJk6CnwgLi4vLi4vZ2l0L3NyYy9saWIvcGFja2xpYi5jOjE5
ODoyMTogd2FybmluZzogb3BlcmF0aW9uIG9uIOKAmHBId21zNjTigJkgbWF5IGJlIHVuZGVmaW5l
ZCBbLVdzZXF1ZW5jZS1wb2ludF0KfCAgIDE5OCB8ICAgICAgICAgICAgICpwSHdtczY0KysgPSBi
c3dhcF82NCgqcEh3bXM2NCk7CnwgICAgICAgfCAgICAgICAgICAgICAgfn5+fn5+fl5+CnwgLi4v
Li4vZ2l0L3NyYy9saWIvcGFja2xpYi5jOjIwOToxMzogd2FybmluZzogdmFsdWUgY29tcHV0ZWQg
aXMgbm90IHVzZWQgWy1XdW51c2VkLXZhbHVlXQp8ICAgMjA5IHwgICAgICAgICAgICAgKnBId21z
MzIrKzsKfCAgICAgICB8ICAgICAgICAgICAgIF5+fn5+fn5+fn4KfCAuLi8uLi9naXQvc3JjL2xp
Yi9wYWNrbGliLmM6IEluIGZ1bmN0aW9uIOKAmFBXQ2xvc2XigJk6CnwgLi4vLi4vZ2l0L3NyYy9s
aWIvcGFja2xpYi5jOjU1NDo0MDogZXJyb3I6IHBhc3NpbmcgYXJndW1lbnQgMSBvZiDigJhId21z
SG9zdFRvQmlnRW5kaWFu4oCZIGZyb20gaW5jb21wYXRpYmxlIHBvaW50ZXIgdHlwZSBbLVdpbmNv
bXBhdGlibGUtcG9pbnRlci10eXBlc10KfCAgIDU1NCB8ICAgICAgICAgICAgIEh3bXNIb3N0VG9C
aWdFbmRpYW4odG1wX3B3cC5od21zLCBzaXplb2YodG1wX3B3cC5od21zKSwgZW5faXMzMik7Cnwg
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn5+fn5efn5+fgp8ICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAp8ICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QgKiB7YWthIHVu
c2lnbmVkIGludCAqfQp8IC4uLy4uL2dpdC9zcmMvbGliL3BhY2tsaWIuYzoxNDI6Mjc6IG5vdGU6
IGV4cGVjdGVkIOKAmGNoYXIgKuKAmSBidXQgYXJndW1lbnQgaXMgb2YgdHlwZSDigJh1aW50MzJf
dCAq4oCZIHtha2Eg4oCYdW5zaWduZWQgaW50ICrigJl9CnwgICAxNDIgfCBId21zSG9zdFRvQmln
RW5kaWFuKGNoYXIgKnBId21zLCBpbnQgbkxlbixpbnQgbkJpdFR5cGUpCnwgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgIH5+fn5+fl5+fn5+CnwgbWFrZVsyXTogKioqIFtNYWtlZmlsZTo0ODg6
IHBhY2tsaWIubG9dIEVycm9yIDEKfCBtYWtlWzJdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUv
dnVzZXIvcHJvamVjdHMyL3lvY3RvL3lvY3RvX3Rlc3QyL2JiYi15b2N0by9wb2t5L2J1aWxkL3Rt
cC93b3JrL3g4Nl82NC1saW51eC9jcmFja2xpYi1uYXRpdmUvMi45LjExL2J1aWxkL2xpYicKfCBt
YWtlWzFdOiAqKiogW01ha2VmaWxlOjQ0MTogYWxsLXJlY3Vyc2l2ZV0gRXJyb3IgMQp8IG1ha2Vb
MV06IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9tZS92dXNlci9wcm9qZWN0czIveW9jdG8veW9jdG9f
dGVzdDIvYmJiLXlvY3RvL3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LWxpbnV4L2NyYWNrbGli
LW5hdGl2ZS8yLjkuMTEvYnVpbGQnCnwgbWFrZTogKioqIFtNYWtlZmlsZTozNzE6IGFsbF0gRXJy
b3IgMgp8IEVSUk9SOiBvZV9ydW5tYWtlIGZhaWxlZAp8IFdBUk5JTkc6IC9ob21lL3Z1c2VyL3By
b2plY3RzMi95b2N0by95b2N0b190ZXN0Mi9iYmIteW9jdG8vcG9reS9idWlsZC90bXAvd29yay94
ODZfNjQtbGludXgvY3JhY2tsaWItbmF0aXZlLzIuOS4xMS90ZW1wL3J1bi5kb19jb21waWxlLjYy
ODY5OToxODIgZXhpdCAxIGZyb20gJ2V4aXQgMScKfCBXQVJOSU5HOiBCYWNrdHJhY2UgKEJCIGdl
bmVyYXRlZCBzY3JpcHQpOgp8IAkjMTogYmJmYXRhbF9sb2csIC9ob21lL3Z1c2VyL3Byb2plY3Rz
Mi95b2N0by95b2N0b190ZXN0Mi9iYmIteW9jdG8vcG9reS9idWlsZC90bXAvd29yay94ODZfNjQt
bGludXgvY3JhY2tsaWItbmF0aXZlLzIuOS4xMS90ZW1wL3J1bi5kb19jb21waWxlLjYyODY5OSwg
bGluZSAxODIKfCAJIzI6IGRpZSwgL2hvbWUvdnVzZXIvcHJvamVjdHMyL3lvY3RvL3lvY3RvX3Rl
c3QyL2JiYi15b2N0by9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9jcmFja2xpYi1u
YXRpdmUvMi45LjExL3RlbXAvcnVuLmRvX2NvbXBpbGUuNjI4Njk5LCBsaW5lIDE2Ngp8IAkjMzog
b2VfcnVubWFrZSwgL2hvbWUvdnVzZXIvcHJvamVjdHMyL3lvY3RvL3lvY3RvX3Rlc3QyL2JiYi15
b2N0by9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9jcmFja2xpYi1uYXRpdmUvMi45
LjExL3RlbXAvcnVuLmRvX2NvbXBpbGUuNjI4Njk5LCBsaW5lIDE2MQp8IAkjNDogYXV0b3Rvb2xz
X2RvX2NvbXBpbGUsIC9ob21lL3Z1c2VyL3Byb2plY3RzMi95b2N0by95b2N0b190ZXN0Mi9iYmIt
eW9jdG8vcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvY3JhY2tsaWItbmF0aXZlLzIu
OS4xMS90ZW1wL3J1bi5kb19jb21waWxlLjYyODY5OSwgbGluZSAxNTYKfCAJIzU6IGRvX2NvbXBp
bGUsIC9ob21lL3Z1c2VyL3Byb2plY3RzMi95b2N0by95b2N0b190ZXN0Mi9iYmIteW9jdG8vcG9r
eS9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvY3JhY2tsaWItbmF0aXZlLzIuOS4xMS90ZW1w
L3J1bi5kb19jb21waWxlLjYyODY5OSwgbGluZSAxNTEKfCAJIzY6IG1haW4sIC9ob21lL3Z1c2Vy
L3Byb2plY3RzMi95b2N0by95b2N0b190ZXN0Mi9iYmIteW9jdG8vcG9reS9idWlsZC90bXAvd29y
ay94ODZfNjQtbGludXgvY3JhY2tsaWItbmF0aXZlLzIuOS4xMS90ZW1wL3J1bi5kb19jb21waWxl
LjYyODY5OSwgbGluZSAxOTUKRVJST1I6IFRhc2sgKHZpcnR1YWw6bmF0aXZlOi9ob21lL3Z1c2Vy
L3Byb2plY3RzMi95b2N0by95b2N0b190ZXN0Mi9iYmIteW9jdG8vcG9reS9tZXRhL3JlY2lwZXMt
ZXh0ZW5kZWQvY3JhY2tsaWIvY3JhY2tsaWJfMi45LjExLmJiOmRvX2NvbXBpbGUpIGZhaWxlZCB3
aXRoIGV4aXQgY29kZSAnMScKTk9URTogVGFza3MgU3VtbWFyeTogQXR0ZW1wdGVkIDQ5NTAgdGFz
a3Mgb2Ygd2hpY2ggNDk0OSBkaWRuJ3QgbmVlZCB0byBiZSByZXJ1biBhbmQgMSBmYWlsZWQuCgpT
dW1tYXJ5OiAxIHRhc2sgZmFpbGVkOgogIHZpcnR1YWw6bmF0aXZlOi9ob21lL3Z1c2VyL3Byb2pl
Y3RzMi95b2N0by95b2N0b190ZXN0Mi9iYmIteW9jdG8vcG9reS9tZXRhL3JlY2lwZXMtZXh0ZW5k
ZWQvY3JhY2tsaWIvY3JhY2tsaWJfMi45LjExLmJiOmRvX2NvbXBpbGUKU3VtbWFyeTogVGhlcmUg
d2FzIDEgV0FSTklORyBtZXNzYWdlLgpTdW1tYXJ5OiBUaGVyZSB3ZXJlIDIgRVJST1IgbWVzc2Fn
ZXMsIHJldHVybmluZyBhIG5vbi16ZXJvIGV4aXQgY29kZS4K

--000000000000c4ea6b0618a39a60--

