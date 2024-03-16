Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1062C54E5D
	for <webhook@archiver.kernel.org>; Sat, 16 Mar 2024 08:26:17 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.2830.1710577573549761042
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Mar 2024 01:26:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=pfBYpKgv;
 spf=pass (domain: smile.fr, ip: 209.85.167.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-512b3b04995so2824055e87.3
        for <yocto@lists.yoctoproject.org>; Sat, 16 Mar 2024 01:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1710577571; x=1711182371; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I/uLKOC5kLU5v/LqokTPlOrZ3NOvDAxsBxf67oPa+/8=;
        b=pfBYpKgvrO14PBAtPntXG7mIlq2+qrY1w5XEGcLtoboQ6kVfOAPyoT4BxmyP/eBPo/
         llxrymiMGjiWN/JwjAh5gMcxXORxa28+fmV3ayglgDESqPk/2obZXU/Tnuyn3Ut4+1Qy
         hxoZT8CPalBz+5QnpCSEIo3aailnx0YtppZDI8FYrRWvWF9zUDArfUKNWC4cY9L4BEIK
         dMDfXnrn/lw2QafkQTj6jr3qH5utknbxS6ewZEYFRyZj1HpY7enUmzuiDtK2BaXu+ECa
         UKXX1rj3zuSNws8G4d7uoSxjWOsDkbFTAGlgO0jslZzcSyRA3KWJFKx7dn3CjWzAPeoH
         kB7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710577571; x=1711182371;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I/uLKOC5kLU5v/LqokTPlOrZ3NOvDAxsBxf67oPa+/8=;
        b=A4gbTpVqa45kIFg+8bsG+lrkoei+YzAKgmefHn4HBj60DZhjIfUKpKvcBAsiMLU0aK
         QelCnFJa7Ln6WTzB6H6TDl1Oxx4/ih0ZTezBdT0OfBTTb5074giE0o9/8rwFZYTR9LbE
         XS0i+cpwyPwxbQl9OEYAklVHfLkIEbzktcWlbNvhiJk1RJVOy98dBLNnSag63/25bYS1
         1MG/XWWuGEHnyeTevDCJH3xpBht8Y/y3PvFLLp+DYUD1AzEk0EG2NQ9h502ZouR8INlc
         SDTo2JxE8fzKkos4nmYd/+3utI1JEL6qwPL6gVXYiIxLOC9CY8Env6GlfJJ9k75E4dbB
         MUqw==
X-Gm-Message-State: AOJu0Yxj5A6tZYsZJFITJ3LOjxe2n5vUJQTErr8E8FVthN0Uidf5evJR
	3WPRPwbMU/TeI0+EUKrmLnhRfp44HHPGA5ojMAC7QlMI49/+Tu5qULNx2njYeb9dOGtWEQH7rq4
	Xc4AsscagiwklJUSQXJN1G0XV9JlSPCcWchbcQ8GsGlE0euvKeec=
X-Google-Smtp-Source: AGHT+IEXY2eUqeX9tfYxFhCcTNQZY2Hvj+xznqlUk+x1HzH6OP9B//SadDy8JeNqebGGXz1+XTi/ovRhgVzJV451JWE=
X-Received: by 2002:ac2:498e:0:b0:513:ca99:5908 with SMTP id
 f14-20020ac2498e000000b00513ca995908mr4047300lfl.26.1710577571127; Sat, 16
 Mar 2024 01:26:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240315232921.2251458-1-yoann.congal@smile.fr>
In-Reply-To: <20240315232921.2251458-1-yoann.congal@smile.fr>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Sat, 16 Mar 2024 09:25:44 +0100
Message-ID: <CAMSfU+5HT6vYhbc-31PVa__m_kEPj4a_wVc_586JixwmdN5xAg@mail.gmail.com>
Subject: Re: [yocto-autobuilder2][PATCH] schedulers: metrics: Start again with
 master for the daily full download
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007d02fc0613c2e0a6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Mar 2024 08:26:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62772

--0000000000007d02fc0613c2e0a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

(Replying to myself to keep conclusion of an IRC discussion)

Le sam. 16 mars 2024 =C3=A0 00:29, Yoann Congal <yoann.congal@smile.fr> a =
=C3=A9crit :

> Change the order of metrics branches:
> * First, master at 5am which may do the full CVE download (might take
>   1 hour to finish).
> * Then, the other branches starting at 6am to allow them to use the
>   fresh download.
> * And, finally, generate global charts data from individual branch
>   metrics (at 8am)
>

That would not work since the master metrics can go well above 1h (e.g.
https://autobuilder.yoctoproject.org/typhoon/#/builders/138/builds/1343)

What we want is:
* A triggering builder (see
https://docs.buildbot.net/3.8.0/manual/configuration/steps/trigger.html)
that
  * for each branch,
    * trigger a builder that do the run-cvecheck (starting with master for
the NVD database download)
  * Finish with the chart generation (run-cvechart)

That way, we will have proper ordering/dependencies between metrics
computing and chart generation.

NB: Trying to order builders on the AB based on estimated build duration
does not work because workers are quite loaded and the pressure regulation
can extend the build time quite a bit.


> Compared with commit 839c3cedbf6f ("schedulers: metrics: Start with maste=
r
> for the daily full download"),
> the last part is new.
>
> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>



>  schedulers.py | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/schedulers.py b/schedulers.py
> index a30383f..67cc739 100644
> --- a/schedulers.py
> +++ b/schedulers.py
> @@ -497,12 +497,17 @@
> schedulers.append(sched.Nightly(name=3D'nightly-meta-oe-mirror',
> branch=3D'master',
>  schedulers.append(sched.Nightly(name=3D'nightly-reproducible-meta-oe',
> branch=3D'master', properties=3Dparent_default_props('reproducible-meta-o=
e'),
>                    builderNames=3D['reproducible-meta-oe'], hour=3D2,
> minute=3D0, dayOfWeek=3D5))
>
> -# Run metrics at 3-7am each day
> +# Run metrics at 5-8am each day
> +# Starts with master which may do a full CVE database download and start
> other
> +# branches 1 hour later to allow them to re-use the fresh download.
> +schedulers.append(sched.Nightly(name=3D'nightly-metrics', branch=3D'mast=
er',
> properties=3Dparent_default_props('metrics'), builderNames=3D['metrics'],
> hour=3D5, minute=3D0))
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
>  schedulers.append(sched.Nightly(name=3D'nightly-metrics-mickledore',
> branch=3D'mickledore', properties=3Dparent_default_props('metrics',
> 'mickledore'), builderNames=3D['metrics'], hour=3D6, minute=3D30, codebas=
es =3D {''
> : {'branch' : 'mickledore'}}))
>  schedulers.append(sched.Nightly(name=3D'nightly-metrics-nanbield',
> branch=3D'nanbield', properties=3Dparent_default_props('metrics', 'nanbie=
ld'),
> builderNames=3D['metrics'], hour=3D6, minute=3D45, codebases =3D {'' : {'=
branch' :
> 'nanbield'}}))
> -schedulers.append(sched.Nightly(name=3D'nightly-metrics', branch=3D'mast=
er',
> properties=3Dparent_default_props('metrics'), builderNames=3D['metrics'],
> hour=3D7, minute=3D0))
> +# Generate charts after every branch had its metrics computed
> +schedulers.append(sched.Nightly(name=3D'nightly-metrics-charts',
> branch=3D'master', properties=3Dparent_default_props('metrics'),
> builderNames=3D['metrics-charts'], hour=3D8, minute=3D0))
> +
>
>  # Run check-layer-nightly twice a week for nanbield
>  schedulers.append(sched.Nightly(name=3D'nightly-check-layer-nanbield',
> properties=3Dparent_default_props('check-layer-nightly', 'nanbield'),
> --
> 2.39.2
>
>

--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000007d02fc0613c2e0a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>(Replying to myself to keep conclusion of an IRC disc=
ussion)</div><div><br></div><div dir=3D"ltr">Le=C2=A0sam. 16 mars 2024 =C3=
=A0=C2=A000:29, Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr">y=
oann.congal@smile.fr</a>&gt; a =C3=A9crit=C2=A0:</div><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Change the order of=
 metrics branches:<br>
* First, master at 5am which may do the full CVE download (might take<br>
=C2=A0 1 hour to finish).<br>
* Then, the other branches starting at 6am to allow them to use the<br>
=C2=A0 fresh download.<br>
* And, finally, generate global charts data from individual branch<br>
=C2=A0 metrics (at 8am)<br></blockquote><div><br></div><div>That would not =
work since the master metrics can go well above 1h (e.g. <a href=3D"https:/=
/autobuilder.yoctoproject.org/typhoon/#/builders/138/builds/1343">https://a=
utobuilder.yoctoproject.org/typhoon/#/builders/138/builds/1343</a>)</div><d=
iv><br></div><div>What we want is:</div><div>* A triggering builder (see <a=
 href=3D"https://docs.buildbot.net/3.8.0/manual/configuration/steps/trigger=
.html">https://docs.buildbot.net/3.8.0/manual/configuration/steps/trigger.h=
tml</a>) that</div><div>=C2=A0 * for each branch,</div><div>=C2=A0=C2=A0=C2=
=A0 * trigger a builder that do the run-cvecheck (starting with master for =
the NVD database download)</div><div>=C2=A0 * Finish with the chart generat=
ion (run-cvechart)</div><div><br></div><div>That way, we will have proper o=
rdering/dependencies between metrics computing and chart generation.</div><=
div><br></div><div>NB: Trying to order builders on the AB based on estimate=
d build duration does not work because workers are quite loaded and the pre=
ssure regulation can extend the build time quite a bit.<br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Compared with commit 839c3cedbf6f (&quot;schedulers: metrics: Start with ma=
ster for the daily full download&quot;),<br>
the last part is new.<br>
<br>
Signed-off-by: Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr" ta=
rget=3D"_blank">yoann.congal@smile.fr</a>&gt;<br>
---<br></blockquote><div><br></div><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
=C2=A0schedulers.py | 9 +++++++--<br>
=C2=A01 file changed, 7 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/schedulers.py b/schedulers.py<br>
index a30383f..67cc739 100644<br>
--- a/schedulers.py<br>
+++ b/schedulers.py<br>
@@ -497,12 +497,17 @@ schedulers.append(sched.Nightly(name=3D&#39;nightly-m=
eta-oe-mirror&#39;, branch=3D&#39;master&#39;,<br>
=C2=A0schedulers.append(sched.Nightly(name=3D&#39;nightly-reproducible-meta=
-oe&#39;, branch=3D&#39;master&#39;, properties=3Dparent_default_props(&#39=
;reproducible-meta-oe&#39;),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0builde=
rNames=3D[&#39;reproducible-meta-oe&#39;], hour=3D2, minute=3D0, dayOfWeek=
=3D5))<br>
<br>
-# Run metrics at 3-7am each day<br>
+# Run metrics at 5-8am each day<br>
+# Starts with master which may do a full CVE database download and start o=
ther<br>
+# branches 1 hour later to allow them to re-use the fresh download.<br>
+schedulers.append(sched.Nightly(name=3D&#39;nightly-metrics&#39;, branch=
=3D&#39;master&#39;, properties=3Dparent_default_props(&#39;metrics&#39;), =
builderNames=3D[&#39;metrics&#39;], hour=3D5, minute=3D0))<br>
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
=C2=A0schedulers.append(sched.Nightly(name=3D&#39;nightly-metrics-mickledor=
e&#39;, branch=3D&#39;mickledore&#39;, properties=3Dparent_default_props(&#=
39;metrics&#39;, &#39;mickledore&#39;), builderNames=3D[&#39;metrics&#39;],=
 hour=3D6, minute=3D30, codebases =3D {&#39;&#39; : {&#39;branch&#39; : &#3=
9;mickledore&#39;}}))<br>
=C2=A0schedulers.append(sched.Nightly(name=3D&#39;nightly-metrics-nanbield&=
#39;, branch=3D&#39;nanbield&#39;, properties=3Dparent_default_props(&#39;m=
etrics&#39;, &#39;nanbield&#39;), builderNames=3D[&#39;metrics&#39;], hour=
=3D6, minute=3D45, codebases =3D {&#39;&#39; : {&#39;branch&#39; : &#39;nan=
bield&#39;}}))<br>
-schedulers.append(sched.Nightly(name=3D&#39;nightly-metrics&#39;, branch=
=3D&#39;master&#39;, properties=3Dparent_default_props(&#39;metrics&#39;), =
builderNames=3D[&#39;metrics&#39;], hour=3D7, minute=3D0))<br>
+# Generate charts after every branch had its metrics computed<br>
+schedulers.append(sched.Nightly(name=3D&#39;nightly-metrics-charts&#39;, b=
ranch=3D&#39;master&#39;, properties=3Dparent_default_props(&#39;metrics&#3=
9;), builderNames=3D[&#39;metrics-charts&#39;], hour=3D8, minute=3D0))<br>
+<br>
<br>
=C2=A0# Run check-layer-nightly twice a week for nanbield<br>
=C2=A0schedulers.append(sched.Nightly(name=3D&#39;nightly-check-layer-nanbi=
eld&#39;, properties=3Dparent_default_props(&#39;check-layer-nightly&#39;, =
&#39;nanbield&#39;),<br>
-- <br>
2.39.2<br>
<br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><font face=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"R=
aleway, regular">Smile ECS - Tech expert<br></font></div></div></div></div>

--0000000000007d02fc0613c2e0a6--

