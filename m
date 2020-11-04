Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
 by mx.groups.io with SMTP id smtpd.web12.18966.1604522315582407210
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 12:38:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ms9bs+i+;
 spf=pass (domain: gmail.com, ip: 209.85.217.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f52.google.com with SMTP id b129so12247373vsb.1
        for <yocto@lists.yoctoproject.org>; Wed, 04 Nov 2020 12:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YLPzheASbrw0vIutVA7GUuHTSi+VVrqfT4x1nLwlv28=;
        b=ms9bs+i+Opsh3tx1wfH0qeP+2D3bQA61npPIpd0T7mEIpFiGZZtkMFV+sD7cZY7IUe
         IXa5Pgj1ztg5a0JbGfn2kT2q7c3rD5xlvT1ldD19LO5QbzgGIcHfRPrIk/dcpfuX3BPy
         pSNsn95fT8zRpCnBHb9yUxQREpV7VWmo/CHIcuQ1JighJ9E/ISkiIK6R0cQh4lY3qde5
         h+yNGClzqOglv1x9SvFGk+heZinu47LnBFub3vfh1f2XSKJs/FgI5DPnNyxBAPMbWu00
         izOQHgIhWji77fkcPMFdlxUlxUQng1Vu15FntD7CII0X9o5mDrRho3GSQ0EmYtZDDMgM
         h9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YLPzheASbrw0vIutVA7GUuHTSi+VVrqfT4x1nLwlv28=;
        b=lhfvZoEFAWCT65QJbgG/B4scb96ZKjp0Vr+3c6ROqvfzRlYT0TAnAeOdbsN5LAxphi
         tGad/5GsvpaSmJ5KgDsuu7CZwEkHMm7yY1WNfKWiLf2OuaVsDbLVe/ikkibWvA6SvmyG
         Fbxy2wKBeSlrx8rLHYemELFV4oMMXWESfw7xMHz0skazpptz3unUS7s9eeWPkcdJrVil
         TY8ut9eYNyxHAptDe9tfR9mddXIXfV1Jh1qEDXoDVbkDaE0/7HOJ/ILyOvydob14Fb97
         04lrSM1hhV6GfRxXNb7e8LsK4ZW8bq0riLugTLPBNohIipIy8J3EQEMSs+gpbS5ZWERc
         6LBA==
X-Gm-Message-State: AOAM531V25566MliP3q2HyzMQ8rKyiRMr7LEhDCsAR5Yk/2iboZIi5Qi
	+GlIkaICZJsj7+8jCsd44MIF495hbroDBvpiMFo=
X-Google-Smtp-Source: ABdhPJxGmCYzJBZLmIGOpZTii3qhVZS/UjQ347gpP4I3RNwsiLRMLeI2wU1By8KoQvhjb+bWUQKIL+tfaVqlsQt2jVQ=
X-Received: by 2002:a67:403:: with SMTP id 3mr21309305vse.54.1604522314753;
 Wed, 04 Nov 2020 12:38:34 -0800 (PST)
MIME-Version: 1.0
References: <CAFVJ0t4U0PWpKK4-X0Tpim6Ee6yCcrJbBi_1b54KBrjwbKcOfg@mail.gmail.com>
 <CANNYZj8MKQDX-3PbThzoPOf5JE+Kq+BmcUdbxs87HOBmCWi_zg@mail.gmail.com> <CAFVJ0t7Du9yPskG8Eef1HB5zUG+MwXtOBv66DC9p4DL1vir5yg@mail.gmail.com>
In-Reply-To: <CAFVJ0t7Du9yPskG8Eef1HB5zUG+MwXtOBv66DC9p4DL1vir5yg@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 4 Nov 2020 21:38:23 +0100
Message-ID: <CANNYZj-UaKnGYp8OMct4SJs2-jc8ZjFZM_Z2zBbOK4OqkCg6QQ@mail.gmail.com>
Subject: Re: [yocto] Removing postinst script in bbappend
To: Jim Krantz <krantzj84@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009ae8c605b34df6e6"

--0000000000009ae8c605b34df6e6
Content-Type: text/plain; charset="UTF-8"

The right way would be to fix the recipe I think? What is doing that has to
happen only on target and can't be done during do_rootfs?

Alex

On Wed, 4 Nov 2020 at 21:19, Jim Krantz <krantzj84@gmail.com> wrote:

> The recipe is apparmor, layer is meta-security.
>
> We're currently using the 2.x recipe, however the 3.x recipe appears to
> have the same function.
>
>
> On Wed, Nov 4, 2020 at 2:32 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> What recipe is it and what layer is it in?
>>
>> Alex
>>
>> On Wed 4. Nov 2020 at 19.04, Jim Krantz <krantzj84@gmail.com> wrote:
>>
>>> Hey folks,
>>>
>>> We're doing builds using Yocto 3.1 and are attempting to revise a recipe
>>> from another layer we don't control. The recipe we want to make alterations
>>> to is from an open source project, so we'd prefer to not make changes
>>> directly to the recipe, rather change it using a bbappend.
>>>
>>> The issue we're having is that the recipe has a pkg_postinst_ontarget
>>> function defined, but we have our filesystem set to read only via
>>> 'read-only-rootfs'. The result is a build time failure:
>>>
>>> 'The following packages could not be configured offline and rootfs is
>>> read-only: ['<package>']
>>>
>>> Looking at the Yocto code, it appears that this error is detected by
>>> checking for the presence of any files in the image rootfs/rpm-postinsts
>>> directory. If something is found and the rootfs is read only, then the
>>> error above is thrown and the build fails.
>>>
>>> We also looked at emit_pkgdata() and noted it was checking for the
>>> pkg_postinst/pkg_postinst_ontarget globals, so we attempted to add a task
>>> that set those to 'None', hoping it would result in the conditional checks
>>> for these resolving to 'false', however this did not seem to work either.
>>> I'm somewhat new to Yocto, so may have misunderstood how this code is
>>> applied.
>>>
>>> We've also tried simpler solutions, like implementing a blank
>>> pkg_postinst_ontarget_{PN} and using deltask, however this also failed.
>>>
>>> So the question I have is: is there a way for us to remove the
>>> pkg_postinst_ontarget_{PN} from the recipe in the original layer using a
>>> bbappend file in our layer, so that the read only error is not thrown?
>>>
>>> Thanks!
>>>
>>> 
>>>
>>>

--0000000000009ae8c605b34df6e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The right way would be to fix the recipe I think? Wha=
t is doing that has to happen only on target and can&#39;t be done during d=
o_rootfs?</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 4 Nov 2020 at 21:1=
9, Jim Krantz &lt;<a href=3D"mailto:krantzj84@gmail.com">krantzj84@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">The recipe is apparmor, layer is meta-security.=C2=A0<div=
><br></div><div>We&#39;re currently using the 2.x recipe, however the 3.x r=
ecipe appears to have the same function.</div><div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4,=
 2020 at 2:32 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail=
.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">What recipe=
 is it and what layer is it in?</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed 4. Nov 2020 at 19.04, Jim Krantz &lt;<a href=3D"=
mailto:krantzj84@gmail.com" target=3D"_blank">krantzj84@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hey folks,<div><br></div><div>We&#39;re doing builds using Yocto =
3.1 and are attempting to revise a recipe from another layer we don&#39;t c=
ontrol. The recipe we want to make alterations to is from an open source pr=
oject, so we&#39;d prefer to not make changes directly to the recipe, rathe=
r change it using a bbappend.=C2=A0</div><div><br></div><div>The issue we&#=
39;re having is that the recipe has a pkg_postinst_ontarget function define=
d, but we have our filesystem set to read only via &#39;read-only-rootfs&#3=
9;. The result is a build time failure:</div><div><br></div><div>&#39;The f=
ollowing packages could not be configured offline and rootfs is read-only: =
[&#39;&lt;package&gt;&#39;]</div><div><br></div><div>Looking at the Yocto c=
ode, it appears that this error is detected by checking for the presence of=
 any files in the image rootfs/rpm-postinsts directory. If something is fou=
nd and the rootfs is read only, then the error above is thrown and the buil=
d fails.=C2=A0</div><div><br></div><div>We also looked at emit_pkgdata() an=
d noted it was checking for the pkg_postinst/pkg_postinst_ontarget globals,=
 so we attempted to add a task that set those to &#39;None&#39;, hoping it =
would result in the conditional checks for these resolving to &#39;false&#3=
9;, however this did not seem to work either. I&#39;m somewhat new to Yocto=
, so may have misunderstood how this code is applied.</div><div><br></div><=
div>We&#39;ve also tried simpler solutions, like implementing a blank pkg_p=
ostinst_ontarget_{PN} and using deltask, however this also failed.=C2=A0</d=
iv><div><br></div><div>So the question I have is: is there a way for us to =
remove the pkg_postinst_ontarget_{PN} from the recipe in the original layer=
 using a bbappend file in our layer, so that the read only error is not thr=
own?</div><div><br></div><div>Thanks!</div></div>
<br>
<br>
<br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--0000000000009ae8c605b34df6e6--
