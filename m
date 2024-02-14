Return-Path: <saswatinayak2010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10FAAC4829D
	for <webhook@archiver.kernel.org>; Wed, 14 Feb 2024 06:10:20 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.35822.1707891011398621550
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 22:10:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GSNMBibT;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: saswatinayak2010@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51182ece606so493242e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 22:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707891009; x=1708495809; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YoCj9YbJXG3/kPa5uppwukzBdzwFeXZABDrPOpSomnw=;
        b=GSNMBibT5vH7F9huMjTFUBccD2Qn+NQYm7Kjlgw5IVLQm1xmDbD8iECCvXTRB72wec
         gYJQ2JAScRRzsklVqHfWomvT/eW387tMlnVmDFpuM+NTdfM+t9GVO5ro+hf1IOSzGBTz
         mJ7OznryFurns6gYkQ9kQGn3IlISnAww+teGDKFGLns/y9wNc1NQ+9xU+7Q3jtaUuEG0
         hJlq1QVFc/dYEL6OBruPb/FJMEXi9KsiQEzEvdpnB+TC+WkkRi+gh46mWo6PuFfJVqF8
         YMgHvyANxI+RfOkWn2n40yuHs8MDkIV2s51NtidmXVUIGfAYYGACqBHqtRRrAlcOPJgd
         xtLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707891009; x=1708495809;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YoCj9YbJXG3/kPa5uppwukzBdzwFeXZABDrPOpSomnw=;
        b=xQPItrAe//bjF0Nuno5gIrR8l9OTg045QTPjKR+KoES8+5OkXTOdjITc28Yc+hcBHq
         ZGyUuAjjNJfOD0MdDBgX5nBtS8cSP0IGuiO1EZhOA1tGacbD0vqIQOkPQRYmilfK7rXD
         XonmMK3YL+GOI1R2pLsWOLWpEQgYM4RIyD7QoZjERL7OYCml0mRvk9/0mUjY+qHpeKZ9
         MxNavN7CsDdr2lS/T10kyCrtlWTDGvkdNd9LrwinleFuivhOIgN1Q9y8jNsoS+1ejHhy
         lMYCEBOJW5Erc4NTv8lP/qK4QjEViAtLJkuhgJugQ8U2o4kxHwwuZ12w/Vn6ypoP1uZu
         Bnjg==
X-Gm-Message-State: AOJu0YzJu22dseaYuFFJmmuGN+NeLWjNFluSXZ/4uo6c5DeVRugAP9Ao
	DLDO95XF0F1NdqVLTCZXNHksbn3HDFlzePca9SY8iCC5ubk8g7eIgm/GxsEvvSmoIIrPv9pItyd
	ygrrFmjEWufQudXA/UgJHM8jr1/8=
X-Google-Smtp-Source: AGHT+IEkdAnAjUGu/situpIN4lMJH128mUM5FmW69+ldlGTs6k15/LxnvpiHP6eYycwT3x7BU2ptIftOLy7ZT40hWsc=
X-Received: by 2002:ac2:5613:0:b0:511:a049:7a7c with SMTP id
 v19-20020ac25613000000b00511a0497a7cmr280284lfd.30.1707891009263; Tue, 13 Feb
 2024 22:10:09 -0800 (PST)
MIME-Version: 1.0
References: <oOqR.1707584165907539093.EjWg@lists.yoctoproject.org> <c8debf1e-267f-40e0-bf8b-378d73ecaf54@pbarker.dev>
In-Reply-To: <c8debf1e-267f-40e0-bf8b-378d73ecaf54@pbarker.dev>
From: Saswati Nayak <saswatinayak2010@gmail.com>
Date: Wed, 14 Feb 2024 11:39:58 +0530
Message-ID: <CAKe-BNpXuh3+fGTyrs5H+Wamxz-JsS9f7xn8kkMerM9r29-x1A@mail.gmail.com>
Subject: Re: condition based bbapend compilation
To: Paul Barker <paul@pbarker.dev>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ec1cfc0611515c10"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 06:10:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62484

