Return-Path: <seth.raymond@matrixspace.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625D6CAC59B
	for <webhook@archiver.kernel.org>; Tue, 16 Sep 2025 20:04:57 +0000 (UTC)
Subject: Documentation around adding custom fetchers to layer
To: yocto@lists.yoctoproject.org
From: seth.raymond@matrixspace.com
X-Originating-Location: Saugus, Massachusetts, US (71.26.215.193)
X-Originating-Platform: Linux Firefox 142
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 16 Sep 2025 13:04:54 -0700
Message-ID: <tEoU.1758053094260077183.1RYf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="C9Ni1JBvft7tfvIM8WP9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 20:04:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65848

--C9Ni1JBvft7tfvIM8WP9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am attempting to write a couple of custom fetcher that pull secrets from =
our password manager (using its CLI). To start, I wrote Python classes that=
 inherit from bb.fetch2.FetchMethod and registered them in poky/bitbake/lib=
/bb/fetch2/__init__.py by importing them and appending them to methods. I c=
onfirmed that the fetchers themselves are working as expected and the secre=
ts are getting pulled during the recipe build process.

Of course, I don't (necessarily) want to contribute these fetchers upstream=
 to poky. I would like to add them to one of our company's layers. Our dire=
ctory structure is laid out like:

top-dir/
|--- build/
|--- layers/
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |--- poky/
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |--- meta-matrixspace/
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |--- meta-mtrx-core/=C2=A0 (this is the layer I want to a=
dd my fetchers to)
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |--- meta-mtrx-other-layer/
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |--- meta-mtrx-yet-another-layer/

We're based off of scarthgap. I've put my fetchers into top-dir/layers/meta=
-matrixspace/meta-mtrx-core/lib/bb/fetch2/op.py and updated top-dir/layers/=
meta-matrixspace/meta-mtrx-core/conf/layer.conf to include

PYTHONPATH .=3D ":${LAYERDIR}/lib"

When building recipes that use the fetchers, I get parsing errors saying th=
at no fetchers could be found to support the URL:

bb.data_smart.ExpansionError: Failure expanding variable fetcher_hashes_dum=
myfunc[vardepvalue], expression was ${@bb.fetch.get_hashvalue(d)} which tri=
ggered exception NoMethodError: Could not find a fetcher which supports the=
 URL: 'optemplate://aes_key.tpl;output=3Daes.key'
The variable dependency chain for the failure is: fetcher_hashes_dummyfunc[=
vardepvalue]

I'm not seeing any documentation on how to add a custom fetcher to a layer,=
 and the fetchers in poky don't provide enough information on how to regist=
er these fetchers. Is this functionality supported, or will we have to fork=
 poky and keep it up-to-date to add a new fetcher?

Thanks,
Seth

--C9Ni1JBvft7tfvIM8WP9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I am attempting to write a couple of custom fetcher that pull secrets =
from our password manager (using its CLI). To start, I wrote Python classes=
 that inherit from bb.fetch2.FetchMethod and registered them in poky/bitbak=
e/lib/bb/fetch2/__init__.py by importing them and appending them to methods=
. I confirmed that the fetchers themselves are working as expected and the =
secrets are getting pulled during the recipe build process.</div>
<div>&nbsp;</div>
<div>Of course, I don't (necessarily) want to contribute these fetchers ups=
tream to poky. I would like to add them to one of our company's layers. Our=
 directory structure is laid out like:</div>
<div>&nbsp;</div>
<div>top-dir/</div>
<div>&nbsp; &nbsp; |--- build/</div>
<div>&nbsp; &nbsp; |--- layers/</div>
<div>&nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |--- poky/</div>
<div>&nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |--- meta-matrixspac=
e/</div>
<div>&nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |--- meta-mtrx-core/&nbsp; (this is th=
e layer I want to add my fetchers to)</div>
<div>&nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |--- meta-mtrx-other-layer/</div>
<div>&nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |--- meta-mtrx-yet-another-layer/</div=
>
<div>&nbsp;</div>
<div>We're based off of scarthgap. I've put my fetchers into top-dir/layers=
/meta-matrixspace/meta-mtrx-core/lib/bb/fetch2/op.py and updated top-dir/la=
yers/meta-matrixspace/meta-mtrx-core/conf/layer.conf to include<br /><br />=
PYTHONPATH .=3D ":${LAYERDIR}/lib"</div>
<div>&nbsp;</div>
<div>When building recipes that use the fetchers, I get parsing errors sayi=
ng that no fetchers could be found to support the URL:<br /><br />bb.data_s=
mart.ExpansionError: Failure expanding variable fetcher_hashes_dummyfunc[va=
rdepvalue], expression was ${@bb.fetch.get_hashvalue(d)} which triggered ex=
ception NoMethodError: Could not find a fetcher which supports the URL: 'op=
template://aes_key.tpl;output=3Daes.key'<br />The variable dependency chain=
 for the failure is: fetcher_hashes_dummyfunc[vardepvalue]<br /><br /></div=
>
<div>I'm not seeing any documentation on how to add a custom fetcher to a l=
ayer, and the fetchers in poky don't provide enough information on how to r=
egister these fetchers. Is this functionality supported, or will we have to=
 fork poky and keep it up-to-date to add a new fetcher?</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Seth</div>

--C9Ni1JBvft7tfvIM8WP9--

