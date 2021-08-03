Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web08.2318.1628013861111493462
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 11:04:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QQ6Mnsds;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id f13so154565edq.13
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 11:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v7zA/qg7efoQC29LtTLPWVU3QIDGcdqcbqO4PeAP24c=;
        b=QQ6MnsdsxIJs66ZNym8JWUcTlacZ3t1ansK7J1xxZD67CIF6rt6r80QxPiCYTRc0Nc
         RAAhIxcjryCZW1z7pAS1LY3KLmP/RJ+KP+sxJ/gkULbBAi4d+gPg9UFTIx5DD9l6jo5m
         NuWi+nypqKfukgAnojGtFVkyy5o/P2Qm8zx80QHqpX4HXTMMuWMKS/myoh+T65Gl8Iml
         5LWdbkJLHO6iUyEP1L45VKeOidSJGTNHHzBhVkR5vv+dpyq1BDVtnEjmMg/7eU7sS+7k
         CvmnZptTmowSkyoxt7SU5qWclb4K9zQgWIcuGWhYQCdZXzIJL80AYSI7WIQ5HVgAbsLn
         z3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v7zA/qg7efoQC29LtTLPWVU3QIDGcdqcbqO4PeAP24c=;
        b=sGLox+ozfThpAo6oQXbdGF/INJA2A70UKU51N2U10GpczXueXi3ImOccjcwczTCso3
         1Mbfn8hkzMFxPV61rPy9oEwqyTAgf71c0uWO7hZHzLGEl2U00AecTnAPOVR7muvSHMrL
         RzkJa0JDXJgQAlcd8A1uUPnk1MwZYvJlFDEEruF9ZJDzH08iKcqq2c0rN7klxYyw0Nhv
         3dskLF7Fvqc14iVCpBV8GwKWWYzD83oVJix1PdIL77uMQu/85TISFgrWfdRykeLUZKPE
         k1GFSN9LTWtIuBPJet1xrJBkaDfw0rjM/A3scZjGbF9HeH8n1f3wyrpeDK+8zDxB4GlT
         yfrw==
X-Gm-Message-State: AOAM53150QUOh1k8w8G0vDTA4CqAUHwZzDBujwlTOcoBrFXBRqh/0i4F
	ZLuzp1A1je/F/c609bvee7ggqRBbUzUNchgSYL8=
X-Google-Smtp-Source: ABdhPJxgLeirsAfXrmJhqW5penvoPZLsj60onMRm7KCxweChF/ecy53JkLUOnlj4vd3IPFZOnIQNIxJsbrYdaYNkA+w=
X-Received: by 2002:a05:6402:19a:: with SMTP id r26mr26705619edv.230.1628013859584;
 Tue, 03 Aug 2021 11:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210803170230.2647035-1-raj.khem@gmail.com> <20210803170230.2647035-2-raj.khem@gmail.com>
In-Reply-To: <20210803170230.2647035-2-raj.khem@gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Tue, 3 Aug 2021 20:04:08 +0200
Message-ID: <CA+chaQc-NK_ZGx8FPqFuv0DKgNn-e9zwnLxXc3sspnuLWe9iWg@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH 2/2] layer.conf: Drop compatibility with older than hardknott releases
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000ca3f6505c8ab834e"

--000000000000ca3f6505c8ab834e
Content-Type: text/plain; charset="UTF-8"

I don't use meta-rockchip, but new syntax doesn't require honister, recent
revisions of 1.50 bitbake are forward compatible with the new syntax.

On Tue, Aug 3, 2021 at 7:02 PM Khem Raj <raj.khem@gmail.com> wrote:

> New override syntax requires it
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index f97fb69..25b0a99 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
>  # This should only be incremented on significant changes that will
>  # cause compatibility issues with other layers
>  LAYERVERSION_rockchip = "1"
> -LAYERSERIES_COMPAT_rockchip = "hardknott"
> +LAYERSERIES_COMPAT_rockchip = "honister"
>  LAYERDEPENDS_rockchip = "core meta-arm"
>
>  BBFILES_DYNAMIC += " \
> --
> 2.32.0
>
>
> 
>
>

--000000000000ca3f6505c8ab834e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I don&#39;t use meta-rockchip, but new syntax doesn&#=
39;t require honister, recent revisions of 1.50 bitbake are forward compati=
ble with the new syntax.</div></div><br><div class=3D"gmail_quote"><div dir=
=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 3, 2021 at 7:02 PM Khem Raj &lt;=
<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">New override syntax=
 requires it<br>
<br>
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/layer.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index f97fb69..25b0a99 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip =3D &quot;1&quot;<br>
=C2=A0# This should only be incremented on significant changes that will<b=
r>
=C2=A0# cause compatibility issues with other layers<br>
=C2=A0LAYERVERSION_rockchip =3D &quot;1&quot;<br>
-LAYERSERIES_COMPAT_rockchip =3D &quot;hardknott&quot;<br>
+LAYERSERIES_COMPAT_rockchip =3D &quot;honister&quot;<br>
=C2=A0LAYERDEPENDS_rockchip =3D &quot;core meta-arm&quot;<br>
<br>
=C2=A0BBFILES_DYNAMIC +=3D &quot; \<br>
-- <br>
2.32.0<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000ca3f6505c8ab834e--
