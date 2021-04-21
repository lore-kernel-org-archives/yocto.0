Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web09.5692.1618965806483649507
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 17:43:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ae63iU56;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: idadelm@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id n2so60926426ejy.7
        for <yocto@lists.yoctoproject.org>; Tue, 20 Apr 2021 17:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a6aEvm80lx4+1IqZK5ziTdEQOH5ojqb90PKU04NVt4Q=;
        b=ae63iU56GK22UV2bzr+EpKjcc2bUyNN4pTrbnDykj2QtYXZBZD97vb0G2ghF9AcNqp
         H6MHBwZHe6vzM4qccRpkAkeKs++/LXn2pQn9A9TascORtvB8WhJ76iGPELZRfdZODuBo
         MZ+9VoyWz5MTWNRetwntivOpWrRNp7Ijp37W2uqUk1ArdZlkLXcSTUEh4k0PlN2FFbRZ
         wXeQM7ntKqK/zIjQjBtgpTpA6Xzt2uVlDFhWPqzDY62/XvDtOh/fnzyBP9POa3mPZJLC
         ZPoBRy9/HCGZuerBI+Qlht4Hg+JzV932bFLd5SXKqHWse4Pv5BoB7cjzJcY0zyYQvsRn
         6+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a6aEvm80lx4+1IqZK5ziTdEQOH5ojqb90PKU04NVt4Q=;
        b=Jvf07TxvzCiklb7hOgXBeIvEIVczYvhE6FIomWNSbXLGBBfUOyUL+vkxOhIhKxDZps
         WKQlZ3Z8e0mx5HmSYNQx0rOvFYdjIxk/GBXXRjelEVMdIKCeHxouJg8vbrOOV/SNeWAI
         tneoMrPxAWPYmMyf6mYfHacsSnzAmCGIj7fBKKUQkp7xYB5xO95hqZALNjSfXF5HodUC
         Wrafo6VbfoQ26QiQfak3UOTb1V9OUTNX7lQjvuhMNahRl19JBFjDUVHWWrVrxP/Hm5bn
         pwa8az7JXFEmO1xZHOYLs2SkLJeauW4l1ng+5aIf/FABF/+X/8aEFIt6f5tQXZAZZ7XI
         cCsg==
X-Gm-Message-State: AOAM531Gvpm/JwTKo6hPwe1LQlVbBl3ljVPJ22lG9+BLc54hSjoYtF2x
	vZKG2JrqqqZsPbc6dte04BWaHNhBgrf+d0XmQwx4DwLTARI=
X-Google-Smtp-Source: ABdhPJxoE+eXu5uAqngnStnTotisDpJN0iNnq0pHo0iEXQaP+/cNE8IvXYAqZDHZPyfnmb8J7XjKb8yOHpqF7BVGll0=
X-Received: by 2002:a17:906:95cb:: with SMTP id n11mr30949948ejy.251.1618965804886;
 Tue, 20 Apr 2021 17:43:24 -0700 (PDT)
MIME-Version: 1.0
References: <165FE980CA52D726.16314@lists.yoctoproject.org>
 <CAN7sTgsmS_tp_wwo_tb-eaN6ZZGH5cW7vRRsE8T=A3Femw-pzw@mail.gmail.com> <6083642.lOV4Wx5bFT@linc>
In-Reply-To: <6083642.lOV4Wx5bFT@linc>
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
Date: Wed, 21 Apr 2021 01:43:13 +0100
Message-ID: <CAN7sTguzQv6v96g_F2iKpoLzHxwDLOmoPkUWU+9oW9+WsxYnRw@mail.gmail.com>
Subject: Re: [yocto] [layerindex-web][PATCH] Add SPDX license headers to layerindex-web source files
To: Paul Eggleton <bluelightning@bluelightning.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b42f3b05c070d93e"

--000000000000b42f3b05c070d93e
Content-Type: text/plain; charset="UTF-8"

No worries, thanks for the update!

On Tue, 20 Apr 2021, 11:20 pm Paul Eggleton, <
bluelightning@bluelightning.org> wrote:

> Hi Ida
>
> On Wednesday, 3 February 2021 00:08:24 NZST Meh Mbeh Ida Delphine wrote:
> > I sent this patch October last year and couldn't be integrated since it
> was
> > the end of the development cycle.
>
> My sincere apologies for the delay. I have now integrated this, but I did
> have
> to make a few changes:
>
> 1) Dropped the newline changes; these weren't related and also modified
> files
> that we want to ship as unmodified copies from upstream.
>
> 2) Removed some added copyright notices where they weren't necessary, and
> adjusted the dates to reflect when the changes were made in some other
> cases.
>
> Thanks for the patch!
>
> Paul
>
>
>

--000000000000b42f3b05c070d93e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">No worries, thanks for the update!=C2=A0</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 20 Apr 20=
21, 11:20 pm Paul Eggleton, &lt;<a href=3D"mailto:bluelightning@bluelightni=
ng.org">bluelightning@bluelightning.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">Hi Ida<br>
<br>
On Wednesday, 3 February 2021 00:08:24 NZST Meh Mbeh Ida Delphine wrote:<br=
>
&gt; I sent this patch October last year and couldn&#39;t be integrated sin=
ce it was<br>
&gt; the end of the development cycle.<br>
<br>
My sincere apologies for the delay. I have now integrated this, but I did h=
ave <br>
to make a few changes:<br>
<br>
1) Dropped the newline changes; these weren&#39;t related and also modified=
 files <br>
that we want to ship as unmodified copies from upstream.<br>
<br>
2) Removed some added copyright notices where they weren&#39;t necessary, a=
nd <br>
adjusted the dates to reflect when the changes were made in some other case=
s.<br>
<br>
Thanks for the patch!<br>
<br>
Paul<br>
<br>
<br>
</blockquote></div>

--000000000000b42f3b05c070d93e--
