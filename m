Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5667C433EF
	for <webhook@archiver.kernel.org>; Wed, 10 Nov 2021 01:19:05 +0000 (UTC)
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
 [209.85.221.170])
 by mx.groups.io with SMTP id smtpd.web10.5946.1636507144753746640
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 17:19:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MoE0kuai;
 spf=pass (domain: gmail.com, ip: 209.85.221.170,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-vk1-f170.google.com with SMTP id f7so482934vkf.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 17:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/zyBYL6YVus5wQF8CKYKyqmB2/kB7srSC4p/uf2g4WQ=;
        b=MoE0kuai24NT08xE0Zcqct4sXrzZ4X34ZlFl/cA1Yts7hx2NFXrT/ggx+zs/c/sBdi
         eMg+kvwfSd+SBPyrv9Rwmqfo1ueGRJKb65IXlUcjuyB9NWJZMY1GNvTF7hS0sjfc7bzC
         FV1K8zg/u7i2KhvvEfgqJTgZotXJCoPPz0RyCYi72q1HdVeJdF/T2uk5W2L8RWkasua7
         MAbCcCkgSaS1aaKsag6CHit3EKOeX92U8/DTIBkX8OVv5WRlhDDJvrs60lwFHsUXcYad
         DEUvfc4FkQjYZYA/2RnIdM2W3TPV/qOMWEZb3kUWyEvulzP3HrXmDq6IWm8eOzHffg/x
         LVdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/zyBYL6YVus5wQF8CKYKyqmB2/kB7srSC4p/uf2g4WQ=;
        b=gNboQbwb4Nn8jHMuNNwAvsO0CpyiO9Ba3/yRNDCeu8q5ZhVsjoRqlwlKxqXwTe7Qtj
         9tvMhR60a/cXhe2elrS2oqN+cxPOu906NPpgJnZvNSH88m7dHJKpfSNs7fCKLgWDvGoS
         zzFSpVuB183hxDQ/qHBFFsA0G0oknYEMhLZ40zSxJacs8z18sLiJaL2blJJ5yKV6aTWL
         4/eDZ3AA6xjBJOdSVJ6TKEsdGyZ63ew38R4p4wEbx0ac9vp1iL84lx+i/b6oiQRLBDa9
         9LnlycQCYDJi06v6Wk0joiHM4h1JoCCXYcpG711H7IM31ZwBjkVfUjNj1jtnczUUpv8O
         XS3g==
X-Gm-Message-State: AOAM532235dK9GtHkd7MZIYQZeh/c4rMqn6LvOa8b9yj1FTormh8QILv
	h1UoeP3s3xkEUJJkfqN0iCX0qAZ8bhNcUcPnrNE=
X-Google-Smtp-Source: 
 ABdhPJzxgm9vF0NnP5971vc+0jPfpHrII2fU4J7OUNz137zLLdCtUQay1iI6mlGPurV9Sui9T5swQ4B812C5++2VWM4=
X-Received: by 2002:a05:6122:16a3:: with SMTP id
 35mr17073940vkl.12.1636507143887;
 Tue, 09 Nov 2021 17:19:03 -0800 (PST)
MIME-Version: 1.0
References: <16B60034E7406B64.3576@lists.yoctoproject.org>
 <CABKMkPKNnQH3gH+KGrQ3ewxFddCb3rdOvGXi-nu+YrtQLsiH4Q@mail.gmail.com>
 <CABKMkPLD1ULOE22QDCXjfKpRbudLTUb3C-XfB-FO3QTWDF=xmA@mail.gmail.com>
In-Reply-To: 
 <CABKMkPLD1ULOE22QDCXjfKpRbudLTUb3C-XfB-FO3QTWDF=xmA@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 9 Nov 2021 17:18:52 -0800
Message-ID: 
 <CABKMkPJMLtpCxdFmfe9H815jG++Z=vVDh4P2vZturq=aw1TLEQ@mail.gmail.com>
Subject: Re: [yocto] pre-built native only tool for native and nativesdk
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fbdd3505d06502ee"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Nov 2021 01:19:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55298

--000000000000fbdd3505d06502ee
Content-Type: text/plain; charset="UTF-8"

My solution was to use recipe name without `-native`, and simply use empty
packages (no-op) for target.  Only nativesdk- and -native variants have an
affect.  Then add `TOOLCHAIN_HOST_TASK:append = " nativesdk-flutter-sdk"`
to local.conf.

https://github.com/meta-flutter/meta-flutter/blob/honister/recipes-graphics/flutter-apps/flutter-sdk_git.bb

On Tue, Nov 9, 2021 at 3:32 PM Joel Winarske <joel.winarske@gmail.com>
wrote:

> Actually by removing `inherit native` and adding -native to the recipe
> name doesn't make it build for native.
>
> On Tue, Nov 9, 2021 at 3:23 PM Joel Winarske <joel.winarske@gmail.com>
> wrote:
>
>> To eliminate target option from the recipe I just need to make sure the
>> name of the recipe ends with -native, then removing inherit native works
>> fine.
>>
>> On Tue, Nov 9, 2021 at 2:09 PM Joel Winarske via lists.yoctoproject.org
>> <joel.winarske=gmail.com@lists.yoctoproject.org> wrote:
>>
>>> I'm trying to sort out how to install a pre-built host-only tool for
>>> native and nativesdk only.
>>>
>>> Using `inherit native` my-recipe-native and nativesdk-my-recipe both
>>> build fine, only -c populate_sdk generates "rdepends upon non-existent
>>> task do_package_write_rpm".  Looking at native.bbclass it includes
>>> `inherit nopackage` which explains the error.
>>>
>>> If I remove the `inherit native` and update my recipe name to not
>>> include `-native` I can build the -native version, only I can't build
>>> nativesdk-*-native.  A target build is invalid.
>>>
>>> What is the recommended pattern to do this, and is there an example of
>>> this anywhere?
>>>
>>>
>>> Thanks,
>>> Joel
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#55293):
>>> https://lists.yoctoproject.org/g/yocto/message/55293
>>> Mute This Topic: https://lists.yoctoproject.org/mt/86943509/2167248
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>> joel.winarske@gmail.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>
>>>

--000000000000fbdd3505d06502ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>My solution was to use recipe name without `-native`,=
 and simply use empty packages (no-op) for target.=C2=A0 Only nativesdk- an=
d -native variants have an affect.=C2=A0 Then add `TOOLCHAIN_HOST_TASK:appe=
nd =3D &quot; nativesdk-flutter-sdk&quot;` to local.conf.<br></div><div><br=
></div><div><a href=3D"https://github.com/meta-flutter/meta-flutter/blob/ho=
nister/recipes-graphics/flutter-apps/flutter-sdk_git.bb">https://github.com=
/meta-flutter/meta-flutter/blob/honister/recipes-graphics/flutter-apps/flut=
ter-sdk_git.bb</a> </div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, Nov 9, 2021 at 3:32 PM Joel Winarske &lt;<=
a href=3D"mailto:joel.winarske@gmail.com">joel.winarske@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Actually by removing `inherit native` and adding -native to t=
he recipe name doesn&#39;t make it build for native.</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 9, 20=
21 at 3:23 PM Joel Winarske &lt;<a href=3D"mailto:joel.winarske@gmail.com" =
target=3D"_blank">joel.winarske@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">To eliminate targ=
et option from the recipe I just need to make sure the name of the recipe e=
nds with -native, then removing inherit native works fine.<br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 9=
, 2021 at 2:09 PM Joel Winarske via <a href=3D"http://lists.yoctoproject.or=
g" target=3D"_blank">lists.yoctoproject.org</a> &lt;joel.winarske=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@li=
sts.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>I&#39;m trying to sort out how to=
 install a pre-built host-only tool for native and nativesdk only.</div><di=
v><br></div><div>Using `inherit native` my-recipe-native and nativesdk-my-r=
ecipe both build fine, only -c populate_sdk generates <code>&quot;rdepends =
upon non-existent task do_package_write_rpm&quot;</code>.=C2=A0 Looking at =
native.bbclass it includes `inherit nopackage` which explains the error.<br=
></div><div><br></div><div>If I remove the `inherit native` and update my r=
ecipe name to not include `-native` I can build the -native version, only I=
 can&#39;t build nativesdk-*-native.=C2=A0 A target build is invalid.<br></=
div><div><br></div>What is the recommended pattern to do this, and is there=
 an example of this anywhere?<br><div><br></div><div><br></div><div>Thanks,=
</div><div>Joel<br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55293): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55293" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55293</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86943509/2167=
248" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86943509/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.=
winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000fbdd3505d06502ee--

