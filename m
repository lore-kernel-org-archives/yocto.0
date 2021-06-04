Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.7842.1622810455513343380
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Jun 2021 05:40:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q1HnIEMg;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 663B938C066A
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 12:40:54 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id cb9so11004121edb.1
        for <yocto@yoctoproject.org>; Fri, 04 Jun 2021 05:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UYGf7uh1bY4q1eMl4GY2ql8Irnmsr0nUT6hZ2oK/ryQ=;
        b=q1HnIEMgH8KmK7JIjDjxlmdJt4MpinFtRFZKijV1NFarU1WWgKubwhVC8Doz36cZn2
         zobxEwFcCTX2gRCCG9ZZjLcjNklJ8R1En1w80kxMsBiCLe7PHPRkyzFSdmbUoVhbqXya
         BxM9akwDTgXU6O1FjnfQGtVUFNcNog/Q7ZguMaA5Ax/FIwezqTUg3jfJZLIld46/LeFl
         q18DmU6Xr41IhcszUnjgAndTCnjBBhvmtHLQIBfOS/qH8eUYFwDo3da4lJ+YMUA3cCKR
         CYCTpEQ26XHPRyacNTz61XlkyHSKcru3JloC+EjtqLfgktHAkbB1ZG2HN84Wz1vM2VFS
         wHJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UYGf7uh1bY4q1eMl4GY2ql8Irnmsr0nUT6hZ2oK/ryQ=;
        b=tCGAIp7R0A+lR1Yv0XfQj+EuDG7yhfpfc435UdS/vLTdmShWA2swnLTyvp+YQ/HQjf
         gF/Frxsoh/ZjIGGWTLdJJJAFqoJslsl4OWk8ASQYBVvJRNW7Ohq/vV3V1dke72fhRM61
         SQ9K0bepIdSMTnIPFuAuq0syLzdZu2gjrve4PLG4ESgplq6nhNOPS8/ShkCVIKTvPEDd
         ZvNBzR3b68Z/8BRgw1oeZprN61HqDLUhiVaI3gZCs/WTj+gavTcveoOvI0LCYBODmRCk
         rSyoVze0qrdjueGBH2TKQo+wk++oGnrCLkd8YQGlbw3genLSJI9ZfY0VpMVbxcDgLIgn
         Kb1g==
X-Gm-Message-State: AOAM532jeLX+ILtUGC0E7iMQtl1slUvIW2kEJr1Gh6YDQq1kyRqDf7mY
	dC0rQJ2QaFWhy9B+ZEW91qlUEhnVxhdu2giwIBY=
X-Google-Smtp-Source: ABdhPJz3PDx1Kg2buozcVKAjvMp4vF/1Fh6i5SOer7zeEtnu7dVedyOWAt2BN9IwEv2sD/vsoKmgenu8UoIKh2M13Mk=
X-Received: by 2002:a05:6402:1763:: with SMTP id da3mr4616675edb.352.1622810453051;
 Fri, 04 Jun 2021 05:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210604030619.35679-1-kai.kang@windriver.com>
 <CADkTA4MrxoynTeBfnXsyH+YSX+c2MDo9PtdcgYDJqDS1cQ2u=g@mail.gmail.com>
 <8a264bd7-49f4-1672-55b6-e97be9556ccd@windriver.com> <CADkTA4NLc6OHOjPrhvEyCp=s15JHZK4yRkU1EoRD=W-Pg3ApbA@mail.gmail.com>
 <1685614D8890E95D.26755@lists.yoctoproject.org>
