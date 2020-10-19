Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web11.11722.1603108209733425610
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 04:50:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qCfOWs+i;
 spf=pass (domain: gmail.com, ip: 209.85.222.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id r9so3085389uat.12
        for <yocto@lists.yoctoproject.org>; Mon, 19 Oct 2020 04:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IiBNfGUROklU17raFnseBBrgSPggkZNbKv8wswIuny8=;
        b=qCfOWs+ihPdQQmxVuuiYF1NegFR7lJihKyvygQuHMGTH4847EG+j0JFsbsappIR1Mi
         W7AwCqsII1ltgP8YaCWMGAcAM+vuD+TIzs6xdkBJIGym7nXTC2LSjC4ZN3q+rGihy/0I
         +ZQW75CrVXpiqKvlVj4B7E4pM6Hw8RT58nja0xouKWlHQxNBcBXiyx9IM6t/wQOiPzOs
         NMyIFHYpDfazKsBhKSSvpBRVJAmwFt8TWwKsui43W62QG2zZYStV23AdxO8fCPodYIrP
         hRb5+8gRFb2Ra3FqUFTqJlt59v0gc1UM2F5V7WQIYxdx6Fp4Mms4jFDNEnTXors3utYz
         vZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IiBNfGUROklU17raFnseBBrgSPggkZNbKv8wswIuny8=;
        b=K+Sn3cJcz46l17joVAaZkhKo07BTj7dT1q7RY4WqDBg/K1UEkwiSTU36GgkLZq88FU
         77hR9boXq5I1jkpQb0omyo9h5Q01maa6fTd9Qsxayy0fd7hm9XyXYhASRenbJvVvAqzv
         iV9Kz8mqudS2u/K1mzc5kFrYV9VIcr3MnhBJtY5J+ATQPijxLT++Jobs09ENxnTsEY9i
         PU3namNLBGnAvAYQMrNxPBDdCNIYMDfIvL0su0DNhXbY8SKHq7cqy74uaSTOaThtd6S+
         nD08ScJrwz/J7RNoGgtd5EGSuGtnSh3YZioB3wWeXQac9A/dc6nrXvEGEK3wYPQCiZaf
         Bc0g==
X-Gm-Message-State: AOAM531SEWAVLz6kmbZ5N1hyH4CPXNadxkK2yiZu+ydUR4aHAa0q9/RN
	DgrRmI/mHytfiXslWIiVTvPZLcXO3UzINArCc7M=
X-Google-Smtp-Source: ABdhPJy517rD3v2VZpjsAxe20GUbOykarNJ0+gnYY2WMLC29BgojNog3rK/o761kCsQjTYOgSbk8H5/vVpVtAGXhDy4=
X-Received: by 2002:ab0:7143:: with SMTP id k3mr6670047uao.93.1603108208808;
 Mon, 19 Oct 2020 04:50:08 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.163F60F774955E72.8803@lists.yoctoproject.org> <20201019112922.l6d4c42sf2hwrpyg@qschulz>
In-Reply-To: <20201019112922.l6d4c42sf2hwrpyg@qschulz>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 19 Oct 2020 13:49:57 +0200
Message-ID: <CANNYZj8LUdJQdZyMZZMiLqjPVEH7pXiosyEp5PK+4Y-JVu3u0g@mail.gmail.com>
Subject: Re: [yocto] #yocto methodology to port from older yocto revisions to current
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: steven.monsees@baesystems.com, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000052980705b204b7a2"

--00000000000052980705b204b7a2
Content-Type: text/plain; charset="UTF-8"

I feel that porting from an older Yocto release to a newer one is not the
best approach. The delta can be very large, and it can be very painful and
time consuming to handle it all at once. By the time you're done, the newer
release may be already EOL or close to it. The right approach, in my
opinion, is to track upstream master branches and stay as close to their
tips as possible, solving any new issues as they happen in a manageable,
predictable manner. Then you simply branch off releases when the
corresponding branches are created upstream.

Alex

On Mon, 19 Oct 2020 at 13:29, Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Steve,
>
> On Mon, Oct 19, 2020 at 11:22:41AM +0000, Monsees, Steven C (US) via
> lists.yoctoproject.org wrote:
> >
> > Hello:
> >
> > I am currently at Yocto release "Rocko 2.4.1" and I am looking into the
> effort to port to the latest Yocto release...
> >
> > We have been using this  rocko platform revision for the last few years
> in a project, and now want to move to the latest supported release.
> >
> > Is there a preferred established methodology/guidelines when porting
> projects from much older established revisions of Yocto?
> >
>
> You have a few of the changes highlighted in:
> https://docs.yoctoproject.org/ref-manual/migration.html
>
> Obviously, you'd need to do all the changes between Rocko and the
> version you're targetting (highly recommend dunfell (3.1) as it's an
> LTS).
>
> > Is it considered better to port an established project directly to a new
> Yocto release, or to slowly migrate the yocto revision to the desired
> release ?
> >
>
> I've done one upgrade only (krogoth 2.1 to thud 2.6) and it was direct,
> I'm not sure there's any benefit in doing incremental upgrades?
>
> Good luck :)
> Quentin
>
> 
>
>

--00000000000052980705b204b7a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I feel that porting from an older Yocto release to a =
newer one is not the best approach. The delta can be very large, and it can=
 be very painful and time consuming to handle it all at once. By the time y=
ou&#39;re done, the newer release may be already EOL or close to it. The ri=
ght approach, in my opinion, is to track upstream master branches and stay =
as close to their tips as possible, solving any new issues as they happen i=
n a manageable, predictable manner. Then you simply branch off releases whe=
n the corresponding branches are created upstream.</div><div><br></div><div=
>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, 19 Oct 2020 at 13:29, Quentin Schulz &lt;<a href=
=3D"mailto:quentin.schulz@streamunlimited.com">quentin.schulz@streamunlimi=
ted.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Hi Steve,<br>
<br>
On Mon, Oct 19, 2020 at 11:22:41AM +0000, Monsees, Steven C (US) via <a hr=
ef=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">l=
ists.yoctoproject.org</a> wrote:<br>
&gt; <br>
&gt; Hello:<br>
&gt; <br>
&gt; I am currently at Yocto release &quot;Rocko 2.4.1&quot; and I am look=
ing into the effort to port to the latest Yocto release...<br>
&gt; <br>
&gt; We have been using this=C2=A0 rocko platform revision for the last fe=
w years in a project, and now want to move to the latest supported release.=
<br>
&gt; <br>
&gt; Is there a preferred established methodology/guidelines when porting =
projects from much older established revisions of Yocto?<br>
&gt; <br>
<br>
You have a few of the changes highlighted in:<br>
<a href=3D"https://docs.yoctoproject.org/ref-manual/migration.html" rel=3D=
"noreferrer" target=3D"_blank">https://docs.yoctoproject.org/ref-manual/mig=
ration.html</a><br>
<br>
Obviously, you&#39;d need to do all the changes between Rocko and the<br>
version you&#39;re targetting (highly recommend dunfell (3.1) as it&#39;s =
an<br>
LTS).<br>
<br>
&gt; Is it considered better to port an established project directly to a =
new Yocto release, or to slowly migrate the yocto revision to the desired r=
elease ?<br>
&gt; <br>
<br>
I&#39;ve done one upgrade only (krogoth 2.1 to thud 2.6) and it was direct=
,<br>
I&#39;m not sure there&#39;s any benefit in doing incremental upgrades?<br=
>
<br>
Good luck :)<br>
Quentin<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000052980705b204b7a2--
