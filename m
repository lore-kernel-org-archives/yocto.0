Return-Path: <atsharma623@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B0BCD3436
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 07:15:01 +0000 (UTC)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8282.1778224496652547558
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 May 2026 00:14:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=TXhUjJlG;
 spf=pass (domain: gmail.com, ip: 209.85.221.180, mailfrom: atsharma623@gmail.com)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-56a9c5cb48bso670085e0c.0
        for <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 00:14:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778224495; cv=none;
        d=google.com; s=arc-20240605;
        b=bRQmvpqk8mwhRAVwKN4A8xthYvQSCGvqFyQMq5omUH5x7NGig2xqXdhKoVCVLplE53
         O0CbX4xOnpOlyTm9fFfti4Kpxjijoc+XquL670OjPytFz6WMKfWuZkblvvrzVwET85R8
         TRmpmrsiZmZqin18oqnLE/EizgwpoNSTlC75VtdHBaFRzq5UoLCyV5v3NYrZvkC2TdMl
         sLdHc+b8fNRWQNz+bbpt0zBx1PoP1GCfsKDdFaNbXDqCRIzrhsrlqIdglBc3nrA/ecZL
         gzy0B/apI57jfE/XFOxDkICu0iXbWpvF0nZbULsjdOm8OpUEQdtaJ+Etjhlq9zRbYkzD
         Ny7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=RGVW2GpMcHLJFfkUKiuz3hFIwAD7d79ff73SJk9GMeQ=;
        fh=PLyN++XzDGwzlDf7FoHCFmkg1XhSjD5SaSbPq4CKzTg=;
        b=Sn0lOOnuOobixtKMluYObuU2cZEDxdYfwDlmfyPCjZLX/0NppLHPhZwTZpdnKAb/J1
         MFngvmfXTLVBx3VrnVn73NCUoZlidmEgt/0wDPzm06HXZCaSnl6UXQAebjxX/Y1ehpOA
         Xi8NgAajauKBYchJjwipdE/6cB5/EHXa/0BP03YjOyv53HnxMwHd7Qm1T0pRt/bdDN2b
         tblDtLVz+meyeQuKVATELypzXXC6ToZ1TLQyh4kOOeGIdh1dnXWPTgeoo9MAnNTKCNFt
         X+kbNOI7N2Up2O0ElcEF8Xl1CHIVzHO85DJDFOVHKpaxV+XpMKcgkE8UcLmGX/grK/rb
         Jdkg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778224495; x=1778829295; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RGVW2GpMcHLJFfkUKiuz3hFIwAD7d79ff73SJk9GMeQ=;
        b=TXhUjJlG5pd8Xeyx0YnmaYcfqTNYGlkeW6BTE9CJpgeW7NFEEKDjQnqRDCn00cxW5F
         eRd3w0R0AVAa6aD5R+FhTU2noxE3GguwIvDjPak4h1uXlrYHcubjgJf/is1JL6SNUTCD
         5vxfD8pSpVx+42WGKg1L5SJj+veINPrRKC/6OIBXYuLUk9tVTn8c1IlSEBuxgcCbzusr
         uOERmvDJ3SunuFLFgFgeAN6BIWoLs2LjyDsgqfUiopeDNK+gYhaQTjD22OBzsLNnBiMb
         xj3bK3kNqVWXYaxIVYdtQwEDpviWwj9IyyIXXqRsbwqDyVbmUc9+10K1B25Iuy6ZY6c+
         TCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778224495; x=1778829295;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RGVW2GpMcHLJFfkUKiuz3hFIwAD7d79ff73SJk9GMeQ=;
        b=DN7T/8HpIzRlsmUmOZ1BGYzFDoO3rC1oGNIZ7slV4kaIkAd4+0EC4WIU7sBacJWEqk
         atXlhTaNNlgUuU5QX32K12o6wIZ8wz1d4I1vCN8LOzYj2rOiIra1nbPkcyk28O3aemW0
         xpkD15O3iONNe1d2syw59DGzsv4FHX5hhGtEfTDpc4fHUGLU6k+NsFQmW6nnojpc6Fzs
         KioUS+ODxcIdKALCjzPlwzeGjIJtJ9FwmGlvqNrhtvtySlGFmNgi+uA/9zDykV7vcDyS
         DfdTASvlgiBLkTrWwo5icIs8pfUCBfavAtfbiCn4Tc2KLi7N90SjdiC0cDqlWj3TKspR
         5jxA==