In-Reply-To: <1685614D8890E95D.26755@lists.yoctoproject.org>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Fri, 4 Jun 2021 08:40:41 -0400
Message-ID: <CADkTA4OWoe1MgFXZopS9kpFSJjT05Yc45xg91vSzQOGAJ-5vhg@mail.gmail.com>
Subject: Re: [yocto] [meta-realtime][PATCH] layer.conf: set LAYERSERIES_COMPAT with honister
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Kai <kai.kang@windriver.com>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 4, 2021 at 8:37 AM Bruce Ashfield via
lists.yoctoproject.org
<bruce.ashfield=gmail.com@lists.yoctoproject.org> wrote:
>
> On Fri, Jun 4, 2021 at 8:27 AM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
> >
> > On Thu, Jun 3, 2021 at 11:35 PM Kai <kai.kang@windriver.com> wrote:
> > >
> > > On 6/4/21 11:22 AM, Bruce Ashfield wrote:
> > > > On Thu, Jun 3, 2021 at 11:06 PM <kai.kang@windriver.com> wrote:
> > > >> From: Kai Kang <kai.kang@windriver.com>
> > > >>
> > > >> Replace hardknott with honister in layer.conf which aligns with
> > > >> oe-core.
> > > >>
> > > > I had added this back in April, but apparently didn't push the change.
> > > >
> > > > I also noticed that I've been updating the wrong branch with compatibility.
> > > >
> > > > That should all be fixed now.
> > >
> > > Hi Bruce,
> > >
> > > Thanks. I have seen your commits.
> > >
> > > But 3 items in LAYERSERIES_COMPAT_realtime will cause layer index show
> > > warning:
> > >
> > >    WARNING: YPCompatibleVersion.name: dunfell gatesgarth hardknott:
> > > length 28 exceeds maximum (25), truncating
> > >
> > > Could we only keep the latest LAYERSERIES_CORENAMES (honister) in branch
> > > master, please?
> >
> > Nope. It is compatible with those releases, so they need to stay. I
> > see no valid reason to be limited to a certain number of characters.
> >
> > >
> > > Or it set in oe-core's layer.conf:
> > >
> > > LAYERSERIES_CORENAMES = "hardknott honister"
> > >
> > > we just align with it to keep the latest 2, please?
> >
> > That is just as arbitrary, I'll keep it as-is.
>
> I took a quick look, is this warning coming from the layer index ?
> That would be important information to convey when sending changes
> like this.

Apologies on this, I see in the follow up email you did mention the
layerindex .. I read completely over that, and had to search up the
warning myself. (my fault, not yours).

>
> That being said, it is a longer fix to get that warning changed, and
> I'd rather not break the index, so I dropped to only the last two
> releases.
>
> But I do recommend that the layer index be changed (if that is the
> cause of the warning), since we shouldn't be adapting to the index ..
> it should be adapting to layers.

This point still stands though :D

Bruce

>
> Bruce
>
> >
> > Bruce
> >
> > >
> > > Regards,
> > > Kai
> > >
> > > >
> > > > Bruce
> > > >
> > > >> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> > > >> ---
> > > >>   conf/layer.conf | 2 +-
> > > >>   1 file changed, 1 insertion(+), 1 deletion(-)
> > > >>
> > > >> diff --git a/conf/layer.conf b/conf/layer.conf
> > > >> index 007f578..8ae67ba 100644
> > > >> --- a/conf/layer.conf
> > > >> +++ b/conf/layer.conf
> > > >> @@ -15,6 +15,6 @@ BBFILE_PRIORITY_realtime = "5"
> > > >>   # This should only be incremented on significant changes that will
> > > >>   # cause compatibility issues with other layers
> > > >>   LAYERVERSION_realtime = "1"
> > > >> -LAYERSERIES_COMPAT_realtime = "hardknott"
> > > >> +LAYERSERIES_COMPAT_realtime = "honister"
> > > >>   LAYERDEPENDS_realtime = "core openembedded-layer"
> > > >>   LAYERRECOMMENDS_realtime = "meta-realtime-dl (= 3.2)"
> > > >> --
> > > >> 2.17.1
> > > >>
> > > >
> > >
> > > --
> > > Kai Kang
> > > Wind River Linux
> > >
> >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > thee at its end
> > - "Use the force Harry" - Gandalf, Star Trek II
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
> 
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
