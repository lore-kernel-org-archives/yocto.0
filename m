Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.19161.1604524443403746417
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 13:14:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=axMn2HWX;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: krantzj84@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id r8so9713qtp.13
        for <yocto@lists.yoctoproject.org>; Wed, 04 Nov 2020 13:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3NYvyuqAdrU4XD+0dU27kwk9lfYWfnOWGfu1e18Ke44=;
        b=axMn2HWXwpnbvnKpKg/sdis6r1rKZfW+9boRhX44jrFjgdKXUgL5Kj4N3GHk8S9SpP
         vPaF3nGvH7ME4eilR+SEiYIxvcVja5U5Sx2LTXpaCLtT5CJAz1uQo8FbYrHJymjXvm0o
         ekFFA2zflKry1zWYk4S8d8Km3O3zgxfhkh2zIRSYpvk267cDYLWsXZzWfvNL7svjP8pX
         vjrqMte0obpjCRNV0gb8ciwDeKnOGfISoPXggRZqTpr3JYciYvWeBOKY/SBWGI/JlDXh
         B+iyxnJ+LX4OQOv/o+EurwPmxYAH/hGWq1Wl5WP8N4QRDHI+yb2nAtWxaKEDg6x6H3e9
         ZcRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3NYvyuqAdrU4XD+0dU27kwk9lfYWfnOWGfu1e18Ke44=;
        b=CmoyYrvb8e0/TTrsPqEh5jvd3dyrqjdelfeUweheEFu1TAICAhKlI8jg4uFlUm6xzf
         JSNCr9fur/YnLqpbLxo64QGa1DjMRcYNRen3Dg7oeZnq9Sskw+PEjIYmxe/wW9jW6243
         NgQdzIzMXF6sTvqTfL3fVCnqiz/JS0wajaJg5i+w9315AZrXEE+Uhkt8FDfu/r56lL2r
         quQqKcZcywVvchlVAfAIGiizJEIbqDi0Vc/D77iuV5YGSV2MfoVEizqc8WH/XQwxAX0y
         j+OUxQQN2N2p4M8eIUgmS+37irXdlziXk41LeGmzRhe0eh3kIa+Otyv3vs/aTaH8c9lU
         VVJQ==
X-Gm-Message-State: AOAM533KW5bFVfq9JZ50gd6aEIYUyoTZA3dU2nQe/Xgj8VQg097Joc9F
	9BMWFJZZ+1YSbyCBfylRjIfqeGPXRJmhriUxgYo=
X-Google-Smtp-Source: ABdhPJwoMwBig6k5BhYgXLAksMXudRtDkLwb1TgXAEVc8At+A6EDqqoprptNIsvJH0G263TgNepWl13yFtP0FpufFzk=
X-Received: by 2002:ac8:4b45:: with SMTP id e5mr18214018qts.367.1604524442549;
 Wed, 04 Nov 2020 13:14:02 -0800 (PST)
MIME-Version: 1.0
References: <CAFVJ0t4U0PWpKK4-X0Tpim6Ee6yCcrJbBi_1b54KBrjwbKcOfg@mail.gmail.com>
 <CANNYZj8MKQDX-3PbThzoPOf5JE+Kq+BmcUdbxs87HOBmCWi_zg@mail.gmail.com>
 <CAFVJ0t7Du9yPskG8Eef1HB5zUG+MwXtOBv66DC9p4DL1vir5yg@mail.gmail.com> <CANNYZj-UaKnGYp8OMct4SJs2-jc8ZjFZM_Z2zBbOK4OqkCg6QQ@mail.gmail.com>
In-Reply-To: <CANNYZj-UaKnGYp8OMct4SJs2-jc8ZjFZM_Z2zBbOK4OqkCg6QQ@mail.gmail.com>
From: "Jim Krantz" <krantzj84@gmail.com>
Date: Wed, 4 Nov 2020 16:13:50 -0500
Message-ID: <CAFVJ0t6tVNkz6+YAzHfnQ=S2+jzmJdEE0yj907CXJVSB8GZODQ@mail.gmail.com>
Subject: Re: [yocto] Removing postinst script in bbappend
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006e822505b34e75c7"

--0000000000006e822505b34e75c7
Content-Type: text/plain; charset="UTF-8"

It's a simple operation. They check for the existence of
/etc/apparmor.d/cache. If it doesn't exist, then they create it as a
directory.

I'm not sure why it can't be moved elsewhere, as we're not the maintainers.
I could reach out and find out, though.

