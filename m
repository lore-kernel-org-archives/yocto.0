Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17D3BCFB45D
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 20:34:19 +0000 (UTC)
Subject: Re: [yocto] Yocto Binary Distro
To: "Dmitry Baryshkov" <dbaryshkov@gmail.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: Erlangen, Bavaria, DE (147.161.171.73)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Oct 2024 13:34:16 -0700
References: <CALT56yPtvqV-nOv931v7ZTR5T+3+szG_FG6GUuDfpruQGgMBAQ@mail.gmail.com>
In-Reply-To: <CALT56yPtvqV-nOv931v7ZTR5T+3+szG_FG6GUuDfpruQGgMBAQ@mail.gmail.com>
Message-ID: <16147.1728333256445916327@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hFKLrJj9M2VlMeQg3rVI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 20:34:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63951

--hFKLrJj9M2VlMeQg3rVI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'll reply on the last message from Alex, but thanks Dmitry for your initia=
l message and the story how we came from =C3=85ngr=C3=B6m to what we have n=
ow. Also thanks to both of you for the extensive feedback!

On Mon, Oct 7, 2024 at 09:29 PM, Dmitry Baryshkov wrote:

>=20
> On Mon, 7 Oct 2024 at 21:27, Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>=20
>> On Mon, 7 Oct 2024 at 21:07, Dmitry Baryshkov <dbaryshkov@gmail.com>
>> wrote:
>>=20
>>>=20
>>>> If you ask me, pulling pre-built packages into a yocto image is in
>>>> itself a horrible hack that goes against yocto philosophy, and I would
>>>> not want yocto to help that or support it in any way.
>>>=20
>>>=20
>>=20
>> ...
>>=20
>>=20
>>> So, as much as I like OE, if you are thinking about a binary distro, I
>>> think you'd better use some existing purposely binary distro (like
>>> Debian, Armbian or something from the RPM world). If you can afford
>>> having package management on the device, it's not tightly resource
>>> constrained. And thus there is no need to go Yocto way.
>>=20
>> I think we're talking about two different things here, so just in case
>> I'd clarify the difference. Point two is about using bitbake to
>> somehow pull a big pile of prebuilt binary packages from the net and
>> assemble a target image out of them. I don't like that at all.
>=20
> Ugh, no, thank you. I also hate that idea.

Yep, thanks for separating these two use cases. Regarding the former one (p=
ulling a bunch of prebuilt binary packages from a server and assembling a t=
arget image out of them ), some coworkers want exactly this and I am trying=
 to persuade them not to go down that path and just build from source. IMHO=
, even though installing previously tested binaries might bring some assura=
nce for the QM team, it brings a hell lot of issues with it which are easil=
y avoided by building from source.

>=20
>=20
>> On the other hand having a yocto-based binary distro, e.g. a target
>> image with package management which feels like the traditional linux
>> distributions is fine with me. I'm not particularly interested in it,
>> and I'm also not sure it can work well, but people are welcome to work
>> on it if they find it interesting or useful.
>=20
> Yep, I was thinking about the yocto-with-feeds.

Yes, I also think this use case makes more sense than the first one, but I =
also see it to be used during development only, so devs can install and use=
 packages faster (than rebuilding the whole image). Updating a device in th=
e field with a package management system is however in my opinion a no-go (=
from the reasons previously stated by all).

Aleksandar

>=20
> --
> With best wishes
> Dmitry

--hFKLrJj9M2VlMeQg3rVI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I'll reply on the last message from Alex, but thanks Dmitry for your i=
nitial message and the story how we came from <span style=3D"color: #333333=
; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans'=
, 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoj=
i', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: nor=
mal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial; display: inline !important; float: none;">&Aring;ngr&ouml;m t=
o what we have now. Also thanks to both of you for the extensive feedback!<=
/span></div>
<div>&nbsp;</div>
<div>On Mon, Oct 7, 2024 at 09:29 PM, Dmitry Baryshkov wrote:</div>
<div>
<blockquote>On Mon, 7 Oct 2024 at 21:27, Alexander Kanavin &lt;alex.kanavin=
@gmail.com&gt; wrote:<br />
<blockquote>On Mon, 7 Oct 2024 at 21:07, Dmitry Baryshkov &lt;dbaryshkov@gm=
ail.com&gt; wrote:<br />
<blockquote>
<blockquote>If you ask me, pulling pre-built packages into a yocto image is=
 in<br />itself a horrible hack that goes against yocto philosophy, and I w=
ould<br />not want yocto to help that or support it in any way.</blockquote=
>
</blockquote>
...<br /><br />
<blockquote>So, as much as I like OE, if you are thinking about a binary di=
stro, I<br />think you'd better use some existing purposely binary distro (=
like<br />Debian, Armbian or something from the RPM world). If you can affo=
rd<br />having package management on the device, it's not tightly resource<=
br />constrained. And thus there is no need to go Yocto way.</blockquote>
I think we're talking about two different things here, so just in case<br /=
>I'd clarify the difference. Point two is about using bitbake to<br />someh=
ow pull a big pile of prebuilt binary packages from the net and<br />assemb=
le a target image out of them. I don't like that at all.</blockquote>
Ugh, no, thank you. I also hate that idea.</blockquote>
</div>
<div>Yep, thanks for separating these two use cases. Regarding the former o=
ne (pulling a bunch of prebuilt binary packages from a server and assemblin=
g a target image out of them ), some coworkers want exactly this and I am t=
rying to persuade them not to go down that path and just build from source.=
 IMHO, even though installing previously tested binaries might bring some a=
ssurance for the QM team, it brings a hell lot of issues with it which are =
easily avoided by building from source.</div>
<div>&nbsp;</div>
<div>
<blockquote>
<blockquote>On the other hand having a yocto-based binary distro, e.g. a ta=
rget<br />image with package management which feels like the traditional li=
nux<br />distributions is fine with me. I'm not particularly interested in =
it,<br />and I'm also not sure it can work well, but people are welcome to =
work<br />on it if they find it interesting or useful.</blockquote>
Yep, I was thinking about the yocto-with-feeds.</blockquote>
Yes, I also think this use case makes more sense than the first one, but I =
also see it to be used during development only, so devs can install and use=
 packages faster (than rebuilding the whole image). Updating a device in th=
e field with a package management system is however in my opinion a no-go (=
from the reasons previously stated by all).</div>
<div>&nbsp;</div>
<div>Aleksandar<br />
<blockquote>-- <br />With best wishes<br />Dmitry</blockquote>
</div>

--hFKLrJj9M2VlMeQg3rVI--

