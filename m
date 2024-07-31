Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5410C3DA7F
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 08:41:56 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.38321.1722415313377551954
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 01:41:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=X3BHbs0j;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52efe4c7c16so8170418e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 01:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722415311; x=1723020111; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KET0jvc/7720EWU1WHlHd6PfXy6fJuF/hRxdVpHV9eY=;
        b=X3BHbs0ja0zWoDomcuQkv0ZjgKtZWj0jV8Ce/HNTD0RSSv0501R/NB/k7wN4lCKAW8
         eoMRpLV1uDY9BMp2NdQAljemFPPdWwbPgl+rJcwz5i4klGimiNCndv+AuhlT6tDfpGT1
         IUV3+OLnHCJn6EyC27Be+wdjXLAsouL7dYiz6Zo/LEcdFPDW9w2wmi8qvYwbFue4r/hm
         uSll/R5Wghvv7pANoM93QVBYcHLQi003nPtn7Wz5Q2mjIWlv9P1lQG7aC5VVfKs4Eqai
         vsd9nStn1H18i+YvygZPTy40BWe4lX6knI1HyyZ9r5vyl8cbd3A1wGtWQi420+Xn2LEw
         jMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722415311; x=1723020111;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KET0jvc/7720EWU1WHlHd6PfXy6fJuF/hRxdVpHV9eY=;
        b=A1J+JrbKt2fcvimSzOT8KLQyN7BtyF9HqVWDYNNQMQ5PE1iTj8QurBiOMdRyXeDPyt
         OOtBZb6iII5vXHxvtul7ida8vcVB0tePoiG4t7/lIvQ908iGjIEhVQXTBl3RARcMkD2q
         ydC059HlipeyGPlKf4+N/nYt8/37Ag2vHKvamghiGhMt2xLO0Cg59Vxo6FJTFDrAHotk
         Z35AbM2zErHqc939ZkkqIR70U0fnn/4er0gp1PhCa1/suhLGdBrqF2GZ2DwvRhfybE9b
         I4xg9sOoXeWtq0LjaWjQfRg4lvJzBCxtiCqWZcC6ZKtJmJmuMXDvSXilFaGj1/xG3OmU
         Ncxw==
X-Gm-Message-State: AOJu0Yx60s9b3NZIoaKooDrlIGWuQg/AUC3jDBFmyI16Kag7hid5KDGr
	40AmWdW9H8ecGgxG4EA8Cc+Qsu5qG9YID5AOCgpvqpH7X/E98NuqXQsBjLoXZzsJiJdynV25a3q
	3pX4XoIrT3MmH9AOmM4FZyjIDR4vA2KGR
X-Google-Smtp-Source: AGHT+IFglck1whpGqpAFDhIAsjpFmWbFUwEWqtWDNXstzVAjAhHb33W+aKpGGKm0iQD1ihAo0Rh9r+At6ueIrLEdv+I=
X-Received: by 2002:ac2:5051:0:b0:524:43b2:d326 with SMTP id
 2adb3069b0e04-5309b2d7a12mr7858533e87.37.1722415310956; Wed, 31 Jul 2024
 01:41:50 -0700 (PDT)
MIME-Version: 1.0
References: <TY3PR01MB1105638B4B35BBCE36E961111A0B12@TY3PR01MB11056.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB1105638B4B35BBCE36E961111A0B12@TY3PR01MB11056.jpnprd01.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 31 Jul 2024 10:41:37 +0200
Message-ID: <CA+chaQdmbTkmKBrN0LLD-qxVrBRSYTk6F6Fc8FUe9oC7iqGfzA@mail.gmail.com>
Subject: Re: [yocto] [meta-browser] firefox build failed
To: yocto@lists.yoctoproject.org, leimaohui@fujitsu.com
Cc: "eric@eukrea.com" <eric@eukrea.com>, "max@igalia.com" <max@igalia.com>, 
	"Otavio Salvador (otavio@ossystems.com.br)" <otavio@ossystems.com.br>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 08:41:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63625

Hi,

