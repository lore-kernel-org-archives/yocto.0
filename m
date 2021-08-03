Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web11.2844.1627983634169029841
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 02:40:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RHyUdg9C;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id ba4so8119679vsb.5
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 02:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yA4CeJ4SQ3TZcpD90qQUdQMpwYScz2yzFPs7PyPhhfo=;
        b=RHyUdg9CaRY2YGGg7w6pfNaXqC2AoRB50XF27yvBIKLpu1LvyMV3WJ1fZerLDpm6+C
         bR4dslKgVTrDj8qxlFb/XSrJTtMHw0+HfmDxPYDv57ejb38ECGXWvJ58kUuL5E+wqj7p
         MGf4z7eE7sINMRROB4Swi/07vzNwQ2a9EFZ4kt+xgS97J94WRPWksgPMi2QKVsrYvpbu
         duIq9i634F5X2nQ0kXczpD9gznKHis6spncj2jBThQoyZEefZGp6UO8vU53Cb9FpJq53
         i6VmOq9BDZI5H+93Swi1tcPDdy1aeUupVHvnxN9ilsOrAKLpEBh0TBltVN6AYK3VXs5d
         J7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yA4CeJ4SQ3TZcpD90qQUdQMpwYScz2yzFPs7PyPhhfo=;
        b=F7rzZCejQVRNFOpLOCdrRszXiYXd+bTjpkyCQ1qvvZmDvTpuDGMIcUWoBRsNG3IyNe
         svMhH2bNsy6YTDVt+N7f1Kw1ohsJAUMm9Jj7BHYTaAY08EBo+VxUX02jWI4J9U7Jf9yw
         t5lnulgsDaDaEY5tQ4wJ4jq6+SfyYAG1BK77EoGHm1Nz/wXmrfs7sC5p6nN5SZEBBfyU
         kfVKR1AN2muwcaooc9cTmNbw/cfuVlr3Wm5vD3cOVfgw52baJV8xdDEE2qj5zFMl+jIV
         tlGHkSbYlOA9GbONONClivSDeYxP5YfQ2gp8fJIwX4KtUEK4nCB8ttvZTX7e99BkOiJ5
         E/QQ==
X-Gm-Message-State: AOAM531cnUCR4C8DhHzDJA3hJSnuGQLVMnCUIjoL89488xbGo1kBkZ5X
	cgJM3Sgty+3vl5WoYzh6wsh5b9qq8mjOOAtiMCs=
X-Google-Smtp-Source: ABdhPJxpsvjyt9/HKfsuNKpbte9C4tNtUm9U6NpNXbpmMDVD2qppDNTn9eJTN4AqkGupMt46geOGZMAq41358aZQMrY=
X-Received: by 2002:a05:6102:3711:: with SMTP id s17mr12230671vst.51.1627983633327;
 Tue, 03 Aug 2021 02:40:33 -0700 (PDT)
MIME-Version: 1.0
References: <YiCT.1627394780337084471.VueM@lists.yoctoproject.org>
In-Reply-To: <YiCT.1627394780337084471.VueM@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 3 Aug 2021 11:40:22 +0200
Message-ID: <CANNYZj8OubJcmz5+oW5QzPMpuBvEptjJMbAAhrScaExO8Z4RjQ@mail.gmail.com>
Subject: Re: [yocto] Auto upgrade helper Verification requirements #gstreamer #iso #yocto
To: Manjunath Ks <ksmanjunath681@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002a2a6205c8a47a8e"

--0000000000002a2a6205c8a47a8e
Content-Type: text/plain; charset="UTF-8"

I think it is better if you start with devtool (which is the utility that
AUH is using to perform the updates). The workflow is as follows:

$ devtool upgrade recipe-name additional-options
(fix any issues)
$ devtool finish python3 path/to/layer/ additional-options

Please check the available options, try the commands and ask here if
anything doesn't work or isn't clear.

Alex


