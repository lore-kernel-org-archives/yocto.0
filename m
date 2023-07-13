Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B65C001DC
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 09:17:02 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web11.4420.1689239817097624290
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jul 2023 02:16:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=M8Dzw6Ov;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-4f96d680399so828425e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 02:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689239815; x=1691831815;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j0RD+PSs7KQ3yy721gaS1heWTpXzm3mvK2Upl2vk080=;
        b=M8Dzw6OvEIQelkxisoqZMeLGI/lXrGPRmFWPfpw2PkWQXkwryNP+1cY7ig8iVoU0sH
         pgsBXwOenmuiCfxm3rxpdLhAzDdSGETmW8ZaHmH0i8AF6YKy4NBlz+yrh3fLxGc6iMjf
         KrliPwXMryNh9ufcuKc3I8upUHNOBubQcUHDAfdxSWrjPF9z4ZPMecUlS8RZapp4FZZD
         CbbxG44n1OuEZRR/3/7iquo+uitg45T82QZ8cVBRE0/lWWMOtfpOx17u8zVesh5K8kxB
         cYhXXVBn7wSK/3oTdMuW7N3v+v/wXl+KeBFxm+TDBhHOPFpLIDte1/b3VrIYN17BPXKt
         E1Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689239815; x=1691831815;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j0RD+PSs7KQ3yy721gaS1heWTpXzm3mvK2Upl2vk080=;
        b=R5jZy/jZhoh6XdOEe+P5bP/vzy3y84n3rFgPgRWdWoJ0VMu8ghKtNxbDQwGhe4TylQ
         97sjw4pM3O1uhEkRkHX5H7AQDXgdd4sIs69m8ROb8uQ3GDgJiRT8qlVEkTc5onYiFVhP
         UJghyBwf9umS6Mqp5s1pm97+ictVjRWtgbDzmPjNVtpLCQF6h5Pc00CaEn5col/9qCds
         D7Fj8VZKAKs0Vgxq1Z6VkuP8oTThiSZ+8a8uTRNEjAUnkpYaBIdZMGuOHLxPppCtP60+
         CwEktkJ8tkGf8hm06FDSANR7mtbBbFokrI8mCLwaomyTrSQyJhEPOKE4uHu93MUbSe1E
         FNEA==
X-Gm-Message-State: ABy/qLaHgydWebu7t9y+ni38aNlWj1414I767bvCqXsTK8iuoE/zKXp7
	X/emxggd56z2OKGTV+yCmy7tNk2GPEEwiz5ugqg=
X-Google-Smtp-Source: APBJJlFUtNzt9zwv0eRX+zcyv3M0ZWI8adZycDAlouxDo4U+qUuEjUHvKOxqhBSKN7C6yhjHA50QIqkzJ03yOeSTNYQ=
X-Received: by 2002:a05:6512:74f:b0:4f8:6e6e:3f42 with SMTP id
 c15-20020a056512074f00b004f86e6e3f42mr832247lfs.14.1689239814853; Thu, 13 Jul
 2023 02:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36GCbQ1M=KtQTLiMP3eg3pTiQ3rh43x6pHoK2T6ztRWxA@mail.gmail.com>
 <15873.1689236133239327587@lists.yoctoproject.org>
In-Reply-To: <15873.1689236133239327587@lists.yoctoproject.org>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 13 Jul 2023 11:16:43 +0200
Message-ID: <CAAfyv36X38BbBj3KecvgcPzw2smFU-CQcLfBm2sLdX--iC4F4w@mail.gmail.com>
Subject: Re: [yocto] wic cp doesn't work with ext4 partition
To: Markus.Lehmann@duagon.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001ad7d506005acbdf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 09:17:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60566

--0000000000001ad7d506005acbdf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 13, 2023 at 10:59=E2=80=AFAM Markus via lists.yoctoproject.org
<Markus.Lehmann=3Dduagon.com@lists.yoctoproject.org> wrote:

> Hi, how did you solve this?
> I have a multi-partion *.wic file and if I copy to part4 (vfat) it is
> fine.
> But if I try to copy to part3 (ext4) then it fails ... which I can see
> with ls.
> If I try to copy a complete folder srv like:
> wic cp ~/GIT/nfp/buildo/tmp/additional_data/srv
> ~/GIT/nf75p/buildo/xxx.wic:3/ ... then a srv is created which looks like
> this:
>
> wic ls ~/GIT/nfp/buildo/xxx.wic:3/srv
> debugfs 1.45.5 (07-Jan-2020)
> -l: Ext2 inode is not a directory
>
> I can delete this with : wic ls ~/GIT/nfp/buildo/xxx.wic:3/srv ... but I
> cannot copy anything inside and also the original content from srv is not
> inside.
>
> I'm using Ubuntu 20.04 and also tried it in a docker with Ubuntu 16.04.
>
> Any know issues here or what I'm doing wrong?
>
> Thanks a lot Markus
>
Not sure if it helps but as stated in the original response you need to
delete the item first in wic then you can copy. No idea why though ;)

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60565):
> https://lists.yoctoproject.org/g/yocto/message/60565
> Mute This Topic: https://lists.yoctoproject.org/mt/61339516/900721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> marek.belisko@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
> BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--0000000000001ad7d506005acbdf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Jul 13, 2023 at 10:59=E2=80=AFAM Markus vi=
a <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;=
Markus.Lehmann=3D<a href=3D"mailto:duagon.com@lists.yoctoproject.org">duago=
n.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><p>Hi,
how did you solve this? <br>
I have a multi-partion *.wic file and if I copy to part4 (vfat) it is fine.=
 <br>
But if I try to copy to part3 (ext4) then it fails ... which I can see with=
 <code>ls</code>. <br>
If I try to copy a complete folder <code>srv</code> like: <br>
<code>wic cp ~/GIT/nfp/buildo/tmp/additional_data/srv ~/GIT/nf75p/buildo/xx=
x.wic:3/</code>
... then a <code>srv</code> is created which looks like this:</p>
<pre><code>wic ls ~/GIT/nfp/buildo/xxx.wic:3/srv
debugfs 1.45.5 (07-Jan-2020)
-l: Ext2 inode is not a directory
</code></pre>
<p>I can delete this with :
<code>wic ls ~/GIT/nfp/buildo/xxx.wic:3/srv</code>
... but I cannot copy anything inside and also the original content from <c=
ode>srv</code> is not inside.</p>

<p>I&#39;m using Ubuntu 20.04 and also tried it in a docker with Ubuntu 16.=
04.</p>

<p>Any know issues here or what I&#39;m doing wrong?</p>

<p>Thanks a lot
Markus</p></blockquote><div>Not sure if it helps but as stated in the origi=
nal response you need to delete the item first in wic then you can copy. No=
 idea why though ;)</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60565): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60565" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60565</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/61339516/9007=
21" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
61339516/900721</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek=
.belisko@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>BR,<div><br></div><div>marek<br clear=3D"all"><div><br><=
/div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" =
class=3D"gmail_signature">as simple and primitive as possible<br>----------=
---------------------------------------<br>Marek Belisko - OPEN-NANDRA<br>F=
reelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republi=
c<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<br>=
web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-nandr=
a.com</a></div></div></div>

--0000000000001ad7d506005acbdf--

