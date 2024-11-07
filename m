Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DEB6D4337E
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 16:40:46 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.76698.1730997637301462489
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 08:40:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=l1R2Zvcs;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539f53973fdso1045256e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 08:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730997635; x=1731602435; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oFYCW+WVztF+d770qHPFB3Mhf2u2xLr2sEWhVO1uo2Y=;
        b=l1R2ZvcsdhT+wt7Cl3gt9S4XLu2266U4k1iEWk/EP0FdI+lwgU4XwrOzIzmMhw6qDC
         VjawvVOcM0EYoVfWw+rCCj8YKMDDZmSZ5NQI65hykLs3SSiYh7+TVb4rMBHK9KE37aeE
         O8UJcUB8+imqzo+G0P84wdIoKtj2Y2VnrlWUIX68J92eJjJOCigiX1Bw10xDt6Dx7nU7
         4bGFipBeaBSiK+4l6eGsChIRIleDr/oRBkVnxmBY0frZ4fagtiXfxBxBGD2CwzplgonZ
         2QzNz8MwM2awxJ7eNmM8o2dR4KgSgUUxHD66cxsZ9P2HlU2Hism9Us5SMonYWQjU+0XS
         HXKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730997635; x=1731602435;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oFYCW+WVztF+d770qHPFB3Mhf2u2xLr2sEWhVO1uo2Y=;
        b=geaVqqaujw9DBZsK0TyXP5uhN1Syy33t0gJA5G3bNWl7hGiOuqFPC/k9iK3DLWjCxG
         lNmFGwlp5jbxfW4J33SSw9/NToXHyU6AajYVhzT0QIIdTvy498w/Xk6XJY/mgo3I3P7r
         rhOA2Dn0c70J908geUUKcrfabD6DRiNancsXctDGzTTQ7qUgNdukue76+vzBCfLNhMqz
         Umid8fZbQkOWOUX9wdle+6rsMrpZ20Xu8ySsXRSdQ2TyqZYHY/5TPEA7gK6tIKe734bs
         dv4ARTFoiXbYWJ0jIvGuUkGoYq48tfU5lm30/vkQHA3V6CN6MFPimjDjmG/oliYmZurb
         XGUg==
X-Gm-Message-State: AOJu0YxpMYU3PQCqgpv41R1iaEM9fcMTVAHhDz4P5+Z1nFWrl4xGZtDS
	7qXg0/lvgms+9NRWxR1lPpbKPP9FvYwdDUjRi+WVABlCNAMYcw9GuEOpaEnVFh35Kpo8dTv/RRj
	7xFfavfVW1sL3UeW/Ol5FwBK407vbYA==
X-Google-Smtp-Source: AGHT+IFdRdSWMEnqROkYeZ52BHjx833ibuuQQ7JU1L1V3DWZUkDqK4wPrN9P2tGbuf3AnvdeSXlBbOo3Rf7TJwzqQ4Y=
X-Received: by 2002:a05:6512:158b:b0:539:f84d:bee1 with SMTP id
 2adb3069b0e04-53d85f13a7dmr66533e87.17.1730997634846; Thu, 07 Nov 2024
 08:40:34 -0800 (PST)
MIME-Version: 1.0
References: <MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
 <CAB=6tBS7ttKuc0tqU4Etctj3xMZUsPBXZV16=rWuHzjrM3JxaA@mail.gmail.com> <MW4PR16MB5087FBB2D17E7CDFC8F1E9CABB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
In-Reply-To: <MW4PR16MB5087FBB2D17E7CDFC8F1E9CABB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 7 Nov 2024 17:40:24 +0100
Message-ID: <CANNYZj_pTPxvAvOKLwpHEXiXTb6A520BQs07gesHxs-F1z6M7g@mail.gmail.com>
Subject: Re: [yocto] Conditionally set SYSTEMD_SERVICE_${PN} based on version
 of another package
To: yocto@lists.yoctoproject.org, Logan.Grosz@b9c.com
Cc: Chuck Wolber <chuckwolber@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000021d88b0626554b07"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 16:40:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64236

--00000000000021d88b0626554b07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I=E2=80=99d suggest you stop doing those painful big bang migrations and ra=
ther
transition to =E2=80=98master plus stable backports=E2=80=99 model.

Alex

On Thu 7. Nov 2024 at 17.31, Logan Grosz via lists.yoctoproject.org
<Logan.Grosz=3Db9c.com@lists.yoctoproject.org> wrote:

