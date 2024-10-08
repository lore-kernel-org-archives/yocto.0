Return-Path: <salahaldeen.altous@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E841CEF15B
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 12:04:11 +0000 (UTC)
Subject: Re: [yocto] How I can update the Yocto SDK incrementally/partially?
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "salahaldeen.altous@yahoo.com" <salahaldeen.altous@yahoo.com>
X-Originating-Location: Ankara, TR (176.232.20.207)
X-Originating-Platform: Linux Firefox 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Oct 2024 05:04:05 -0700
References: <CANNYZj-0Dyh12N9-+nYO0V2S_=DBVJt0h-yastxKbF=KGdWtuw@mail.gmail.com>
In-Reply-To: <CANNYZj-0Dyh12N9-+nYO0V2S_=DBVJt0h-yastxKbF=KGdWtuw@mail.gmail.com>
Message-ID: <13803.1728389045781254469@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NlxuYjhOZWGphIQdAwkz"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 12:04:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63970

--NlxuYjhOZWGphIQdAwkz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I would be happy if everyone can learn yocto. but in the real world is diff=
erent.
We have application developer who is only looking to work with SDK without =
knowing how to build with yocto.

One option is to use also eSDK but in my case is not applicable.

Regards,
Salahaldeen

On Tue, Oct 8, 2024 at 02:43 AM, Alexander Kanavin wrote:

>=20
> I think you should rather teach your customer to use yocto properly,
> rather than exchange SDKs and pre-built ipks with them. Write a proper
> recipe for the component, and explain to them how to use it.
>=20
> Alex
>=20
> On Tue, 8 Oct 2024 at 11:38, Yoann Congal via lists.yoctoproject.org
> <yoann.congal=3Dsmile.fr@lists.yoctoproject.org> wrote:
>=20
>>=20
>>=20
>>=20
>> Le mar. 8 oct. 2024 =C3=A0 11:27, salahaldeen.altous@yahoo.com via
>> lists.yoctoproject.org
>> <salahaldeen.altous=3Dyahoo.com@lists.yoctoproject.org> a =C3=A9crit :
>>=20
>>>=20
>>> Hi All,
>>>=20
>>> I have the need to update the yocto SDK incrementally without the need =
to
>>> rebuild it every time from scratch.
>>> I have the package management ipk enabled in my configuration.
>>>=20
>>> can I use opkg install after sourcing the SDK script? which requirement=
 I
>>> need to get it running?
>>> updating the rootfs on the target is working fine, but updating the SDK=
 is
>>> not working
>>=20
>>=20
>> That sounds like the eSDK : https://docs.yoctoproject.org/sdk-manual/ext=
ensible.html#applying-updates-to-an-installed-extensible-sdk
>>=20
>> Have you tried it?
>>=20
>>=20
>>=20
>>> Regards,
>>> Salahaldeen
>>>=20
>>>=20
>>>=20
>>=20
>>=20
>> --
>> Yoann Congal
>> Smile ECS - Tech expert
>>=20
>>=20
>>=20
>=20
>

--NlxuYjhOZWGphIQdAwkz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Alex,<br /><br />I would be happy if everyone can learn yocto. but =
in the real world is different.<br />We have application developer who is o=
nly looking to work with SDK without knowing how to build with yocto.<br />=
<br />One option is to use also eSDK but in my case is not applicable.<br /=
><br />Regards,<br />Salahaldeen<br /><br />On Tue, Oct 8, 2024 at 02:43 AM=
, Alexander Kanavin wrote:</div>
<div>
<blockquote>I think you should rather teach your customer to use yocto prop=
erly,<br />rather than exchange SDKs and pre-built ipks with them. Write a =
proper<br />recipe for the component, and explain to them how to use it.<br=
 /><br />Alex<br /><br />On Tue, 8 Oct 2024 at 11:38, Yoann Congal via list=
s.yoctoproject.org<br />&lt;yoann.congal=3Dsmile.fr@lists.yoctoproject.org&=
gt; wrote:<br />
<blockquote><br /><br /><br />Le mar. 8 oct. 2024 &agrave; 11:27, salahalde=
en.altous@yahoo.com via lists.yoctoproject.org &lt;salahaldeen.altous=3Dyah=
oo.com@lists.yoctoproject.org&gt; a &eacute;crit :<br />
<blockquote><br />Hi All,<br /><br />I have the need to update the yocto SD=
K incrementally without the need to rebuild it every time from scratch.<br =
/>I have the package management ipk enabled in my configuration.<br /><br /=
>can I use opkg install after sourcing the SDK script? which requirement I =
need to get it running?<br />updating the rootfs on the target is working f=
ine, but updating the SDK is not working</blockquote>
<br />That sounds like the eSDK : <a href=3D"https://docs.yoctoproject.org/=
sdk-manual/extensible.html#applying-updates-to-an-installed-extensible-sdk"=
 target=3D"_blank" rel=3D"noopener">https://docs.yoctoproject.org/sdk-manua=
l/extensible.html#applying-updates-to-an-installed-extensible-sdk</a><br />=
Have you tried it?<br /><br /><br />
<blockquote>Regards,<br />Salahaldeen<br /><br /><br /></blockquote>
<br />--<br />Yoann Congal<br />Smile ECS - Tech expert<br /><br /><br /></=
blockquote>
</blockquote>
</div>

--NlxuYjhOZWGphIQdAwkz--

