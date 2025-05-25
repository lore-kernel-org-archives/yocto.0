Return-Path: <tsoos99@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC88C54E90
	for <webhook@archiver.kernel.org>; Sun, 25 May 2025 12:15:04 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.8257.1748175297370190902
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 May 2025 05:14:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bRQldVmp;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: tsoos99@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ad1f6aa2f84so277585566b.0
        for <yocto@lists.yoctoproject.org>; Sun, 25 May 2025 05:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748175296; x=1748780096; darn=lists.yoctoproject.org;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=3IkDWYGU8FoDegBr6Ev50XEow+6Tp1XUKJBjKUMNcRQ=;
        b=bRQldVmpmkOKJWxeIKA1OJ/3CWqnm64813qSgziYoZBHphe1dUCoRoKwgQGWThXGNC
         ku0t2iLhmNbxqizqXfsyIhUghetb+XTX31EMMq3XT6HDzJEom7JZcCM7U/XvwwDsdbr0
         bcwkx/Q7fNiZG6zzQZgeaWZszXSaMQWgg9+rCySkve0inODs2y8ZJk5G2XGnO9rfnND/
         lKqpLF3bJgoHbCU7bOM9q5+0Z1l4C47yvQ4/JZiPQUmQZlBggS9HF63fzOxERf3w/y11
         /FqVDhYpb31qPLHBlcFlC9medgFMME2C4fkeZ/mRmfJNa8rt2e2wxQDooen7UyPZFQee
         gBog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748175296; x=1748780096;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3IkDWYGU8FoDegBr6Ev50XEow+6Tp1XUKJBjKUMNcRQ=;
        b=OOsNTA6Ti9ihWjVpSirlX0mah60GUn8W6L6LIDfmYp7zUTYAQ1U7zUPeMc+RAglTHB
         eMcJ60ot6u1Xfs9O2WTcdpsa760/RlTZghMZemIkgDKkmPV7y90yBe5yEl6Lmb3brf5k
         M6JQUZLsKjVLPz29W1Q2rjSKHr1VyYBVKfRyqS+1a+EIMJX0wxWkgNMZnJ11613MWunH
         Lm5dIVvUD9Q1q9Fdt5drYqioxcP02va0EBTXLwl5zqn37QmSHnMAR43HNjspV9D0dxoD
         VJSnVMuNXaqYnnWXhO5WqeH5uH4P7gHM+F21bfcPzROJ0vykdY8ujhc4MvincqllMZh/
         yOIg==
X-Gm-Message-State: AOJu0Ywq+j6AQEEftB1acym1uin30HylgwgyiVNjHBpvylX8vl3+cd1D
	4qPRB57VHUKUX/hmJgSSk2lg64M7pCW/d1MIvUG8qH2ziIr2gS802t5+
X-Gm-Gg: ASbGncsu+jnOs65XBySC0+/qyAMkbqgrMq+aGe/q78DPiXlVenytphIaNe9zsZ3ffUs
	qWEosV2E3MkVgUbDUuiBcLKiwmCAH6daUD9AiMTwOEjUJdJNHQsmChKJO6jOTHmZXTld6aLHOBV
	CbgfcuAt6/qNZsEDlbFrYmNk7/HzwFsbqiwT8FhpWWZZ8Zi8eGRFPycTQt/1kL4H7nFM8kN8OLT
	1TndwALuRPsPL4H53+ideyHIuo66kuG6W2vyguqBo+o8ZJ20PqnsDbkpJxKVYc8ugY6cBZH6xkF
	khkQ3jcFUmjp3zSNsZQkWqlp00tDTzRFrDSJuY7CrvdtEcEinw3304g2tGqkDpn6cw==
X-Google-Smtp-Source: AGHT+IEQ/O8mzqr1D4y4h+5ZXse/I1PalXXkcpfKgNVrtSlbQjRBlp2W0axmVl5IMyIs2vo0D+RYqw==
X-Received: by 2002:a17:907:e989:b0:acb:37ae:619c with SMTP id a640c23a62f3a-ad8598a750dmr472555066b.15.1748175294759;
        Sun, 25 May 2025 05:14:54 -0700 (PDT)
Received: from smtpclient.apple ([89.223.204.162])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d497208sm1525398666b.139.2025.05.25.05.14.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 May 2025 05:14:54 -0700 (PDT)
From: =?utf-8?B?VGFtw6FzIFNvw7Nz?= <tsoos99@gmail.com>
Message-Id: <D17EED42-F521-4362-8AA6-31D8EC47F581@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0D5E65D9-2530-4978-9C7F-A734561C73D4"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Re: [yocto] How to upgrade rust? #rust #scarthgap #sdk
Date: Sun, 25 May 2025 14:14:43 +0200
In-Reply-To: <18beb35e-66f3-4ecf-9017-31b3b7e23111@gmail.com>
Cc: yocto@lists.yoctoproject.org
To: Gyorgy Sarvari <skandigraun@gmail.com>
References: <GR0d.1748137994057198920.MOMS@lists.yoctoproject.org>
 <18beb35e-66f3-4ecf-9017-31b3b7e23111@gmail.com>
