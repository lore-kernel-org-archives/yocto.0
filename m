Return-Path: <duy.dang.yw@renesas.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02854C67861
	for <webhook@archiver.kernel.org>; Mon,  8 Apr 2024 12:36:42 +0000 (UTC)
Subject: Re: [yocto] Any recommendation to make software layer Yocto Compatible?
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org
From: "Duy" <duy.dang.yw@renesas.com>
X-Originating-Location: Singapore, SG (165.225.231.71)
X-Originating-Platform: Windows Chrome 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Apr 2024 05:36:38 -0700
References: <afb2f4d332b2c1b003d132cd9152251ef6e32dcc.camel@linuxfoundation.org>
In-Reply-To: <afb2f4d332b2c1b003d132cd9152251ef6e32dcc.camel@linuxfoundation.org>
Message-ID: <20226.1712579798480481849@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XV4oARUEzObQgBN6wuWB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Apr 2024 12:36:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62902

--XV4oARUEzObQgBN6wuWB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Thanks for your response.
Here is one of the recipe bbappend files I'm working on:
meta-agl-ic-container/recipes-extended/dlt-daemon/dlt-daemon_%.bbappend =C2=
=B7 master =C2=B7 Automotive Grade Linux / AGL / meta-agl-devel =C2=B7 GitL=
ab ( https://gitlab.com/automotivegradelinux/AGL/meta-agl-devel/-/blob/mast=
er/meta-agl-ic-container/recipes-extended/dlt-daemon/dlt-daemon_%25.bbappen=
d?ref_type=3Dheads )
meta-agl-ic-container/recipes-extended/dlt-daemon/dlt-daemon_%.bbappend =C2=
=B7 master =C2=B7 Automotive Grade Linux / AGL / meta-agl-devel =C2=B7 GitL=
ab ( https://gitlab.com/automotivegradelinux/AGL/meta-agl-devel/-/blob/mast=
er/meta-agl-ic-container/recipes-extended/dlt-daemon/dlt-daemon_%25.bbappen=
d?ref_type=3Dheads )

I think some configurations are better to be upstreaming, e.g: Adding new P=
ACKAGES, adding new PACKAGECONFIG. It avoids adding too much to bbappend. I=
f you have any idea, please share it.

Best Regards,
Duy Dang

--XV4oARUEzObQgBN6wuWB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,<br /><br />Thanks for your response.<br />Here is one of the re=
cipe bbappend files I'm working on:<br /><a href=3D"https://gitlab.com/auto=
motivegradelinux/AGL/meta-agl-devel/-/blob/master/meta-agl-ic-container/rec=
ipes-extended/dlt-daemon/dlt-daemon_%25.bbappend?ref_type=3Dheads">meta-agl=
-ic-container/recipes-extended/dlt-daemon/dlt-daemon_%.bbappend &middot; ma=
ster &middot; Automotive Grade Linux / AGL / meta-agl-devel &middot; GitLab=
</a><br /><a href=3D"https://gitlab.com/automotivegradelinux/AGL/meta-agl-d=
evel/-/blob/master/meta-agl-ic-container/recipes-extended/dlt-daemon/dlt-da=
emon_%25.bbappend?ref_type=3Dheads">meta-agl-ic-container/recipes-extended/=
dlt-daemon/dlt-daemon_%.bbappend &middot; master &middot; Automotive Grade =
Linux / AGL / meta-agl-devel &middot; GitLab</a><br /><br />I think some co=
nfigurations are better to be upstreaming, e.g: Adding new PACKAGES, adding=
 new PACKAGECONFIG. It avoids adding too much to bbappend. If you have any =
idea, please share it.<br /><br />Best Regards,<br />Duy Dang

--XV4oARUEzObQgBN6wuWB--

