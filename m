Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web11.6079.1604418989276446151
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Nov 2020 07:56:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q0J2mtxs;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id p93so18795570edd.7
        for <yocto@lists.yoctoproject.org>; Tue, 03 Nov 2020 07:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F3CcFlmk3CgsBeUYBFY04w7YVNabyYTuOpCa5XJ3Ac0=;
        b=Q0J2mtxs5ZkFgFEdZLgusDU2IE/DddyN519mVPKbRnH8+b5Zy6b0LHZN8QaTJSHXpK
         0otLm8jGveWxulXDksoW6wolRpa0v34/kFOzUYbuxLDF7x8WyXIC26j7qjNU7Scd1mf5
         jAotoZpNvL1fZPhaWAyN3sO7EoXaIwAO4GKPV0dVbYS2/CsolM35hmdQtddG7CqpdoXB
         BQmXoAMIBbBqScJ0IfOZpyCRkWXf6zHTa+u3r3wjBg5f1BObbZaoMhfTS5673y6zdEqI
         My4X5ZQxc5qAskVO29y5MC95Dmiz2fYfTQ9sL1HCZChlm3hRdLNisbsIfWeprmwKj4Fb
         cKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F3CcFlmk3CgsBeUYBFY04w7YVNabyYTuOpCa5XJ3Ac0=;
        b=IWS0uXArUpol4huVDn+n69kQqyn+UFO7nq8Kaqk+UXVWmo5SQRlzkm/qE0P4XKBnLh
         P/OWnZKsdkX+Znk+wNn2aX5uzgMl+jmxYwgX3cB+Y+p3WPMZHGubV7fKIzzgq2u3vyHi
         qdaAq1WgpQVE3QMPkj1YUrZa707xStaOCgL1MAS6rLwm+lHZZP7OHHlPeOJqnojT+GOv
         ELaTGa5di3Y77pS7LW8lmFklGf6CdAwl54klNlu65bG2/0Pfk+MFMwEIECyWWgePuf+s
         qZVRcbZoR2agXyKBLzqcGgnsC//VdOilIp0DniJgZqn1roJTyVH+2LtEqXnIi6OF5zKg
         WIug==
X-Gm-Message-State: AOAM533U/R/eN/kUfzTFBLMG4z+Fz+uDpvdbwdbK5spw6OtNfFFwbFYp
	Icjx3dzJ0XIOXxA1OAUj7ygJevZ1Qo1AykGtwDc=
X-Google-Smtp-Source: ABdhPJxHddXK6T2BAAaSI5rpKzkSUDyNhhgNFHvoeEd/8s0ZUobsBPPH6p/4Zrw//cIxWzMJONHRAnlWdy1kNTxUShI=
X-Received: by 2002:a05:6402:1cb2:: with SMTP id cz18mr6761230edb.388.1604418987874;
 Tue, 03 Nov 2020 07:56:27 -0800 (PST)
MIME-Version: 1.0
References: <CA+chaQc5h=ROCtpn5CW+bJuf4JLj18TaOh3C8c-eDRq4Hwcmkg@mail.gmail.com>
 <8252.1604418365573670594@lists.yoctoproject.org>
In-Reply-To: <8252.1604418365573670594@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Tue, 3 Nov 2020 16:56:16 +0100
Message-ID: <CA+chaQfdezyKrhCM+RGdwFJfDdqa=sp7bZ5TncQOuqrMkNrOmA@mail.gmail.com>
Subject: Re: [yocto] #yocto -zeus
To: steven.monsees@baesystems.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d7db5305b335e7bb"

--000000000000d7db5305b335e7bb
Content-Type: text/plain; charset="UTF-8"

> I was use using https... that is a typo, sorry...

Then fix your typo and it will work, but I think you didn't read what I
wrote carefully enough, see the url in the log you pasted:
zeus: URL gitsm://github.com/tianocore/edk2.git;branch=master;protocol=git
what you pasted: URL: '
https://github.com/tianocore/edk2.git;branch=master;protocol=https'

You were supposed to change only protocol parameter as it was done in:
https://git.openembedded.org/openembedded-core/commit/?h=c4301758f5a1560965ca5fb69eb1492adf351ed0

not the name of the bitbake fetcher to use (from 'gitsm://' to 'https://')

On Tue, Nov 3, 2020 at 4:46 PM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=baesystems.com@lists.yoctoproject.org>
wrote:

> I was use using https... that is a typo, sorry...
>
> The error is as I describe using https... Note I do not appear to have any
> other issues downloading packages.
> I believe this might be the first time "gitsm" is used in build. Are their
> any known issues under zeus ?, Might I need to tweak the build env ?
>
> Not sure how to proceed, zeus 3.0.4 is what I amusing... are there any
> know env dependencies here ?
> 
>
>

--000000000000d7db5305b335e7bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; I was use using https... that is a typo, sorry..=
.</div><div><br></div><div>Then fix your typo and it will work, but I think=
 you didn&#39;t read what I wrote carefully enough, see the url in the log =
you pasted:</div><div>zeus: URL gitsm://<a href=3D"http://github.com/tianoc=
ore/edk2.git;branch=3Dmaster;protocol=3Dgit" target=3D"_blank">github.com/t=
ianocore/edk2.git;branch=3Dmaster;protocol=3Dgit</a></div><div>what you pas=
ted:=C2=A0<span style=3D"color:rgb(80,0,80)">URL: &#39;</span><a href=3D"ht=
tps://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttps" targe=
t=3D"_blank">https://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=
=
=3Dhttps</a><span style=3D"color:rgb(80,0,80)">&#39;</span></div><div><br>=
</div><div>You were supposed to change only protocol parameter as it was do=
ne in:</div><a href=3D"https://git.openembedded.org/openembedded-core/commi=
t/?h=3Dc4301758f5a1560965ca5fb69eb1492adf351ed0">https://git.openembedded.o=
rg/openembedded-core/commit/?h=3Dc4301758f5a1560965ca5fb69eb1492adf351ed0</=
a><br><div><br></div><div>not the name of the bitbake fetcher to use (from =
&#39;gitsm://&#39; to &#39;https://&#39;)</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 3, 2020 at 4:46 =
PM Monsees, Steven C (US) via <a href=3D"http://lists.yoctoproject.org">lis=
ts.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.c=
om@lists.yoctoproject.org">baesystems.com@lists.yoctoproject.org</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I was use u=
sing https... that is a typo, sorry...<br><br>The error is as I describe us=
ing https... Note I do not appear to have any other issues downloading pack=
ages.<br>I believe this might be the first time &quot;gitsm&quot; is used i=
n build. Are their any known issues under zeus ?, Might I need to tweak the=
 build env ?<br><br>Not sure how to proceed, zeus 3.0.4 is what I amusing..=
. are there any know env dependencies here ?
<br>
<br>
<br>
</blockquote></div>

--000000000000d7db5305b335e7bb--