--000000000000ec1cfc0611515c10
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Khem and Paul.
I was also trying some different ways. We can keep the append file in the
dynamic-layers directory and will use the BB_DYNAMIC flag , which helped me=
.

Thanks
Saswati

On Tue, Feb 13, 2024 at 5:09=E2=80=AFPM Paul Barker <paul@pbarker.dev> wrot=
e:

> On 10/02/2024 16:56, saswatinayak2010@gmail.com wrote:
> > Hello All,
> >
> > Seeking assistance to identify a FLAG that allows the application of a
> condition-based bbappend file during the image compilation process. Any
> guidance or insights would be greatly appreciated.
> >
> > For example If 1 is set in the flag, it will indicate inclusion, while =
0
> will signify exclusion.
> >
> > Please anyone help me with an example.
>
> You can move your bbappend contents to a .inc file, e.g. 'example.inc'.
>
> Then in the bbappend file, you can conditionally include your .inc file
> with something like:
>
>     require ${@bb.utils.contains('FLAG', '1', 'example.inc', '', d)}
>
> There are some more tricks in the slides for my talk "Creating Friendly
> Layers, 2022 Edition" [1] from the Yocto Project Summit 2022.11.
>
> [1]:
> https://pub.pbarker.dev/presentations/2022-12-01%20Yocto%20Project%20Summ=
it%202022.11%20-%20Creating%20Friendly%20Layers%202022%20Edition/Friendly%2=
0Layers%202022.pdf
>
> Thanks,
>
> --
> Paul Barker
>

--000000000000ec1cfc0611515c10
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Khem and Paul.<div>I was also trying some differ=
ent=C2=A0ways. We can keep the append file in the dynamic-layers directory =
and will use the BB_DYNAMIC flag , which helped me.</div><div><br></div><di=
v>Thanks</div><div>Saswati</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 13, 2024 at 5:09=E2=80=AFPM Pau=
l Barker &lt;<a href=3D"mailto:paul@pbarker.dev">paul@pbarker.dev</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 10/02/2=
024 16:56, <a href=3D"mailto:saswatinayak2010@gmail.com" target=3D"_blank">=
saswatinayak2010@gmail.com</a> wrote:<br>
&gt; Hello All,<br>
&gt;=C2=A0 <br>
&gt; Seeking assistance to identify a FLAG that allows the application of a=
 condition-based bbappend file during the image compilation process. Any gu=
idance or insights would be greatly appreciated.<br>
&gt;=C2=A0 <br>
&gt; For example If 1 is set in the flag, it will indicate inclusion, while=
 0 will signify exclusion.<br>
&gt;=C2=A0 <br>
&gt; Please anyone help me with an example.<br>
<br>
You can move your bbappend contents to a .inc file, e.g. &#39;example.inc&#=
39;.<br>
<br>
Then in the bbappend file, you can conditionally include your .inc file<br>
with something like:<br>
<br>
=C2=A0 =C2=A0 require ${@bb.utils.contains(&#39;FLAG&#39;, &#39;1&#39;, &#3=
9;example.inc&#39;, &#39;&#39;, d)}<br>
<br>
There are some more tricks in the slides for my talk &quot;Creating Friendl=
y<br>
Layers, 2022 Edition&quot; [1] from the Yocto Project Summit 2022.11.<br>
<br>
[1]: <a href=3D"https://pub.pbarker.dev/presentations/2022-12-01%20Yocto%20=
Project%20Summit%202022.11%20-%20Creating%20Friendly%20Layers%202022%20Edit=
ion/Friendly%20Layers%202022.pdf" rel=3D"noreferrer" target=3D"_blank">http=
s://pub.pbarker.dev/presentations/2022-12-01%20Yocto%20Project%20Summit%202=
022.11%20-%20Creating%20Friendly%20Layers%202022%20Edition/Friendly%20Layer=
s%202022.pdf</a><br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
</blockquote></div>

--000000000000ec1cfc0611515c10--

