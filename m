Return-Path: <tagliapietra.alessandro@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F4C47085
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com
 [209.85.128.172])
 by mx.groups.io with SMTP id smtpd.web10.3823.1649715998794050247
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 15:26:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aPgegWzZ;
 spf=pass (domain: gmail.com, ip: 209.85.128.172,
 mailfrom: tagliapietra.alessandro@gmail.com)
Received: by mail-yw1-f172.google.com with SMTP id
 00721157ae682-2ec05db3dfbso61245817b3.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 15:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oJz+zprMIbavxoetfvY4RejQvAVZdhPFFW267S0wkO8=;
        b=aPgegWzZ5eiLCq2i3AE9f+u3UBbjdimJPimVQ7v9OsypUuz93poM6YcKo6ski6rj4E
         w2Si2kAa7N+J4XZb4JSoxtvrT+mC2ORwCtkg7RBrgft/rKrPsDOP0mPjXBnTnzSR0vVJ
         LKcCXxbnNfnGgPH5qBARHC1R4E/TXC8HLRHuI+b1NFEZMLFJobwfpUcw7sM/nxFQ52cT
         ttGmhk89DA+J5+PVDiSTI/MKiVjXLNZomn5Gs8BibAK2wcY27mfC6+ZGnarYl1CeasKQ
         KR2Z09nAfXvePGZBhqgTQwOR5pJKNuN+M1uL44T+Yi4Lecceu2eknfhIvyjWSKyQC1I/
         rHNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oJz+zprMIbavxoetfvY4RejQvAVZdhPFFW267S0wkO8=;
        b=5cwnknrLjSYFuMMlRN2O8dDkx2bw/XEvvAqng1pl4KoD0jCiIZilP0TXKVEjnU2G1V
         RojzfT6tTyikkwtZvGAL8K1WqS6ATsDCWQINQMI4yWPalpVJFQ2E6CeCWr+6R3SkLe1W
         pPujeiWUIQE5ZJyMaWfg8Jc7njKcWnwFA6H4iN3KJvq1esPzih70u6NvDOFkJtKoz1vj
         Dne97X30c+6/Z44A4PUdxZUA+3t6y4qxlWYPAQXoz08RIrApBytc/fxHVBApBmW6WA/z
         vUhAm4G4CX6zS7y4wttxklKUrRvRjifCQZj9y1Ausy73s5infS9IkK4D2xNFN9+6LAD2
         XRSQ==
X-Gm-Message-State: AOAM533jw1IWt1gPrgJOXR1+10XGO6Eg5MXCRUZu0RQ+68HEM0MfZeFI
	+fVNoAII1d2zmRDZRXsPQjj9eK5+yy2V+VGngxY=
X-Google-Smtp-Source: 
 ABdhPJy6k7rHxCM5A7Ya0X9o5SBfEnlVHoRHIjge2qwln2kjQzOxqiULwtIZD3Q+o1xjigvrQhkv3Mx16xvmV5saF9Y=
X-Received: by 2002:a81:58c1:0:b0:2eb:faf0:1e25 with SMTP id
 m184-20020a8158c1000000b002ebfaf01e25mr9520710ywb.311.1649715997941; Mon, 11
 Apr 2022 15:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
 <CAKKtPp9kqfPSRhPvmh52GmTVe1pMxVV4r4C6V3KSs4XXOgWUgA@mail.gmail.com>
 <CAMKF1sqoFu0UmVx0vKOLk-k4aWbxQAKZXCUthKNQ49Eh=CU5Pg@mail.gmail.com>
 <CAKKtPp-3_JHiAEMup48WPZUj4uPe9fkYs5JiN4YBORWdiojfqQ@mail.gmail.com>
 <CAMKF1srTY+vNX=oWD576gYr31g2Y06zX9AcZ3YtKnoLneSN8ZQ@mail.gmail.com>
 <CAKKtPp_OLSWBhEZmS0hmuM-p9va_OcpMoLDs8VZq5p8frPJ0TA@mail.gmail.com>
In-Reply-To: 
 <CAKKtPp_OLSWBhEZmS0hmuM-p9va_OcpMoLDs8VZq5p8frPJ0TA@mail.gmail.com>
From: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Date: Mon, 11 Apr 2022 15:26:27 -0700
Message-ID: 
 <CAKKtPp90UdmN3ZghM9TwZXvS2v3pBOX8_GQaYydOp8hd8-5atg@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000009a3e805dc687051"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56729

--00000000000009a3e805dc687051
Content-Type: text/plain; charset="UTF-8"

Tested with updated honister branch, same error

-- 
Alessandro Tagliapietra


On Mon, Apr 11, 2022 at 2:41 PM Alessandro Tagliapietra <
tagliapietra.alessandro@gmail.com> wrote:

> I'm using honister (it's from a few months ago, I'm currently
> rebuilding using the latest commit)
>
> On Mon, Apr 11, 2022 at 2:29 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>> which release branch are you using?
>>
>> On Mon, Apr 11, 2022 at 2:27 PM Alessandro Tagliapietra
>> <tagliapietra.alessandro@gmail.com> wrote:
>> >
>> > Removing works, the build succeeded, however I can't test if it's
>> actually needed by the package, I'll try that tomorrow.
>> > Regarding file paths for example file linux-arm/node.napi.armv7.node is
>> in these paths:
>> >
>> >
>> image/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>> >
>> packages-split/node-red-node-serialport/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>> >
>> npm-build/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>> >
>> package/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>> >
>> npm/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>> >
>> > so it seems to be in node-red-node-serialport which is our package so
>> INSANE_SKIP_${PN} += "already-stripped arch" should work.
>> >
>> >
>> > On Mon, Apr 11, 2022 at 2:14 PM Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >>
>> >>
>> >> On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra <
>> tagliapietra.alessandro@gmail.com> wrote:
>> >>>
>> >>> On Mon, Apr 11, 2022 at 1:36 PM Khem Raj <raj.khem@gmail.com> wrote:
>> >>>>
>> >>>>
>> >>>> what package folders do you see under packages-split/ folder in your
>> >>>> build area for this recipe ?
>> >>>
>> >>>
>> >>> The ones I've added in the INSANE_SKIP
>> >>>
>> >>> ls -lah
>> /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-split
>> >>> total 32K
>> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport
>> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dbg
>> >>> drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dev
>> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-doc
>> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04
>> node-red-node-serialport-locale
>> >>> -rw-r--r-- 1 alex alex   57 Apr  6 16:04
>> node-red-node-serialport.shlibdeps
>> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-src
>> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04
>> node-red-node-serialport-staticdev
>> >>
>> >>
>> >> Ok then next thing you want to check is where the reported stripped
>> file is located and even if it does not work then perhaps look into
>> removing these files if they are not needed
>> >>>
>> >>>
>> >>>
>>
>

--00000000000009a3e805dc687051
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Tested with updated honister branch, same error<div><br cl=
ear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr">--=C2=A0<div>Alessandro Tagliapietra<=
/div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 11, 2022 at 2:41 PM Alessandro=
 Tagliapietra &lt;<a href=3D"mailto:tagliapietra.alessandro@gmail.com">tagl=
iapietra.alessandro@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39;m using honister (it&#3=
9;s from a few months ago, I&#39;m currently rebuilding=C2=A0using the late=
st=C2=A0commit)<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon, Apr 11, 2022 at 2:29 PM Khem Raj &lt;<a href=3D"=
mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">which releas=
e branch are you using?<br>
<br>
On Mon, Apr 11, 2022 at 2:27 PM Alessandro Tagliapietra<br>
&lt;<a href=3D"mailto:tagliapietra.alessandro@gmail.com" target=3D"_blank">=
tagliapietra.alessandro@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Removing works, the build succeeded, however I can&#39;t test if it&#3=
9;s actually needed by the package, I&#39;ll try that tomorrow.<br>
&gt; Regarding file paths for example file linux-arm/node.napi.armv7.node i=
s in these paths:<br>
&gt;<br>
&gt; image/usr/lib/node_modules/node-red-node-serialport/node_modules/@seri=
alport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node<br>
&gt; packages-split/node-red-node-serialport/usr/lib/node_modules/node-red-=
node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/n=
ode.napi.armv7.node<br>
&gt; npm-build/lib/node_modules/node-red-node-serialport/node_modules/@seri=
alport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node<br>
&gt; package/usr/lib/node_modules/node-red-node-serialport/node_modules/@se=
rialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node<br>
&gt; npm/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.nap=
i.armv7.node<br>
&gt;<br>
&gt; so it seems to be in node-red-node-serialport which is our package so =
INSANE_SKIP_${PN} +=3D &quot;already-stripped arch&quot; should work.<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Apr 11, 2022 at 2:14 PM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra &lt;<a hre=
f=3D"mailto:tagliapietra.alessandro@gmail.com" target=3D"_blank">tagliapiet=
ra.alessandro@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, Apr 11, 2022 at 1:36 PM Khem Raj &lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br=
>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; what package folders do you see under packages-split/ fold=
er in your<br>
&gt;&gt;&gt;&gt; build area for this recipe ?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The ones I&#39;ve added in the INSANE_SKIP<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ls -lah /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-=
neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-sp=
lit<br>
&gt;&gt;&gt; total 32K<br>
&gt;&gt;&gt; drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialp=
ort<br>
&gt;&gt;&gt; drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialp=
ort-dbg<br>
&gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red-node-serialp=
ort-dev<br>
&gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr=C2=A0 6 16:04 node-red-node-se=
rialport-doc<br>
&gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr=C2=A0 6 16:04 node-red-node-se=
rialport-locale<br>
&gt;&gt;&gt; -rw-r--r-- 1 alex alex=C2=A0 =C2=A057 Apr=C2=A0 6 16:04 node-r=
ed-node-serialport.shlibdeps<br>
&gt;&gt;&gt; drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialp=
ort-src<br>
&gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr=C2=A0 6 16:04 node-red-node-se=
rialport-staticdev<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Ok then next thing you want to check is where the reported strippe=
d file is located and even if it does not work then perhaps look into remov=
ing these files if they are not needed<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
</blockquote></div>
</blockquote></div>

--00000000000009a3e805dc687051--