X-Gm-Message-State: AOJu0YyH2hX/ZYWM2gogtxloQGCRcj0JuxFzlMsdVyVggtvweD+4XMW5
	pTjEh9P7JnP1xZDOJvp5vkhWJCMvqec7B9EkyPxmGT28lwZwFR0a9UJr0FiOfHwHE0pb7XeUTde
	cN/0v3haxiLhfnh9Z2Xd8hu0kqdRz7RkfK31nGK2F9A==
X-Gm-Gg: Acq92OFHU0NQeUj+1GwyKq3pm7HX0AD7Te8PS93Ll+gVx5i/jvPfG17E8XaiJNV4KJL
	Eevx9K/efe8sWdw1cnZLrzxkPld2AsLncHhTxpQTENs6zxoIRr1t+DO7b4NWZ1si8eeJX9Yu7Vd
	qu7gD0PAFJlEUOCe/cuN5LhBTlQbRJM905+ehJjdYXrlk0n05bGVfWTNbVhKuCgWnnmHQ8xFJhv
	juI3F44HlaWGEsOhgXB+Zrq/F3f6fE3FpiEGUOGtDoXqfRDsSRjWxWm2BmDxpPWTl0fmn2/jPyE
	JImjnII7lezQQiXpKdH6e+DbXJhx4buNHFEg0Ftgvw==
X-Received: by 2002:a05:6122:4b18:b0:575:360e:600a with SMTP id
 71dfb90a1353d-575595a9b23mr6444764e0c.8.1778224495372; Fri, 08 May 2026
 00:14:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1778202125.git.tim.orling@konsulko.com> <601c281165450b2be14de46bb9601e82229ca5f6.1778202125.git.tim.orling@konsulko.com>
In-Reply-To: <601c281165450b2be14de46bb9601e82229ca5f6.1778202125.git.tim.orling@konsulko.com>
From: Atiksh Sharma <atsharma623@gmail.com>
Date: Fri, 8 May 2026 12:44:42 +0530
X-Gm-Features: AVHnY4K7umkLlkDLFJfmGcpT8TDLP4LSelyJItrjHv0AshdIPuxAxDUQCFqU_3Q
Message-ID: <CABiSP2VTDWSyNC-E6_WGmSRdxJDoT6Yq2GSUrsAk3JbYb4E4OA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 11/11] config.json:
 containers-library: add mosquitto and valkey demos
To: yocto@lists.yoctoproject.org, tim.orling@konsulko.com
Content-Type: multipart/alternative; boundary="00000000000060af410651492765"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 07:15:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66513

--00000000000060af410651492765
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CAN YOU JUST STOP SPAMMING?

On Fri, May 8, 2026 at 6:56=E2=80=AFAM Tim Orling via lists.yoctoproject.or=
g
<tim.orling=3Dkonsulko.com@lists.yoctoproject.org> wrote:

