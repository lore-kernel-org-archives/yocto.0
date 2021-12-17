Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C575FC433F5
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 10:06:20 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web12.4591.1639735579831464930
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 02:06:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gPtIOwdH;
 spf=pass (domain: gmail.com, ip: 209.85.208.176,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id l7so2526765lja.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 02:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rfYZaqR6lUKVqeuoGm7p+9YwA/3FLzTtPHxdajaavNA=;
        b=gPtIOwdHyKGlATIVW7cjq1i4mQKjcE1lj0rlAgK83+b1w8+f5Xmue0g8383s+7YCAe
         C9VeJ7JzkFdNCLpPDUUsuopCG9D6//ZAoSaVxi55M6k17N+djX32wrZT5FyIdjfhQLLs
         pNjbZjCbQKqBTCwFqiIOo41/h02bQzQmdMT1VVAm+SvO7xMIW/qCOKeyFNp3RmaylYfA
         nxf6TIN1rV3PBWnKgxQCN18doAi4s+K1QnnIUseHDqczh5u5WheblasnWgmHpT2hcrhz
         hYcqYC+u+kbtu2zPWljFhQ+MkB5A2ZC3pwqgLx6we6qaZIAeOQGs9NXpOuxSxrpGdnBM
         MnWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rfYZaqR6lUKVqeuoGm7p+9YwA/3FLzTtPHxdajaavNA=;
        b=A4noHyxra9bkE92yAFZbkEdLIULH6lCLwuq2ct/9RGWELz3FxzqJZ0rvdHvGiuRCIs
         0GlcYd06+Sj5Zw5ZL5jrXjZp4fQhEnC8kPwEsZOKgqGgLLwdqKzG1BcFB9dRc7ZEXOwi
         CtZSOIfeNzBuN3FC4hW2JO0VHvyKzCDxsak2phzJdj/dzZUUHOgouyNo+L3/YagzkYnL
         sWDLO8UYZP6NqAPMj6scnJ4O19bmtkLWG072TtkE4uB81ZXyTVbOOxJbgsWyk8pdu5K0
         PCOFWNdsKU8yyg18m5OP6/I5wAK0i+uL5eY+WEU8s4KjjC1MzScrOrpVn/dMWl6xkg4X
         gLqA==
X-Gm-Message-State: AOAM533mYjYf/CyP7hMIOoPf08sdg6dromWBy5Zpdg3wCP44tUmq6Z03
	sHJZu6+Jq2+HweCHCJkpt7Klij01AwzyeLFBQo4=
X-Google-Smtp-Source: 
 ABdhPJx2ZkxBelCU0vEV7uancDEzDFKfpT7a4UQsqrDIT90ruCxN5ybBp03uGQwOa9hhttIhwUzzTFA2kt678vee6RQ=
X-Received: by 2002:a2e:7807:: with SMTP id t7mr2081207ljc.426.1639735577794;
 Fri, 17 Dec 2021 02:06:17 -0800 (PST)
MIME-Version: 1.0
References: <20211217095543.202026-1-kristian@klausen.dk>
In-Reply-To: <20211217095543.202026-1-kristian@klausen.dk>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 17 Dec 2021 10:06:06 +0000
Message-ID: 
 <CANPvuRm0faOH+e2u8KDusq79NPgFer=iE5JSzkTeCaxBcnippQ@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] dm-verity-img.bbclass: Fix wrong
 override syntax for CONVERSION_DEPENDS
To: kristian@klausen.dk
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a3dc1c05d354b0f2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 10:06:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55606

--000000000000a3dc1c05d354b0f2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Kristian Klausen via lists.yoctoproject.org <kristian=3D
klausen.dk@lists.yoctoproject.org> escreveu no dia sexta, 17/12/2021 =C3=A0=
(s)
09:55:

> CONVERSION_DEPENDS hasn't been converted to the new syntax.
>
> Fixes: a23ceef ("dm-verity-img.bbclass: more overided fixups")
>
> Signed-off-by: Kristian Klausen <kristian@klausen.dk>
> ---
> This should also be backported to honister.
>
>  classes/dm-verity-img.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclas=
s
> index 0b6d053..93f667d 100644
> --- a/classes/dm-verity-img.bbclass
> +++ b/classes/dm-verity-img.bbclass
> @@ -67,7 +67,7 @@ VERITY_TYPES =3D "ext2.verity ext3.verity ext4.verity
> btrfs.verity"
>  IMAGE_TYPES +=3D "${VERITY_TYPES}"
>  CONVERSIONTYPES +=3D "verity"
>  CONVERSION_CMD:verity =3D "verity_setup ${type}"
> -CONVERSION_DEPENDS:verity =3D "cryptsetup-native"
> +CONVERSION_DEPENDS_verity =3D "cryptsetup-native"
>

This syntax don't work anymore with oe-core master branch


>  python __anonymous() {
>      verity_image =3D d.getVar('DM_VERITY_IMAGE')
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55605):
> https://lists.yoctoproject.org/g/yocto/message/55605
> Mute This Topic: https://lists.yoctoproject.org/mt/87786381/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000a3dc1c05d354b0f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Kristian Klausen via <a href=3D"http:=
//lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;kristian=3D<a href=
=3D"mailto:klausen.dk@lists.yoctoproject.org">klausen.dk@lists.yoctoproject=
.org</a>&gt; escreveu no dia sexta, 17/12/2021 =C3=A0(s) 09:55:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">CONVERSION_DEPENDS hasn&#39=
;t been converted to the new syntax.<br>
<br>
Fixes: a23ceef (&quot;dm-verity-img.bbclass: more overided fixups&quot;)<br=
>
<br>
Signed-off-by: Kristian Klausen &lt;<a href=3D"mailto:kristian@klausen.dk" =
target=3D"_blank">kristian@klausen.dk</a>&gt;<br>
---<br>
This should also be backported to honister.<br>
<br>
=C2=A0classes/dm-verity-img.bbclass | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass<=
br>
index 0b6d053..93f667d 100644<br>
--- a/classes/dm-verity-img.bbclass<br>
+++ b/classes/dm-verity-img.bbclass<br>
@@ -67,7 +67,7 @@ VERITY_TYPES =3D &quot;ext2.verity ext3.verity ext4.verit=
y btrfs.verity&quot;<br>
=C2=A0IMAGE_TYPES +=3D &quot;${VERITY_TYPES}&quot;<br>
=C2=A0CONVERSIONTYPES +=3D &quot;verity&quot;<br>
=C2=A0CONVERSION_CMD:verity =3D &quot;verity_setup ${type}&quot;<br>
-CONVERSION_DEPENDS:verity =3D &quot;cryptsetup-native&quot;<br>
+CONVERSION_DEPENDS_verity =3D &quot;cryptsetup-native&quot;<br></blockquot=
e><div><br></div><div>This syntax don&#39;t work anymore with oe-core maste=
r branch</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
<br>
=C2=A0python __anonymous() {<br>
=C2=A0 =C2=A0 =C2=A0verity_image =3D d.getVar(&#39;DM_VERITY_IMAGE&#39;)<br=
>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55605): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55605" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55605</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87786381/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87786381/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div>

--000000000000a3dc1c05d354b0f2--