> Alex and Chuck,
>
> Thank you for your timely responses.
>
> Nobody ever promised you can use the same layer with more than one yocto
> release. Please make a branch.
>
> I am aware, but I am also aware of LAYERSERIES_COMPAT
> <https://docs.yoctoproject.org/bitbake/2.10/bitbake-user-manual/bitbake-u=
ser-manual-ref-variables.html#term-LAYERSERIES_COMPAT>. I
> am hoping to utilize it for a brief period to keep our git tree functiona=
l
> on every commit.
>
> Is there something unique and special about your particular factory reset
> target? If not, I suspect
> what you are experiencing is a sign that it is time to get rid of that
> recipe.
>
> No, there is nothing special about the target. The plan is to remove the
> target when we are completely migrated over.
>
> If you are using that same layer to build images for multiple Yocto
> release versions, this problem is
> only going to get worse. Recipe compatibility is not guaranteed between
> discrete Yocto releases.
> The expectation is that you will branch and update your recipes to keep
> pace with each release you
> want to support.
>
> There are *a lot* of changes we are making, so I was trying to keep the
> changeset to a minimum. In an effort to keep a nice bitsect-able Git
> history, I'm trying to keep the layer buildable on both Yocto releases.
> However, I plan on removing any extra handling for the old version once w=
e
> have a nice workable build on this newer version.
>
> I only bring this up because it's not uncommon for software to check a
> version of its dependency to support multiple versions of it at build-tim=
e.
> I figured this was a very similar concept.
>
> If there's no neat way of doing this solely in the recipe, then I'll appl=
y
> the patch early and note it breaks the factory-reset feature until System=
D
> 250.
> Thank you,
> Logan
> ------------------------------
> *From:* Chuck Wolber <chuckwolber@gmail.com>
> *Sent:* Thursday, November 7, 2024 9:02 AM
> *To:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Logan
> Grosz <Logan.Grosz@b9c.com>
> *Subject:* Re: [yocto] Conditionally set SYSTEMD_SERVICE_${PN} based on
> version of another package
>
> On Thu, Nov 7, 2024 at 7:34=E2=80=AFAM Logan Grosz via lists.yoctoproject=
.org
> <Logan.Grosz=3Db9c.com@lists.yoctoproject.org> wrote:
>
> Hi, all
>
> My company is trying to migrate a newer version of Yocto and in an effort
> to do that I am making changes to our current layer to facilitate an easi=
er
> transition. One problem I encountered was SystemD 250 installs a target
> factory-reset.target, but we already have a recipe that installs a that
> same file. The recipe is as follows
>
>
> Is there something unique and special about your particular factory reset
> target? If not, I suspect
> what you are experiencing is a sign that it is time to get rid of that
> recipe.
>
> If you are using that same layer to build images for multiple Yocto
> release versions, this problem is
> only going to get worse. Recipe compatibility is not guaranteed between
> discrete Yocto releases.
> The expectation is that you will branch and update your recipes to keep
> pace with each release you
> want to support.
>
> ..Ch:W..
>
> *"Perfection must be reached by degrees; she requires the slow hand of
> time." - Voltaire*
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64235):
> https://lists.yoctoproject.org/g/yocto/message/64235
> Mute This Topic: https://lists.yoctoproject.org/mt/109446043/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000021d88b0626554b07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I=E2=80=99d suggest you stop doing those painful big bang=
 migrations and rather transition to =E2=80=98master plus stable backports=
=E2=80=99 model.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</d=
iv><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu 7. Nov 2024 at 17.31, Logan Grosz via <a href=3D"http://lists.yoct=
oproject.org">lists.yoctoproject.org</a> &lt;Logan.Grosz=3D<a href=3D"mailt=
o:b9c.com@lists.yoctoproject.org">b9c.com@lists.yoctoproject.org</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;borde=
r-left-color:rgb(204,204,204)">




<div dir=3D"ltr">
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
Alex and Chuck,</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
<br>
</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
Thank you for your timely responses.</div>
<blockquote style=3D"margin-left:0.8ex;padding-left:1ex;border-left-width:3=
px;border-left-style:solid;border-left-color:rgb(200,200,200)">
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
Nobody ever promised you can use the same layer with more than one yocto re=
lease. Please make a branch.</div>
</blockquote>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
I am aware, but I am also aware of <a href=3D"https://docs.yoctoproject.org=
/bitbake/2.10/bitbake-user-manual/bitbake-user-manual-ref-variables.html#te=
rm-LAYERSERIES_COMPAT" id=3D"m_8950763947565191830LPlnk727394" title=3D"htt=
ps://docs.yoctoproject.org/bitbake/2.10/bitbake-user-manual/bitbake-user-ma=
nual-ref-variables.html#term-LAYERSERIES_COMPAT" target=3D"_blank" style=3D=
"font-family:&quot;Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,=
-apple-system,BlinkMacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-ser=
if">
LAYERSERIES_COMPAT</a>.=C2=A0I am hoping to utilize it for a brief period t=
o keep our git tree functional on every commit.</div>
<blockquote style=3D"margin-left:0.8ex;padding-left:1ex;border-left-width:3=
px;border-left-style:solid;border-left-color:rgb(200,200,200)">
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
Is there something unique and special about your particular factory reset t=
arget? If not, I suspect</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
what you are experiencing is a sign that it is time to get rid of that reci=
pe.</div>
</blockquote>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
No, there is nothing special about the target. The plan is to remove the ta=
rget when we are completely migrated over.</div>
<blockquote style=3D"margin-left:0.8ex;padding-left:1ex;border-left-width:3=
px;border-left-style:solid;border-left-color:rgb(200,200,200)">
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
If you are using that same layer to build images for multiple Yocto release=
 versions, this problem is</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
