Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFB9DC27C55
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 11:01:30 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.16669.1718017285056179123
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 04:01:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V4a2fb44;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52bc274f438so3219812e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 04:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718017283; x=1718622083; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zr98ndKWBFc0evTgYxg+Tt7IL/QFSdQHnVtwmVrApIs=;
        b=V4a2fb44Y0ruhfYPyAc4gstSj8uhTFbrHtdIc2Oxg343G2o/DeZE3miAO8L306GSKc
         wXXJ2eZk+98zf8Q9oMf0nw/AEi105atwHd3R1C21CuY3DhOW+I93z/zqUnyAbzbgXWqx
         NNDMWCMumG5S2MLVtGqRw9W4mV0u5C9usEa+eNM6xxH6K1fZOgwlqY4H1HWosgm6pnhq
         4C4ByoyvhJZhaSjCnK/YQSSiY6e0U1NWpQ44c6eCrAloRCJi2gt0dJ3VHcWIFS5N4aGb
         Xa7Kft/2DhKuhrYy4H9rBHKIfIDJDhsgHiCisuHFnFEJLfaziXuEOS3yIOpEGjkCwt1L
         74VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718017283; x=1718622083;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zr98ndKWBFc0evTgYxg+Tt7IL/QFSdQHnVtwmVrApIs=;
        b=YhtQDjW0n9mSOAi08j+zvjMvYJUIJmG/m2WESRkSbou4oBrABGdNCl+98c425BucQC
         vyW09oxoINfGriF7XDzy4bMDI9cnKBFkB4xmJILT0/x9xWKZlm+7TSsQ3nQG+3Nbkj4h
         GQK5WjqNhTDtfpaO8eY2cGggQNeDr1v9cqKHtZop70TGljSNUsNJCL1wOUo+Yp5LwdIm
         4Gnkl8g+ECLeleRp6fSCnn7rdqEMB7LVCibvEsmzx48nfERouRh0LTevyLP97Fv9OinE
         vei07qCXBmzm9+TyH4Bf7FbAYL7ELC+kuqzcDMg/ZYhe1EVeJ2SDe7mo61kvtcYUd8ir
         l50Q==
X-Gm-Message-State: AOJu0YyJhL5IiJnKWIs/TUV7xc3VADwqFtRItgneJ4s0aI7nFrGyJf5c
	wq6YbIlpWu4UuMV5RN8tVTGF7gdeNF2F+3oVEQ7y0gijJ6EDWy2xlKiLzcqexghiP1qRdqqd72y
	g7SUSWrLwwKGnMX6xlLjca/e77vbiyA==
X-Google-Smtp-Source: AGHT+IHfpHO9+NQonX0IWdfmtzyEYsCiXDD+lJWgeVW9iGH5EsRYXIfs60+ltRY0bgt+gOjtAKyB8PlX1d8vhUrfp6s=
X-Received: by 2002:ac2:55a5:0:b0:52c:897b:4c5a with SMTP id
 2adb3069b0e04-52c897b4d1dmr1653601e87.34.1718017282964; Mon, 10 Jun 2024
 04:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <17D2085339AAE376.4692@lists.yoctoproject.org>
In-Reply-To: <17D2085339AAE376.4692@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 10 Jun 2024 13:01:11 +0200
Message-ID: <CA+chaQdVWTUYF3HMFB-K4GgHCExK9r66JqhGtXnK2C-1PsZXVw@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 1/2] {tcp,udp}-smack-test: fix
 implicit-function-declaration issues fatal with gcc-14
To: yocto@lists.yoctoproject.org, martin.jansa@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 11:01:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63303

gentle ping

On Thu, May 23, 2024 at 7:52=E2=80=AFAM Martin Jansa via
lists.yoctoproject.org <martin.jansa=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> tcp-smack-test:
> http://errors.yoctoproject.org/Errors/Details/766925/
>   tcp_client.c:55:16: error: implicit declaration of function 'atoi' [-Wi=
mplicit-function-declaration]
>
> udp-client-tests:
> http://errors.yoctoproject.org/Errors/Details/766927/
>   udp_client.c:41:16: error: implicit declaration of function 'atoi' [-Wi=
mplicit-function-declaration]
>   udp_client.c:51:12: error: implicit declaration of function 'fsetxattr'=
 [-Wimplicit-function-declaration]
>   udp_client.c:66:9: error: implicit declaration of function 'close'; did=
 you mean 'pclose'? [-Wimplicit-function-declaration]
>
> Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
> ---
>  recipes-mac/smack/tcp-smack-test/tcp_client.c | 1 +
>  recipes-mac/smack/udp-smack-test/udp_client.c | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/recipes-mac/smack/tcp-smack-test/tcp_client.c b/recipes-mac/=
smack/tcp-smack-test/tcp_client.c
> index 6c0a474..b82b575 100644
> --- a/recipes-mac/smack/tcp-smack-test/tcp_client.c
> +++ b/recipes-mac/smack/tcp-smack-test/tcp_client.c
> @@ -18,6 +18,7 @@
>  // OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALING=
S IN
>  // THE SOFTWARE.
>  #include <stdio.h>
> +#include <stdlib.h>
>  #include <sys/socket.h>
>  #include <sys/types.h>
>  #include <errno.h>
> diff --git a/recipes-mac/smack/udp-smack-test/udp_client.c b/recipes-mac/=
smack/udp-smack-test/udp_client.c
> index 23f3e00..976cbdc 100644
> --- a/recipes-mac/smack/udp-smack-test/udp_client.c
> +++ b/recipes-mac/smack/udp-smack-test/udp_client.c
> @@ -18,6 +18,7 @@
>  // OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALING=
S IN
>  // THE SOFTWARE.
>  #include <sys/socket.h>
> +#include <stdlib.h>
>  #include <stdio.h>
>  #include <netinet/in.h>
>  #include <netdb.h>
> --
> 2.45.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63171): https://lists.yoctoproject.org/g/yocto/messag=
e/63171
> Mute This Topic: https://lists.yoctoproject.org/mt/106257756/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

