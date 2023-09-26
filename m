Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D80AE7E626
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 11:33:22 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.16510.1695727996303227191
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 04:33:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PF7lWiNz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-32164a6af64so7415327f8f.2
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 04:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695727994; x=1696332794; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KLAuTe4UMAvDDAoOKzzZ2lH1/IbJjuHls9fAnIK+zzA=;
        b=PF7lWiNzf97GHqmMY3suoobZIuczedWRD5ecXVcSB/AfSYXZbEHpaY6C4RgCU0oihk
         3UX2Lr3WezB96I5KFPl5wKD7C7G1ZM9lD/VQlG1d5SBEZlnDkG+JEquus+2nCek/+RYP
         UtmF5z1hvInhzW6gx6VrDasx9Y2I7GZmxcNKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695727994; x=1696332794;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KLAuTe4UMAvDDAoOKzzZ2lH1/IbJjuHls9fAnIK+zzA=;
        b=R6bLR30AHX6KLZhWCze2G3RsDs9zu4eAC1/9rCgfSDVA1o0TmWS4saPWmNQSE7rklo
         9KWGRbNoT7vzzB8IGXlOy0IrE+wwc4qbucd1u8QcgWKT3kO0hv3NQeU6gaPVkVN4JcLK
         UBMfMQIUOGf+vsIk/ZHlEoEY1ulz6K7X3yGxcvvziktDHpm08Ns4MTudlgTJR15UsPgh
         Vm4SU3shETwZp79oRLgrDT+DXYPPJkRqWojv0140B+c3kQn6pYRWS2AIWkcxW8BDDKj+
         zK9mUw6mIxfXF4lEK6jd0KF/nMpX8wLGolX1pKlyfTKT8NVs8m/GsjO6Dz76caoyUcIx
         1vHg==
X-Gm-Message-State: AOJu0YydIcohPpqwUHTxuGxMz46dIyFfgbgJeJgWLgw2mNVHQqYbpBqm
	hiRXDaqsBzwsdwWg8yG6/4YGyMrlC515KXyg0fA=
X-Google-Smtp-Source: AGHT+IFE8GlzGRt2vlygB4cJV/adRRazcviaspC+9WIPC0jQq4pRGVF8sPbdsm89rZdqWouONRNL+Q==
X-Received: by 2002:adf:ed84:0:b0:317:5b76:826 with SMTP id c4-20020adfed84000000b003175b760826mr9891137wro.0.1695727994373;
        Tue, 26 Sep 2023 04:33:14 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:25bd:4a27:c3da:a228? ([2001:8b0:aba:5f3c:25bd:4a27:c3da:a228])
        by smtp.gmail.com with ESMTPSA id f7-20020adff8c7000000b00317afc7949csm14670153wrq.50.2023.09.26.04.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 04:33:13 -0700 (PDT)
Message-ID: <4b944fdd37c84f6db4c4db7fd0fdba825fb55f0b.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH]
 scripts/send-qa-email: Add URL of build to QA email
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Tue, 26 Sep 2023 12:33:13 +0100
In-Reply-To: <17886E08C7D4503A.9831@lists.yoctoproject.org>
References: <17886E08C7D4503A.9831@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 11:33:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61128

On Tue, 2023-09-26 at 12:03 +0100, Richard Purdie via lists.yoctoproject.or=
g wrote:
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  scripts/send_qa_email.py | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
> index d113377..3d02797 100755
> --- a/scripts/send_qa_email.py
> +++ b/scripts/send_qa_email.py
> @@ -101,6 +101,9 @@ def send_qa_email():
>      parser.add_argument('-r', '--release',
>                          action=3D'store',
>                          help=3D"The build/release 'name' for release pur=
poses (optional)")
> +    parser.add_argument('--url',
> +                        action=3D'store',
> +                        help=3D"The url for the build")
> =20
>      args =3D parser.parse_args()
> =20
> @@ -212,12 +215,13 @@ def send_qa_email():
>      email +=3D '''\n
>      A build flagged for QA (%s) was completed on the autobuilder and is =
available at:\n\n
>          %s\n\n
> +    Build URL: %s\n
>      Build hash information: \n
>      %s
> =20
>      \nThis is an automated message from the Yocto Project Autobuilder\nG=
it: git://git.yoctoproject.org/yocto-autobuilder2\nEmail: richard.purdie@li=
nuxfoundation.org\n
> =20
> -    ''' % (args.release, args.publish_dir.replace(web_root, web_url), bu=
ildhashes)
> +    ''' % (args.release, args.publish_dir.replace(web_root, web_url), ar=
gs.url, buildhashes)
> =20
>      # Store a copy of the email in case it doesn't reach the lists
>      with open(os.path.join(args.publish_dir, "qa-email"), "wb") as qa_em=
ail:

I've also backported this to other branches for builds we actively use
on the autobuilder so we get this benefit on all the QA emails and
don't have to make the code inside buildbot conditional.

Cheers,

Richard