only going to get worse. Recipe compatibility is not guaranteed between dis=
crete Yocto releases.</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
The expectation is that you will branch and update your recipes to keep pac=
e with each release you</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
want to support.</div>
</blockquote>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
There are <i style=3D"font-family:&quot;Segoe UI&quot;,&quot;Segoe UI Web (=
West European)&quot;,-apple-system,BlinkMacSystemFont,Roboto,&quot;Helvetic=
a Neue&quot;,sans-serif">a lot</i>=C2=A0of changes we are making, so I was =
trying to keep the changeset to a minimum. In an effort to keep a nice bits=
ect-able Git history, I&#39;m trying to keep the layer buildable on both Yo=
cto releases. However, I plan on removing any extra handling
 for the old version once we have a nice workable build on this newer versi=
on.</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
<br>
</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
I only bring this up because it&#39;s not uncommon for software to check a =
version of its dependency to support multiple versions of it at build-time.=
 I figured this was a very similar concept.</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
<br>
</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:&quot;=
Segoe UI&quot;,&quot;Segoe UI Web (West European)&quot;,-apple-system,Blink=
MacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;font-size:15px;b=
ackground-color:rgb(255,255,255);color:rgb(0,0,0)">
If there&#39;s no neat way of doing this solely in the recipe, then I&#39;l=
l apply the patch early and note it breaks the factory-reset feature until =
SystemD 250.</div>
<div id=3D"m_8950763947565191830Signature" style=3D"color:inherit">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thank you,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Logan</div>
</div>
<div id=3D"m_8950763947565191830appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_8950763947565191830divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt;font-family:Calibri,sans-serif;c=
olor:rgb(0,0,0)"><b style=3D"font-family:Calibri,sans-serif">From:</b> Chuc=
k Wolber &lt;<a href=3D"mailto:chuckwolber@gmail.com" target=3D"_blank" sty=
le=3D"font-family:Calibri,sans-serif">chuckwolber@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Thursday, November 7,=
 2024 9:02 AM<br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" target=3D"_blank" style=3D"font-family:Calibri,san=
s-serif">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists=
.yoctoproject.org" target=3D"_blank" style=3D"font-family:Calibri,sans-seri=
f">yocto@lists.yoctoproject.org</a>&gt;; Logan Grosz &lt;<a href=3D"mailto:=
Logan.Grosz@b9c.com" target=3D"_blank" style=3D"font-family:Calibri,sans-se=
rif">Logan.Grosz@b9c.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Condit=
ionally set SYSTEMD_SERVICE_${PN} based on version of another package</font=
>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Thu, Nov 7, 2024 at 7:34=E2=80=AFAM Logan Grosz via <a =
href=3D"http://lists.yoctoproject.org" target=3D"_blank">
lists.yoctoproject.org</a> &lt;Logan.Grosz=3D<a href=3D"mailto:b9c.com@list=
s.yoctoproject.org" target=3D"_blank">b9c.com@lists.yoctoproject.org</a>&gt=
; wrote:</div>
<div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi, all</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
My company is trying to migrate a newer version of Yocto and in an effort t=
o do that I am making changes to our current layer to facilitate an easier =
transition. One problem I encountered was SystemD 250 installs a target
<code style=3D"font-family:monospace">factory-reset.target</code>, but we a=
lready have a recipe that installs a that same file. The recipe is as follo=
ws</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Is there something unique and special about your particular factory re=
set target? If not, I suspect</div>
<div>what you are experiencing is a sign that it is time to get rid of that=
 recipe.</div>
<div><br>
</div>
<div>If you are using that same layer to build images for multiple Yocto re=
lease versions, this problem is</div>
<div>only going to get worse. Recipe compatibility is not guaranteed betwee=
n discrete Yocto releases.</div>
<div>The expectation is that you will branch and update your recipes to kee=
p pace with each release you</div>
<div>want to support.</div>
<div><br>
</div>
<div>..Ch:W..<br>
</div>
<br>
</div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div><b><span style=3D"font-family:monospace">&quot;Perfection must be reac=
hed by degrees; she requires the slow hand of time.&quot; - Voltaire</span>=
</b></div>
</div>
</div>
</div>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64235): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64235" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64235</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109446043/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109446043/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000021d88b0626554b07--

