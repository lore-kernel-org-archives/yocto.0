Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web11.750.1581979764661978403
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 14:49:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=a+a115AG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.48, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-ot1-f48.google.com with SMTP id j20so17701531otq.3
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2020 14:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N2f9ztK/TmSfUxPUoRd1G2DZoCODh5zSumDXh2M92uM=;
        b=a+a115AG6uSjZZPf+CK3Lp34vTxXUfUeTQPXdNHv7cLdEipymtLeC4zG2XeTSXuZxP
         MZszApv8C8tgoiB9f4QmWfpJ8t4wpxYvAvI5EGRMVvswXkBm/ORAanG+O1kBpxLGKtOw
         Rl20VFnax6tD/CRXSQEU9bXXQQCjyz9KR51Qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N2f9ztK/TmSfUxPUoRd1G2DZoCODh5zSumDXh2M92uM=;
        b=Sx6MMv05coPUPh6Z5iKH+UFKfjj7SyG/JMuYrhXZxqsk2TWH1AG421iczRUDEefhQR
         XOU2X7s3Z5/9M7qH2NnYQtnoFwukIKaovt4xzv/eRAgF91vTQRqpTcsMqVnDnSh3dTBL
         ZyiZVLywy5LBxPRnVm7HqfzOfvvWixnSiTtl3Am43CENYNOJ5d+FfxTIJlkwYyLHZIAN
         29B1iIrq2MNXobkL5/Qadjwp9VkeHS2auaejaGd2/xtAYVsh13yPAn+wGuAUreE3cDgE
         e/ldRxmrvsJnt+dqn/tTfyte/GCEXMU1Q8MtZ3os/hVsadaKuxGSa6viTt5iK4xRrzyq
         UKbA==
X-Gm-Message-State: APjAAAXCeGwWJ9E5iCfPtISOP2Oh+eL6iFharOLkt2KwDnYW3WulhewN
	XofEzhEq6HxM42KNl/+UEHEssdDr9linNdwB1PpcmA==
X-Google-Smtp-Source: APXvYqwzutsfuVLPz8aCf8a8TvJE2QJsEC0HII1gmwnKzbHqfTZ+Yggng4momthlhiq99mk6dz7NykW/o+vXLuTJJ4s=
X-Received: by 2002:a9d:7cd0:: with SMTP id r16mr14323992otn.50.1581979763799;
 Mon, 17 Feb 2020 14:49:23 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj8ux3H3-17eb1MFGFhG_vQDThxV+_gn4BEFH-PRjWUdsA@mail.gmail.com>
 <18b267a0b9ca83560766ef1c3cd8d1db77744128.camel@linuxfoundation.org>
In-Reply-To: <18b267a0b9ca83560766ef1c3cd8d1db77744128.camel@linuxfoundation.org>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Mon, 17 Feb 2020 14:49:12 -0800
Message-ID: <CADfgfobQUSu3xSqCmimLgD+DBB598GJsnC4w+tzbn9djWWRmaw@mail.gmail.com>
Subject: Re: master/master-next missing from poky repo?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dd0d42059ecd5dfd"

--000000000000dd0d42059ecd5dfd
Content-Type: text/plain; charset="UTF-8"

The caching issues are resolved as well as a tricky permissions issue.
These repositories are operating correctly again.

Please let me know if issues persist.

-- 
Michael Halstead

On Sat, Feb 15, 2020 at 2:44 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Sat, 2020-02-15 at 11:41 +0100, Alexander Kanavin wrote:
> > Something is wrong, as master and master-next are missing here?
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky/
>
> There is something wrong with the http caching on the git server. The
> branches are there, they're just not appearing immediately in the web
> protocol. I know Michael is aware and has been working on it.
>
> You can access them using the git protocol if that helps.
>
> Cheers,
>
> Richard
>
>

--000000000000dd0d42059ecd5dfd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The caching issues are resolved as well as a tricky permis=
sions issue. These repositories are operating correctly again.<div><br></di=
v><div>Please let me know if issues persist.</div><div><br></div><div>--=C2=
=A0</div><div>Michael Halstead</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 15, 2020 at 2:44 AM Richard=
 Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.p=
urdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On Sat, 2020-02-15 at 11:41 +0100, Alexander Kanav=
in wrote:<br>
&gt; Something is wrong, as master and master-next are missing here?<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/" rel=3D"nor=
eferrer" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/poky/<=
/a><br>
<br>
There is something wrong with the http caching on the git server. The<br>
branches are there, they&#39;re just not appearing immediately in the web<b=
r>
protocol. I know Michael is aware and has been working on it.<br>
<br>
You can access them using the git protocol if that helps.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--000000000000dd0d42059ecd5dfd--