On Tue, 3 Aug 2021 at 09:04, <ksmanjunath681@gmail.com> wrote:

> I have gone through documentation of the auto upgrade helper ,like how to
> use and prerequisites and all.
> Can i get any examples like how to use the helper tool to upgrade a recipe,
> Also how can i verify this tool like how it is working
> for verifying i took a poky(*warrior*) layer as a reference example .
> With this i checked out older
> commit hash (
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=warrior&id=0c011f61e67b33746b201db99bd25842c083cfa7
> ).
> so that when i use the auto upgrade tool on any recipe which had older
> changes can get updated to current commit changes.
> With this when i checked recipes and their versions map there were some
> recipes which had this version difference(eg: python: 3.7.2 present 3.7.7).
> Now if I run the tool to update the python recipe (like *upgrade-helper.py
> python*), I don't see any changes in the recipe at all.
> I have followed the steps documented here:
>
> https://docs.yoctoproject.org/3.2.4/dev-manual/dev-manual-common-tasks.html#using-the-auto-upgrade-helper-auh
> .
>
> Are these steps followed for verification steps  correct or if you can
> suggest any other procedure if you can suggest that will be helpful
>
> 
>
>

--0000000000002a2a6205c8a47a8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think it is better if you start with devtool (which=
 is the utility that AUH is using to perform the updates). The workflow is =
as follows:</div><div><br></div><div>$ devtool upgrade recipe-name addition=
al-options</div><div>(fix any issues)<br></div><div>$ devtool finish python=
3 path/to/layer/ additional-options</div><div><br></div><div>Please check t=
he available options, try the commands and ask here if anything doesn&#39;t=
 work or isn&#39;t clear.</div><div><br></div><div>Alex<br></div><div><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, 3 Aug 2021 at 09:04, &lt;<a href=3D"mailto:ksmanjunath681@gmai=
l.com">ksmanjunath681@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div style=3D"color:rgb(34,34,34);font-fa=
mily:Arial,Helvetica,sans-serif;font-size:small">I have gone through docume=
ntation of the auto upgrade helper ,like how to use and prerequisites and a=
ll.</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">Can i get any examples like how to use the helper tool to u=
pgrade a recipe,</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">Also how can i verify this tool like how it is working</div=
>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">for verifying i took a poky(<strong>warrior</strong>) layer=
 as a reference=C2=A0example .=C2=A0</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">With this i checked out older</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">commit hash (<a style=3D"color:rgb(17,85,204)" href=3D"http=
s://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dwarrior&amp;id=3D0c=
011f61e67b33746b201db99bd25842c083cfa7" rel=3D"noopener" target=3D"_blank">=
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dwarrior&amp;id=
=3D0c011f61e67b33746b201db99bd25842c083cfa7</a>).</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">so that when i use the auto upgrade tool on any recipe whic=
h had older changes can get updated to current commit changes.</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">With this when i checked recipes and their versions map the=
re were some recipes which had this version difference(eg: python: 3.7.2 pr=
esent 3.7.7).</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">Now if I run the tool to update the python recipe (like=C2=
=A0<strong>upgrade-helper.py python</strong>), I don&#39;t=C2=A0see any ch=
anges in the recipe at all.</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">I have followed=C2=A0the steps documented here:</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small"><a style=3D"color:rgb(17,85,204)" href=3D"https://docs.yoct=
oproject.org/3.2.4/dev-manual/dev-manual-common-tasks.html#using-the-auto-u=
pgrade-helper-auh" rel=3D"noopener" target=3D"_blank">https://docs.yoctopro=
ject.org/3.2.4/dev-manual/dev-manual-common-tasks.html#using-the-auto-upgra=
de-helper-auh</a>.</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">=C2=A0</div>
<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small">Are these steps followed for verification steps=C2=A0 corre=
ct or if you can suggest any other procedure if you can suggest that will b=
e helpful</div>
<br>
<br>
<br>
</blockquote></div>

--0000000000002a2a6205c8a47a8e--
