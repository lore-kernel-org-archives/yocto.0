Return-Path: <H.Wulff@kruss.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5851D2E9C9
	for <webhook@archiver.kernel.org>; Mon, 11 Nov 2024 09:28:58 +0000 (UTC)
Subject: Re: [yocto] Conditionally set SYSTEMD_SERVICE_${PN} based on version of another package
To: "Logan Grosz" <Logan.Grosz@b9c.com>, yocto@lists.yoctoproject.org
From: "Hauke Wulff" <H.Wulff@kruss.de>
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (84.46.93.199)
X-Originating-Platform: Windows Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Nov 2024 01:28:53 -0800
References: <MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
In-Reply-To: <MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
Message-ID: <20128.1731317333035757411@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lq09KO6lrHXMpC3hXTQN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Nov 2024 09:28:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64246

--lq09KO6lrHXMpC3hXTQN
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

How about replacing the recipe by a .bbappend and replacing the systemd fil=
e(s) with something like:
```
FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"

SRC_URI:remove =3D "${@bb.utils.contains('SYSTEMD_VERSION', '250', ' file:/=
/factory-reset-yocto.target', '', d)}"
SRC_URI:append =3D "${@bb.utils.contains('SYSTEMD_VERSION', '250', ' file:/=
/your-factory-reset.target', '', d)}"
```
If you can live with touching your recipe.

--lq09KO6lrHXMpC3hXTQN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>How about replacing the recipe by a .bbappend and replacing the systemd =
file(s) with something like:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">FILESEXTRAPATHS=
:prepend :=3D &#34;${THISDIR}/files:&#34;

SRC_URI:remove =3D &#34;${@bb.utils.contains(&#39;SYSTEMD_VERSION&#39;, &#3=
9;250&#39;, &#39; file://factory-reset-yocto.target&#39;, &#39;&#39;, d)}&#=
34;
SRC_URI:append =3D &#34;${@bb.utils.contains(&#39;SYSTEMD_VERSION&#39;, &#3=
9;250&#39;, &#39; file://your-factory-reset.target&#39;, &#39;&#39;, d)}&#3=
4;
</code></pre>
<p>If you can live with touching your recipe.</p>

--lq09KO6lrHXMpC3hXTQN--

