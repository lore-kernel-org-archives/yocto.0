Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web11.1058.1585033105479679818
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 23:58:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=dzmTtSSV;
 spf=pass (domain: linaro.org, ip: 209.85.219.176, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f176.google.com with SMTP id r16so8576185ybs.13
        for <yocto@lists.yoctoproject.org>; Mon, 23 Mar 2020 23:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QemCDBrEiWX8V7cZQky79RJolqmhyEe6vYepT8N9pkM=;
        b=dzmTtSSV2Ujc9ddBOne+f4Z69dc7eBQoGpuIORAPaIn94HHUV8R8NxUBfXb/mTAj+K
         o37k0wJ/MCmTX3E8BRs2MgW8ZQo4SjazVpuG64PLWPGiEBOHw6cGee+wHI1mWHw6diLj
         B56/5xaG5wQqLa/tbYnF9ALwgWZoVIAwtyJGKNjJI+iBmq6Q+irh/2DFdrjlHBcgjzCc
         YaK6BuQouNwZRwv+Gb3y6DvDbZ8U59Rae66p66rPYRxCB/NMA5rerzZnyjZBY//WHlTV
         LttvgfoL+BdfogZjtrG4MhPczIf1I4t1yd2VKFLDrw/zYfFHXgfsEOqtqQyif1Xle88F
         2JYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QemCDBrEiWX8V7cZQky79RJolqmhyEe6vYepT8N9pkM=;
        b=bgnhJpO5aUxQMpOXPn3sFXBUKvTCE9aNfwojESV7zh01vgPuvv+tad+CphS/Sy3viq
         ndRcv8+1I+bHaC4HoJYWTJ5XCuL3m1Rl3LvnE2mS5MUrGLx+c4+qbeTfs+CB5Tm3KTMS
         zTb0SwbXFL1aDSveR/phsBlnJ+mMmeE5xKECIP5M3EvAH8e5YFVXPBeE/3DzMrqeZOXJ
         CEthT6f1zRPzTPnmNGA7GIAeg7rnBXitfdj/gXZyRfRdJybKiK1/r2P2uCvAWfx4tCsx
         W/8F5+VSfj9HSFUB8c71uhCPgWK77CPGiPQslzhQ77POTf+Lpsnn9F24BB50N3tNDfAc
         S7eQ==
X-Gm-Message-State: ANhLgQ3iGPzlDjwtJhICR5V0+mGwj+p4OpDrknmepz3PQNxmRbZK9moW
	g/JJWI1Ba0bYdLwaVRrKKXC0tU52W5rGC/K/LeOWGg==
X-Google-Smtp-Source: ADFU+vsIVrdQZ6ZhceHoQBYfth6T+FoXxLDiq2rFZdnxylcQb8b25y5aUGZQ6yhaxobJBZTi5n9op0ZZaM6cJ/9YoyA=
X-Received: by 2002:a25:f201:: with SMTP id i1mr42724674ybe.371.1585033104630;
 Mon, 23 Mar 2020 23:58:24 -0700 (PDT)
MIME-Version: 1.0
References: <KDJv.1584916402885275339.1NaK@lists.yoctoproject.org>
 <CAP71Wjz8EeqLA4=RycNgxtfmZjtn1e9+t9XoaT7x+YhEynwK2Q@mail.gmail.com> <BYAPR11MB2790F49C53D49D5D1E33EB2988F10@BYAPR11MB2790.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB2790F49C53D49D5D1E33EB2988F10@BYAPR11MB2790.namprd11.prod.outlook.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Tue, 24 Mar 2020 07:58:13 +0100
Message-ID: <CAP71Wjwi-5x-a2JiYL7qUiU=RBWk49Ab7j1sGq5sW955gC37CQ@mail.gmail.com>
Subject: Re: [yocto] "Yocto Project Linux Kernel Development Manual" is gone
To: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: Vasyl Vavrychuk <vvavrychuk@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000028b7f905a194473b"

--00000000000028b7f905a194473b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

thanks Vineela

On Tue, Mar 24, 2020 at 2:36 AM Tummalapalli, Vineela <
vineela.tummalapalli@intel.com> wrote:

> Hello,
>
>
>
> During the release process, I update the docs for the release in
> old.yoctoproject.org and publish those.
>
> For 3.0.2 looks like =E2=80=9Cyocto project kernel development=E2=80=9D m=
anual was not
> added and =E2=80=9Cyocto project development tasks=E2=80=9D manual was ad=
ded twice. Sorry.
> I corrected it now.
>
> In old.yoctoproject.org, I did add =E2=80=9C=E2=80=9Dyocto project kernel=
 development
> =E2=80=9CManual and deleted the duplicate =E2=80=9CDevelopment tasks Manu=
al=E2=80=9D entry.
>
>
>
> I see it being added properly in
> https://old.yoctoproject.org/documentation but I see it is not yet
> updated in https://www.yoctoproject.org/docs/
>
> Does it take some time to update https://www.yoctoproject.org/docs/
>

it looks good on the website now.


>
> Thanks,
>
> Vineela
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Nicolas Dechesne
> *Sent:* Monday, March 23, 2020 12:38 AM
> *To:* Vasyl Vavrychuk <vvavrychuk@gmail.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] "Yocto Project Linux Kernel Development Manual" is
> gone
>
>
>
> hi,
>
>
>
> thanks for reporting, you're right.. and the Development tasks manual
> entry is listed twice.. We will investigate and fix that!
>
>
>
> cheers
>
>
>
>
>
> On Sun, Mar 22, 2020 at 11:57 PM Vasyl Vavrychuk <vvavrychuk@gmail.com>
> wrote:
>
> Latest "Docs Overview" webpage https://www.yoctoproject.org/docs/ has no
> link to "Yocto Project Linux Kernel Development Manual".
>
> Instead it shows link to "Yocto Project Development Tasks Manual" two
> times.
>
>
>
>