X-Mailer: Apple Mail (2.3826.600.51.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 May 2025 12:15:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65420


--Apple-Mail=_0D5E65D9-2530-4978-9C7F-A734561C73D4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

That=E2=80=99s great! Cloned the layer, added a few PREFERRED_VERSION =
variables and it just worked. I=E2=80=99m so happy when stuff just =
works:)
Thank you!

> On 2025. May 25., at 8:07, Gyorgy Sarvari <skandigraun@gmail.com> =
wrote:
>=20
> On 5/25/25 03:53, Tam=C3=A1s So=C3=B3s via lists.yoctoproject.org =
<http://lists.yoctoproject.org/> wrote:
>> Hi.=20
>> =20
>> I'm trying to upgrade rust on Scarthgap. The current version is
>> 1.75.0. So I tried to get to 1.76.0.
>> I ran devtool upgrade rust-llvm, which seemed to work. I resolved =
some
>> conflicts and was able to build it.
>> Then I tried devtool upgrade rust. After getting past the conflicts
>> again I get the following error:
>> ERROR: rust-1.76.0-r0 do_rust_setup_snapshot:
>> =
ExecutionError('/home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-lin=
ux-gnueabi/rust/1.76.0/temp/run.do_rust_setup_snapshot.2027011',
>> 127, None, None)
>> ERROR: Logfile of failure stored in:
>> =
/home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/=
1.76.0/temp/log.do_rust_setup_snapshot.2027011
>> Log data follows:
>> | DEBUG: Executing shell function do_rust_setup_snapshot
>> |
>> =
/home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/=
1.76.0/temp/run.do_rust_setup_snapshot.2027011:
>> 152:
>> =
/home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/=
1.76.0/rust-snapshot-components/*/install.sh:
>> not found
>> | WARNING: exit code 127 from a shell command.
>> ERROR: Task
>> =
(/home/tamas/poky/build/workspace/recipes/rust/rust_1.76.0.bb:do_rust_setu=
p_snapshot)
>> failed with exit code '1'
>> =20
>> This part of the recipe didn't seem to have changed. I'm out of =
ideas.
>> What could be going wrong here?
>=20
> The recommended way to upgrade Rust in Scarthgap would be to use the
> meta-lts-mixins layer[1]. It regularly backports the Rust updates from
> the master branch. Add it to your project, optionally add the =
oe-core's
> rust folder to BBMASK (or use PREFERRED_VERSION variables), and build =
away.
>=20
> [1]: https://git.yoctoproject.org/meta-lts-mixins/ - "scarthgap/rust" =
branch
>=20
>> =20
>> Ultimately I need nativesdk-rust for my app development. Trying to
>> build that results in another error:
>> ERROR: nativesdk-rust-1.76.0-r0 do_patch: Applying patch
>> 'zlib-off64_t.patch' on target directory
>> =
'/home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-=
rust/1.76.0/rustc-1.76.0-src'
>> CmdError('quilt --quiltrc
>> =
/home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-r=
ust/1.76.0/recipe-sysroot-native/etc/quiltrc
>> push', 0, 'stdout: Applying patch zlib-off64_t.patch
>> patching file vendor/libz-sys/src/zlib/gzguts.h
>> patching file vendor/libz-sys/.cargo-checksum.json
>> Hunk #1 FAILED at 1.
>> 1 out of 1 hunk FAILED -- rejects in file
>> vendor/libz-sys/.cargo-checksum.json
>> Patch zlib-off64_t.patch does not apply (enforce with -f)
>> stderr: ')
>> ERROR: Logfile of failure stored in:
>> =
/home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-r=
ust/1.76.0/temp/log.do_patch.2028507
>> ERROR: Task
>> =
(virtual:nativesdk:/home/tamas/poky/build/workspace/recipes/rust/rust_1.76=
.0.bb:do_patch)
>> failed with exit code '1'
>>=20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#65418): =
https://lists.yoctoproject.org/g/yocto/message/65418
>> Mute This Topic: https://lists.yoctoproject.org/mt/113289446/6084445
>> Mute #rust:https://lists.yoctoproject.org/g/yocto/mutehashtag/rust
>> Mute =
#scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
>> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
>> Group Owner: yocto+owner@lists.yoctoproject.org =
<mailto:yocto+owner@lists.yoctoproject.org>
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[skandigraun@gmail.com <mailto:skandigraun@gmail.com>]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--Apple-Mail=_0D5E65D9-2530-4978-9C7F-A734561C73D4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">That=E2=80=99s =
great! Cloned the layer, added a few PREFERRED_VERSION variables and it =
just worked. I=E2=80=99m so happy when stuff just works:)<div>Thank =
you!<br><div><br><blockquote type=3D"cite"><div>On 2025. May 25., at =
8:07, Gyorgy Sarvari &lt;skandigraun@gmail.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><meta charset=3D"UTF-8"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">On 5/25/25 03:53, Tam=C3=A1s So=C3=B3s =
via<span class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"http://lists.yoctoproject.org/" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">lists.yoctoproject.org</a><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;"><span =
class=3D"Apple-converted-space">&nbsp;</span>wrote:</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><blockquote =
type=3D"cite" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">Hi.&nbsp;<br>&nbsp;<br>I'm trying to upgrade rust on Scarthgap. =
The current version is<br>1.75.0. So I tried to get to 1.76.0.<br>I ran =
devtool upgrade rust-llvm, which seemed to work. I resolved =
some<br>conflicts and was able to build it.<br>Then I tried devtool =
upgrade rust. After getting past the conflicts<br>again I get the =
following error:<br>ERROR: rust-1.76.0-r0 =
do_rust_setup_snapshot:<br>ExecutionError('/home/tamas/poky/build/tmp/work=
/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/1.76.0/temp/run.do_rust_setup_s=
napshot.2027011',<br>127, None, None)<br>ERROR: Logfile of failure =
stored =
in:<br>/home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueab=
i/rust/1.76.0/temp/log.do_rust_setup_snapshot.2027011<br>Log data =
follows:<br>| DEBUG: Executing shell function =
do_rust_setup_snapshot<br>|<br>/home/tamas/poky/build/tmp/work/cortexa8t2h=
f-neon-zeus-linux-gnueabi/rust/1.76.0/temp/run.do_rust_setup_snapshot.2027=
011:<br>152:<br>/home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-lin=
ux-gnueabi/rust/1.76.0/rust-snapshot-components/*/install.sh:<br>not =
found<br>| WARNING: exit code 127 from a shell command.<br>ERROR: =
Task<br>(/home/tamas/poky/build/workspace/recipes/rust/rust_1.76.0.bb:do_r=
ust_setup_snapshot)<br>failed with exit code '1'<br>&nbsp;<br>This part =
of the recipe didn't seem to have changed. I'm out of ideas.<br>What =
could be going wrong here?<br></blockquote><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">The =
recommended way to upgrade Rust in Scarthgap would be to use =
the</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;">meta-lts-mixins =
layer[1]. It regularly backports the Rust updates from</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">the master branch. Add it to your project, =
optionally add the oe-core's</span><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">rust =
folder to BBMASK (or use PREFERRED_VERSION variables), and build =
away.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;">[1]:<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://git.yoctoproject.org/meta-lts-mixins/" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: =
0px;">https://git.yoctoproject.org/meta-lts-mixins/</a><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;"><span =
class=3D"Apple-converted-space">&nbsp;</span>- "scarthgap/rust" =
branch</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">&nbsp;<br>Ultimately I need nativesdk-rust for =
my app development. Trying to<br>build that results in another =
error:<br>ERROR: nativesdk-rust-1.76.0-r0 do_patch: Applying =
patch<br>'zlib-off64_t.patch' on target =
directory<br>'/home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-lin=
ux/nativesdk-rust/1.76.0/rustc-1.76.0-src'<br>CmdError('quilt =
--quiltrc<br>/home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linu=
x/nativesdk-rust/1.76.0/recipe-sysroot-native/etc/quiltrc<br>push', 0, =
'stdout: Applying patch zlib-off64_t.patch<br>patching file =
vendor/libz-sys/src/zlib/gzguts.h<br>patching file =
vendor/libz-sys/.cargo-checksum.json<br>Hunk #1 FAILED at 1.<br>1 out of =
1 hunk FAILED -- rejects in =
file<br>vendor/libz-sys/.cargo-checksum.json<br>Patch zlib-off64_t.patch =
does not apply (enforce with -f)<br>stderr: ')<br>ERROR: Logfile of =
failure stored =
in:<br>/home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nati=
vesdk-rust/1.76.0/temp/log.do_patch.2028507<br>ERROR: =
Task<br>(virtual:nativesdk:/home/tamas/poky/build/workspace/recipes/rust/r=
ust_1.76.0.bb:do_patch)<br>failed with exit code =
'1'<br><br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>Links: You =
receive all messages sent to this group.<br>View/Reply Online (#65418): =
https://lists.yoctoproject.org/g/yocto/message/65418<br>Mute This =
Topic:<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://lists.yoctoproject.org/mt/113289446/6084445">https://lists=
.yoctoproject.org/mt/113289446/6084445</a><br>Mute #rust:<a =
href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/rust">https://l=
ists.yoctoproject.org/g/yocto/mutehashtag/rust</a><br>Mute #scarthgap:<a =
href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap">http=
s://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap</a><br>Mute =
#sdk:<a =
href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk">https://li=
sts.yoctoproject.org/g/yocto/mutehashtag/sdk</a><br>Group Owner:<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yocto=
project.org</a><br>Unsubscribe:<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctop=
roject.org/g/yocto/unsub</a><span =
class=3D"Apple-converted-space">&nbsp;</span>[<a =
href=3D"mailto:skandigraun@gmail.com">skandigraun@gmail.com</a>]<br>-=3D-=3D=
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</blockquote></div></blockquote></div=
><br></div></body></html>=

--Apple-Mail=_0D5E65D9-2530-4978-9C7F-A734561C73D4--

