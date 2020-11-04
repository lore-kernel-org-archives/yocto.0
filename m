Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web08.18605.1604521182207017825
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 12:19:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eNUqBlwB;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: krantzj84@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id b18so20576818qkc.9
        for <yocto@lists.yoctoproject.org>; Wed, 04 Nov 2020 12:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zM98AcGdnrUj5HeBATD8UTRMNR3uVQo9S5XN204Jbeg=;
        b=eNUqBlwBZtYrjlBAUTgJAyhbJJMZqS0bVZFfyUpemgzDJwOfJH+u7nHMae37KIxKmv
         uRg0XLcXN8Vimxvw83g+DrSsnj2FDxZw1AcZXyB3OeKYxAM1Q1Uh86D/YZNf1fHsztg2
         dzIGI3d2Pi4lIjjpneOUX/i4J9GXYMfqTbj5L6cwzRTeSZTPkuC/sIksMiW9uUCCi1IO
         zHJzP/YqDU+FFwUEOVJ+aftlr6nx6tzYx/TH9whZyS8uSmAzO3YSdKVZux/eDELH2MMw
         Qj9HWzaQfFXsM5Q+Kax+E/02MbyRgJLPzigU3HyX8dOcxRpbeRCnZCZw4VvI0ZHLXoCS
         l5IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zM98AcGdnrUj5HeBATD8UTRMNR3uVQo9S5XN204Jbeg=;
        b=lJHmFUcbS/YdDx9m5lMqzArk1ZQzkdWedauUq4zI4cc+3ScInn5rJjlZBcEFlLH27O
         +bJj4VdN+z98JO4Wt5VmGIfujWbk76OKAF1kubdBmlcx23JK+cYlDxRN90CCMV1VbPsi
         0PgPWPTrwExGr7NZmxhT51CkF0ZFPmd2kWuwRTNBYLcuWWm4yRaVH201zj1Mli4n6oFL
         ZFz6ujJ2MCpPcOf5Ur6lJG5PN90i05EkWWbZb8rmRAmp9W3vdvEOz9PrLAePbQ+I5WjJ
         M8FIuHy6siUWo0HOoT9N0NuQIZyvzYjzGfpXgqmapf5WU6xYfFEhzBt52WmFm34Ho9bO
         OWag==
X-Gm-Message-State: AOAM533DWMpPe6PoI127bJOFbaM1jQ4chMIS8UaD9+FPN1DlPiFfUMYd
	MonAgn2MlpW2ze9Y9ak3NG0gpkV3JuCPJl1aLDc=
X-Google-Smtp-Source: ABdhPJyyjeDRdc4ZLAzuFxO/AuGPbSsvlVO43VGh1Ayg/nSxJ+vKJd1SeCNclQjRGt1tsTkeRBVNDm5q7PS/UwTDa10=
X-Received: by 2002:a37:aa93:: with SMTP id t141mr1558654qke.400.1604521181423;
 Wed, 04 Nov 2020 12:19:41 -0800 (PST)
MIME-Version: 1.0
References: <CAFVJ0t4U0PWpKK4-X0Tpim6Ee6yCcrJbBi_1b54KBrjwbKcOfg@mail.gmail.com>
 <CANNYZj8MKQDX-3PbThzoPOf5JE+Kq+BmcUdbxs87HOBmCWi_zg@mail.gmail.com>
In-Reply-To: <CANNYZj8MKQDX-3PbThzoPOf5JE+Kq+BmcUdbxs87HOBmCWi_zg@mail.gmail.com>
From: "Jim Krantz" <krantzj84@gmail.com>
Date: Wed, 4 Nov 2020 15:19:29 -0500
Message-ID: <CAFVJ0t7Du9yPskG8Eef1HB5zUG+MwXtOBv66DC9p4DL1vir5yg@mail.gmail.com>
Subject: Re: [yocto] Removing postinst script in bbappend
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000daae105b34db34a"

--0000000000000daae105b34db34a
Content-Type: text/plain; charset="UTF-8"

The recipe is apparmor, layer is meta-security.

We're currently using the 2.x recipe, however the 3.x recipe appears to
have the same function.