--00000000000028b7f905a194473b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>thanks Vineela<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 24, 2020 at 2:36 AM Tum=
malapalli, Vineela &lt;<a href=3D"mailto:vineela.tummalapalli@intel.com">vi=
neela.tummalapalli@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-6189669610398724994WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">During the release process, I update the docs for th=
e release in <a href=3D"http://old.yoctoproject.org" target=3D"_blank">old.=
yoctoproject.org</a> and publish those.<u></u><u></u></p>
<p class=3D"MsoNormal">For 3.0.2 looks like =E2=80=9Cyocto project kernel d=
evelopment=E2=80=9D manual was not added and =E2=80=9Cyocto project develop=
ment tasks=E2=80=9D manual was added twice. Sorry. I corrected it now.<u></=
u><u></u></p>
<p class=3D"MsoNormal">In <a href=3D"http://old.yoctoproject.org" target=3D=
"_blank">old.yoctoproject.org</a>, I did add =E2=80=9C=E2=80=9Dyocto projec=
t kernel development =E2=80=9CManual and deleted the duplicate =E2=80=9CDev=
elopment tasks Manual=E2=80=9D entry.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I see it being added properly in <a href=3D"https://=
old.yoctoproject.org/documentation" target=3D"_blank">
https://old.yoctoproject.org/documentation</a> but I see it is not yet upda=
ted in
<a href=3D"https://www.yoctoproject.org/docs/" target=3D"_blank">https://ww=
w.yoctoproject.org/docs/</a><u></u><u></u></p>
<p class=3D"MsoNormal">Does it take some time to update <a href=3D"https://=
www.yoctoproject.org/docs/" target=3D"_blank">
https://www.yoctoproject.org/docs/</a></p></div></div></blockquote><div><br=
></div><div>it looks good on the website now.</div><div> <br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D=
"gmail-m_-6189669610398724994WordSection1"><p class=3D"MsoNormal"><u></u><u=
></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Vineela<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctoproj=
ect.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"=
mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopro=
ject.org</a>&gt;
<b>On Behalf Of </b>Nicolas Dechesne<br>
<b>Sent:</b> Monday, March 23, 2020 12:38 AM<br>
<b>To:</b> Vasyl Vavrychuk &lt;<a href=3D"mailto:vvavrychuk@gmail.com" targ=
et=3D"_blank">vvavrychuk@gmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] &quot;Yocto Project Linux Kernel Development Ma=
nual&quot; is gone<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">hi,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">thanks for reporting, you&#39;re right.. and the Dev=
elopment tasks manual entry is listed twice.. We will investigate and fix t=
hat!<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">cheers<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Sun, Mar 22, 2020 at 11:57 PM Vasyl Vavrychuk &lt=
;<a href=3D"mailto:vvavrychuk@gmail.com" target=3D"_blank">vvavrychuk@gmail=
.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
<p>Latest &quot;Docs Overview&quot; webpage <a href=3D"https://www.yoctopro=
ject.org/docs/" target=3D"_blank">
https://www.yoctoproject.org/docs/</a>=C2=A0has no link to=C2=A0&quot;Yocto=
 Project Linux Kernel Development Manual&quot;.<br>
<br>
Instead it shows link to &quot;Yocto Project Development Tasks Manual&quot;=
 two times.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</blockquote>
</div>
</div>
</div>

</blockquote></div></div>

--00000000000028b7f905a194473b--