please see:
https://github.com/OSSystems/meta-browser/pull/822
https://github.com/webdino/meta-browser/issues/2

firefox wasn't updated in https://github.com/OSSystems/meta-browser
for many years as you can see in:
https://github.com/OSSystems/meta-browser/commits/master/meta-firefox
and it's known not to build anymore as mentioned in second to last
commit in meta-firefox:
https://github.com/OSSystems/meta-browser/commit/3b4aeda5e672656cd209e56b09=
a60bfff57e9139

If you're inteersted in firefox than upgrading it to some recent
firefox release should be the first step.

Current ESR releases are 115 and 128.

The 68 in meta-browser from 2019 is EOL for very long time and wasn't
updated since 2020 https://hg.mozilla.org/releases/comm-esr68/.

Regards,

On Wed, Jul 31, 2024 at 10:31=E2=80=AFAM leimaohui via lists.yoctoproject.o=
rg
<leimaohui=3Dfujitsu.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
>
> Hi, all
>
> I tried to build firefox with meta-browser, but I met build error like th=
e following. I wonder if there is any patch?
>
> 1:47.31 error: proc-macro derive panicked
>  1:47.31    --> /usr/src/debug/firefox/68.9.0esr-r0/firefox-68.9.0/third_=
party/rust/cssparser/src/color.rs:227:31
>  1:47.31     |
>  1:47.31 227 |                   let degrees =3D match_ignore_ascii_case!=
 { &*unit,
>  1:47.31     |  _______________________________^
>  1:47.31 228 | |                     "deg" =3D> v,
>  1:47.31 229 | |                     "grad" =3D> v * 360. / 400.,
>  1:47.31 230 | |                     "rad" =3D> v * 360. / (2. * PI),
>  1:47.31 231 | |                     "turn" =3D> v * 360.,
>  1:47.31 232 | |                     _ =3D> return Err(location.new_unexp=
ected_token_error(Token::Ident(unit.clone()))),
>  1:47.31 233 | |                 };
>  1:47.31     | |_________________^
>  1:47.31     |
>  1:47.31     =3D help: message: expected suffix ").0," not found in "#[al=
low(unused)] enum ProceduralMasqueradeDummyType\n{\n    Input =3D\n    (0, =
stringify!\n    (\"deg\" =3D> v, \"grad\" =3D> v * 360. / 400., \"rad\" =3D=
> v * 360. / (2. * PI),\n    \"turn\" =3D> v * 360., _ =3D> return\n    Err=
(location.new_unexpected_token_error(Token ::\n    Ident(unit.clone()))),))=
.0\n}"
>  1:47.31     =3D note: this error originates in the macro `cssparser_inte=
rnal__invoke_proc_macro` which comes from the expansion of the macro `match=
_ignore_ascii_case` (in Nightly builds, run with -Z macro-backtrace for mor=
e info)
>  1:47.31 error: proc-macro derive panicked
>  1:47.31    --> /usr/src/debug/firefox/68.9.0esr-r0/firefox-68.9.0/third_=
party/rust/cssparser/src/color.rs:371:5
>  1:47.31     |
>  1:47.31 371 | /     ascii_case_insensitive_phf_map! {
> ......
> 1:47.38 error[E0425]: cannot find value `MAX_LENGTH` in this scope
>  1:47.38    --> /usr/src/debug/firefox/68.9.0esr-r0/firefox-68.9.0/third_=
party/rust/cssparser/src/macros.rs:44:59
>  1:47.38     |
>  1:47.38 44  |                   cssparser_internal__to_lowercase!($input=
, MAX_LENGTH =3D> lowercase);
>  1:47.38     |                                                           =
  ^^^^^^^^^^ not found in this scope
>  1:47.38     |
>  1:47.38    ::: /usr/src/debug/firefox/68.9.0esr-r0/firefox-68.9.0/third_=
party/rust/cssparser/src/color.rs:227:31
>  1:47.38     |
>  1:47.38 227 |                   let degrees =3D match_ignore_ascii_case!=
 { &*unit,
>  1:47.38     |  _______________________________-
>  1:47.38 228 | |                     "deg" =3D> v,
>  1:47.38 229 | |                     "grad" =3D> v * 360. / 400.,
>  1:47.38 230 | |                     "rad" =3D> v * 360. / (2. * PI),
>  1:47.38 231 | |                     "turn" =3D> v * 360.,
>  1:47.38 232 | |                     _ =3D> return Err(location.new_unexp=
ected_token_error(Token::Ident(unit.clone()))),
>  1:47.38 233 | |                 };
>  1:47.38     | |_________________- in this macro invocation
>  1:47.38     |
>  1:47.38     =3D note: this error originates in the macro `match_ignore_a=
scii_case` (in Nightly builds, run with -Z macro-backtrace for more info)
>  1:47.38 error[E0425]: cannot find value `MAX_LENGTH` in this scope
>  1:47.38    --> /usr/src/debug/firefox/68.9.0esr-r0/firefox-68.9.0/third_=
party/rust/cssparser/src/macros.rs:95:58
>  1:47.38     |
>  1:47.39 95  |                   cssparser_internal__to_low
> ......
> 1:47.91 error: could not compile `cssparser` (lib) due to 14 previous err=
ors
>  1:47.91 warning: build failed, waiting for other jobs to finish...
>  1:47.99 In file included from /ubinux-dev/ubinux001/build-ubinux/ubinux-=
202406/poky/build-test-firefox/tmp/work/core2-64-poky-linux/firefox/68.9.0e=
sr/firefox-68.9.0/firefox-build-dir/js/src/Unified_cpp_js_src11.cpp:2:
>  1:47.99 In file included from /ubinux-dev/ubinux001/build-ubinux/ubinux-=
202406/poky/build-test-firefox/tmp/work/core2-64-poky-linux/firefox/68.9.0e=
sr/firefox-68.9.0/js/src/vm/ArgumentsObject.cpp:7:
>  1:47.99 In file included from /ubinux-dev/ubinux001/build-ubinux/ubinux-=
202406/poky/build-test-firefox/tmp/work/core2-64-poky-linux/firefox/68.9.0e=
sr/firefox-68.9.0/js/src/vm/ArgumentsObject-inl.h:10:
>  1:47.99 In file included from /ubinux-dev/ubinux001/build-ubinux/ubinux-=
202406/poky/build-test-firefox/tmp/work/core2-64-poky-linux/firefox/68.9.0e=
sr/firefox-68.9.0/js/src/vm/ArgumentsObject.h:12:
>  1:47.99 In file included from /ubinux-dev/ubinux001/build-ubinux/ubinux-=
202406/poky/build-test-firefox/tmp/work/core2-64-poky-linux/firefox/68.9.0e=
sr/firefox-68.9.0/js/src/gc/Barrier.h:13:
>  1:47.99 /ubinux-dev/ubinux001/build-ubinux/ubinux-202406/poky/build-test=
-firefox/tmp/work/core2-64-poky-linux/firefox/68.9.0esr/firefox-68.9.0/js/s=
rc/gc/StoreBuffer.h:384:19: warning: anonymous non-C-compatible type given =
name for linkage purposes by typedef declaration; add a tag name here [-Wno=
n-c-typedef-for-linkage]
>  1:48.00   384 |     typedef struct {
>  1:48.00       |                   ^
>  1:48.00       |                    Hasher
>  1:48.00 /ubinux-dev/ubinux001/build-ubinux/ubinux-202406/poky/build-test=
-firefox/tmp/work/core2-64-poky-linux/firefox/68.9.0esr/firefox-68.9.0/js/s=
rc/gc/StoreBuffer.h:385:7: note: type is not C-compatible due to this membe=
r declaration
>  1:48.00   385 |       typedef SlotsEdge Lookup;
>  1:48.00       |       ^~~~~~~~~~~~~~~~~~~~~~~~
>
> Best regards
> lei
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63624): https://lists.yoctoproject.org/g/yocto/messag=
e/63624
> Mute This Topic: https://lists.yoctoproject.org/mt/107642867/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

