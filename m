Return-Path: <tsoos99@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0C45C54E71
	for <webhook@archiver.kernel.org>; Sat, 24 May 2025 08:16:02 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.3422.1748074561618956838
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 May 2025 01:16:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SFb9x6KS;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: tsoos99@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ad574992fcaso98639166b.1
        for <yocto@lists.yoctoproject.org>; Sat, 24 May 2025 01:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748074560; x=1748679360; darn=lists.yoctoproject.org;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=VXZojcCe7SXaW/vxnXYeL3Km+oCKm9F2FlHqJISMf8w=;
        b=SFb9x6KSSWzyBqqgzrIJaST3hdv+ie/RC5uY8ys4V3vQ1Vh17FHrC5YKNiEyRwP3FB
         31w0BNixvhUqeU0ElLanj7b386M8WvGVVrm/zX1UeImc20D0C5CUl9U6DsE9bbXFqrMc
         QzOVirvaR0vufG58TEUVwcDaclddSBVv3UsNFhTs21zAwix0g6bqhSVLGts5T0U9Gz/S
         F2MsnPNcUsInRer7jQjL133LijF/k6i135aoQ2wlv7HCUTbmv4B4IwZw5oVeLHjOi9s+
         Jh+5EFItaDVGX81uP6nsUadzhv4wiBtIpmwXX6xQKck96loZthPfbDqHGKtTuPCEAGp7
         W0JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748074560; x=1748679360;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VXZojcCe7SXaW/vxnXYeL3Km+oCKm9F2FlHqJISMf8w=;
        b=XUyZZf2O+6KS7EPVdlAAaTRB9lDyuZI4kRqo5CGY7ca74+bCu2p/9GL/p5f0ePIqvX
         gzH6Z/PmRD/CkE6zfRB2VwPrxxSDC4O2YNnA8CpnBZePfKkU6a8NuVvq5+j7oOqHal1x
         gK0hQTaHdvGiBgx58Siqe94mxCGZlwML4Eg5b7EGfXrUZEap4XAIcrLyW6ONizq99qeA
         uDqo+8vx/5gS4NfVLviUEBpBYNVJiYXfjs2xDBqoIxqOLKQB1PuJIz1SGt9dJllnS95E
         GGzLgbmd8C2eiSiDc4AenXPM7xDC70OoGm+PjY4E6TAm797QeRt8s1XLB28zbk1mAyVZ
         nEIg==
X-Gm-Message-State: AOJu0Yw7L9LMYzidU9D5W5Lq83DswfItOecQ60WqFd2sN8DTcoIRwC9f
	6Z6HLbweZmSut6i5GE/pJ+VvED5W205IO7yZNGLBb6PfLsj6BCfZAl+A
X-Gm-Gg: ASbGncswzqmTOrQ5Mt2Or447Fg7qy8q6Y+UiZ61X+vmORqrakQObYRvw4RJYN/sdwHg
	0gKxLmqh0WCOL7ZTdq5zTj/YmQqKZvlUB/EVlefMwJv1dA/dKsazhHFM/7b/kFpGHVf93MMjU7r
	js7jh6KeC+01FAO2Tu0lCz+TpyCa76hPFd5TT64N8AHYsEklFx8ZtuwMEvS+uZyzYHIh+Knp+d8
	6lrWVhs3zt+ZlIvSf6jE60IBveyIwz3a/wn3sHBs4LOMos5kXFWY99LemH2hzlCxvVLR30JjRjf
	2qWVhkRMKMFZozIRxYp3eNUEaB1e6XJigdCc41cyaNpxVVWhymoeoQKHzjBoLvOblHCfDraLZ2E
	X9A==
X-Google-Smtp-Source: AGHT+IHEWx7UFcObU4l+aw0WwPFs1LgZ2gJu8DDSODNM/YX+BF56ww0JQ/u3j3TMEkDmo2LG+NAYog==
X-Received: by 2002:a17:907:7b8c:b0:ad5:1ef3:20e5 with SMTP id a640c23a62f3a-ad85b0d3c63mr163019766b.21.1748074559544;
        Sat, 24 May 2025 01:15:59 -0700 (PDT)
