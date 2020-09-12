Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.20038.1599925954027003762
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Sep 2020 08:52:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=VTh0lufI;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D9E2D38C1336
	for <yocto@yoctoproject.org>; Sat, 12 Sep 2020 08:52:33 -0700 (PDT)
Received: by mail-pl1-f182.google.com with SMTP id j7so2364559plk.11
        for <yocto@yoctoproject.org>; Sat, 12 Sep 2020 08:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=392uMjcVqRdWwbBJZICDfc3UCDk1LDvYGlr0eZ+xIQE=;
        b=VTh0lufIxYU8J1iFtC/TmO5/XaPDWVYURIXhR0tGpd2EL4eIavY/8Pu7saAHLW7erz
         dhs8PX6PQbMWSfEs+gikqMTj/EHY6UnaBtRS1qPZQ8yq691kW1akFFsqowmtDSLYmzQA
         uCTU/bdyBRFKtfBrhbMEyWLUPtchhTWJ1wjU5DAIRu/6jJ19Mo7K/BgljE8V9nAsJLD0
         joT2zj/uNf5df7I5jvPsRm64xkSTvO075pqxcQD3om98TjgDxIlDtLRLreb6EuBgd/qB
         5T/SH432Tsui3iQM3d64bnOTDXqt+TtodUiPY+VaoymaEOzh8vsusSeKpvUWGij8icqA
         P7Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=392uMjcVqRdWwbBJZICDfc3UCDk1LDvYGlr0eZ+xIQE=;
        b=EV0yeww6D/v1MJ5ynCWhLgcf4FisXyof3OoVksbNzsZO2J9bS9Qs1oS/Qsq0JNKhLC
         HcuuWYWN1+RuFCYh+37L3Ztf5E8tq+Cz+p2iAQyzwzQxo1ib9LenlyILrUSUjqdCbudC
         rIm/C/9/JouxdfdLJwzsybYJv65DwCeQCQFlyyjVb1MMPiT4BJvhQpPma2NAM10fw1Z1
         vqDK7in/498SirMKWS51UMWqApbfh5nxcCnlbpl9EPkY+GmJGnjUW5crIR4JC9HwJH7D
         p33JP/hsPWD66zMYge4AXUTxFLyEZDlHFtwJkS/B4Xeo2TcSD71zsCkmiNM186kUxMQk
         7usQ==
X-Gm-Message-State: AOAM531zPt5y+gGSbkP8vjUCq/nRSffMkYdfbSKQWRXIor0uBSS4xnSC
	mWpIJPPF8gvlKHFOSbO1Xif/0d4wkEU=
X-Google-Smtp-Source: ABdhPJxE8yMluzOcXFb88pdtmXGSbKKIwydvEj9+KWx1a/2B1QH4s7xZ/ltzMh4bTxa7CVmQbAQQQQ==
X-Received: by 2002:a17:90a:a591:: with SMTP id b17mr4757007pjq.159.1599925953072;
        Sat, 12 Sep 2020 08:52:33 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:e1aa:69c3:1411:f726? ([2601:202:4180:a5c0:e1aa:69c3:1411:f726])
        by smtp.gmail.com with ESMTPSA id a12sm4373259pgm.79.2020.09.12.08.52.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 08:52:32 -0700 (PDT)
Subject: Re: [yocto][meta-security][PATCH] nss: update patch to fix do_patch error
To: Chen Qi <Qi.Chen@windriver.com>, yocto@yoctoproject.org
References: <20200908082022.12556-1-Qi.Chen@windriver.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <be20f9cb-31b0-c0b0-73f3-8245a92b9220@gmail.com>
Date: Sat, 12 Sep 2020 08:52:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200908082022.12556-1-Qi.Chen@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

merged,
thanks

