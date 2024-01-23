Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F8ACC47DDB
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 17:41:33 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web11.69.1706031685766947881
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 09:41:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=biTUTjxe;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: ycnakajsph@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dbedb1ee3e4so4170493276.3
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 09:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706031684; x=1706636484; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sqAVHTy6IhLVuzI+eY6VlwEU6djRzoZLIO/E/+LMZmc=;
        b=biTUTjxeARdvW8TmS84x1apDgVL0nrh3dGd64xZOJbciENSsSU3tegGaqYqS6Z2QEF
         uFQe/r+G0UznM14lTKwZRuTkE8iFsDI+ZmGoIgN3OLBH+2aIpV2l+AEFqTL1QS3ehGhr
         svVIz7jrK81gK9BMyCL7CW5cXxA9RvzHzH20VZiV1nWs0CRsf8GDGJC9iiXKa6I0Bvcj
         Xj0JXS7wZm2ohMMb3frrirvbKVYdgkXHdOmZCiyQuhII90M+iLQNYe/jE9vnknkRHsio
         aZLMgA1kvc/2d5ZOOy3PlrzB4tR/yIEEfVbdJSvNRN4d6U8HdCToUzU6BM3NII6o9G4g
         TofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706031684; x=1706636484;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sqAVHTy6IhLVuzI+eY6VlwEU6djRzoZLIO/E/+LMZmc=;
        b=JKYDbE8Z/vjlAmatT+ykVKuKSMdzMYACtqYFshDuQz2tAzzybClxM9YgHG/qzJcHIM
         joI9RYOzZTQK/TT97ACzhPx3WlOVpRjreZkt8VMeNNAARLLmI0vxU5uow1G+tUsxHTOL
         hFh0wKsNIZiICXiE2vaw/CRE/fTTvDsgMbxL/vfhCxkNkMbLLq7zcsr5cCVmSTSvp2va
         C9eX2mOf2kfaaJJ+LgSzaLdM35Y7FeS/ZoHMGzlgJiX2KzPtJFYJK8GSH1YQcOuBaGKu
         MO6N3fnKqfStyGpdxrV+xALucm3pYvwT79v5791hP/GqcJv6kgQBeAiIaCn1bEsYow7K
         D/KA==
X-Gm-Message-State: AOJu0YzmnxL4+OxsDwl/e8iROZaAmwStSKT3pDP9pgjDHmRf1OAJMDHE
	kYQzQgP01sPgUHrzh0ZM75nPtZyMW4ZmobO/oSKd8tD/R0wYEjS5UR6ycJvBP2YmNMLAHKsjCSu
	KNYg4o5l7UKvD/bh9RwFKyYspk1EeToeY43o=
X-Google-Smtp-Source: AGHT+IEt6TzG/6BYSqZrqurymTf3aaS5Huol9uXyKH9PqiH/wwjx89uPswIuDwqPf0iktQJwrOsR8GP5Izim0AzZnN0=
X-Received: by 2002:a25:bc2:0:b0:dbd:4fb7:f446 with SMTP id
 185-20020a250bc2000000b00dbd4fb7f446mr3631072ybl.103.1706031684564; Tue, 23
 Jan 2024 09:41:24 -0800 (PST)
MIME-Version: 1.0
References: <20240123171004.1355265-1-yoann.congal@smile.fr>
In-Reply-To: <20240123171004.1355265-1-yoann.congal@smile.fr>
From: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Date: Tue, 23 Jan 2024 18:41:12 +0100
Message-ID: <CAC3TgA+seVFJ9Lb1YG_jBNYp=BbDgKmkxwyk49u1i+7nMJ0O0Q@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] schedulers: Run
 reproducible-meta-oe for master once a week on weekends
To: yocto@lists.yoctoproject.org, Yoann CONGAL <yoann.congal@smile.fr>
Content-Type: multipart/alternative; boundary="00000000000088bca4060fa07476"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 17:41:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62247

--00000000000088bca4060fa07476
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

=C3=87a va ?

Je pourrais =C3=AAtre int=C3=A9ress=C3=A9 par bosser sur la CI yocto mais j=
e sais pas trop
par o=C3=B9 commencer, je suis en vacances l=C3=A0, mais chaud d'en discute=
r !

=C3=80 bient=C3=B4t,

Yann

Le mar. 23 janv. 2024 =C3=A0 18:10, Yoann Congal <yoann.congal@smile.fr> a
=C3=A9crit :

> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  schedulers.py | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/schedulers.py b/schedulers.py
> index 561f2b4..edd77b5 100644
> --- a/schedulers.py
> +++ b/schedulers.py
> @@ -476,6 +476,10 @@
> schedulers.append(sched.Nightly(name=3D'nightly-check-layer',
> branch=3D'master', pro
>  schedulers.append(sched.Nightly(name=3D'nightly-meta-oe-mirror',
> branch=3D'master', properties=3Dparent_default_props('meta-oe-mirror'),
>                    builderNames=3D['meta-oe-mirror'], hour=3D0, minute=3D=
0))
>
> +# Run reproducible-meta-oe for master once a week on weekends (2am on
> Saturday)
> +schedulers.append(sched.Nightly(name=3D'nightly-reproducible-meta-oe',
> branch=3D'master', properties=3Dparent_default_props('reproducible-meta-o=
e'),
> +                  builderNames=3D['reproducible-meta-oe'], hour=3D2,
> minute=3D0, dayOfWeek=3D5))
> +
>  # Run metrics at 3-7am each day
>  schedulers.append(sched.Nightly(name=3D'nightly-metrics-dunfell',
> branch=3D'dunfell', properties=3Dparent_default_props('metrics', 'dunfell=
'),
> builderNames=3D['metrics'], hour=3D6, minute=3D0, codebases =3D {'' : {'b=
ranch' :
> 'dunfell'}}))
>  schedulers.append(sched.Nightly(name=3D'nightly-metrics-kirkstone',
> branch=3D'kirkstone', properties=3Dparent_default_props('metrics',
> 'kirkstone'), builderNames=3D['metrics'], hour=3D6, minute=3D15, codebase=
s =3D {''
> : {'branch' : 'kirkstone'}}))
> --
> 2.39.2
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62246):
> https://lists.yoctoproject.org/g/yocto/message/62246
> Mute This Topic: https://lists.yoctoproject.org/mt/103914016/3617030
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ycnakajsph@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000088bca4060fa07476
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">=C3=
=87a va ?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Je pourrais =
=C3=AAtre int=C3=A9ress=C3=A9 par bosser sur la CI yocto mais je sais pas t=
rop par o=C3=B9 commencer, je suis en vacances l=C3=A0, mais chaud d&#39;en=
 discuter !</div><div dir=3D"auto"><br></div><div dir=3D"auto">=C3=80 bient=
=C3=B4t,=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Yann</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>Le mar. 23 janv. 2024 =C3=A0 18:10, Yoann Congal &lt;<a href=3D"mailto:yoa=
nn.congal@smile.fr">yoann.congal@smile.fr</a>&gt; a =C3=A9crit=C2=A0:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">Signed-off-by: Yoann Congal &lt;<a href=
=3D"mailto:yoann.congal@smile.fr" target=3D"_blank" rel=3D"noreferrer">yoan=
n.congal@smile.fr</a>&gt;<br>
---<br>
=C2=A0schedulers.py | 4 ++++<br>
=C2=A01 file changed, 4 insertions(+)<br>
<br>
diff --git a/schedulers.py b/schedulers.py<br>
index 561f2b4..edd77b5 100644<br>
--- a/schedulers.py<br>
+++ b/schedulers.py<br>
@@ -476,6 +476,10 @@ schedulers.append(sched.Nightly(name=3D&#39;nightly-ch=
eck-layer&#39;, branch=3D&#39;master&#39;, pro<br>
=C2=A0schedulers.append(sched.Nightly(name=3D&#39;nightly-meta-oe-mirror&#3=
9;, branch=3D&#39;master&#39;, properties=3Dparent_default_props(&#39;meta-=
oe-mirror&#39;),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0builde=
rNames=3D[&#39;meta-oe-mirror&#39;], hour=3D0, minute=3D0))<br>
<br>
+# Run reproducible-meta-oe for master once a week on weekends (2am on Satu=
rday)<br>
+schedulers.append(sched.Nightly(name=3D&#39;nightly-reproducible-meta-oe&#=
39;, branch=3D&#39;master&#39;, properties=3Dparent_default_props(&#39;repr=
oducible-meta-oe&#39;),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 builderName=
s=3D[&#39;reproducible-meta-oe&#39;], hour=3D2, minute=3D0, dayOfWeek=3D5))=
<br>
+<br>
=C2=A0# Run metrics at 3-7am each day<br>
=C2=A0schedulers.append(sched.Nightly(name=3D&#39;nightly-metrics-dunfell&#=
39;, branch=3D&#39;dunfell&#39;, properties=3Dparent_default_props(&#39;met=
rics&#39;, &#39;dunfell&#39;), builderNames=3D[&#39;metrics&#39;], hour=3D6=
, minute=3D0, codebases =3D {&#39;&#39; : {&#39;branch&#39; : &#39;dunfell&=
#39;}}))<br>
=C2=A0schedulers.append(sched.Nightly(name=3D&#39;nightly-metrics-kirkstone=
&#39;, branch=3D&#39;kirkstone&#39;, properties=3Dparent_default_props(&#39=
;metrics&#39;, &#39;kirkstone&#39;), builderNames=3D[&#39;metrics&#39;], ho=
ur=3D6, minute=3D15, codebases =3D {&#39;&#39; : {&#39;branch&#39; : &#39;k=
irkstone&#39;}}))<br>
-- <br>
2.39.2<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62246): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62246" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/62246</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103914016/361=
7030" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/103914016/3617030</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:ycnakajsph@gmail.com" target=3D"_blan=
k" rel=3D"noreferrer">ycnakajsph@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000088bca4060fa07476--

