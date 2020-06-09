Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.936.1591731221920613749
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jun 2020 12:33:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ossystems-com-br.20150623.gappssmtp.com header.s=20150623 header.b=XYx5pbE1;
 spf=softfail (domain: ossystems.com.br, ip: 140.211.169.56, mailfrom: fabio.berton@ossystems.com.br)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80112E01CB3; Tue,  9 Jun 2020 12:33:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3498CE01CB0
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2020 12:33:39 -0700 (PDT)
Received: by mail-lf1-f65.google.com with SMTP id c12so681lfc.10
        for <yocto@yoctoproject.org>; Tue, 09 Jun 2020 12:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ZxwZ524z/olE7kqtJeILT+zvc1WfK1ISVYCJVRO+TJg=;
        b=XYx5pbE1D/gJzG+iqE3abMskIDL1ftAhCb+rAvUt8/743ZdKV1CxHb/1dfrYyH7bbd
         1frx1xrVVMs1godf0W1849dQ0HRvj162Zt4Yfr+bO4jwdyN8efM6arEgJeYB/BJJ9wW3
         NFCq8tAYU6nTD9YRYylxpNPdQbDsVbmG7li/e8kByGpWf6c7rLxVISngxZ87QrPjSx4Y
         uqOsJxoRWtvXYEXtS7lK5LiQdJFxr337C4W8aqBbV+OH4kt2huHD/TXTv9A2CHWK9DYZ
         BUBxZcwbjCUY0By4VtHjXo9dJqOt4dttm1shaHLjQv6yoQWFviJXG0H3kKmHwHzDD0ek
         L7PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ZxwZ524z/olE7kqtJeILT+zvc1WfK1ISVYCJVRO+TJg=;
        b=Yu2TDo8JltJlDTSMVW3AbXYzpjHm6/rSx/vCTgTEyKtNjYeurIpY2wNt8ObD7Ivja0
         5xx+PUIaRHI+/rGUiOOmQOmVsfir18bqJogN4cpcFdeJYGezR5Zp6JOFCyKJqJvmQk2U
         L02hNkFWmihw17i/mVr5zHBj/5ZvLZt/gaizaCowWjWquqqn0YFpdw2/Q4CWa7YbX7US
         xNWVCgj/Rf/LbW3B0nJCEo4BNbXfFdLgEJsi4IKDp6ccjvJNyGS7OwWWnCeG6Ur3xhiz
         3qBKldDLjdnitklttJvY4nYz+gfzudZQIOAW9/9l7HPN95qlZhqYZoQDQ2RaexYrCAKi
         x7UQ==
X-Gm-Message-State: AOAM532PbpKuYjbyyZLiLgzOjwXtRyX+aUQpOBUlJWL8B4bPsYBc3sMs
	1oNp8G46raBY0PxjWTK8C0oB8BF3AGFdRCsISuhkRYdi
X-Google-Smtp-Source: ABdhPJyDr/3wpa3xYun16mPUn0CgpfBMvE5qqaUUwVv8Xyub51nRYyQdIGVlJVsofagONg8rGGX/QxdUtWJwm9oFsEM=
X-Received: by 2002:a19:c1c3:: with SMTP id r186mr15837047lff.49.1591731217801;
 Tue, 09 Jun 2020 12:33:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200417124242.3213446-1-fabio.berton@ossystems.com.br>
In-Reply-To: <20200417124242.3213446-1-fabio.berton@ossystems.com.br>
From: "Fabio Berton" <fabio.berton@ossystems.com.br>
Date: Tue, 9 Jun 2020 16:33:21 -0300
Message-ID: <CAAPZna0RprLRrc7J1aj-D1UK6sRaVT7J_4bHbPstBdQzC97SXw@mail.gmail.com>
Subject: Re: [meta-openssl102][PATCH] conf/layer.conf: Set layer compatible with dunfell
To: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d0c54705a7abcd0d"

--000000000000d0c54705a7abcd0d
Content-Type: text/plain; charset="UTF-8"

Ping

On Fri, Apr 17, 2020 at 9:42 AM Fabio Berton <fabio.berton@ossystems.com.br>
wrote:

> Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index c7dcd8a..30ef9c9 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two = "5"
>
>  LAYERVERSION_meta-openssl-one-zero-two = "1"
>
> -LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "thud warrior zeus"
> +LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "thud warrior zeus dunfell"
>
>  LAYERDEPENDS_meta-openssl-one-zero-two = " \
>          core \
> --
> 2.26.1
>
>

--000000000000d0c54705a7abcd0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace;font-size:small">Ping</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 17, 2020 at 9:42 AM Fabi=
o Berton &lt;<a href=3D"mailto:fabio.berton@ossystems.com.br">fabio.berton@=
ossystems.com.br</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Signed-off-by: Fabio Berton &lt;<a href=3D"mailto:fabio.ber=
ton@ossystems.com.br" target=3D"_blank">fabio.berton@ossystems.com.br</a>&g=
t;<br>
---<br>
=C2=A0conf/layer.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index c7dcd8a..30ef9c9 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two =3D &quot;5&quo=
t;<br>
<br>
=C2=A0LAYERVERSION_meta-openssl-one-zero-two =3D &quot;1&quot;<br>
<br>
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two =3D &quot;thud warrior zeus&q=
uot;<br>
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two =3D &quot;thud warrior zeus d=
unfell&quot;<br>
<br>
=C2=A0LAYERDEPENDS_meta-openssl-one-zero-two =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0core \<br>
-- <br>
2.26.1<br>
<br>
</blockquote></div>

--000000000000d0c54705a7abcd0d--