On Wed, Nov 4, 2020 at 3:38 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> The right way would be to fix the recipe I think? What is doing that has
> to happen only on target and can't be done during do_rootfs?
>
> Alex
>
> On Wed, 4 Nov 2020 at 21:19, Jim Krantz <krantzj84@gmail.com> wrote:
>
>> The recipe is apparmor, layer is meta-security.
>>
>> We're currently using the 2.x recipe, however the 3.x recipe appears to
>> have the same function.
>>
>>
>> On Wed, Nov 4, 2020 at 2:32 PM Alexander Kanavin <alex.kanavin@gmail.com>
>> wrote:
>>
>>> What recipe is it and what layer is it in?
>>>
>>> Alex
>>>
>>> On Wed 4. Nov 2020 at 19.04, Jim Krantz <krantzj84@gmail.com> wrote:
>>>
>>>> Hey folks,
>>>>
>>>> We're doing builds using Yocto 3.1 and are attempting to revise a
>>>> recipe from another layer we don't control. The recipe we want to make
>>>> alterations to is from an open source project, so we'd prefer to not make
>>>> changes directly to the recipe, rather change it using a bbappend.
>>>>
>>>> The issue we're having is that the recipe has a pkg_postinst_ontarget
>>>> function defined, but we have our filesystem set to read only via
>>>> 'read-only-rootfs'. The result is a build time failure:
>>>>
>>>> 'The following packages could not be configured offline and rootfs is
>>>> read-only: ['<package>']
>>>>
>>>> Looking at the Yocto code, it appears that this error is detected by
>>>> checking for the presence of any files in the image rootfs/rpm-postinsts
>>>> directory. If something is found and the rootfs is read only, then the
>>>> error above is thrown and the build fails.
>>>>
>>>> We also looked at emit_pkgdata() and noted it was checking for the
>>>> pkg_postinst/pkg_postinst_ontarget globals, so we attempted to add a task
>>>> that set those to 'None', hoping it would result in the conditional checks
>>>> for these resolving to 'false', however this did not seem to work either.
>>>> I'm somewhat new to Yocto, so may have misunderstood how this code is
>>>> applied.
>>>>
>>>> We've also tried simpler solutions, like implementing a blank
>>>> pkg_postinst_ontarget_{PN} and using deltask, however this also failed.
>>>>
>>>> So the question I have is: is there a way for us to remove the
>>>> pkg_postinst_ontarget_{PN} from the recipe in the original layer using a
>>>> bbappend file in our layer, so that the read only error is not thrown?
>>>>
>>>> Thanks!
>>>>
>>>> 
>>>>
>>>>

--0000000000006e822505b34e75c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s a simple operation. They check for the existence =
of /etc/apparmor.d/cache. If it doesn&#39;t exist, then they create it as a=
 directory.=C2=A0<div><br></div><div>I&#39;m not sure why it can&#39;t be m=
oved elsewhere, as we&#39;re not the maintainers. I could reach out and fin=
d out, though.=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Nov 4, 2020 at 3:38 PM Alexander Kanavin =
&lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div>The right way would be to fix the recipe I think? What is do=
ing that has to happen only on target and can&#39;t be done during do_rootf=
s?</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 4 Nov 2020 at 21:19, Jim =
Krantz &lt;<a href=3D"mailto:krantzj84@gmail.com" target=3D"_blank">krantzj=
84@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">The recipe is apparmor, layer is meta-security=
.=C2=A0<div><br></div><div>We&#39;re currently using the 2.x recipe, howeve=
r the 3.x recipe appears to have the same function.</div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Nov 4, 2020 at 2:32 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.ka=
navin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">=
What recipe is it and what layer is it in?</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed 4. Nov 2020 at 19.04, Jim Krantz &lt;=
<a href=3D"mailto:krantzj84@gmail.com" target=3D"_blank">krantzj84@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hey folks,<div><br></div><div>We&#39;re doing builds usin=
g Yocto 3.1 and are attempting to revise a recipe from another layer we don=
&#39;t control. The recipe we want to make alterations to is from an open s=
ource project, so we&#39;d prefer to not make changes directly to the recip=
e, rather change it using a bbappend.=C2=A0</div><div><br></div><div>The is=
sue we&#39;re having is that the recipe has a pkg_postinst_ontarget functio=
n defined, but we have our filesystem set to read only via &#39;read-only-r=
ootfs&#39;. The result is a build time failure:</div><div><br></div><div>&#=
39;The following packages could not be configured offline and rootfs is rea=
d-only: [&#39;&lt;package&gt;&#39;]</div><div><br></div><div>Looking at the=
 Yocto code, it appears that this error is detected by checking for the pre=
sence of any files in the image rootfs/rpm-postinsts directory. If somethin=
g is found and the rootfs is read only, then the error above is thrown and =
the build fails.=C2=A0</div><div><br></div><div>We also looked at emit_pkgd=
ata() and noted it was checking for the pkg_postinst/pkg_postinst_ontarget =
globals, so we attempted to add a task that set those to &#39;None&#39;, ho=
ping it would result in the conditional checks for these resolving to &#39;=
false&#39;, however this did not seem to work either. I&#39;m somewhat new =
to Yocto, so may have misunderstood how this code is applied.</div><div><br=
></div><div>We&#39;ve also tried simpler solutions, like implementing a bla=
nk pkg_postinst_ontarget_{PN} and using deltask, however this also failed.=
=C2=A0</div><div><br></div><div>So the question I have is: is there a way =
for us to remove the pkg_postinst_ontarget_{PN} from the recipe in the orig=
inal layer using a bbappend file in our layer, so that the read only error =
is not thrown?</div><div><br></div><div>Thanks!</div></div>
<br>
<br>
<br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000006e822505b34e75c7--