Received: from smtpclient.apple ([89.223.204.162])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d06df95sm1382982466b.56.2025.05.24.01.15.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 May 2025 01:15:59 -0700 (PDT)
From: =?utf-8?B?VGFtw6FzIFNvw7Nz?= <tsoos99@gmail.com>
Message-Id: <651FA244-DC76-453A-9C2F-3A893D5E3407@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_334AEBC8-7873-4904-9178-8F6BAB92FDB8"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Re: [yocto] Rust project development for target (missing std)
Date: Sat, 24 May 2025 10:15:48 +0200
In-Reply-To: <bfb7b2f78c09c9b6c1556e69d348b1ffe50928a7.camel@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <Dtio.1748031329810429666.lpPd@lists.yoctoproject.org>
 <bfb7b2f78c09c9b6c1556e69d348b1ffe50928a7.camel@linuxfoundation.org>
X-Mailer: Apple Mail (2.3826.600.51.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 May 2025 08:16:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65414


--Apple-Mail=_334AEBC8-7873-4904-9178-8F6BAB92FDB8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I think I misinterpreted at first what TOOLCHAIN_TARGET_TASK is supposed =
to mean. Now it makes sense, of course I need it there as=20
libstd-rs would be compiled for the target, but used on the SDK host. I =
actually had to remove nativesdk-libst-rs from TOOLCHAIN_HOST_TASK.
It created two extra libstd.so <http://libstd.so/> files for the =
x86_64-pokysdk-linux-gnu target, but there was already a libstd.rlib in =
there. Not sure which package creates the rlib. This caused rustc to =
panic.
I also added rust to SDK_TOOLCHAIN_LANGS. I=E2=80=99m not sure what this =
does exactly.=20

The end of my image file now looks like this:
RUST =3D "rust-cross-canadian-${TRANSLATED_TARGET_ARCH}"
SDK_TOOLCHAIN_LANGS +=3D 'rust'
TOOLCHAIN_HOST_TASK:append =3D " \
    ${@all_multilib_tune_values(d, 'RUST')} \
    nativesdk-binutils \
    nativesdk-gcc \
    nativesdk-glibc-dev \
    nativesdk-libgcc-dev \
    nativesdk-rust \
    nativesdk-cargo \
    nativesdk-rust-tools-clippy \
    nativesdk-rust-tools-rustfmt \
"

TOOLCHAIN_TARGET_TASK:append =3D " \
    libstd-rs \
"

The build for the SDK host is working:
tamas@zeus-ws01:~/hello-rust$ cargo build
    Finished dev [unoptimized + debuginfo] target(s) in 0.01s
tamas@zeus-ws01:~/hello-rust$ cargo run
    Finished dev [unoptimized + debuginfo] target(s) in 0.01s
     Running =
`/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/lib/ld-linux-x86=
-64.so <http://ld-linux-x86-64.so/>.2 target/debug/hello-rust`
Hello, world!

The target also builds, but to actually run it takes a bit more =
persuasion.=20
tamas@zeus-ws01:~/hello-rust$ cargo build --target =
armv7-zeus-linux-gnueabihf
    Finished dev [unoptimized + debuginfo] target(s) in 0.00s
tamas@zeus-ws01:~/hello-rust$ file =
target/armv7-zeus-linux-gnueabihf/debug/hello-rust
target/armv7-zeus-linux-gnueabihf/debug/hello-rust: ELF 32-bit LSB pie =
executable, ARM, EABI5 version 1 (SYSV), dynamically linked, interpreter =
/lib/ld-linux.so <http://ld-linux.so/>.3, =
BuildID[sha1]=3D847fa94846fd717fe3126f4d3423357eccd683cd, for GNU/Linux =
5.15.0, with debug_info, not stripped

As you can see it=E2=80=99s linked with /lib/ld-linux.so =
<http://ld-linux.so/>.3, but only  /lib/ld-linux-armhf.so =
<http://ld-linux-armhf.so/>.3 is present on the board.=20
What=E2=80=99s the best way to fix this? Using patchelf works, but =
it=E2=80=99s kind of annoying. Maybe adding a symlink during build is =
the easiest. I don=E2=80=99t know how to modify
I used patchelf this time which lead to the second problem. libgcc_s.so =
<http://libgcc_s.so/>.1 was missing. This was expected, and I just had =
to add libgcc to IMAGE_INSTALL.

Finally this got it working on the target as well:
phyboard-regor-am335x-1:~$ ./hello-rust
Hello, world!

Thank you so much!=20

Now I just need to figure out the best way to deal with the interpreter.=20=


> On 2025. May 23., at 22:27, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Fri, 2025-05-23 at 13:15 -0700, Tam=C3=A1s So=C3=B3s via =
lists.yoctoproject.org wrote:
>> Hi!
>> =20
>> I=E2=80=99m building a custom image for a controller I=E2=80=99d like =
to use in my
>> irrigation system. I managed to create a custom distro and
>> successfully built a base image.
>> Now I=E2=80=99d like to use the standard SDK to develop a Rust app =
for the
>> controller. I hit a roadblock unfortunately. I can=E2=80=99t figure =
out how
>> to include the Rust Standard Library for the target device in the
>> SDK.=20
>> I saw you were involved in the development of the rust-cross-canadian
>> recipe, so that=E2=80=99s why I=E2=80=99m reaching out to you.=20
>> =20
>> Here=E2=80=99s the error I=E2=80=99m getting:
>> =20
>>=20
>>=20
>> cargo build --target armv7-zeus-linux-gnueabihf
>>    Compiling hello-rust v0.1.0 (/home/tamas/hello-rust)
>> error[E0463]: can't find crate for `std`
>>   |
>>   =3D note: the `armv7-zeus-linux-gnueabihf` target may not be
>> installed
>>   =3D help: consider downloading the target with `rustup target add
>> armv7-zeus-linux-gnueabihf`
>> =20
>> error: cannot find macro `println` in this scope
>>  --> src/main.rs:2:5
>>   |
>> 2 |     println!("Hello, world!");
>>   |     ^^^^^^^
>> =20
>> error: requires `sized` lang_item
>> =20
>> For more information about this error, try `rustc --explain E0463`.
>> error: could not compile `hello-rust` (bin "hello-rust") due to 3
>> previous errors
>> =20
>> And indeed libstd for the target isn=E2=80=99t found anywhere inside =
the
>> SDK=E2=80=99s sysroot. Building the app for the host target =
x86_64-pokysdk-
>> linux-gnu works just fine, since there=E2=80=99s a libstd in the =
sysroot for
>> it.=20
>> Here=E2=80=99s the toolchain config from my image=E2=80=99s recipe as =
well:
>> =20
>>=20
>>=20
>> RUST =3D "rust-cross-canadian-${TRANSLATED_TARGET_ARCH}"
>> TOOLCHAIN_HOST_TASK:append =3D " \
>>     ${@all_multilib_tune_values(d, 'RUST')} \
>>     nativesdk-libstd-rs \
>>     nativesdk-binutils \
>>     nativesdk-gcc \
>>     nativesdk-glibc-dev \
>>     nativesdk-libgcc-dev \
>>     nativesdk-rust \
>>     nativesdk-cargo \
>>     nativesdk-rust-tools-clippy \
>>     nativesdk-rust-tools-rustfmt \
>> =E2=80=9C
>> =20
>> I=E2=80=99m on the latest version of Yocto Scarthgap.
>=20
> Did you try adding libstd-rs to TOOLCHAIN_TARGET_TASK?
>=20
> Cheers,
>=20
> Richard


--Apple-Mail=_334AEBC8-7873-4904-9178-8F6BAB92FDB8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: =
after-white-space;"><div><div><span style=3D"caret-color: rgb(145, 145, =
145);">I think I misinterpreted at first =
what&nbsp;</span>TOOLCHAIN_TARGET_TASK is supposed to mean. Now it makes =
sense, of course I need it there as&nbsp;</div><div>libstd-rs would be =
compiled for the target, but used on the SDK host. I actually had to =
remove nativesdk-libst-rs from TOOLCHAIN_HOST_TASK.</div><div>It created =
two extra&nbsp;<a href=3D"http://libstd.so/">libstd.so</a>&nbsp;files =
for the x86_64-pokysdk-linux-gnu target, but there was already a =
libstd.rlib in there. Not sure which package creates the rlib. This =
caused rustc to panic.</div><div>I also added rust to&nbsp;<span =
style=3D"caret-color: rgb(145, 145, 145);">SDK_TOOLCHAIN_LANGS. I=E2=80=99=
m not sure what this does exactly.&nbsp;</span></div><div><span =
style=3D"caret-color: rgb(145, 145, 145);"><br></span></div><div><span =
style=3D"caret-color: rgb(145, 145, 145);">The end of my image file now =
looks like this:</span></div><div><font color=3D"#919191">RUST =3D =
"rust-cross-canadian-${TRANSLATED_TARGET_ARCH}"</font></div><div><font =
color=3D"#919191">SDK_TOOLCHAIN_LANGS +=3D 'rust'</font></div><div><span =
style=3D"caret-color: rgb(145, 145, 145); color: rgb(145, 145, =
145);">TOOLCHAIN_HOST_TASK</span><font color=3D"#919191">:append =3D " =
\</font></div><div><font color=3D"#919191">&nbsp; &nbsp; =
${@all_multilib_tune_values(d, 'RUST')} \</font></div><div><font =
color=3D"#919191">&nbsp; &nbsp; nativesdk-binutils =
\</font></div><div><font color=3D"#919191">&nbsp; &nbsp; nativesdk-gcc =
\</font></div><div><font color=3D"#919191">&nbsp; &nbsp; =
nativesdk-glibc-dev \</font></div><div><font color=3D"#919191">&nbsp; =
&nbsp; nativesdk-libgcc-dev \</font></div><div><font =
color=3D"#919191">&nbsp; &nbsp; nativesdk-rust \</font></div><div><font =
color=3D"#919191">&nbsp; &nbsp; nativesdk-cargo \</font></div><div><font =
color=3D"#919191">&nbsp; &nbsp; nativesdk-rust-tools-clippy =
\</font></div><div><font color=3D"#919191">&nbsp; &nbsp; =
nativesdk-rust-tools-rustfmt \</font></div><div><font =
color=3D"#919191">"</font></div><div><font =
color=3D"#919191"><br></font></div><div><font =
color=3D"#919191">TOOLCHAIN_TARGET_TASK:append =3D " =
\</font></div><div><font color=3D"#919191">&nbsp; &nbsp; libstd-rs =
\</font></div><div><font color=3D"#919191">"</font></div></div><div><font =
color=3D"#919191"><br></font></div><div>The build for the SDK host is =
working:</div><div><font color=3D"#919191">tamas@zeus-ws01:~/hello-rust$ =
cargo build</font></div><div><font color=3D"#919191">&nbsp; &nbsp; =
Finished dev [unoptimized + debuginfo] target(s) in =
0.01s</font></div><div><font =
color=3D"#919191">tamas@zeus-ws01:~/hello-rust$ cargo =
run</font></div><div><font color=3D"#919191">&nbsp; &nbsp; Finished dev =
[unoptimized + debuginfo] target(s) in 0.01s</font></div><div><font =
color=3D"#919191">&nbsp; &nbsp; &nbsp;Running =
`/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/lib/<a =
href=3D"http://ld-linux-x86-64.so/">ld-linux-x86-64.so</a>.2 =
target/debug/hello-rust`</font></div><div><font color=3D"#919191">Hello, =
world!</font></div><div><font =
color=3D"#919191"><br></font></div><div><span style=3D"caret-color: =
rgb(145, 145, 145);">The target also builds, but to actually run it =
takes a bit more persuasion.&nbsp;</span></div><div><div><div><font =
color=3D"#919191">tamas@zeus-ws01:~/hello-rust$ cargo build --target =
armv7-zeus-linux-gnueabihf</font></div><div><font color=3D"#919191">&nbsp;=
 &nbsp; Finished dev [unoptimized + debuginfo] target(s) in =
