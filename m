Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web12.9500.1591259929719339898
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Jun 2020 01:38:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XzbWjzFA;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id m18so1153174vkk.9
        for <yocto@lists.yoctoproject.org>; Thu, 04 Jun 2020 01:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PEtjOWgcASfo58K4CndMpTJqTpGsLRIsgse+RRWSoeY=;
        b=XzbWjzFARE8U2M325Ueu0y4WmcSrUH+1vN2XgzcLRE+ZfdVAg0JsDFMBd0ues215vZ
         S1nCPj3ajh456DZr3TECc1diL50Cw0gsT35BQ51Zbc4OaK8ekILMfmHTWp6jnaFMKaYu
         TSFiFnalvfxRH48IvsmABE3SpKtmKRnD7cbnrqAfL4NuRRNWu3YfL/J3WYs0fGgwfovb
         IcPLAsauKmWXsJzi6er/jAYeglYD17inM0o4g120bcW7uwYhod86kbVFI/zQ2at79u8N
         M5g7z8xr3ybohXDv/scovsX1MfAnlMprKDwYxAe0FYm3C2zdk0Ev/FrFvr/0H4fUydSk
         A+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PEtjOWgcASfo58K4CndMpTJqTpGsLRIsgse+RRWSoeY=;
        b=oQGzahc6jAF8imo0r/9xioaygsaorkXHwthlBz3AZzhMJpCRR5zsEfcIhjWLyceJll
         jcT1Flmu5SLjHrQoSH7awTdTftObXFl7aTqvDuOCsle5WeYLgnIwR0IthrSECr5aSGtw
         EpiIiuUgoo0ZEa3tvPoca6iZz0XFzFBxFI1XjrraZAHmrNDixFMR/OZ5x20zyYuhJ/27
         vH+4sgkCCN7cs3Chl9K9nvIWs08gXxcXXSK3ZhivCenaZiTI0Do15ZSJG2CpcDVm98Hq
         6EIm8HaYrc3ksRQkIBL44IEElgox40YbqrHa38wUyb5IDUjTIbzCMglYMBy5qWN4Wlxj
         ySsg==
X-Gm-Message-State: AOAM533C7zcoqt+uSpitEkzWF1y7M9YTssy7k+E/0vTSnPubW0wnWtPp
	bM3iRzwZilo4OqhisgvChGtI4bmvfJDbas8d/wo=
X-Google-Smtp-Source: ABdhPJzT9RAQSPzlyRgj7zXTskTH++8HNTk61UtCQmKEANGB6KRo9vY0i9R0RdWQBu7MbgS07AKgy+ExxPbFBm3qFpk=
X-Received: by 2002:a1f:1a4b:: with SMTP id a72mr2621398vka.0.1591259928846;
 Thu, 04 Jun 2020 01:38:48 -0700 (PDT)
MIME-Version: 1.0
References: <3jcy.1591258723749216280.cuB3@lists.yoctoproject.org>
In-Reply-To: <3jcy.1591258723749216280.cuB3@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 4 Jun 2020 10:38:37 +0200
Message-ID: <CANNYZj9jWU9xS3OwhA7Ag+RiM6C_aT-EiAESHQFDh2wrZSt=BA@mail.gmail.com>
Subject: Re: [yocto] Why and when we need to migrate to newer #yocto version?
To: requinham@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cde34905a73e12f2"

--000000000000cde34905a73e12f2
Content-Type: text/plain; charset="UTF-8"

The versions of libraries and tools are not independent from Yocto
versions, in fact they are directly defined through oe-core metadata that
is in a specific Yocto version.

For examples, what version of openssl is in your yocto builds? Is it
supported/maintained upstream? What are you going to do if a critical
security vulnerability is discovered in that version?

This extends to all of the packages: it makes sense to use the most recent
Yocto version for two primary reasons:

- the stack is much less likely to contain security vulnerabilities
- it is much easier to satisfy project requirements w.r.t. version
compatibility, or needed features, if those features are only available in
recent versions of the package.

This mailing list gets horror stories all the time from people who are for
some reason using some ancient Yocto, then a customer requirement arrives
that can only be satisfied through updating to a newer Yocto, or
backporting a major component to the old Yocto; both impossible or nearly
impossible tasks. You do not want to end up in that situation.

Alex

On Thu, 4 Jun 2020 at 10:18, <requinham@gmail.com> wrote:

> My question is about the #Yocto update and *maintenance strategy*. I have
> several projects for different boards and different versions of Yocto (1.7
> 2.0 2.2) which includes their BSP.
>
> As an OS build system, especially GNU/Linux, I don't understand exactly
> when should we necessarily migrate to a new version?
>
> In my understanding, the versions of the kernel, libraries and tools are
> independent from Yocto version. If you need to migrate to a new version of
> the Linux kernel, you have to modify/add the right recipe without worrying
> about the Yocto version.
>
> Thus, the maintenance work -security, bugs, optimization- should relate to
> the recipes and not to Yocto itself.
>
> Updating Yocto may have sens for me when we need to use new bitbake
> feature or new architecture but not to use new version of package. I think
> we should keep in mind to manage a certain consistency and compatibility
> between the different versions of the recipes in order for example to use
> the right version of the openssl library with the right version of Qt or
> even between the right version of the kernel and drivers, etc.
> Thanks,
> Mohamed
> 
>

--000000000000cde34905a73e12f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The versions of libraries and tools are not independe=
nt from Yocto versions, in fact they are directly defined through oe-core m=
etadata that is in a specific Yocto version.<br></div><div><br></div><div>F=
or examples, what version of openssl is in your yocto builds? Is it support=
ed/maintained upstream? What are you going to do if a critical security vul=
nerability is discovered in that version?</div><div><br></div><div>This ext=
ends to all of the packages: it makes sense to use the most recent Yocto ve=
rsion for two primary reasons:</div><div><br></div><div>- the stack is much=
 less likely to contain security vulnerabilities</div><div>- it is much eas=
ier to satisfy project requirements w.r.t. version compatibility, or needed=
 features, if those features are only available in recent versions of the p=
ackage.</div><div><br></div><div>This mailing list gets horror stories all =
the time from people who are for some reason using some ancient Yocto, then=
 a customer requirement arrives that can only be satisfied through updating=
 to a newer Yocto, or backporting a major component to the old Yocto; both =
impossible or nearly impossible tasks. You do not want to end up in that si=
tuation.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 4 Jun 2020 at 10:18=
, &lt;<a href=3D"mailto:requinham@gmail.com">requinham@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p style=3D=
"margin-bottom:1em;padding:0px;border:0px none;font-variant-numeric:inherit=
;font-variant-east-asian:inherit;font-stretch:inherit;line-height:inherit;f=
ont-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:=
15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:rgb(36,39,=
41)">My question is about the #Yocto update and <strong>maintenance strateg=
y</strong>. I have several projects for different boards and different vers=
ions of Yocto (1.7 2.0 2.2) which includes their BSP.</p>
<p style=3D"margin-bottom:1em;padding:0px;border:0px none;font-variant-num=
eric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-heig=
ht:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-seri=
f;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;colo=
r:rgb(36,39,41)">As an OS build system, especially GNU/Linux, I don&#39;t u=
nderstand exactly when should we necessarily migrate to a new version?</p>
<p style=3D"margin-bottom:1em;padding:0px;border:0px none;font-variant-num=
eric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-heig=
ht:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-seri=
f;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;colo=
r:rgb(36,39,41)">In my understanding, the versions of the kernel, libraries=
 and tools are independent from Yocto version. If you need to migrate to a =
new version of the Linux kernel, you have to modify/add the right recipe wi=
thout worrying about the Yocto version.</p>
<p style=3D"margin-bottom:1em;padding:0px;border:0px none;font-variant-num=
eric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-heig=
ht:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-seri=
f;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;colo=
r:rgb(36,39,41)">Thus, the maintenance work -security, bugs, optimization- =
should relate to the recipes and not to Yocto itself.</p>
<p style=3D"margin-bottom:1em;padding:0px;border:0px none;font-variant-num=
eric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-heig=
ht:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-seri=
f;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;colo=
r:rgb(36,39,41)">Updating Yocto may have sens for me when we need to use ne=
w bitbake feature or new architecture but not to use new version of package=
. I think we should keep in mind to manage a certain consistency and compat=
ibility between the different versions of the recipes in order for example =
to use the right version of the openssl library with the right version of Q=
t or even between the right version of the kernel and drivers, etc.<br>Than=
ks,<br>Mohamed</p>
<br>
</blockquote></div>

--000000000000cde34905a73e12f2--