> From: Tim Orling <tim.orling@konsulko.com>
>
> Extend containers-library with two additional demo images sourced
> from meta-yocto-containers-demo:
>
>   * app-container-mosquitto: the Eclipse Mosquitto MQTT broker.
>   * app-container-valkey: Valkey (Redis-compatible) key/value datastore.
>
> Signed-off-by: Tim Orling <tim.orling@konsulko.com>
> ---
>  config.json | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/config.json b/config.json
> index 7cdf91a..a9a2e9c 100644
> --- a/config.json
> +++ b/config.json
> @@ -1950,6 +1950,18 @@
>                  "BBTARGETS" : "app-container-python",
>                  "CONTAINER_IMAGES" : {"app-container-python": "python"},
>                  "CONTAINER_VERSION_RECIPE" : "python3"
> +            },
> +            "step2" : {
> +                "shortname" : "Build 'mosquitto' container",
> +                "BBTARGETS" : "app-container-mosquitto",
> +                "CONTAINER_IMAGES" : {"app-container-mosquitto":
> "mosquitto"},
> +                "CONTAINER_VERSION_RECIPE" : "mosquitto"
> +            },
> +            "step3" : {
> +                "shortname" : "Build 'valkey' container",
> +                "BBTARGETS" : "app-container-valkey",
> +                "CONTAINER_IMAGES" : {"app-container-valkey": "valkey"},
> +                "CONTAINER_VERSION_RECIPE" : "valkey"
>              }
>          },
>          "vcontainer-tests": {
> --
> 2.43.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66512):
> https://lists.yoctoproject.org/g/yocto/message/66512
> Mute This Topic: https://lists.yoctoproject.org/mt/119207998/8395439
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> atsharma623@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000060af410651492765
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">CAN YOU JUST STOP SPAMMING?</div><br><div class=3D"gmail_q=
uote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, M=
ay 8, 2026 at 6:56=E2=80=AFAM Tim Orling via <a href=3D"http://lists.yoctop=
roject.org">lists.yoctoproject.org</a> &lt;tim.orling=3D<a href=3D"mailto:k=
onsulko.com@lists.yoctoproject.org">konsulko.com@lists.yoctoproject.org</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">From=
: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" target=3D"_blan=
k">tim.orling@konsulko.com</a>&gt;<br>
<br>
Extend containers-library with two additional demo images sourced<br>
from meta-yocto-containers-demo:<br>
<br>
=C2=A0 * app-container-mosquitto: the Eclipse Mosquitto MQTT broker.<br>
=C2=A0 * app-container-valkey: Valkey (Redis-compatible) key/value datastor=
e.<br>
<br>
Signed-off-by: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" ta=
rget=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
---<br>
=C2=A0config.json | 12 ++++++++++++<br>
=C2=A01 file changed, 12 insertions(+)<br>
<br>
diff --git a/config.json b/config.json<br>
index 7cdf91a..a9a2e9c 100644<br>
--- a/config.json<br>
+++ b/config.json<br>
@@ -1950,6 +1950,18 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BBTARGE=
TS&quot; : &quot;app-container-python&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;CONTAIN=
ER_IMAGES&quot; : {&quot;app-container-python&quot;: &quot;python&quot;},<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;CONTAIN=
ER_VERSION_RECIPE&quot; : &quot;python3&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;step2&quot; : {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;shortname&qu=
ot; : &quot;Build &#39;mosquitto&#39; container&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BBTARGETS&qu=
ot; : &quot;app-container-mosquitto&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;CONTAINER_IM=
AGES&quot; : {&quot;app-container-mosquitto&quot;: &quot;mosquitto&quot;},<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;CONTAINER_VE=
RSION_RECIPE&quot; : &quot;mosquitto&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;step3&quot; : {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;shortname&qu=
ot; : &quot;Build &#39;valkey&#39; container&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BBTARGETS&qu=
ot; : &quot;app-container-valkey&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;CONTAINER_IM=
AGES&quot; : {&quot;app-container-valkey&quot;: &quot;valkey&quot;},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;CONTAINER_VE=
RSION_RECIPE&quot; : &quot;valkey&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;vcontainer-tests&quot;: {<br>
-- <br>
2.43.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66512): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66512" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66512</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/119207998/839=
5439" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/119207998/8395439</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:atsharma623@gmail.com" target=3D"_blank">atsharm=
a623@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000060af410651492765--