On 9/8/20 1:20 AM, Chen Qi wrote:
> Currently sssd's do_patch task fails. Update the patch to fix this probl=
em.
>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>  ...s-Collision-with-external-nss-symbol.patch | 155 +++++++++---------
>  1 file changed, 78 insertions(+), 77 deletions(-)
>
> diff --git a/recipes-security/sssd/files/0001-nss-Collision-with-externa=
l-nss-symbol.patch b/recipes-security/sssd/files/0001-nss-Collision-with-ex=
ternal-nss-symbol.patch
> index bf79f65..c319269 100644
> --- a/recipes-security/sssd/files/0001-nss-Collision-with-external-nss-s=
ymbol.patch
> +++ b/recipes-security/sssd/files/0001-nss-Collision-with-external-nss-s=
ymbol.patch
> @@ -1,77 +1,78 @@
> -+From a069e4186a3cb482226005d4bc73c6fb3dd35c79 Mon Sep 17 00:00:00 2001
> -+From: =3D?UTF-8?q?Michal=3D20=3DC5=3DBDidek?=3D <mzidek@redhat.com>
> -+Date: Thu, 27 Feb 2020 06:50:40 +0100
> -+Subject: [PATCH] nss: Collision with external nss symbol
> -+MIME-Version: 1.0
> -+Content-Type: text/plain; charset=3DUTF-8
> -+Content-Transfer-Encoding: 8bit
> -+
> -+One of our internal static function names started
> -+to collide with external nss symbol. Additional
> -+sss_ suffix was added to avoid the collision.
> -+
> -+This is needed to unblock Fedora Rawhide's
> -+SSSD build.
> -+
> -+Reviewed-by: Pavel B=C5=99ezina <pbrezina@redhat.com>
> -+
> -+Upstream-Status: Backport [https://github.com/SSSD/sssd.git]
> -+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> -+---
> -+ src/responder/nss/nss_cmd.c | 18 ++++++++++--------
> -+ 1 file changed, 10 insertions(+), 8 deletions(-)
> -+
> -+diff --git a/src/responder/nss/nss_cmd.c b/src/responder/nss/nss_cmd.c
> -+index 25e663e..a4d4cfc 100644
> -+--- a/src/responder/nss/nss_cmd.c
> -++++ b/src/responder/nss/nss_cmd.c
> -+@@ -728,11 +728,13 @@ done:
> -+     talloc_free(cmd_ctx);
> -+ }
> -+=20
> -+-static void nss_setnetgrent_done(struct tevent_req *subreq);
> -++static void sss_nss_setnetgrent_done(struct tevent_req *subreq);
> -+=20
> -+-static errno_t nss_setnetgrent(struct cli_ctx *cli_ctx,
> -+-                               enum cache_req_type type,
> -+-                               nss_protocol_fill_packet_fn fill_fn)
> -++/* This function's name started to collide with external nss symbol,
> -++ * so it has additional sss_* prefix unlike other functions here. */
> -++static errno_t sss_nss_setnetgrent(struct cli_ctx *cli_ctx,
> -++                                   enum cache_req_type type,
> -++                                   nss_protocol_fill_packet_fn fill_f=
n)
> -+ {
> -+     struct nss_ctx *nss_ctx;
> -+     struct nss_state_ctx *state_ctx;
> -+@@ -774,7 +776,7 @@ static errno_t nss_setnetgrent(struct cli_ctx *cli=
_ctx,
> -+         goto done;
> -+     }
> -+=20
> -+-    tevent_req_set_callback(subreq, nss_setnetgrent_done, cmd_ctx);
> -++    tevent_req_set_callback(subreq, sss_nss_setnetgrent_done, cmd_ctx=
);
> -+=20
> -+     ret =3D EOK;
> -+=20
> -+@@ -787,7 +789,7 @@ done:
> -+     return EOK;
> -+ }
> -+=20
> -+-static void nss_setnetgrent_done(struct tevent_req *subreq)
> -++static void sss_nss_setnetgrent_done(struct tevent_req *subreq)
> -+ {
> -+     struct nss_cmd_ctx *cmd_ctx;
> -+     errno_t ret;
> -+@@ -1037,8 +1039,8 @@ static errno_t nss_cmd_initgroups_ex(struct cli_=
ctx *cli_ctx)
> -+=20
> -+ static errno_t nss_cmd_setnetgrent(struct cli_ctx *cli_ctx)
> -+ {
> -+-    return nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
> -+-                           nss_protocol_fill_setnetgrent);
> -++    return sss_nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
> -++                               nss_protocol_fill_setnetgrent);
> -+ }
> -+=20
> -+ static errno_t nss_cmd_getnetgrent(struct cli_ctx *cli_ctx)
> -+--=20
> -+2.21.0
> -+
> +From 05c315100a70d3372e891e9a0ea981a875b2ec90 Mon Sep 17 00:00:00 2001
> +From: =3D?UTF-8?q?Michal=3D20=3DC5=3DBDidek?=3D <mzidek@redhat.com>
> +Date: Thu, 27 Feb 2020 06:50:40 +0100
> +Subject: [PATCH] nss: Collision with external nss symbol
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=3DUTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +One of our internal static function names started
> +to collide with external nss symbol. Additional
> +sss_ suffix was added to avoid the collision.
> +
> +This is needed to unblock Fedora Rawhide's
> +SSSD build.
> +
> +Reviewed-by: Pavel B=C5=99ezina <pbrezina@redhat.com>
> +
> +Upstream-Status: Backport [https://github.com/SSSD/sssd.git]
> +Signed-off-by: Hongxu.jia@windriver.com
> +Signed-off-by: Qi.Chen@windriver.com
> +---
> + src/responder/nss/nss_cmd.c | 18 ++++++++++--------
> + 1 file changed, 10 insertions(+), 8 deletions(-)
> +
> +diff --git a/src/responder/nss/nss_cmd.c b/src/responder/nss/nss_cmd.c
> +index 25e663ed5..a4d4cfc0b 100644
> +--- a/src/responder/nss/nss_cmd.c
> ++++ b/src/responder/nss/nss_cmd.c
> +@@ -728,11 +728,13 @@ done:
> +     talloc_free(cmd_ctx);
> + }
> +=20
> +-static void nss_setnetgrent_done(struct tevent_req *subreq);
> ++static void sss_nss_setnetgrent_done(struct tevent_req *subreq);
> +=20
> +-static errno_t nss_setnetgrent(struct cli_ctx *cli_ctx,
> +-                               enum cache_req_type type,
> +-                               nss_protocol_fill_packet_fn fill_fn)
> ++/* This function's name started to collide with external nss symbol,
> ++ * so it has additional sss_* prefix unlike other functions here. */
> ++static errno_t sss_nss_setnetgrent(struct cli_ctx *cli_ctx,
> ++                                   enum cache_req_type type,
> ++                                   nss_protocol_fill_packet_fn fill_fn=
)
> + {
> +     struct nss_ctx *nss_ctx;
> +     struct nss_state_ctx *state_ctx;
> +@@ -774,7 +776,7 @@ static errno_t nss_setnetgrent(struct cli_ctx *cli_=
ctx,
> +         goto done;
> +     }
> +=20
> +-    tevent_req_set_callback(subreq, nss_setnetgrent_done, cmd_ctx);
> ++    tevent_req_set_callback(subreq, sss_nss_setnetgrent_done, cmd_ctx)=
;
> +=20
> +     ret =3D EOK;
> +=20
> +@@ -787,7 +789,7 @@ done:
> +     return EOK;
> + }
> +=20
> +-static void nss_setnetgrent_done(struct tevent_req *subreq)
> ++static void sss_nss_setnetgrent_done(struct tevent_req *subreq)
> + {
> +     struct nss_cmd_ctx *cmd_ctx;
> +     errno_t ret;
> +@@ -1037,8 +1039,8 @@ static errno_t nss_cmd_initgroups_ex(struct cli_c=
tx *cli_ctx)
> +=20
> + static errno_t nss_cmd_setnetgrent(struct cli_ctx *cli_ctx)
> + {
> +-    return nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
> +-                           nss_protocol_fill_setnetgrent);
> ++    return sss_nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
> ++                               nss_protocol_fill_setnetgrent);
> + }
> +=20
> + static errno_t nss_cmd_getnetgrent(struct cli_ctx *cli_ctx)
> +--=20
> +2.21.0
> +
>
>=20

