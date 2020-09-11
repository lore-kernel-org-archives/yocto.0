Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web12.236.1599844202098612698
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 10:10:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aYw9aSMt;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id c25so2563599vkm.1
        for <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2020 10:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R4rvIJXZO8Js7eOzfsvDthcPrWnQpQK9N2iw84zFZJU=;
        b=aYw9aSMtKMDMQHQ0bnCx7BC9SLMf2QKG6+POQ3L9+mGwrBlOeSM7bnr3hVoDfVO5VT
         CJ3wWNfyHwBI1wfRxpuoZ4Af1TMCiik5+ATmcT2bU51XDlho/eHQ3yVrDr2cYHPC1E0l
         8LbcumhQzOqBXMhZ8FPicNXbaXJK4d87DzvVPkbDcO3zYLnkqQxdj/vcX/SDZ51Mkkah
         jeGOWpB0JjIlhqk8j5MQJeJ85zifvnmQH9TVyjAFAKKW5aMnfq50Ntlr8s02aK5uptqV
         3TP8IhWbx4qBREyQCEF9ldB+nllU+35HoZf2ra5m+wu+3rXXX84JJm0KQWehrSCgMOGl
         BROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R4rvIJXZO8Js7eOzfsvDthcPrWnQpQK9N2iw84zFZJU=;
        b=ODi3gGfNlNmciakLjGH9FyluNq4+MnxynVeZfgPNlhjrOUh9sPa797TMh5ojVn8bZY
         pyPqQvspmgXcmqgwFMJjCeprDA0OK1DZLvgxXtl9t1ugt36Qbk/QdoXMA2J1U9awZKG1
         i1E4tS2LCccflNXzO9y+wGWbwfNgEHi4p0umIRRZJPHCvY1T6LA8qVMDBsVFJL3ZBxVc
         AG+mQLjS7eVZpomWLvP3pGXKFTpScp6wg6KsCgLw5J6868wUcwiT5jOgU538mnKAlFia
         8E87dWkl4ldRUPCOhvJve2VdYh3uEJIHrBqVCzFSE5yw3hOgP5sWK41M4Ke4PbKutvz3
         TW0Q==
X-Gm-Message-State: AOAM530kUag4uIE7UE2FGA8s4s6j3IRtinXAMWt7ctMjiX266wZPryZA
	hgXQScqUqo8K8+6w5uMb55QBrGhcUKu7HAv8wpk=
X-Google-Smtp-Source: ABdhPJy3cpDRTLmyi1ba1rD7/AX6tfCu27TBTVwHs7disznyEPzjGD1a9h3NwQhIwE70YUkQtJs04lmH4XwlQdjaOBQ=
X-Received: by 2002:a1f:964c:: with SMTP id y73mr1875798vkd.8.1599844201081;
 Fri, 11 Sep 2020 10:10:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAHwRhWb9uMoJW8kkQse3z4v1gDY9EqMyyrrdcA3i=Mt62LWaKA@mail.gmail.com>
 <CAMKF1srYqhmX8KkspxZAc4uQKdYh5DnDtG2z_DBq4DRgRzzA2A@mail.gmail.com>
In-Reply-To: <CAMKF1srYqhmX8KkspxZAc4uQKdYh5DnDtG2z_DBq4DRgRzzA2A@mail.gmail.com>
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
Date: Fri, 11 Sep 2020 19:09:50 +0200
Message-ID: <CAHwRhWbFWRFthJ_CSjd0aXWXuk7uyq_5WfCeJ1fJ07F10PSnag@mail.gmail.com>
Subject: Re: [yocto] vwdial
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004d321205af0cc139"

--0000000000004d321205af0cc139
Content-Type: text/plain; charset="UTF-8"

Ok, I will do that. Could you please tell me where am I supposed to remove
from the exclusion list? :-)

On 2020. Sep 11., Fri at 18:57, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Sep 11, 2020 at 1:54 AM Zoltan Kerenyi Nagy
>
> <kerenyi.nagy.zoltan@gmail.com> wrote:
>
> >
>
> > I changed the vwdial recipy file for what I've found on openembedded.
>
> > I think now the error is only with wvstreams
>
> >
>
> > NOTE: Resolving any missing task queue dependencies
>
> > ERROR: Nothing PROVIDES 'wvstreams' (but
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-connectivity/wvdial/
> wvdial_1.61.bb DEPENDS on or otherwise requires it)
>
> > ERROR: wvstreams was skipped: Recipe is blacklisted: BROKEN: fails to
> build with gcc-6 - the recipe will be removed on 2017-09-01 unless the
> issue is fixed
>
>
>
> its telling the problem clearly above. So remove it from the exclusion
>
> list and then see what needs to be fixed
>
>
>
> > NOTE: Runtime target 'wvdial' is unbuildable, removing...
>
> > Missing or unbuildable dependency chain was: ['wvdial', 'wvstreams']
>
> > ERROR: Required build target 'core-image-barix-sdk' has no buildable
> providers.
>
> > Missing or unbuildable dependency chain was: ['core-image-barix-sdk',
> 'wvdial', 'wvstreams']
>
> > 
>
>

--0000000000004d321205af0cc139
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, I will do that. Could you please tell me where am I s=
upposed to remove from the exclusion list? :-)</div><div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On 2020. Sep 11., Fri at=
 18:57, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, Sep 11, 2=
020 at 1:54 AM Zoltan Kerenyi Nagy<br><br>&lt;<a href=3D"mailto:kerenyi.nag=
y.zoltan@gmail.com" target=3D"_blank">kerenyi.nagy.zoltan@gmail.com</a>&gt;=
 wrote:<br><br>&gt;<br><br>&gt; I changed the vwdial recipy file for what I=
&#39;ve found on openembedded.<br><br>&gt; I think now the error is only wi=
th wvstreams<br><br>&gt;<br><br>&gt; NOTE: Resolving any missing task queue=
 dependencies<br><br>&gt; ERROR: Nothing PROVIDES &#39;wvstreams&#39; (but =
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-con=
nectivity/wvdial/<a href=3D"http://wvdial_1.61.bb" rel=3D"noreferrer" targe=
t=3D"_blank">wvdial_1.61.bb</a> DEPENDS on or otherwise requires it)<br><br=
>&gt; ERROR: wvstreams was skipped: Recipe is blacklisted: BROKEN: fails to=
 build with gcc-6 - the recipe will be removed on 2017-09-01 unless the iss=
ue is fixed<br><br><br><br>its telling the problem clearly above. So remove=
 it from the exclusion<br><br>list and then see what needs to be fixed<br><=
br><br><br>&gt; NOTE: Runtime target &#39;wvdial&#39; is unbuildable, remov=
ing...<br><br>&gt; Missing or unbuildable dependency chain was: [&#39;wvdia=
l&#39;, &#39;wvstreams&#39;]<br><br>&gt; ERROR: Required build target &#39;=
core-image-barix-sdk&#39; has no buildable providers.<br><br>&gt; Missing o=
r unbuildable dependency chain was: [&#39;core-image-barix-sdk&#39;, &#39;w=
vdial&#39;, &#39;wvstreams&#39;]<br><br>&gt; <br><br></blockquote></div></d=
iv>

--0000000000004d321205af0cc139--
