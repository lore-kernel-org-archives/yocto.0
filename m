Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web09.64.1623933756206772394
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jun 2021 05:42:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=rE7Xqz2r;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.50, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f50.google.com with SMTP id d16so2860625lfn.3
        for <yocto@lists.yoctoproject.org>; Thu, 17 Jun 2021 05:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fhqW/nar0FWOy22T3kVC1jR2qVNkTkH+qLOvBa9WYy0=;
        b=rE7Xqz2rztiAOvip9f+4ms27JW2x+I9W+dLcfnsSRIZreNe9/cCA0A35yogeQiubT5
         2Px0AA49zikdV1ztxUkGcAlH3Oykqixy8aeesIbJOstuJTxJGagXmyGvx+BY2kg1xBXi
         UxMw8PMtvCQq2VXe5K05YUlZEGCkDB4wnCsjVYF2aLrvDGHM5HB0Xc26dod5Dv6PK2my
         RfXdV07czVIOqHup9RQtOSRjRMu4cntiZRbi454NcEp0vdpRm1p2UfuaKeS3Neq0Fzmf
         86+iTGSf66PFEt8CIG4yfPJdF8okLgpRCZa8Kj2RWLWzOSV2ltRyllRF+r2HIwprRj08
         I50Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fhqW/nar0FWOy22T3kVC1jR2qVNkTkH+qLOvBa9WYy0=;
        b=oLchtYUiGA3q/u6TqCw8vyPn093DEyh4XMIoyemmIRI9YlBYX69p1QuDcBGFEtfu0t
         2G/gcpRultuN8nKrb0xTSWdTM/SgfHtuAUIAl0NQ/Ydz6CQs1k+sV4t61kwFIkFVde1d
         jjxdK+UMpHMPTjvs7j1D3iUxRbTNKJvw5N1ScggjTExoC7jPmpGyKx0KVDB7ZG7phBSp
         L0psIT+K7PkTLs6eFAUEE5PGMlmvD9xDAfulwUmpy+Q62USMIGMJS3GvZ+cYKHKgQgmv
         rWUB8RB2gcXg/9zVYQpS1bP0hVlFekgVBYOYWNkGVE/wpwIVGjJ0oS4/338RnmzAZVwo
         yITw==
X-Gm-Message-State: AOAM53330+xaWCA9ZOqxTA3SroHM0bgZsWYoEhk2vmH2rQDXqBIE09I5
	PHOnzQFNxMAVxk0lY/ZI48Za4NuVRljunKK6VVnwrA==
X-Google-Smtp-Source: ABdhPJzBxoVkh1mR0SHZi4RAKYpywtkiyU69eSaG1TG18DvQCgwcO5iekpQRt9EJi1aUtg9WQNekDCNOZHLBwv54CmY=
X-Received: by 2002:ac2:528f:: with SMTP id q15mr3883872lfm.36.1623933752849;
 Thu, 17 Jun 2021 05:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAMjhiJi=bZdAF6p5v=O01_SRocSqazEoVM1hjcc3-xTXVa2tvg@mail.gmail.com>
In-Reply-To: <CAMjhiJi=bZdAF6p5v=O01_SRocSqazEoVM1hjcc3-xTXVa2tvg@mail.gmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Thu, 17 Jun 2021 14:32:43 +0200
Message-ID: <CAEt6NwpA77yWfLt6zYk1tAroF9i3rXzotp_uZFspVETHtWv7Mg@mail.gmail.com>
Subject: Re: [yocto] Use of SDK for building images?
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007a4c5b05c4f58abb"

--0000000000007a4c5b05c4f58abb
Content-Type: text/plain; charset="UTF-8"

Leon Woestenberg <leon@sidebranch.com> schrieb am Do., 17. Juni 2021, 14:17:

> Hello all,
>
> In some other build systems the generated SDK can be used to also
> generate an image. Thus the SDK allows development against the target
> sysroot using the prebuilt host and target tools, as well as
> (re)generate the target images in quick iteration cycles.
>
> What approaches are recommended with Yocto to achieve the same benefits?
>

The esdk is meant for exactly that use case.


> My need is to regenerate an initramfs as well as compose this into an
> image using WIC.
>
> I am aware of shared state, and using prebuilt toolchains, but my
> question is whether the prebuilt SDK allows to generate images?
>
> Regards,
>
> Leon.
>
> 
>
>

--0000000000007a4c5b05c4f58abb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Leon Woestenberg &lt;<a href=3D"mailto:leon@sidebranch=
.com">leon@sidebranch.com</a>&gt; schrieb am Do., 17. Juni 2021, 14:17:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">Hello all,<br>
<br>
In some other build systems the generated SDK can be used to also<br>
generate an image. Thus the SDK allows development against the target<br>
sysroot using the prebuilt host and target tools, as well as<br>
(re)generate the target images in quick iteration cycles.<br>
<br>
What approaches are recommended with Yocto to achieve the same benefits?<b=
r></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Th=
e esdk is meant for exactly that use case.</div><div dir=3D"auto"><br></div=
><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
<br>
My need is to regenerate an initramfs as well as compose this into an<br>
image using WIC.<br>
<br>
I am aware of shared state, and using prebuilt toolchains, but my<br>
question is whether the prebuilt SDK allows to generate images?<br>
<br>
Regards,<br>
<br>
Leon.<br>
<br>
<br>
<br>
</blockquote></div></div></div>

--0000000000007a4c5b05c4f58abb--