0.00s</font></div></div><div><div><font =
color=3D"#919191">tamas@zeus-ws01:~/hello-rust$ file =
target/armv7-zeus-linux-gnueabihf/debug/hello-rust</font></div><div><font =
color=3D"#919191">target/armv7-zeus-linux-gnueabihf/debug/hello-rust: =
ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), dynamically =
linked, interpreter /lib/<a =
href=3D"http://ld-linux.so/">ld-linux.so</a>.3, =
BuildID[sha1]=3D847fa94846fd717fe3126f4d3423357eccd683cd, for GNU/Linux =
5.15.0, with debug_info, not stripped</font></div></div></div><div><font =
color=3D"#919191"><br></font></div><div>As you can see it=E2=80=99s =
linked with /lib/<a href=3D"http://ld-linux.so/">ld-linux.so</a>.3, but =
only &nbsp;/lib/<a =
href=3D"http://ld-linux-armhf.so/">ld-linux-armhf.so</a>.3 is present on =
the board.&nbsp;</div><div>What=E2=80=99s the best way to fix this? =
Using patchelf works, but it=E2=80=99s kind of annoying. Maybe adding a =
symlink during build is the easiest. I don=E2=80=99t know how to =
modify</div><div>I used patchelf this time which lead to the second =
problem.&nbsp;<a href=3D"http://libgcc_s.so/">libgcc_s.so</a>.1 was =
missing. This was expected, and I just had to add libgcc to =
IMAGE_INSTALL.</div><div><br></div><div>Finally this got it working on =
the target as well:</div><div><div><font =
color=3D"#919191">phyboard-regor-am335x-1:~$ =
./hello-rust</font></div><div><font color=3D"#919191">Hello, =
world!</font></div></div><div><font =
color=3D"#919191"><br></font></div><div><span style=3D"caret-color: =
rgb(145, 145, 145);">Thank you so much!&nbsp;</span></div><div><span =
style=3D"caret-color: rgb(145, 145, 145);"><br></span></div><div><span =
style=3D"caret-color: rgb(145, 145, 145);">Now I just need to figure out =
the best way to deal with the =
interpreter.&nbsp;</span></div><div><br><blockquote type=3D"cite"><div>On =
2025. May 23., at 22:27, Richard Purdie =
&lt;richard.purdie@linuxfoundation.org&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div>On Fri, 2025-05-23 at =
13:15 -0700, Tam=C3=A1s So=C3=B3s via lists.yoctoproject.org =
wrote:<br><blockquote type=3D"cite">Hi!<br>&nbsp;<br>I=E2=80=99m =
building a custom image for a controller I=E2=80=99d like to use in =
my<br>irrigation system. I managed to create a custom distro =
and<br>successfully built a base image.<br>Now I=E2=80=99d like to use =
the standard SDK to develop a Rust app for the<br>controller. I hit a =
roadblock unfortunately. I can=E2=80=99t figure out how<br>to include =
the Rust Standard Library for the target device in =
the<br>SDK.&nbsp;<br>I saw you were involved in the development of the =
rust-cross-canadian<br>recipe, so that=E2=80=99s why I=E2=80=99m =
reaching out to you.&nbsp;<br>&nbsp;<br>Here=E2=80=99s the error I=E2=80=99=
m getting:<br>&nbsp;<br><br><br>cargo build --target =
armv7-zeus-linux-gnueabihf<br>&nbsp; &nbsp;Compiling hello-rust v0.1.0 =
(/home/tamas/hello-rust)<br>error[E0463]: can't find crate for =
`std`<br>&nbsp; |<br>&nbsp; =3D note: the `armv7-zeus-linux-gnueabihf` =
target may not be<br>installed<br>&nbsp; =3D help: consider downloading =
the target with `rustup target =
add<br>armv7-zeus-linux-gnueabihf`<br>&nbsp;<br>error: cannot find macro =
`println` in this scope<br>&nbsp;--&gt; src/main.rs:2:5<br>&nbsp; |<br>2 =
| &nbsp; &nbsp; println!("Hello, world!");<br>&nbsp; | &nbsp; &nbsp; =
^^^^^^^<br>&nbsp;<br>error: requires `sized` lang_item<br>&nbsp;<br>For =
more information about this error, try `rustc --explain =
E0463`.<br>error: could not compile `hello-rust` (bin "hello-rust") due =
to 3<br>previous errors<br>&nbsp;<br>And indeed libstd for the target =
isn=E2=80=99t found anywhere inside the<br>SDK=E2=80=99s sysroot. =
Building the app for the host target x86_64-pokysdk-<br>linux-gnu works =
just fine, since there=E2=80=99s a libstd in the sysroot =
for<br>it.&nbsp;<br>Here=E2=80=99s the toolchain config from my =
image=E2=80=99s recipe as well:<br>&nbsp;<br><br><br>RUST =3D =
"rust-cross-canadian-${TRANSLATED_TARGET_ARCH}"<br>TOOLCHAIN_HOST_TASK:app=
end =3D " \<br>&nbsp; &nbsp; ${@all_multilib_tune_values(d, 'RUST')} =
\<br>&nbsp; &nbsp; nativesdk-libstd-rs \<br>&nbsp; &nbsp; =
nativesdk-binutils \<br>&nbsp; &nbsp; nativesdk-gcc \<br>&nbsp; &nbsp; =
nativesdk-glibc-dev \<br>&nbsp; &nbsp; nativesdk-libgcc-dev \<br>&nbsp; =
&nbsp; nativesdk-rust \<br>&nbsp; &nbsp; nativesdk-cargo \<br>&nbsp; =
&nbsp; nativesdk-rust-tools-clippy \<br>&nbsp; &nbsp; =
nativesdk-rust-tools-rustfmt \<br>=E2=80=9C<br>&nbsp;<br>I=E2=80=99m on =
the latest version of Yocto Scarthgap.<br></blockquote><br>Did you try =
adding libstd-rs to =
TOOLCHAIN_TARGET_TASK?<br><br>Cheers,<br><br>Richard<br></div></div></bloc=
kquote></div><br></body></html>=

--Apple-Mail=_334AEBC8-7873-4904-9178-8F6BAB92FDB8--