On Wed, Nov 4, 2020 at 2:32 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> What recipe is it and what layer is it in?
>
> Alex
>
> On Wed 4. Nov 2020 at 19.04, Jim Krantz <krantzj84@gmail.com> wrote:
>
>> Hey folks,
>>
>> We're doing builds using Yocto 3.1 and are attempting to revise a recipe
>> from another layer we don't control. The recipe we want to make alterations
>> to is from an open source project, so we'd prefer to not make changes
>> directly to the recipe, rather change it using a bbappend.
>>
>> The issue we're having is that the recipe has a pkg_postinst_ontarget
>> function defined, but we have our filesystem set to read only via
>> 'read-only-rootfs'. The result is a build time failure:
>>
>> 'The following packages could not be configured offline and rootfs is
>> read-only: ['<package>']
>>
>> Looking at the Yocto code, it appears that this error is detected by
>> checking for the presence of any files in the image rootfs/rpm-postinsts
>> directory. If something is found and the rootfs is read only, then the
>> error above is thrown and the build fails.
>>
>> We also looked at emit_pkgdata() and noted it was checking for the
>> pkg_postinst/pkg_postinst_ontarget globals, so we attempted to add a task
>> that set those to 'None', hoping it would result in the conditional checks
>> for these resolving to 'false', however this did not seem to work either.
>> I'm somewhat new to Yocto, so may have misunderstood how this code is
>> applied.
>>
>> We've also tried simpler solutions, like implementing a blank
>> pkg_postinst_ontarget_{PN} and using deltask, however this also failed.
>>
>> So the question I have is: is there a way for us to remove the
>> pkg_postinst_ontarget_{PN} from the recipe in the original layer using a
>> bbappend file in our layer, so that the read only error is not thrown?
>>
>> Thanks!
>>
>> 
>>
>>

--0000000000000daae105b34db34a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The recipe is apparmor, layer is meta-security.=C2=A0<div>=
<br></div><div>We&#39;re currently using the 2.x recipe, however the 3.x re=
cipe appears to have the same function.</div><div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4, =
2020 at 2:32 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.=
com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"auto">What recipe is it and what lay=
er is it in?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed 4. Nov 2020 at 19.04, Jim Krantz &lt;<a href=3D"mailto:krantzj84@gmail=
.com" target=3D"_blank">krantzj84@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hey folks,<div>=
<br></div><div>We&#39;re doing builds using Yocto 3.1 and are attempting to=
 revise a recipe from another layer we don&#39;t control. The recipe we wan=
t to make alterations to is from an open source project, so we&#39;d prefer=
 to not make changes directly to the recipe, rather change it using a bbapp=
end.=C2=A0</div><div><br></div><div>The issue we&#39;re having is that the =
recipe has a pkg_postinst_ontarget function defined, but we have our filesy=
stem set to read only via &#39;read-only-rootfs&#39;. The result is a build=
 time failure:</div><div><br></div><div>&#39;The following packages could n=
ot be configured offline and rootfs is read-only: [&#39;&lt;package&gt;&#39=
;]</div><div><br></div><div>Looking at the Yocto code, it appears that this=
 error is detected by checking for the presence of any files in the image r=
ootfs/rpm-postinsts directory. If something is found and the rootfs is read=
 only, then the error above is thrown and the build fails.=C2=A0</div><div>=
<br></div><div>We also looked at emit_pkgdata() and noted it was checking f=
or the pkg_postinst/pkg_postinst_ontarget globals, so we attempted to add a=
 task that set those to &#39;None&#39;, hoping it would result in the condi=
tional checks for these resolving to &#39;false&#39;, however this did not =
seem to work either. I&#39;m somewhat new to Yocto, so may have misundersto=
od how this code is applied.</div><div><br></div><div>We&#39;ve also tried =
simpler solutions, like implementing a blank pkg_postinst_ontarget_{PN} and=
 using deltask, however this also failed.=C2=A0</div><div><br></div><div>So=
 the question I have is: is there a way for us to remove the pkg_postinst_o=
ntarget_{PN} from the recipe in the original layer using a bbappend file in=
 our layer, so that the read only error is not thrown?</div><div><br></div>=
<div>Thanks!</div></div>
<br>
<br>
<br>
</blockquote></div></div>
</blockquote></div>

--0000000000000daae105b34db34a--
