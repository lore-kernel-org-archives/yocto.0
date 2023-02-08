Return-Path: <maciek@thing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C385AC636D7
	for <webhook@archiver.kernel.org>; Wed,  8 Feb 2023 12:07:06 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web11.6805.1675858024732076396
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Feb 2023 04:07:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thing-com.20210112.gappssmtp.com header.s=20210112 header.b=n8JAXSh4;
 spf=pass (domain: thing.com, ip: 209.85.219.181, mailfrom: maciek@thing.com)
Received: by mail-yb1-f181.google.com with SMTP id o187so21867695ybg.3
        for <yocto@lists.yoctoproject.org>; Wed, 08 Feb 2023 04:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thing-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MLN5c3prauZAY6xT7GV+wy+RTs/UJU+PgN0KxqeEKCY=;
        b=n8JAXSh4VT963PBfo6z06Rbfz5uB8Glel+LsnSCINcGq5YWhYOHQrOXslEBS2rFlHe
         brImuDtryEN2xLVjfeCjXOuhpwaDOUPoYO2NfXyBHnaxU/JqJyEfVlTXuGDPHxb7tJbU
         Ek1903qf8T7XRlHjfz3BMzrSOFGJXMqs8yp/yGu98RcZ8+gCJViD26gIExJiZu0616RG
         BFvSlA0hMtAgD6cre83AIOaxbssh3jc3M3IrPk9yaOkXMwCkKZlGX1a14PJ15RRpnbn+
         nixmc50DtKK0O+e22AdYlmiJ6BvuX+gw27a535Q761r/xo/1PNIRXHAPHXe3TaWxgjQB
         apwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MLN5c3prauZAY6xT7GV+wy+RTs/UJU+PgN0KxqeEKCY=;
        b=zvv9FfBLNp/+6AZxRGRK8v2g+BEOk79L+0dj6Hf2B/nGs4jalTsKmcj9JFzANOrqXc
         RXcBo3D6L7jYaCY+bc3/+NLvYdWsoCycgfGLbgvN9oCwsX8Cb7ISsPpCtZUhtD6tKJeG
         lRb10HruZ1COzhe8f7U7AJr2yOg88TMgCDXXmBO1OP1hCKcvsVvnu9e2vcDSl4zX6hze
         ezTaoxBAzzDBlAt3GPbfd/+OS08EVfCI6holmSGlxr1bzIlBqg3ifUJY2pfNigZuvrEp
         j8OQQKOwiXNQ0RwP2Un75QDq9+cUagBOWI0PfBQMRqe+vWhquoAsnrufk2UmDT0+Yu/k
         0IBA==
X-Gm-Message-State: AO0yUKUayx3A6ZaYkIEP4Dmdyo0NMo4Ck3v09YgfykNXGrVKqb7oWmhF
	30TYm2ZKxE9fLHXd5/ZxtdFO3005JCjDmWG4Eu3vNVlJycQ5tn1w
X-Google-Smtp-Source: AK7set8/6h7jakPLFibDDGVb5GE7vObp2oNX/TTdvuOJNVGeAfHGSmuhfXyDWiXTxJVEJMVAa5Va23sBZZFSf5VVUVk=
X-Received: by 2002:a05:6902:2c6:b0:70c:bbcb:3432 with SMTP id
 w6-20020a05690202c600b0070cbbcb3432mr1137120ybh.173.1675858023758; Wed, 08
 Feb 2023 04:07:03 -0800 (PST)
MIME-Version: 1.0
References: <d6c7ddefe6a490ce9b73c8ab42e389dc246a932f.1675261039.git.maciek@thing.com>
In-Reply-To: <d6c7ddefe6a490ce9b73c8ab42e389dc246a932f.1675261039.git.maciek@thing.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciek@thing.com>
Date: Wed, 8 Feb 2023 13:06:52 +0100
Message-ID: <CAJgHQz1UvKLip=tr-s9tq_=7MV5vuFQdF46zGLFBRCTrZ67Qew@mail.gmail.com>
Subject: Re: [meta-security][PATCH] dm-verity-img.bbclass: add squashfs images
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster808@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000033583b05f42f1acf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Feb 2023 12:07:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59200

--00000000000033583b05f42f1acf
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 1, 2023 at 3:17 PM Maciek Borzecki <maciek@thing.com> wrote:

> Add squashfs to images supported by verity.
>
> Signed-off-by: Maciek Borzecki <maciek@thing.com>
> ---
>  classes/dm-verity-img.bbclass | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
> index dd447e6..e5946bc 100644
> --- a/classes/dm-verity-img.bbclass
> +++ b/classes/dm-verity-img.bbclass
> @@ -63,7 +63,12 @@ verity_setup() {
>      veritysetup --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE}
> --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
>  }
>
> -VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity
> erofs.verity erofs-lz4.verity erofs-lz4hc.verity"
> +VERITY_TYPES = " \
> +    ext2.verity ext3.verity ext4.verity \
> +    btrfs.verity \
> +    erofs.verity erofs-lz4.verity erofs-lz4hc.verity \
> +    squashfs.verity squashfs-xz.verity squashfs-lzo.verity
> squashfs-lz4.verity squashfs-zst.verity \
> +"
>  IMAGE_TYPES += "${VERITY_TYPES}"
>  CONVERSIONTYPES += "verity"
>  CONVERSION_CMD:verity = "verity_setup ${type}"
> --
> 2.39.1
>
>
Gentle ping about the patch. Wanted to resubmit this to kirkstone along
with a cherry-pick of
https://git.yoctoproject.org/meta-security/commit/classes/dm-verity-img.bbclass?id=8ca6bb86e653a332f7cb5b30babc0cd6c58769d0,
so I'd be thankful for any feedback.

Cheers,
Maciek

--00000000000033583b05f42f1acf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Feb 1, 2023 at 3:17 PM Maciek Borzecki &lt;<a href=3D"mailto=
:maciek@thing.com">maciek@thing.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Add squashfs to images supported by veri=
ty.<br>
<br>
Signed-off-by: Maciek Borzecki &lt;<a href=3D"mailto:maciek@thing.com" targ=
et=3D"_blank">maciek@thing.com</a>&gt;<br>
---<br>
=C2=A0classes/dm-verity-img.bbclass | 7 ++++++-<br>
=C2=A01 file changed, 6 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass<=
br>
index dd447e6..e5946bc 100644<br>
--- a/classes/dm-verity-img.bbclass<br>
+++ b/classes/dm-verity-img.bbclass<br>
@@ -63,7 +63,12 @@ verity_setup() {<br>
=C2=A0 =C2=A0 =C2=A0veritysetup --data-block-size=3D${DM_VERITY_IMAGE_DATA_=
BLOCK_SIZE} --hash-offset=3D$SIZE format $OUTPUT $OUTPUT | tail -n +2 | pro=
cess_verity<br>
=C2=A0}<br>
<br>
-VERITY_TYPES =3D &quot;ext2.verity ext3.verity ext4.verity btrfs.verity er=
ofs.verity erofs-lz4.verity erofs-lz4hc.verity&quot;<br>
+VERITY_TYPES =3D &quot; \<br>
+=C2=A0 =C2=A0 ext2.verity ext3.verity ext4.verity \<br>
+=C2=A0 =C2=A0 btrfs.verity \<br>
+=C2=A0 =C2=A0 erofs.verity erofs-lz4.verity erofs-lz4hc.verity \<br>
+=C2=A0 =C2=A0 squashfs.verity squashfs-xz.verity squashfs-lzo.verity squas=
hfs-lz4.verity squashfs-zst.verity \<br>
+&quot;<br>
=C2=A0IMAGE_TYPES +=3D &quot;${VERITY_TYPES}&quot;<br>
=C2=A0CONVERSIONTYPES +=3D &quot;verity&quot;<br>
=C2=A0CONVERSION_CMD:verity =3D &quot;verity_setup ${type}&quot;<br>
-- <br>
2.39.1<br>
<br></blockquote><div>=C2=A0</div><div>Gentle ping about the patch. Wanted =
to resubmit this to kirkstone along with a cherry-pick of <a href=3D"https:=
//git.yoctoproject.org/meta-security/commit/classes/dm-verity-img.bbclass?i=
d=3D8ca6bb86e653a332f7cb5b30babc0cd6c58769d0">https://git.yoctoproject.org/=
meta-security/commit/classes/dm-verity-img.bbclass?id=3D8ca6bb86e653a332f7c=
b5b30babc0cd6c58769d0</a>, so I&#39;d be thankful for any feedback.</div><d=
iv><br></div><div>Cheers,</div><div>Maciek <br></div></div></div>

--00000000000033583b05f42f1acf--

