Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web11.4409.1610806269102357135
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Jan 2021 06:11:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AX1MWG/X;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id u17so23898294iow.1
        for <yocto@lists.yoctoproject.org>; Sat, 16 Jan 2021 06:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fxXi/EHk2QEl+Z9eHs/uLWzQnamTqID2+nx+Z5gPJFo=;
        b=AX1MWG/X39pCZI5wtz2AMyiC6MTKshczmcVFg7bZfHtNNunubuh0j7JDvMfuE+gQB3
         fgvoT7Qou0JPkXQ0Rao5noKeatdyBocTGDUNcclGMvJeh3+ePz9dZ+QD54wduhc83KwX
         6jFL0mc5cRT1h5r/tpMtwbYz5emvjFe224op2y7e4hTIEWlsWNIpiXX4mk8Vw8iFUlTH
         8aS3RomGUi4zL4ZIL6ylFgJYaOh74yq9QeZPGAtL/x97JdDagchlUjztwJix5T9dlL1S
         cJuMNzN7hdhhnN91Ji3sFoUL/0ISDzATO7rmWUMRIDjX6FbNbn3IvAst88tgPM7wf6oJ
         K1vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fxXi/EHk2QEl+Z9eHs/uLWzQnamTqID2+nx+Z5gPJFo=;
        b=XbfaMArorqVa6eGci3FCJe0gEzzA0V3Pa15v+DiUABkd4Us+O/mSYpdrM47AaQvvcG
         2/JUZkiGCffgsTU0cfkOj8FMNMuAQMrQxzD4rfV5MTPixkRF4EJLv6GD44smDPg1RUJ/
         AEuPae00iB8Rmt1xGUYzMszFUyKx+aD+mAsYFGBWBCRv0uXWpMLXWk4VVh5eWQzJfbP4
         fTlk2dSOxoO2OL293xGHlRDwX0RlaI7EKEqOB3DToSIEcu0cQqsSPgYguKn5/k0SrsS6
         cJ9tnx69S4PIC0aaNE7TQPHH+rojT0kz6bZDLsOa9HK5/HwfJ6uzXDTLU08AjgcXUPP/
         kV0Q==
X-Gm-Message-State: AOAM531FABJ6eGu3n6eCrGYz53bv8U4+gEVCMv25XjLp//EkXnzLVAz2
	FgtwdUvSRWfXvctYQx2gpTy4HeZHuiTtnx+Z6AE=
X-Google-Smtp-Source: ABdhPJzGCwRy2LK5P2Gno64vegMDP55rLQ5rsqwPrfk3Fp3yjlYxBG4hWw9mIMy9M+KsdPEEen2tlKffSB+LKOiGi2g=
X-Received: by 2002:a05:6e02:13e2:: with SMTP id w2mr15155649ilj.155.1610806268347;
 Sat, 16 Jan 2021 06:11:08 -0800 (PST)
MIME-Version: 1.0
References: <CACX=-dXuJXuns3neB1rw9OrdBRuu+eNJsFXzCQSrPfmdSakpBQ@mail.gmail.com>
 <CBB8C2B0-0870-42DA-A47A-23E0D03672D0@gmail.com> <CAM9ZRVvTt8LAbXC3W3ROSCKbKPXUFe_Rdp9nrhK=bGnpugdZNA@mail.gmail.com>
In-Reply-To: <CAM9ZRVvTt8LAbXC3W3ROSCKbKPXUFe_Rdp9nrhK=bGnpugdZNA@mail.gmail.com>
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Sat, 16 Jan 2021 19:40:57 +0530
Message-ID: <CACX=-dVMngUfGYMpw0ysc0kO8emMHy8v9X+i8RZwbUhST+gRsQ@mail.gmail.com>
Subject: Re: [yocto] requesting help
To: Paul Barker <pbarker@konsulko.com>
Cc: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006d4a5305b9050fa6"

--0000000000006d4a5305b9050fa6
Content-Type: text/plain; charset="UTF-8"

      I will check the live coding videos.Thanks paul.
Thanks & Regards
RAVI_UPPADA

On Sat, Jan 16, 2021 at 7:04 PM Paul Barker <pbarker@konsulko.com> wrote:

> On Sat, 16 Jan 2021 at 04:12, Vijay Rakesh Munganda
> <vijayrakeshmunganda@gmail.com> wrote:
> >
> > Hi Ravi,
> >
> > Below links might help you, choose one of the them you need. Download
> and add this recipe into the your build and recipe name to
> IMAGE_INSTALL_append in local.conf file.
> >
> > https://layers.openembedded.org/layerindex/recipe/67001/
> >
> > https://layers.openembedded.org/layerindex/recipe/61209/
>
> Hi Vijay,
>
> I hate to be rude but this is terrible advice. That recipe likely has
> dependencies on other recipes and before you know it you'd be
> assembling a completely untested mess of copy & pasted recipes with no
> clean upgrade path.
>
> I recommend looking at the project documentation, watch Josef's
> excellent live coding videos
> (https://www.youtube.com/playlist?list=PLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj
> ),
> maybe check out a book or work through a tutorial. Once you understand
> the layer system you'll see that it's easy to add the required layers
> properly.
>
> Thanks,
>
> --
> Paul Barker
> Konsulko Group
>

--0000000000006d4a5305b9050fa6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I will check the live =
coding videos.Thanks paul.<br></div><div>Thanks &amp; Regards</div><div>RAV=
I_UPPADA<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sat, Jan 16, 2021 at 7:04 PM Paul Barker &lt;<a href=
=3D"mailto:pbarker@konsulko.com">pbarker@konsulko.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On Sat, 16 Jan 2021 at=
 04:12, Vijay Rakesh Munganda<br>
&lt;<a href=3D"mailto:vijayrakeshmunganda@gmail.com" target=3D"_blank">vija=
yrakeshmunganda@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Ravi,<br>
&gt;<br>
&gt; Below links might help you, choose one of the them you need. Download =
and add this recipe into the your build and recipe name to IMAGE_INSTALL_ap=
pend in local.conf file.<br>
&gt;<br>
&gt; <a href=3D"https://layers.openembedded.org/layerindex/recipe/67001/" r=
el=3D"noreferrer" target=3D"_blank">https://layers.openembedded.org/layerin=
dex/recipe/67001/</a><br>
&gt;<br>
&gt; <a href=3D"https://layers.openembedded.org/layerindex/recipe/61209/" r=
el=3D"noreferrer" target=3D"_blank">https://layers.openembedded.org/layerin=
dex/recipe/61209/</a><br>
<br>
Hi Vijay,<br>
<br>
I hate to be rude but this is terrible advice. That recipe likely has<br>
dependencies on other recipes and before you know it you&#39;d be<br>
assembling a completely untested mess of copy &amp; pasted recipes with no<=
br>
clean upgrade path.<br>
<br>
I recommend looking at the project documentation, watch Josef&#39;s<br>
excellent live coding videos<br>
(<a href=3D"https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS=
_GLY25Qsfyj" rel=3D"noreferrer" target=3D"_blank">https://www.youtube.com/p=
laylist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj</a>),<br>
maybe check out a book or work through a tutorial. Once you understand<br>
the layer system you&#39;ll see that it&#39;s easy to add the required laye=
rs<br>
properly.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>

--0000000000006d4a5305b9050fa6--
