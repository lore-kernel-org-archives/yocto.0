Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web11.12800.1586775302387433118
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 03:55:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uvWeQw6F;
 spf=pass (domain: gmail.com, ip: 209.85.222.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id v24so2974748uak.0
        for <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2020 03:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VVJ0dhE/v81WPBejW0C4dKfKVRmVPSQ/w53exaEjI5s=;
        b=uvWeQw6FAYP3dZSyyp5VQGKD+oQUWfSPth2wG6icju4The1L3szl7tVXR4WrJflC8t
         3S0nJBrREMlszy3vjzzW8+PtDpRDmSGo8t2+8df98BrpjTk6u/OV7DB08ppSr2u8FIf3
         3hC9b/gAqIC3JGDNBhGK4GOq97BrUKEPrDC+9qaFHCPudjWcbuyJjL2oG9xhA8dW8y4m
         RkWJdIXvzUtZqwfbj6rnfumCs5NCffLw6BtGrr+znGmCpY3YCopeg/U3wplnzNKkv3Fj
         b/gq/Fn1DsLolJHM3eOOJngdkIaZ9OH6yN+Ko5YazZnjVF2d8WmlcUN6jJWYj30mnfJH
         3Cog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VVJ0dhE/v81WPBejW0C4dKfKVRmVPSQ/w53exaEjI5s=;
        b=VSCbarPrtU60K0ni5HpOk5wcxHnGdz0BMjvDbXVoJ/FHCkjUgs1k7VrFbW8QvWzclH
         I9gwA3Rwgp7+/K4g6JnfLczMBqBFn6edGF28uSX/oHgkgq/b1iVg6IK7T2IHtDtr9IBV
         mCX1DU0GAfPTaQToqqbhwSH4NRpShJ9OU3R4bnUWevJyNZOG8ofBXyJpf6XuJ+G/SLEr
         5Edpxj/2LS18p9lnnTZSMwWQd6wb13RV4NGVIYfhNIFJYyourNIiMQi+pDzcruOl+hr3
         WKa5W9/j5vOsduKZvTlntY28RVLd2McgVHnlaF5r2HRc/oS3E8rUUz8ZadycyoC+QENX
         Bcxw==
X-Gm-Message-State: AGi0PuYH/pZINmyHAhaSvuruhhW2rrq0aurDMwF7DW3kdnvxz6KV7wEZ
	qqmJs2i4axu2/WRrweHCtMkcI9KbutnNIZzho0k=
X-Google-Smtp-Source: APiQypLierDAdOWHwVN1P/+0m6ZEVLBKmtcmpruldvjjW+qi23GH1fbI2rHlM5iURQDuDOpHRZiqVksdPMR22F0Fj2A=
X-Received: by 2002:a9f:20c6:: with SMTP id 64mr11387340uaa.100.1586775301565;
 Mon, 13 Apr 2020 03:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <1bc0fffb.3be7.17171a9737f.Coremail.nus1998@yeah.net> <CAP71WjwiHBSZaGkGrPJmdgKeTQK+5TgckVF86S50yEmWObR1LA@mail.gmail.com>
In-Reply-To: <CAP71WjwiHBSZaGkGrPJmdgKeTQK+5TgckVF86S50yEmWObR1LA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 13 Apr 2020 12:54:50 +0200
Message-ID: <CANNYZj8xE7yS8Y4R9UimWyQsqyr=x91OuPCyxvcCKZf+Cqtb=g@mail.gmail.com>
Subject: Re: [yocto] What is the recommended method to patch a recipe?
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: nus1998 <nus1998@yeah.net>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000030312f05a329eab7"

--00000000000030312f05a329eab7
Content-Type: text/plain; charset="UTF-8"

On Mon, 13 Apr 2020 at 12:46, Nicolas Dechesne <nicolas.dechesne@linaro.org>
wrote:

> A good rule of thumb is to never modify a metadata that is not yours. That
> applies to everything:
> * if you need to modify a bb file from a 3rd party library, create a
> bbappend file in your layer
> * if you need to modify a bbappend from a 3rd party, then create another
> bbappend in your layer
>
> And by 3rd party i mean any layer/tree which is not yours (OE-core, or any
> other layer your are using).
>

I beg to differ! Bbappends are making it difficult to reason about what the
recipe with all its appends is doing (because they destroy spatial locality
and aren't easily visible), and I would actually discourage using them if
the modification can go to the original recipe.

Is it fixing a problem? Is it adding a build option absent from the
original recipe? Then please take the trouble to submit the change to the
owners of the recipe.

Similarly, if a bbappend is re-setting the component version to something
else (yes, people do that despite my best efforts to prohibit the
practice), then a much cleaner approach is to actually make a fully copy of
the recipe, or go and fix the original.

Alex

--00000000000030312f05a329eab7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, 13 Apr 2020 at 12:46, Nicolas Dec=
hesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.dechesne@l=
inaro.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">A good rule of thumb i=
s to never modify a metadata that is not yours. That applies to everything:=
<div class=3D"gmail_quote"><div>* if you need to modify a bb file from a 3r=
d party library, create a bbappend file in your layer</div><div>* if you ne=
ed to modify a bbappend from a 3rd party, then create another bbappend in y=
our layer</div><div><br></div><div>And by 3rd party i mean any layer/tree w=
hich is not yours (OE-core, or any other layer your are using).</div></div>=
</div></blockquote><div><br></div><div>I beg to differ! Bbappends are makin=
g it difficult to reason about what the recipe with all its appends is doin=
g (because they destroy spatial locality and aren&#39;t easily visible), an=
d I would actually discourage using them if the modification can go to the =
original recipe. <br></div><div><br></div><div>Is it fixing a problem? Is i=
t adding a build option absent from the original recipe? Then please take t=
he trouble to submit the change to the owners of the recipe.</div><div><br>=
</div><div>Similarly, if a bbappend is re-setting the component version to =
something else (yes, people do that despite my best efforts to prohibit the=
 practice), then a much cleaner approach is to actually make a fully copy o=
f the recipe, or go and fix the original.<br></div><div><br></div><div>Alex=
<br></div></div></div>

--00000000000030312f05a329eab7--
