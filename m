Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADA74E00726; Mon, 13 Feb 2017 09:02:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4827EE00566
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 09:02:14 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id c85so20532476wmi.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 09:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2rXnpcGvL8Uha1oJFv0Y2D9eKNNPGtAqutx4pBIGG/Y=;
	b=lxOl6WRfl4Jgc26/mVTnpBCo+2LVLIxeKRuPaR6h7+DlP7pyWwtnzD6KJky2PalpJF
	6C02H/3RrKn6yx8yDrpwjMmVJbs7yN/yb+XokDYy1qW2yZkwiuFbOEaOnSJw5pOu0Wzr
	nRqjYC6TK97/cIEswv9yPlkktEFa2A69d9iz4TRRaOt8Wl8yjy+DqRFHcB/jJbxVml3b
	sisYZ/OB0fbh//4p35zkNpuFFJRKpEe615WhZX/RY7HKV0wQPvQPvouJvCclx/f+vaNF
	YX1l+fVZvMMnvabiGMWSFn2k1qcq67qwJQT0AROtmJw8U7d1mxhplfrmc/RV8WU5u+bQ
	CsWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2rXnpcGvL8Uha1oJFv0Y2D9eKNNPGtAqutx4pBIGG/Y=;
	b=iIxV12ofUAn/4FgV49jzx2ZP8vJ2ZfdPC8ofbQis5r7Gn2hs28z8nT9a0hxjLJXYa+
	gEVh4/Qv8aYEYymKaEkqUPhsyZuIs96tjSUNOF+4+BeCC70FgOqoo3/r/hOl9+x9dgvu
	peZzBQYeogMj2mzkGpuz6hb0fdIyQf9yXK4+rf0gPOx51fw2o+55LvtykdZg/Ndpobws
	JZ9P2HVjAutxulPv80yW+rfW1XEEnVvORzAWo5e8BMnrrRWY1uEapvn1nCkwUX8JUNSc
	6oPZBYAai01NBo2YAVf3glghzx4asrd216LPopHfSdw4caLc/3gltSs5lVFpw8FbRD4i
	vnzA==
X-Gm-Message-State: AMke39kSE6rju7/DqTSWlQ4h5hBTLT9VEUYscfFr0jBxf/TdEnV6rJr/DtGW9yq1deNYxU4kSTR4NI5lYTpsEQ==
X-Received: by 10.28.95.4 with SMTP id t4mr20686446wmb.87.1487005333968; Mon,
	13 Feb 2017 09:02:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Mon, 13 Feb 2017 09:02:13 -0800 (PST)
In-Reply-To: <1486564699-6001-3-git-send-email-eddie.cai.linux@gmail.com>
References: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
	<1486564699-6001-3-git-send-email-eddie.cai.linux@gmail.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Mon, 13 Feb 2017 18:02:13 +0100
Message-ID: <CABgxDoJ+ij9K86mUtSDxUfmCfTFgO_Zhw=bqYTJ2YojtpGY4dQ@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org, Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [meta-rockchip][morty][PATH 2/3] machine: Use SOC specific assignements
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 Feb 2017 17:02:18 -0000
Content-Type: multipart/alternative; boundary=001a1148f534b5dd2905486c684e

--001a1148f534b5dd2905486c684e
Content-Type: text/plain; charset=UTF-8

It would be nice to do the same thing for ther SoCs, what do you think ?

Reviewed-by: Romain Perier <romain.perier@collabora.com>

2017-02-08 15:38 GMT+01:00 Eddie Cai <eddie.cai.linux@gmail.com>:

> From: Eddie Cai <eddie.cai@rock-chips.com>
>
> In this way the modifications will be used on all RK3288 boards.
>
> Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
> ---
>  conf/machine/include/rk3288.inc | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> index 6d4affd..b3726ee 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -1,7 +1,10 @@
>  # Copyright (C) 2015 Romain Perier
>  # Released under the MIT license (see COPYING.MIT for the terms)
>
> +SOC_FAMILY  = "rk3288"
> +
>  require conf/machine/include/tune-cortexa17.inc
> +require conf/machine/include/soc-family.inc
>
>  DEFAULTTUNE="cortexa17hf-neon-vfpv4"
>  PREFERRED_PROVIDER_virtual/kernel = "linux"
> --
> 2.7.4
>
>

--001a1148f534b5dd2905486c684e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:12.8px">It would be nice to =
do the same thing for ther SoCs, what do you think ?</span></div><div><br><=
/div><span style=3D"font-size:12.8px">Reviewed-by: Romain Perier=C2=A0</spa=
n><span style=3D"font-size:12.8px">&lt;<a href=3D"mailto:romain.perier@coll=
abora.com" target=3D"_blank">romain.perier@<wbr>collabora.com</a></span><sp=
an style=3D"font-size:12.8px">&gt;</span><br></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">2017-02-08 15:38 GMT+01:00 Eddie Cai <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:eddie.cai.linux@gmail.com" target=3D"_b=
lank">eddie.cai.linux@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">From: Eddie Cai &lt;<a href=3D"mailto:eddie.cai@rock-chips.com">eddi=
e.cai@rock-chips.com</a>&gt;<br>
<br>
In this way the modifications will be used on all RK3288 boards.<br>
<br>
Signed-off-by: Eddie Cai &lt;<a href=3D"mailto:eddie.cai.linux@gmail.com">e=
ddie.cai.linux@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rk3288.<wbr>inc | 3 +++<br>
=C2=A01 file changed, 3 insertions(+)<br>
<br>
diff --git a/conf/machine/include/rk3288.<wbr>inc b/conf/machine/include/rk=
3288.<wbr>inc<br>
index 6d4affd..b3726ee 100644<br>
--- a/conf/machine/include/rk3288.<wbr>inc<br>
+++ b/conf/machine/include/rk3288.<wbr>inc<br>
@@ -1,7 +1,10 @@<br>
=C2=A0# Copyright (C) 2015 Romain Perier<br>
=C2=A0# Released under the MIT license (see COPYING.MIT for the terms)<br>
<br>
+SOC_FAMILY=C2=A0 =3D &quot;rk3288&quot;<br>
+<br>
=C2=A0require conf/machine/include/tune-<wbr>cortexa17.inc<br>
+require conf/machine/include/soc-<wbr>family.inc<br>
<br>
=C2=A0DEFAULTTUNE=3D&quot;cortexa17hf-neon-<wbr>vfpv4&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/<wbr>kernel =3D &quot;linux&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
</font></span></blockquote></div><br></div>

--001a1148f534b5dd2905486c684e--
