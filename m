Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web10.1207.1590619348149460023
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 15:42:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WHJkLcYd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.45, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-ot1-f45.google.com with SMTP id f18so895518otq.11
        for <yocto@lists.yoctoproject.org>; Wed, 27 May 2020 15:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=1ESYUFPYK03O/MY2T/nx2PiVlR4kWuEnqsiVVPrDMPQ=;
        b=WHJkLcYdyJ6d4fnwY9NrZoIyHuboOZb0shUHMJMof8uSkV1/T4XIk9B1Ogvz1PXBmd
         gpF/Yw/dOK/0YxjYLFa755m9lBrI+kZ/ZyJ1oH7VGKmarVJkrNitHUWUP0Pnk1G08dXT
         Xw3VSfricC0fYozQAeyfvFsIiaaQrTvaKhooE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=1ESYUFPYK03O/MY2T/nx2PiVlR4kWuEnqsiVVPrDMPQ=;
        b=UxVZtovXCc0McjOhyUzoNH495ZczjpY6hiEl/IWJw4xx58rmXhcVU8ClaxT7v2cpao
         tjc2LwQeLcqzNen0LlY1eM0fLnhr1SnJv/efSINQ1XCfWlu0UvNbMYXaR0iFTMpr0XPk
         CwdMcRRowi6AJLr1WBZYLuJR6itCbJkDlsLGQsRQO9uFckfUMXa7ymK/OVjBtXXwg7+Y
         2SWFH0zk5QWyAEetkCgDZj39iLEp0X0JFE6Q1won2HnuvWqTiUiGqazM3KP3h4JcQ0u2
         M/3uFgDrn4LEr0wfCpCVT4DlMgPzTora5/Esoc7VbZZOlkegdgAnuo75E6lgNE0fp823
         1WLg==
X-Gm-Message-State: AOAM532lZ6oY+KdKYxgKW1PAtBbSaAJRP0r/LOVc+KTwaT4z2hZtpyzf
	BFCkZS4/VAA9Wh/DZLozGpH/prQ63YsuasyMbzphrA==
X-Google-Smtp-Source: ABdhPJzNodBLAkjoL5vC+4LSKHxbFUss+nJ9vKWkcpSsOqntWzEmMncCYicZNum9pMAqjrxBKJSfoPA8c+i1/Vv/akg=
X-Received: by 2002:a9d:7d15:: with SMTP id v21mr257434otn.70.1590619347258;
 Wed, 27 May 2020 15:42:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
 <615783cf129245af8973e3376b06f3bc@ti.com> <952758c461a1846f5069d1dfe6ccb6ee89c3f057.camel@linuxfoundation.org>
 <e3383496-e197-44a1-cb0e-28b043b0298a@ti.com>
In-Reply-To: <e3383496-e197-44a1-cb0e-28b043b0298a@ti.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Wed, 27 May 2020 15:42:16 -0700
Message-ID: <CADfgfob_1jRuoUSdU20ZfpkZKQKzDaH2x2aetHyStRET1ESrug@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
To: William Mills <wmills@ti.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002aa40c05a6a8ed4c"

--0000000000002aa40c05a6a8ed4c
Content-Type: text/plain; charset="UTF-8"

I've rebuilt the fancyindex module and enabled it. The full filenames are
displayed now. The module is disabled automatically when new versions of
EPEL are released. Hopefully the change in html output doesn't break any
script you've started writing.

I found and closed a few old
<https://bugzilla.yoctoproject.org/show_bug.cgi?id=12416>bugs
<https://bugzilla.yoctoproject.org/show_bug.cgi?id=11249> about this. I
think the issue has been fixed and returned a few times since these bugs
were filed.




On Wed, May 27, 2020 at 2:53 PM William Mills via lists.yoctoproject.org
<wmills=ti.com@lists.yoctoproject.org> wrote:

>
>
> On 5/27/20 4:48 PM, Richard Purdie wrote:
> > Hi Bill,
> >
> > On Wed, 2020-05-27 at 12:31 +0000, Mills, William wrote:
> >> In a script, how would I download all the files in this dir:
> >>
> >>
> https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2/machines/beaglebone-yocto/
> >>
> >> I see no global md5sum (or sha256sum etc) file in the tree anywhere.
> >>
> >> The names are cut off in the default html list format so screen
> >> scrapping won't work.  Is there an automated way to request a better
> >> format?  WebDav? Am I missing something obvious?
> >
> > If you look at the raw html it looks like:
> >
> > <a
> href="am335x-bone--5.0.13%2Bgit0%2B7f6e97c357_f990fd0ce1-r0.2-beaglebone-yocto-20200526225701.dtb">am335x-bone--5.0.13+git0+7f6e97c357_f990fd0ce1-..&gt;</a>
> 27-May-2020 07:00               56237
> >
> > so the href is correct and its only the displayed url that is
> > shortened. That is why you can click on them to get the artefacts and
> > it is 'just' a display issue. It also means any script can pull the
> > correct urls the same way.
> >
>
> Of course.  That _was_ obvious.  Trying to do too many things at the
> same time.
>
> Still it would be nice to drop a sha256sums file in the base of the
> tree.  I would feel much happier coding to that than the html scrapping.
> But I will start with the html.
>
>
> Thanks.
> Bill
>
> > I think Michael has tweaked the line lengths in the past but it keeps
> > getting reset to distro defaults as the machine is upgraded. He knows
> > about it and will look at sorting that again.
> >
> > Cheers,
> >
> > Richard
> >
> >
> >
> 
>


-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000002aa40c05a6a8ed4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve rebuilt the fancyindex module and enabled it. The=
 full filenames are displayed now. The module is disabled automatically whe=
n new versions of EPEL are released. Hopefully the change in html output do=
esn&#39;t break any script you&#39;ve started writing.<div><br></div><div><=
div>I found and closed a few=C2=A0<a href=3D"https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D12416">old </a><a href=3D"https://bugzilla.yoctoproje=
ct.org/show_bug.cgi?id=3D11249">bugs</a> about this. I think the issue has =
been fixed and returned a few times since these=C2=A0bugs were filed.</div>=
<div><br><div><br></div><div><br></div></div></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 27, 2020 at =
2:53 PM William Mills via <a href=3D"http://lists.yoctoproject.org">lists.y=
octoproject.org</a> &lt;wmills=3D<a href=3D"mailto:ti.com@lists.yoctoprojec=
t.org">ti.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><br>
<br>
On 5/27/20 4:48 PM, Richard Purdie wrote:<br>
&gt; Hi Bill,<br>
&gt; <br>
&gt; On Wed, 2020-05-27 at 12:31 +0000, Mills, William wrote:<br>
&gt;&gt; In a script, how would I download all the files in this dir:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.=
rc2/machines/beaglebone-yocto/" rel=3D"noreferrer" target=3D"_blank">https:=
//autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2/machines/beaglebone-yoc=
to/</a><br>
&gt;&gt;<br>
&gt;&gt; I see no global md5sum (or sha256sum etc) file in the tree anywhe=
re.<br>
&gt;&gt;<br>
&gt;&gt; The names are cut off in the default html list format so screen<b=
r>
&gt;&gt; scrapping won&#39;t work.=C2=A0 Is there an automated way to requ=
est a better<br>
&gt;&gt; format?=C2=A0 WebDav? Am I missing something obvious?<br>
&gt; <br>
&gt; If you look at the raw html it looks like:<br>
&gt; <br>
&gt; &lt;a href=3D&quot;am335x-bone--5.0.13%2Bgit0%2B7f6e97c357_f990fd0ce1=
-r0.2-beaglebone-yocto-20200526225701.dtb&quot;&gt;am335x-bone--5.0.13+git0=
+7f6e97c357_f990fd0ce1-..&amp;gt;&lt;/a&gt; 27-May-2020 07:00=C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A056237<br>
&gt; <br>
&gt; so the href is correct and its only the displayed url that is<br>
&gt; shortened. That is why you can click on them to get the artefacts and=
<br>
&gt; it is &#39;just&#39; a display issue. It also means any script can pu=
ll the<br>
&gt; correct urls the same way.<br>
&gt; <br>
<br>
Of course.=C2=A0 That _was_ obvious.=C2=A0 Trying to do too many things at=
 the<br>
same time.<br>
<br>
Still it would be nice to drop a sha256sums file in the base of the<br>
tree.=C2=A0 I would feel much happier coding to that than the html scrappi=
ng.<br>
But I will start with the html.<br>
<br>
<br>
Thanks.<br>
Bill<br>
<br>
&gt; I think Michael has tweaked the line lengths in the past but it keeps=
<br>
&gt; getting reset to distro defaults as the machine is upgraded. He knows=
<br>
&gt; about it and will look at sorting that again.<br>
&gt; <br>
&gt; Cheers,<br>
&gt; <br>
&gt; Richard<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Fou=
ndation / Yocto Project</div><div>Systems Operations Engineer</div></div></=
div>

--0000000000002aa40c05a6a8ed4c--
