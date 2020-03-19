Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
 by mx.groups.io with SMTP id smtpd.web12.2302.1584635355810783493
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 09:29:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=L36YCkIY;
 spf=pass (domain: blade-group.com, ip: 209.85.210.54, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ot1-f54.google.com with SMTP id r2so2996156otn.6
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 09:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bftlB12xNAOHjI7wrlsWHzjChT5viA69frPOWkW8SqE=;
        b=L36YCkIYEGyJ3ra0GoJo0p3VZwcTopRyV4q/ZaHjLb9PxzKkIXHXurA5SjWV+4+uVk
         DaPLkjGK9G1FHftIcucwDIplTajgywSPCztSmIBKvDnpnS6Z2PTsAM5ymf+ufmLjeA3n
         KpFZy/oUEhsAyO9apFLeNkiKbnLzvdD28csCjJFPrslWLSSSudbjeQ1TEwTngRl8ZRSp
         F5vwBgMtKaZ2NkPdS49AX400uAxjg1C/50t0BizlC8fbyyBZNQAuiNfspT+2Xdze/MsJ
         +c6eAWFeLDJduA6SS4b9NyTjAxB1tc5/tG8aZuzi12dma6YoqmzAMUaSxeLcBWlXgnGj
         VgJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bftlB12xNAOHjI7wrlsWHzjChT5viA69frPOWkW8SqE=;
        b=YjlzMFdPsmEZT9d4lptfivmo/zg8QkQkidP7knqKUJIBae5xvuOC5d4QRB1iNgw0hU
         rTQ6EMtEy2UL52iFrh0k1m9OEORz9QFT55XTTBtN7/eWK4U1BWAfSWtSxqfGtzRFYz6T
         PF3CYrdvOxUEOOGpCXxih8YdxK0nxxlR1aN5KnTftbEfsEFovqLz4dQ76e1Ilx7qaLLI
         v98C0w0N2Q7kTR49IwWiQNJjN7H1swb5FBey/bgMUTD3Ex4wlIDk7AXBqky7bbf6RUcL
         aLGzP2WV9+0rNATv2k5S60r0lguAdvzq9sshxHvi8w+NhrVHF/3OyOukrE98XrO1W8Vz
         1paw==
X-Gm-Message-State: ANhLgQ2cm3jmX3EHYdVSKpFzs8/aooqDUgMP+3FROHOXEcXxNOGimCBs
	aCDffl5nIdxfXvEU6bCTrIjQhBk2QY0kkzrn1hvfXw==
X-Google-Smtp-Source: ADFU+vu82T1+BEz8NphomDL8sPUAFe8BWsOjb4NXT+e48jqnsDv/z+pUwK72M9lbhFGDIHuJBSTLXyrA3yeLnGOI9uQ=
X-Received: by 2002:a05:6830:1c77:: with SMTP id s23mr3046496otg.191.1584635355090;
 Thu, 19 Mar 2020 09:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl> <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
 <20200319080514.GR104502@korppu> <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
 <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
In-Reply-To: <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Thu, 19 Mar 2020 17:29:03 +0100
Message-ID: <CA+4=imbpXksEiCtmadKaqdLR-QU4pst=Wf1_SHKtLqeZhVTpWQ@mail.gmail.com>
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Mikko Rapeli <mikko.rapeli@bmw.de>, 
	ross@burtonini.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007084a705a137ab8d"

--0000000000007084a705a137ab8d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeu. 19 mars 2020 =C3=A0 17:07, Mike Looijmans <mike.looijmans@topic.nl>=
 a
=C3=A9crit :

> On 19-03-2020 12:04, Richard Purdie via Lists.Yoctoproject.Org wrote:
> >> , fetch, configure, package and rootfs tasks.
> >
> > Sadly these tasks are much harder.
>
> It would be really great if some sort of "weight" could be attached to a
> task. This relates to memory usage.
>
> My system has 16 cores but only 8GB RAM. With both parallelization
> options to "16", I might end up with 16 compile tasks running 16 compile
> threads each, i.e. 256 running processes. In practice this doesn't
> actually happen, but the memory load gets high sometimes, so I reduce
> the TASKS to 8 at most. That has kept my system out of swap trouble for
> the time being.
>

This could be neatly handled by using the GNU-make job-server mechanism.
If bitbake itself would provide a jub-server, all make-based recipes would
automatically get their jobs properly limited.  There is a (sadly not
merged yet)
MR [1] for ninja tu gain job-server support as well, through which we
should have
a pretty good coverage of the recipes set (as a backend for cmake, meson,
and more).

[1] https://github.com/ninja-build/ninja/issues/1139

--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--0000000000007084a705a137ab8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 19 mars 2020 =C3=A0=C2=
=A017:07, Mike Looijmans &lt;<a href=3D"mailto:mike.looijmans@topic.nl">mik=
e.looijmans@topic.nl</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 19-03-2020 12:04, Richard Purdie via <a=
 href=3D"http://Lists.Yoctoproject.Org" rel=3D"noreferrer" target=3D"_blank=
">Lists.Yoctoproject.Org</a> wrote:<br>
&gt;&gt; , fetch, configure, package and rootfs tasks.<br>
&gt; <br>
&gt; Sadly these tasks are much harder.<br>
<br>
It would be really great if some sort of &quot;weight&quot; could be attach=
ed to a <br>
task. This relates to memory usage.<br>
<br>
My system has 16 cores but only 8GB RAM. With both parallelization <br>
options to &quot;16&quot;, I might end up with 16 compile tasks running 16 =
compile <br>
threads each, i.e. 256 running processes. In practice this doesn&#39;t <br>
actually happen, but the memory load gets high sometimes, so I reduce <br>
the TASKS to 8 at most. That has kept my system out of swap trouble for <br=
>
the time being.<br></blockquote><div><br></div><div>This could be neatly ha=
ndled by using the GNU-make job-server mechanism.</div><div>If bitbake itse=
lf would provide a jub-server, all make-based recipes would</div><div>autom=
atically get their jobs properly limited.=C2=A0 There is a (sadly not merge=
d yet)</div><div>MR [1] for ninja tu gain job-server support as well, throu=
gh which we should have</div><div>a pretty good coverage of the recipes set=
 (as a backend for cmake, meson, and more).<br></div><div><br></div><div>[1=
] <a href=3D"https://github.com/ninja-build/ninja/issues/1139">https://gith=
ub.com/ninja-build/ninja/issues/1139</a></div></div><br>-- <br><div dir=3D"=
ltr" class=3D"gmail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade=
-group.com" target=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shado=
w -- <a href=3D"http://shadow.tech" target=3D"_blank">http://shadow.tech</a=
><br><br></div></div>

--0000000000007084a705a137ab8d--
