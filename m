Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.30722.1604321063410229284
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Nov 2020 04:44:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQCJ8FlM;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id l24so14187396edj.8
        for <yocto@lists.yoctoproject.org>; Mon, 02 Nov 2020 04:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7pB5CK+WYJgtjOInD8zOJgXBwwaRRmP8aGn8VfV2aV0=;
        b=DQCJ8FlMAFQawmuZPi7P+QKN9CD0vRwd9MWkkweHSW64fd/3hgoXIFd+gIPsw6SSxg
         GaCHUMWBjPYxDmPi2T/ZC1A9z3cKNmWLhbOuAJgGIJIuET2eFLdgrdGdBWImNrYXSd+F
         nc6s5hXcM+PQsV9jA2sPnZXYRGjzDSKnBdBogh1MYj91AW1Kyz1rMc+q1BovZl3BKeJp
         tfl2U/jbs8xTO/XfxxYeR9WOp8/tEFsHa0QJ9B6F3VbNHNdgbNxbdEJI8VS0UHC1zKRY
         svZunEM6KfB86cLMYQyEAPGniI17xdmPCOf+lh6ImvXXZe5OJ61dbsYt5ULQEgrJsDrL
         0d6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7pB5CK+WYJgtjOInD8zOJgXBwwaRRmP8aGn8VfV2aV0=;
        b=HFMJGmGt23+R4soGOsYnF3iFC4TgouWhcNyDVgRpplb6S6VsEhl66EVXaQNIDdFslm
         ZhmGErITvh+JMKSEGfBP4eVpMckUaCQSHYNnGw/drNrcUE7UfifH3/ZXza49VmbuKo4j
         7HdDu2CdAsMRaPlRjgyPthgtJjWdACl8xR04SIXvYMEGN4MURc5edsLcSva4GZtBSlzq
         JONk67NFFPd87gq7zkOkvWq6oCCr7XvVv/54ZRyv4fflreUftYc5OCyVEWIJNr/95PxL
         k4M+V58Pz+iu52jMcCQvHcAs6YiXPUjNnUXWNzglutCj27oba+k/3XcnqOfr6Y9R3gx5
         et9A==
X-Gm-Message-State: AOAM533BQVh9VnZI2mEBgy+eBrNZVjc4UY/Jg9qfwtDaF7h/YC58Nh0f
	25Bww3LuKOk7k2skwzgRe+qE4m4a45YjTSjSKyw=
X-Google-Smtp-Source: ABdhPJyBR3SSLHjZMe9+inJjywghgrSTVJvAKjPrOCZNSfpEqdrelFptIRndoVJoKakJyi1SqTa1EGB6Jp4K8fFlekc=
X-Received: by 2002:a05:6402:1457:: with SMTP id d23mr15878449edx.311.1604321061908;
 Mon, 02 Nov 2020 04:44:21 -0800 (PST)
MIME-Version: 1.0
References: <f2d33431-6a8c-43e6-abdf-c9909e15591e@email.android.com> <24906.1604320615591404696@lists.yoctoproject.org>
In-Reply-To: <24906.1604320615591404696@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 2 Nov 2020 13:44:10 +0100
Message-ID: <CA+chaQfSmyEcXk63xYPf9HjcXOqT5FbohnfBNrWu25E4J+AB7A@mail.gmail.com>
Subject: Re: [yocto] #yocto
To: steven.monsees@baesystems.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000034a705b31f1bc6"

--0000000000000034a705b31f1bc6
Content-Type: text/plain; charset="UTF-8"

your 2nd meta-intel probably still has:
LICENSE_PATH += "${LAYERDIR}/custom-licenses"
in layer.conf without having this directory included in the layer?

On Mon, Nov 2, 2020 at 1:37 PM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=baesystems.com@lists.yoctoproject.org>
wrote:

>
> I am not sure I am following ...
>
> #1 is the actual package being built, #2 is the mods to the recipes for
> the image I am building...
>
>     (1)    ./workspace_1/poky/../meta-intel
>
>     (2)    ./workspace_1/poky/../meta-1/meta-2/meta-intel
> These directories share the same name, but the local.conf for #2 requires
> a unique BBFILE_COLLECTIONS name now ?
>
> If I change the BBFILE_COLLECTIONS name to be unique,  I see the following
> error:
>
> --- Starting bitbake server pid 12022 at 2020-11-02 07:19:06.133802 ---
> ERROR: Unable to parse Var <AVAILABLE_LICENSES[:=]>
> Traceback (most recent call last):
>   File "Var <AVAILABLE_LICENSES[:=]>", line 1, in <module>
>   File
> "/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/license.bbclass",
> line 275, in available_licenses(d=<bb.data_smart.DataSmart object at
> 0x7fc921cbdda0>):
>          for lic_dir in lic_dirs:
>     >        licenses += os.listdir(lic_dir)
>
> bb.data_smart.ExpansionError: Failure expanding variable
> AVAILABLE_LICENSES[:=], expression was ${@'
> '.join(available_licenses(d))} which triggered exception FileNotFoundError:
> [Errno 2] No such file or directory:
> '/disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/meta-intel/custom-licenses'
>
>
>
>
>
> 
>
>

--0000000000000034a705b31f1bc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">your 2nd meta-intel probably still has:<div>LICENSE_PATH +=
=
=3D &quot;${LAYERDIR}/custom-licenses&quot;<br></div><div>in layer.conf=C2=
=
=A0without having this directory included=C2=A0in the layer?</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
Nov 2, 2020 at 1:37 PM Monsees, Steven C (US) via <a href=3D"http://lists.y=
octoproject.org">lists.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D=
"mailto:baesystems.com@lists.yoctoproject.org">baesystems.com@lists.yoctopr=
oject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><br>I am not sure I am following ...<br><br>
<p style=3D"margin:0px"><span lang=3D"EN" style=3D"color:rgb(51,51,51)">#1=
 is the actual package being built, #2 is the mods to the recipes for the i=
mage I am building... </span></p>
<p style=3D"margin-bottom:0px"><span lang=3D"EN" style=3D"color:rgb(51,51,=
51)"><span>=C2=A0=C2=A0=C2=A0 (1)<span style=3D"font:7pt &quot;Times New Ro=
man&quot;">=C2=A0=C2=A0=C2=A0 </span></span></span><span lang=3D"EN" style=
=3D"color:rgb(51,51,51)">./workspace_1/poky/../meta-intel</span></p>
<p style=3D"margin-bottom:0px"><span lang=3D"EN" style=3D"color:rgb(51,51,=
51)"><span>=C2=A0=C2=A0=C2=A0 (2)<span style=3D"font:7pt &quot;Times New Ro=
man&quot;">=C2=A0=C2=A0=C2=A0 </span></span></span><span lang=3D"EN" style=
=3D"color:rgb(51,51,51)">./workspace_1/poky/../meta-1/meta-2/meta-intel<br=
>These directories share the same name, but the local.conf for #2 requires =
a unique BBFILE_COLLECTIONS name now ?<br><br>If I change the BBFILE_COLLEC=
TIONS name to be unique,=C2=A0 I see the following error:<br><br>--- Starti=
ng bitbake server pid 12022 at 2020-11-02 07:19:06.133802 ---<br>ERROR: Una=
ble to parse Var &lt;AVAILABLE_LICENSES[:=3D]&gt;<br>Traceback (most recent=
 call last):<br>=C2=A0 File &quot;Var &lt;AVAILABLE_LICENSES[:=3D]&gt;&quot=
;, line 1, in &lt;module&gt;<br>=C2=A0 File &quot;/disk0/scratch/smonsees/y=
octo/workspace_3/poky/meta/classes/license.bbclass&quot;, line 275, in avai=
lable_licenses(d=3D&lt;bb.data_smart.DataSmart object at 0x7fc921cbdda0&gt;=
):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for lic_dir in lic_d=
irs:<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 l=
icenses +=3D os.listdir(lic_dir)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>bb.data_sm=
art.ExpansionError: Failure expanding variable AVAILABLE_LICENSES[:=3D], ex=
pression was <a href=3D"mailto:$%7B@&#39;" target=3D"_blank">${@&#39;</a> &=
#39;.join(available_licenses(d))} which triggered exception FileNotFoundErr=
or: [Errno 2] No such file or directory: &#39;/disk0/scratch/smonsees/yocto=
/workspace_3/poky/../meta-bae/meta-limws/meta-intel/custom-licenses&#39;</s=
pan></p>
<p style=3D"margin-bottom:0px"><span lang=3D"EN" style=3D"color:rgb(51,51,=
51)"><br><br></span></p>
<p style=3D"margin:0px"><span lang=3D"EN" style=3D"color:rgb(51,51,51)">=
=C2=A0</span></p>
<br>
<br>
<br>
</blockquote></div>

--0000000000000034a705b31f1bc6--
