Return-Path: <tagliapietra.alessandro@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB7CC47084
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
 [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web12.3247.1649712440664041274
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 14:27:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Hj9zUNUs;
 spf=pass (domain: gmail.com, ip: 209.85.219.170,
 mailfrom: tagliapietra.alessandro@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id f38so29817282ybi.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 14:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1UicvOGGQEm+GzlaD1k2ZIW/8xy49p9mRHRhtyFa/rA=;
        b=Hj9zUNUsIG5JpzW8hpdyWtMwcONuN8NO99hzl5exBPDqNxK87d7g8/z6q5D4TlEPLk
         AVy3ZCFeB9RKUPX1HgaxmSB5p4KeEMO2npcvtmAj4eFRpaaprb1trIqxi86yfZXXwV/C
         ahPMEwqwStQSIAYyYrBKJ5y4WZplpXVB52zorO9W2tVbIruPiyUydaZOLXjajRSkdXbp
         8PEPj8xmyPd277AVPiQjJVizhloEXYs8Qe8TpQPov8I1gNv3moeBFRsi4W2hSanTF/2v
         4qF95N7pAdyXBGsZusGr4Wn22B999y5Wka7QRwJPvFYJ9ksbwyW3xqHc7BYWw8WxKmm4
         uIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1UicvOGGQEm+GzlaD1k2ZIW/8xy49p9mRHRhtyFa/rA=;
        b=0FFwScptcA0PX+6TGxIqLekTjSQi0mMxn6zrDjjUlYwiAJnpTTOcWD1Sp6yGU6u6pL
         y3P6DT3+tYoMZNoA6N+qVbXbFWATdpUSbLW7Psl2FFfveKvp0ToZAq9yjTJM1135hYzP
         AHKV+3DzrpgrjDNxHL4gaI785DRkGluafOPa8pgDurDDDjFDBHR4AGdycQN8mnYxhptb
         fZojoPUrcdtWh4HvvjgZsrTjpjUgwLxVFBZuzUfrr0U5pBaS5ELPCYpyJZPEM1LRfWON
         QUQgxOTT/mYbXp8IBrqTJr81grSXySzpDsWKv5sTpqMmEr8dYVn19fEAtBL8IVnaMUd9
         Xm2g==
X-Gm-Message-State: AOAM5317NG/4pR8+wl9+kGA2zFGZSjXKkxsOUHnDjJUpfbv2ksGlav/x
	Sd2xgZu7BttOv3kOWOQfjOlgdVZr3qTGUt8RuFk=
X-Google-Smtp-Source: 
 ABdhPJzyig31bIMm3gBuz3tyjrBciO9qXqQA159pU1pkp4b1AHy9I9PrNK2B1f5t3UWQ5rUXG2/6wLZb8UuiKqQO44Q=
X-Received: by 2002:a05:6902:1244:b0:641:79fc:21b2 with SMTP id
 t4-20020a056902124400b0064179fc21b2mr3273141ybu.336.1649712439805; Mon, 11
 Apr 2022 14:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
 <CAKKtPp9kqfPSRhPvmh52GmTVe1pMxVV4r4C6V3KSs4XXOgWUgA@mail.gmail.com>
 <CAMKF1sqoFu0UmVx0vKOLk-k4aWbxQAKZXCUthKNQ49Eh=CU5Pg@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sqoFu0UmVx0vKOLk-k4aWbxQAKZXCUthKNQ49Eh=CU5Pg@mail.gmail.com>
From: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Date: Mon, 11 Apr 2022 14:27:09 -0700
Message-ID: 
 <CAKKtPp-3_JHiAEMup48WPZUj4uPe9fkYs5JiN4YBORWdiojfqQ@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f4cd6e05dc679b53"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56726

--000000000000f4cd6e05dc679b53
Content-Type: text/plain; charset="UTF-8"

Removing works, the build succeeded, however I can't test if it's actually
needed by the package, I'll try that tomorrow.
Regarding file paths for example file linux-arm/node.napi.armv7.node is in
these paths:

image/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
packages-split/node-red-node-serialport/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
npm-build/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
package/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
npm/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node

so it seems to be in node-red-node-serialport which is our package
so INSANE_SKIP_${PN} += "already-stripped arch" should work.


On Mon, Apr 11, 2022 at 2:14 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra <
> tagliapietra.alessandro@gmail.com> wrote:
>
>> On Mon, Apr 11, 2022 at 1:36 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>>>
>>> what package folders do you see under packages-split/ folder in your
>>> build area for this recipe ?
>>>
>>
>> The ones I've added in the INSANE_SKIP
>>
>> ls -lah
>> /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-split
>> total 32K
>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport
>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dbg
>> drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dev
>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-doc
>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-locale
>> -rw-r--r-- 1 alex alex   57 Apr  6 16:04
>> node-red-node-serialport.shlibdeps
>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-src
>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04
>> node-red-node-serialport-staticdev
>>
>
> Ok then next thing you want to check is where the reported stripped file
> is located and even if it does not work then perhaps look into removing
> these files if they are not needed
>
>>
>>
>>

--000000000000f4cd6e05dc679b53
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Removing works, the build succeeded, however I can&#39;t t=
est if it&#39;s actually needed by the package, I&#39;ll try that tomorrow.=
<div>Regarding file paths for example file=C2=A0linux-arm/node.napi.armv7.n=
ode is in these paths:</div><div><br></div><div>image/usr/lib/node_modules/=
node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/li=
nux-arm/node.napi.armv7.node<br>packages-split/node-red-node-serialport/usr=
/lib/node_modules/node-red-node-serialport/node_modules/@serialport/binding=
s-cpp/prebuilds/linux-arm/node.napi.armv7.node<br>npm-build/lib/node_module=
s/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/=
linux-arm/node.napi.armv7.node<br>package/usr/lib/node_modules/node-red-nod=
e-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node=
.napi.armv7.node<br>npm/node_modules/@serialport/bindings-cpp/prebuilds/lin=
ux-arm/node.napi.armv7.node<br></div><div><br></div><div>so it seems to be =
in node-red-node-serialport which is our package so=C2=A0INSANE_SKIP_${PN} =
+=3D &quot;already-stripped arch&quot; should work.</div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, Apr 11, 2022 at 2:14 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.=
com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div><br></div><div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 11, 2022 at 1:43 PM Alessa=
ndro Tagliapietra &lt;<a href=3D"mailto:tagliapietra.alessandro@gmail.com" =
target=3D"_blank">tagliapietra.alessandro@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div di=
r=3D"ltr">On Mon, Apr 11, 2022 at 1:36 PM Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></=
div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><br>
what package folders do you see under packages-split/ folder in your<br>
build area for this recipe ?<br></blockquote><div><br></div><div>The ones I=
&#39;ve added in the INSANE_SKIP</div><div><br></div><div>ls -lah /home/ale=
x/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/=
node-red-node-serialport/1.0.1-r0/packages-split<br>total 32K<br>drwxr-xr-x=
 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport<br>drwxr-xr-x 3 ale=
x alex 4.0K Apr 11 13:23 node-red-node-serialport-dbg<br>drwxr-xr-x 2 alex =
alex 4.0K Apr 11 13:23 node-red-node-serialport-dev<br>drwxr-xr-x 2 alex al=
ex 4.0K Apr =C2=A06 16:04 node-red-node-serialport-doc<br>drwxr-xr-x 2 alex=
 alex 4.0K Apr =C2=A06 16:04 node-red-node-serialport-locale<br>-rw-r--r-- =
1 alex alex =C2=A0 57 Apr =C2=A06 16:04 node-red-node-serialport.shlibdeps<=
br>drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-src<br=
>drwxr-xr-x 2 alex alex 4.0K Apr =C2=A06 16:04 node-red-node-serialport-sta=
ticdev</div></div></div></blockquote><div dir=3D"auto"><br></div><div dir=
=3D"auto">Ok then next thing you want to check is where the reported stripp=
ed file is located and even if it does not work then perhaps look into remo=
ving these files if they are not needed=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div =
dir=3D"auto"><br></div><div><br></div></div></div>
</blockquote></div></div>
</blockquote></div>

--000000000000f4cd6e05dc679b53--

