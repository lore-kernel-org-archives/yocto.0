Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BB53C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 19:15:38 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
 by mx.groups.io with SMTP id smtpd.web11.2570.1672773336651249969
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 11:15:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fEl2Fl+G;
 spf=pass (domain: gmail.com, ip: 209.85.160.42, mailfrom: twoerner@gmail.com)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-150debe2b7cso2133191fac.0
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 11:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MtLtKt/K6bjl1adzWKMZNimIq9FToWMBFg271czSkhY=;
        b=fEl2Fl+GWCfbfnWhD/1LbECy+1U7Jch5TcIhfgCV6eE8lm6ErnkuemtmnBVd+CMPzu
         U9VU5En9O5xOk5dggCBySMGiEh5YUBhi1slhjqDsPZPpuVwsN7onCIgza4Tli+dMJ+dB
         bKYMwlD5dsfJDGEfUsUPemQ98SCZabb06Q881ji/NpbwQIcTz+VIFTnRVPMZKOOGnqOb
         dd81P7B3lpnNwLeyOIYkxO3LMbnxMggVJx+6AXtN5DDIM+N8ws+mPlrN8D1cX3FnSBsA
         56+FJCJyu1LT9PMixnoZzQpZkLEYiGbjOZ8rQBJIbEAhGk9c4uAL38KDCsbiDDIiFI5B
         cRzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MtLtKt/K6bjl1adzWKMZNimIq9FToWMBFg271czSkhY=;
        b=n+jvHF6PvxphWpMdhNPntXF9YHPogX6EXvePuGQePNyK3hYU35k5mHxo1+RpvNAGG2
         RYdISyeD1H3f3DR7wDkJZdYSK8RNeYim/xSqv2HTd/We9xFh6G+IkolDlSbS32wuYszG
         LdiQ/gRphZ+RewnXxrPJuOFYxKSIsKsyUE6FIprXQl+C+CYo4JvXp7V66q+RBrazxahP
         DdxZJS3xMUiZlYdAPR0L5XiulKthjx+8UJQFbLJ25ATfd8BD57T0nxzdqP/d0EY1OmfE
         lFTwz+Hi7W5nkxkbzImD44Lz9XqaieEOBGNltE8WS8x6hc0ypmf3F71Y245wgo2w//ib
         +5QA==
X-Gm-Message-State: AFqh2kqF1RRGE3DCjSp5NX8DE6ICedONnMDEIxF72dw21IyDQ4HNSK/C
	NOmc/RdyEDu3v9i8ZQY7UVfRZaWM3D3YBRkA0uw=
X-Google-Smtp-Source: AMrXdXtYu3p7egroBcqb8jvxhyBVQNCOwC4neTNIVjm0pe1ekg7EiLKTUaZiYC4jQM9j6Q9zjeAoXbZoOxPTVvgzvfM=
X-Received: by 2002:a05:6870:728:b0:148:a6a:e616 with SMTP id
 ea40-20020a056870072800b001480a6ae616mr3034676oab.63.1672773335909; Tue, 03
 Jan 2023 11:15:35 -0800 (PST)
MIME-Version: 1.0
References: <20230103183343.959016-1-raj.khem@gmail.com> <CA+chaQe583zWdN35R6d04DGYv34gOK+gDpGHRP=-omghWZ=C+g@mail.gmail.com>
In-Reply-To: <CA+chaQe583zWdN35R6d04DGYv34gOK+gDpGHRP=-omghWZ=C+g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 3 Jan 2023 14:15:24 -0500
Message-ID: <CAHUNapQ60Dy94Xh=AMQ-JAE7XTzMe7KeWBw=Oj7+NS5zHnqa9Q@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] layer.conf: Update
 LAYERSERIES_COMPAT for mickledore
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007a094e05f160e4dc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 19:15:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58918

--0000000000007a094e05f160e4dc
Content-Type: text/plain; charset="UTF-8"

On Tue, Jan 3, 2023 at 2:13 PM Martin Jansa <martin.jansa@gmail.com> wrote:

> Trevor already won this race (I was second, you're third) :)
>
>
> https://patchwork.yoctoproject.org/project/yocto/list/?series=&submitter=&state=&q=mickledore&archive=&delegate=
>

It's nice knowing someone other than me is using this layer :-)


>
>
> On Tue, Jan 3, 2023 at 7:33 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>> oe-core switched to mickedore [1]
>>
>> [1]
>> https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  conf/layer.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> index 9197c3b..e8c50f8 100644
>> --- a/conf/layer.conf
>> +++ b/conf/layer.conf
>> @@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
>>  # This should only be incremented on significant changes that will
>>  # cause compatibility issues with other layers
>>  LAYERVERSION_rockchip = "1"
>> -LAYERSERIES_COMPAT_rockchip = "langdale"
>> +LAYERSERIES_COMPAT_rockchip = "mickledore"
>>  LAYERDEPENDS_rockchip = "core meta-arm"
>>
>>  BBFILES_DYNAMIC += " \
>> --
>> 2.39.0
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#58916):
>> https://lists.yoctoproject.org/g/yocto/message/58916
>> Mute This Topic: https://lists.yoctoproject.org/mt/96034217/3617156
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> Martin.Jansa@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>

--0000000000007a094e05f160e4dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Jan 3, 2023 at 2:13 PM Martin Jansa &lt;<a href=3D"mailto:ma=
rtin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Trevor already=
 won this race (I was second, you&#39;re third) :)<div><br><div><a href=3D"=
https://patchwork.yoctoproject.org/project/yocto/list/?series=3D&amp;submit=
ter=3D&amp;state=3D&amp;q=3Dmickledore&amp;archive=3D&amp;delegate=3D" targ=
et=3D"_blank">https://patchwork.yoctoproject.org/project/yocto/list/?series=
=3D&amp;submitter=3D&amp;state=3D&amp;q=3Dmickledore&amp;archive=3D&amp;del=
egate=3D</a></div></div></div></blockquote><div><br></div><div>It&#39;s nic=
e knowing someone other than me is using this layer :-)<br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div><div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Jan 3, 2023 at 7:33 PM Khem Raj &lt;<a h=
ref=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">oe-co=
re switched to mickedore [1]<br>
<br>
[1] <a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=3D=
57239d66b933c4313cf331d35d13ec2d0661c38f" rel=3D"noreferrer" target=3D"_bla=
nk">https://git.openembedded.org/openembedded-core/commit/?id=3D57239d66b93=
3c4313cf331d35d13ec2d0661c38f</a><br>
<br>
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D=
"_blank">raj.khem@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/layer.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index 9197c3b..e8c50f8 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip =3D &quot;1&quot;<br>
=C2=A0# This should only be incremented on significant changes that will<br=
>
=C2=A0# cause compatibility issues with other layers<br>
=C2=A0LAYERVERSION_rockchip =3D &quot;1&quot;<br>
-LAYERSERIES_COMPAT_rockchip =3D &quot;langdale&quot;<br>
+LAYERSERIES_COMPAT_rockchip =3D &quot;mickledore&quot;<br>
=C2=A0LAYERDEPENDS_rockchip =3D &quot;core meta-arm&quot;<br>
<br>
=C2=A0BBFILES_DYNAMIC +=3D &quot; \<br>
-- <br>
2.39.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58916): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58916" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58916</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96034217/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96034217/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div></div>

--0000000000007a094e05f160e4dc--

