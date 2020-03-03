Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web11.2645.1583278712416443500
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 15:38:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=GJLbRJKR;
 spf=pass (domain: assonance.org, ip: 209.85.210.50, mailfrom: aaron@assonance.org)
Received: by mail-ot1-f50.google.com with SMTP id i14so211366otp.5
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 15:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MoZzn8anv1HdnsUpSKbylxb1qI2TJGUKkUi1fbEeqs8=;
        b=GJLbRJKRxedRwwz53hOwsFLnEzBqaCkdgXsBnuriraYEWRijDFU/zExIOzLL09R5o0
         UwfG8fNYNXg17UcNtg5kuX5FlJU1QDkz1dPhNLCjUEL+gISaMrAX0hJwGAb9scnXgNID
         EiSa3vcSKcsSq7U6Uy1Ryjpg44hvZF2qvNAwf10MDR2H7zI5l3APS+WD9ax/hyNlKrEI
         aVMnOBjQc8niVdhjc5asJfC3D3zHSAnaMcU6adZSuXacdm2Y8dkJeVZAEf0nyZ1Isr8l
         tT3Kwci7+CUoYzv2WiuZdvBZJmoSuWQsq//vywBq290s3EZXW/RUaSh81yflg2fNBPCV
         rFBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MoZzn8anv1HdnsUpSKbylxb1qI2TJGUKkUi1fbEeqs8=;
        b=Bb01XxAp0js/9IJJtkEjt+S0/BfCCeUDOwSoz4oGDbssqubgxJSS6QV4FcESrQEPB0
         5rDBPSGBGIcQ9SEZERxsqIOXhFm1mkl1uuy2ZRatwuoQXHeGxucuUTA3Sf6fF6miqkMn
         hLKoZepqtywUlsHIYR2EUFrvaZ1YtxuVT1tv/5BmnIVUQkv5j2aWSn4yZOUnr029GElw
         KmPLSx5OQvzf/42cwBXclbqLExlQu+cUzvM+TWD5CTVXdnbhhUCN4QhGtTHuYxwCg/j0
         cJbeF+Nuy9kHvEIUiDD+sklnJ26kM00/oQzeTiXKL5kdGYPLTaxtd9RmxtMfzROWcn5N
         U56g==
X-Gm-Message-State: ANhLgQ1l8VRvBMVYhpwcOPFl4yRJC1kLk2sYV9PZRVXk7+fPB+TnjN7x
	5Iam9TthgD/XkEfhnIvAjuWVdjWpQXUBx9B9qQPg9w==
X-Google-Smtp-Source: ADFU+vsdUu0iLI1xJnXPfLjWA+0oczp5ordPvYQbUNS5U3bcCEpepBlBM9y12zmzNlq+AiYROrXhfHHtzmJnWs7Edq4=
X-Received: by 2002:a9d:76c9:: with SMTP id p9mr254392otl.135.1583278711532;
 Tue, 03 Mar 2020 15:38:31 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCU2vdL52FmU3pG3gARHGA0tLhdgGRr=7uH+FbP3_T9kyA@mail.gmail.com>
In-Reply-To: <CAK4PFCU2vdL52FmU3pG3gARHGA0tLhdgGRr=7uH+FbP3_T9kyA@mail.gmail.com>
From: "Joel A Cohen" <aaron@assonance.org>
Date: Tue, 3 Mar 2020 18:38:20 -0500
Message-ID: <CAFSZm+iYmsh4GA1_CqDAw13EK2L7H0z-DxokgOZtrRfYP9S7PQ@mail.gmail.com>
Subject: Re: [yocto] way to make do_devshell changes permanent?
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002e8435059ffbcd2b"

--0000000000002e8435059ffbcd2b
Content-Type: text/plain; charset="UTF-8"

devshell is good for playing around, but I don't know of any blessed way to
just have it somehow modify recipes and create patches magically. I'd be
interested to hear if there is something like that.

The closest to what I think you want is the "devtool" workflow
<https://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html#using-devtool-in-your-workflow>


Basically:
1) devtool modify <recipe>
2) hack source in $BUILDDIR/workspace/sources/<recipe>, test as desired by
using "bitbake <recipe>" or "bitbake <image containing recipe>"
# Once satisfied with changes:
3) git add $BUILDDIR/workspace/sources/<recipe> && git commit -m "Added
cool changes to recipe"
4) devtool finish <recipe> <your_layer_name>

--Aaron

On Tue, Mar 3, 2020 at 3:59 PM Kent Dorfman <kent.dorfman766@gmail.com>
wrote:

> I am dealing with a vendor supplied yocto release where they have
> setup the repos as local gitshallow or tar.xz files.  I asked them to
> do this in accordance with our strict air-gapped build policies.
>
> They provide a driver and supplement utilities as a gitshallow copy of
> their own repo and I can do_devshell on the recipe to extract the code
> and play with it.
>
> What is the "yocto way" of making my changes permanent so that they
> survive a do_fetch in the future and are integrated into the target
> image?  I've noted that changes made during a devshell session do not
> make it into the target image at all at this point, but that
> do_devshell is simply a subshell sandbox to play with expanded repo.
> 
>

--0000000000002e8435059ffbcd2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">devshell is good for playing around, but I don&#39;t know =
of any blessed way to just have it somehow modify recipes and create patche=
s magically. I&#39;d be interested to hear if there is something like that.=
<div><br></div><div>The closest to what I think you want is the=C2=A0<a hre=
f=3D"https://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html#using=
-devtool-in-your-workflow">&quot;devtool&quot; workflow</a>=C2=A0</div><div=
><br></div><div>Basically:</div><div>1) devtool modify &lt;recipe&gt;</div>=
<div>2) hack source in $BUILDDIR/workspace/sources/&lt;recipe&gt;, test as =
desired by using &quot;bitbake &lt;recipe&gt;&quot; or &quot;bitbake &lt;im=
age containing recipe&gt;&quot;</div><div># Once satisfied with changes:</d=
iv><div>3) git add $BUILDDIR/workspace/sources/&lt;recipe&gt; &amp;&amp; gi=
t commit -m &quot;Added cool changes to recipe&quot;</div><div>4) devtool f=
inish &lt;recipe&gt; &lt;your_layer_name&gt;</div><div><br></div><div>--Aar=
on</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Mar 3, 2020 at 3:59 PM Kent Dorfman &lt;<a href=3D"mailto:k=
ent.dorfman766@gmail.com">kent.dorfman766@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">I am dealing with a vend=
or supplied yocto release where they have<br>
setup the repos as local gitshallow or tar.xz files.=C2=A0 I asked them to=
<br>
do this in accordance with our strict air-gapped build policies.<br>
<br>
They provide a driver and supplement utilities as a gitshallow copy of<br>
their own repo and I can do_devshell on the recipe to extract the code<br>
and play with it.<br>
<br>
What is the &quot;yocto way&quot; of making my changes permanent so that t=
hey<br>
survive a do_fetch in the future and are integrated into the target<br>
image?=C2=A0 I&#39;ve noted that changes made during a devshell session do=
 not<br>
make it into the target image at all at this point, but that<br>
do_devshell is simply a subshell sandbox to play with expanded repo.<br>
<br>
</blockquote></div>

--0000000000002e8435059ffbcd2b--
