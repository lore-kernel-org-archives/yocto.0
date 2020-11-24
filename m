Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web12.49993.1606212074798837544
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 02:01:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SKDBDlYo;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: dorindabassey@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id i18so21323878ioa.3
        for <yocto@lists.yoctoproject.org>; Tue, 24 Nov 2020 02:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=QqCUEzAwjifLVr3oq3gRIxk/iSco5QXFcOisIp5DXHg=;
        b=SKDBDlYoOQxHZh38iFeq4pJz6vNdbwSx2vsvttL4mriFGaXvar1wYpLjlzmxIo9pTp
         bVd5/wrd0yx+pA1F9KGNq1sdTdi//SgXl4POWO0r68UuXaVgy85d7WwCfiu43RikfTVr
         MKH32a6HKkRtsR9pOgNapn/M8bHu3YjlM0LAzhKX9AbkNO6QxOe2uFZEiCpo/zbCXZYk
         hwY064q01XI2SZ++DWVv8eo8DfYIWNhu00tlFOEYywtJ73uhIT8j/c/CoEFiJS/KROVB
         EBOn0I8Q53qQreSZw8HI9+SBpx1OWuHNwSf5DDhY8xWeYL9O4ad+clD7Z2ScfRep9Wst
         ZhIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=QqCUEzAwjifLVr3oq3gRIxk/iSco5QXFcOisIp5DXHg=;
        b=q50IKP6wPX8uWkXr/ITy2WKHVG0CjdSulp0brYSAEkPQx7pcTWCUdet0PGraD4Ou2P
         9xY3ig6Jm46dDpVwQurFGjTUUR50adIs0APs5HKiee/tIe6yLTWFL+/XR9cCOsG3/2q2
         anDR4btI+Kk7vKKN/W7mXahJAXf+C6dxiBdBdK/cTLcmuR3DJYfv0AdNbhP53fWrr0Rk
         iRB2dgfP0ANzgZZ+UR3cLKSs4E4rjeF0EUhEQ+L6AYNBfvPocaGG9YJ9ytOORoJMPsq1
         cJLuXL+51bt4v+3J+tGDO8VXfMbhBHryJ00dIwkBaB7zvQQd8rvXgB+LmajbuPRf6H+O
         yg7Q==
X-Gm-Message-State: AOAM530jP4p/6cVOBnVIJA04QoG7akVbBwimt2C9Y9UTs3KhlZdUmzBF
	avSY52cjbX1bfnIF48sx0fnEUQp+/OJ8b2D7F3I=
X-Google-Smtp-Source: ABdhPJyLqb8PQ8cNgXL0GMzfsdvWcfOEocxoArNsnbTCxxfg6ovnEnqTQi0ZoHRMVXMybbhjNm6g3+o/k73a+F8/kqQ=
X-Received: by 2002:a5e:c810:: with SMTP id y16mr3400061iol.208.1606212074069;
 Tue, 24 Nov 2020 02:01:14 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a92:d1cd:0:0:0:0:0 with HTTP; Tue, 24 Nov 2020 02:01:13
 -0800 (PST)
Received: by 2002:a92:d1cd:0:0:0:0:0 with HTTP; Tue, 24 Nov 2020 02:01:13
 -0800 (PST)
In-Reply-To: <CAP71WjwDVBRCKu8MUxYtTWCvt0XFyqwfvUyoSECmQ8nm2Ydz9Q@mail.gmail.com>
References: <CAP71WjwDVBRCKu8MUxYtTWCvt0XFyqwfvUyoSECmQ8nm2Ydz9Q@mail.gmail.com>
From: "Dorinda" <dorindabassey@gmail.com>
Date: Tue, 24 Nov 2020 05:01:13 -0500
Message-ID: <CAJSnhztZRus=nBrSAWqtwGuR+J2uaATepR50VHSA-ZtpxW2hxw@mail.gmail.com>
Subject: Re: Yocto Project Outreachy interns
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: bluelightning@bluelightning.org, timothy.t.orling@linux.intel.com, 
	ross@burtonini.com, yocto@lists.yoctoproject.org, idadelm@gmail.com
Content-Type: multipart/alternative; boundary="0000000000001be69005b4d7642a"

--0000000000001be69005b4d7642a
Content-Type: text/plain; charset="UTF-8"

Thank you all,
I appreciate the opportunity given to me to intern with the Yocto Project.
I am excited about this internship and I look forward to working with you
on my project.

Sincerely,
Dorinda.

On Nov 24, 2020 08:47, "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
wrote:

> Dear all,
>
> We are very excited to be part of the Outreachy program again for the
> December round this year, let me congratulate Ida and Dorinda for
> being accepted as interns for the next three months.
>
> I want to give a warm thank you to our mentors as well, Paul, Ross,
> Tim. Without mentors there isn't much we can do, so this is very much
> appreciated. A big thank you to Microsoft and Arm who are sponsoring
> the internships.
>
> Ida and Dorinda will engage on the following topics:
>
> == Enhance Yocto Project License Tracing
> The Yocto Project build system is typically used to build customised
> Linux images from source for embedded applications. Along with the
> image, a manifest of packages and their corresponding licenses is
> prepared, however the accuracy of the license information in the
> manifest is dependent on the accuracy of the metadata we have for each
> package (i.e. what is in the recipe file). As part of the build, we
> have an internal mapping from output files to source files which is
> currently used to prepare source packages to aid in debugging, however
> with the increasing presence of SPDX headers in source files it could
> also be used to allow tracing the license of sources used in building
> a package/image to help improve our metadata and future license
> manifests.
>
> == Add support for elfutils debug info server"
> The Yocto Project build system is typically used to build customised
> Linux images from source for embedded applications. debuginfod (part
> of elfutils 0.178 onwards) is a way to share debuginfo files, which
> provide debugging symbols for gdb to enable it to debug a running
> program on a target device. Users of the Yocto Project would benefit
> from integrating support for debuginfod such that binaries in an image
> produced by the Yocto Project build system could be debugged more
> easily.
>
> Ida and Dorinda, welcome into our open source community, you can count
> on everyone's support during your internship!
>
> cheers
> nico
>

--0000000000001be69005b4d7642a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:13.696px"=
>Thank you all,</span><div dir=3D"auto" style=3D"font-family:sans-serif;fon=
t-size:13.696px">I appreciate the opportunity given to me to intern with th=
e Yocto Project. I am excited about this internship and I look forward to w=
orking with you on my project.</div><div dir=3D"auto" style=3D"font-family:=
sans-serif;font-size:13.696px"><br></div><div dir=3D"auto" style=3D"font-fa=
mily:sans-serif;font-size:13.696px">Sincerely,</div><div dir=3D"auto" style=
=3D"font-family:sans-serif;font-size:13.696px">Dorinda.</div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Nov 24, 2020 08:47, &q=
uot;Nicolas Dechesne&quot; &lt;<a href=3D"mailto:nicolas.dechesne@linaro.or=
g">nicolas.dechesne@linaro.org</a>&gt; wrote:<br type=3D"attribution"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">Dear all,<br>
<br>
We are very excited to be part of the Outreachy program again for the<br>
December round this year, let me congratulate Ida and Dorinda for<br>
being accepted as interns for the next three months.<br>
<br>
I want to give a warm thank you to our mentors as well, Paul, Ross,<br>
Tim. Without mentors there isn&#39;t much we can do, so this is very much<b=
r>
appreciated. A big thank you to Microsoft and Arm who are sponsoring<br>
the internships.<br>
<br>
Ida and Dorinda will engage on the following topics:<br>
<br>
=3D=3D Enhance Yocto Project License Tracing<br>
The Yocto Project build system is typically used to build customised<br>
Linux images from source for embedded applications. Along with the<br>
image, a manifest of packages and their corresponding licenses is<br>
prepared, however the accuracy of the license information in the<br>
manifest is dependent on the accuracy of the metadata we have for each<br>
package (i.e. what is in the recipe file). As part of the build, we<br>
have an internal mapping from output files to source files which is<br>
currently used to prepare source packages to aid in debugging, however<br>
with the increasing presence of SPDX headers in source files it could<br>
also be used to allow tracing the license of sources used in building<br>
a package/image to help improve our metadata and future license<br>
manifests.<br>
<br>
=3D=3D Add support for elfutils debug info server&quot;<br>
The Yocto Project build system is typically used to build customised<br>
Linux images from source for embedded applications. debuginfod (part<br>
of elfutils 0.178 onwards) is a way to share debuginfo files, which<br>
provide debugging symbols for gdb to enable it to debug a running<br>
program on a target device. Users of the Yocto Project would benefit<br>
from integrating support for debuginfod such that binaries in an image<br>
produced by the Yocto Project build system could be debugged more<br>
easily.<br>
<br>
Ida and Dorinda, welcome into our open source community, you can count<br>
on everyone&#39;s support during your internship!<br>
<br>
cheers<br>
nico<br>
</blockquote></div></div>

--0000000000001be69005b4d7642a--
