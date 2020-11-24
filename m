Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.49539.1606205851733255058
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 00:17:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oS3rWHRd;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: idadelm@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id q3so19871311edr.12
        for <yocto@lists.yoctoproject.org>; Tue, 24 Nov 2020 00:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=m0h15CgdHbpHXlRtJrtdAlOzKc3XFWJN/pFgwbpyU3o=;
        b=oS3rWHRd1KA1M8SUkZ5IgMtE+P7GNobrjIqc6p7kmvL6fEOwjfPSyR44ot86igLygn
         GswmJSMIYkOcFa8O4LBhfV9Zqvu5nDmF5Z6TyMK2By4B+UeOhiH6X01RP7oum3XsxQz6
         bP+0NG+O51s0c24x9f/vQP0ZsADe5iDRhzmDNS13u7QahBUJ74v058bSKSCITsVBNbUp
         UAQYD+g0u7Szm93axuQ/Tzy3ofG6gHMZawsYCWshrTYLct55wqi+mA9NE4fn3jnjrYq3
         iKkjXXELEPB2JKxHeoCZLZZUZ405ycszWSiEAc0faQQViRzH1zxK+eDamsCqSVMCoaI8
         hHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=m0h15CgdHbpHXlRtJrtdAlOzKc3XFWJN/pFgwbpyU3o=;
        b=fHvcdgwArTt1CfFNO0+ojfpi7LY6SiQdaWdDFXp6tdyUF+fBytfwjewo8Jvg5sUFWl
         4ID2akqZC2E4YLbpIlGhS6KUjIbTsfOulOeo7bvUO+BcByqiFXeISBqdQqirYESabZTB
         l2as01PBsaJkrIKb6fe/vLqe8hsaP+wPhrzMFCEypGMaGAdAGvpo9XvxcVc1r2DBTbFG
         4ystpZCROGwRqvm2QzTD83svHf+BAmZLuyKXUWwW182Uy2TfG5m+dBj+9ijMJ+g6lU+a
         n1Q3R1G1fbJEC5zdS64kMguQswBq9E3LmM/eUmSkhpsn2erVd5uh/QWNOCPc1F2tEcDP
         7E9w==
X-Gm-Message-State: AOAM531KhEktqx8oPIPMZ63wZBAhmtF8Qoygt7gqksRC4eY4Wa2vmzJJ
	0vaUiBKVvsCkkbXszROkMCkgAfYIEcyG7VvVSGg=
X-Google-Smtp-Source: ABdhPJxEGMtGDlPFppEX8lM0MXV1pbRuWBIHj7DCKsB2rPw1vaykjTGZwIy2SFeXv9cnQlSJjhPWZeVTCYx3YCUm4mM=
X-Received: by 2002:aa7:d891:: with SMTP id u17mr2986581edq.0.1606205850327;
 Tue, 24 Nov 2020 00:17:30 -0800 (PST)
MIME-Version: 1.0
References: <CAP71WjwDVBRCKu8MUxYtTWCvt0XFyqwfvUyoSECmQ8nm2Ydz9Q@mail.gmail.com>
In-Reply-To: <CAP71WjwDVBRCKu8MUxYtTWCvt0XFyqwfvUyoSECmQ8nm2Ydz9Q@mail.gmail.com>
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
Date: Tue, 24 Nov 2020 09:17:18 +0100
Message-ID: <CAN7sTgumui=xYxS8Q81GrbwMxFv6NMxC01Uh1eTQoOcoX+HKOQ@mail.gmail.com>
Subject: Re: Yocto Project Outreachy interns
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Dorinda <dorindabassey@gmail.com>, 
	Paul Eggleton <bluelightning@bluelightning.org>, Ross Burton <ross@burtonini.com>, 
	Tim Orling <timothy.t.orling@linux.intel.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000251cfa05b4d5f189"

--000000000000251cfa05b4d5f189
Content-Type: text/plain; charset="UTF-8"

Thank you all so much for having us. I learned so much about embedded linux
and the Yocto Project in a very short while. I can't wait to start
working with you and on my project.


Cheers,
Ida.

On Tue, 24 Nov 2020, 8:47 am Nicolas Dechesne, <nicolas.dechesne@linaro.org>
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

--000000000000251cfa05b4d5f189
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you all so much for having us. I learned so much ab=
out embedded linux and the Yocto Project in a very short while. I can&#39;t=
 wait to start working=C2=A0with you and on my project.<div dir=3D"auto"><b=
r></div><div dir=3D"auto"><br></div><div dir=3D"auto">Cheers,</div><div dir=
=3D"auto">Ida.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, 24 Nov 2020, 8:47 am Nicolas Dechesne, &lt;<a h=
ref=3D"mailto:nicolas.dechesne@linaro.org">nicolas.dechesne@linaro.org</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">Dear all,<br>
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
</blockquote></div>

--000000000000251cfa05b4d5f189--
