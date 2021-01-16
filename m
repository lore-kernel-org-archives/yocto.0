Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web12.115.1610770323434499339
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jan 2021 20:12:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iveOHEAr;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: vijayrakeshmunganda@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id b5so6381748pjl.0
        for <yocto@lists.yoctoproject.org>; Fri, 15 Jan 2021 20:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=MCai7z6pdJ8JnzMdKd4w/w6sFk11MEfVQ2+gh5j9+bA=;
        b=iveOHEArIxTHStDY6psFVZCJYQSNBkTwKQh+qBnZ2WUslssB5OI3j+092DtWTGkYAr
         tnCG57pFf0D2+rEU+M2Jza3Pew7vXkVj1UtWN5EZ6qdIwbPQS1+x7wq9qH8glrP8K61n
         /Yhgr/ELGwy7NVNHPdAVF3bfDEgPPF48Pbc+adRgej07PdyqhHApS0iIvRZekkvzLHUY
         A8qdJO6sD/ysvFUfhXYfACw58s/w1blTRDd4nAZW+7dKackNfKjdd0ceVQhvfe1gZq/Y
         AEL7/GihAhjaTUjxwR7KgR8Gf7OARo66Qw1DhSHyNoVyJzo+37k9M+6LH2YQz61oguFt
         nmmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=MCai7z6pdJ8JnzMdKd4w/w6sFk11MEfVQ2+gh5j9+bA=;
        b=uZhUZstHXpOd6EERi4Lsyx4IEZAWkA2dESalAUDESMHYvXlpg+rdT5SuHWMVg0aav+
         tJyH7AbpfRb5qAlpryuZHD68t/ok14kt7pQ3vZQCUd+QQRScU5/w/nWvNhVeDUoy9sdj
         PX27d/aGa5ovMtRo7RbequkZbuL2PONQ04/IuZ1zNbECZXxDYnDyOHTSj4MLYL9km4TG
         F5l1U+KLwMuLipa/iBXOXrTIhlVywRUNp20p7k8hSQsQUfTJZ4xcJdSjF3/IBO+rNzln
         ZMLXlUlSY9ryU4CZmBeoajU1DaLG/GLtM0/mETaQ4k2NJrFX3wFAnYvkjB/hLGNqVQcy
         NflQ==
X-Gm-Message-State: AOAM5333gS3n5kDaFJAKThjHqaGmvIggVRj+ZhVt/k7w128L5VgiVPGK
	cnz4d1tqp3wasTIJ1zfmgoU=
X-Google-Smtp-Source: ABdhPJw9MUQ1rY7c96x2ZbXpMUEr2fjBuFL3U9Wl9lRUN9oo63cYXBz9lYpEJ5pUIzwZ/l3bnyaDPw==
X-Received: by 2002:a17:90b:50e:: with SMTP id r14mr14083081pjz.90.1610770322952;
        Fri, 15 Jan 2021 20:12:02 -0800 (PST)
Return-Path: <vijayrakeshmunganda@gmail.com>
Received: from ?IPv6:2405:201:c015:f064:c548:99d2:d44f:d11d? ([2405:201:c015:f064:c548:99d2:d44f:d11d])
        by smtp.gmail.com with ESMTPSA id a18sm9374026pfg.107.2021.01.15.20.12.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 20:12:02 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] requesting help
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
In-Reply-To: <CACX=-dXuJXuns3neB1rw9OrdBRuu+eNJsFXzCQSrPfmdSakpBQ@mail.gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Sat, 16 Jan 2021 09:42:00 +0530
Message-Id: <CBB8C2B0-0870-42DA-A47A-23E0D03672D0@gmail.com>
References: <CACX=-dXuJXuns3neB1rw9OrdBRuu+eNJsFXzCQSrPfmdSakpBQ@mail.gmail.com>
To: U RAVI KUMAR <uppadaravi2511@gmail.com>
X-Mailer: iPhone Mail (18C66)
Content-Type: multipart/alternative; boundary=Apple-Mail-44967E47-570D-4187-BC2F-82F04BD45F2A
Content-Transfer-Encoding: 7bit

--Apple-Mail-44967E47-570D-4187-BC2F-82F04BD45F2A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Ravi,=20

Below links might help you, choose one of the them you need. Download and =
add this recipe into the your build and recipe name to IMAGE_INSTALL_append=
 in local.conf file.=20

https://layers.openembedded.org/layerindex/recipe/67001/

https://layers.openembedded.org/layerindex/recipe/61209/

Thanks & Regards,
Vijay Rakesh

> On 16-Jan-2021, at 09:07, U RAVI KUMAR <uppadaravi2511@gmail.com> wrote:
> =EF=BB=BF
> Hello guys,
>                     I have built a linux distribution using core-image-s=
ato.I want a qtwebbrowser as one of the application to be installed on the =
OS. can anyone pls help me through this process.
>=20
> Thanks and Regards,
> ravi_uppada
>=20
>=20

--Apple-Mail-44967E47-570D-4187-BC2F-82F04BD45F2A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=
=3Dutf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"c=
ontent-type" content=3D"text/html; charset=3Dutf-8">Hi Ravi,&nbsp;<div><br>=
</div><div>Below links might help you, choose one of the them you need. Dow=
nload and add this recipe into the your build and recipe name to IMAGE_INST=
ALL_append&nbsp;in local.conf file.&nbsp;</div><div><br></div><div><a href=
=3D"https://layers.openembedded.org/layerindex/recipe/67001/">https://laye=
rs.openembedded.org/layerindex/recipe/67001/</a></div><div><br></div><div><=
a href=3D"https://layers.openembedded.org/layerindex/recipe/61209/">https:/=
/layers.openembedded.org/layerindex/recipe/61209/</a></div><div><br></div><=
div><div dir=3D"ltr">Thanks &amp; Regards,<div>Vijay Rakesh</div></div><div=
 dir=3D"ltr"><br><blockquote type=3D"cite">On 16-Jan-2021, at 09:07, U RAVI=
 KUMAR &lt;uppadaravi2511@gmail.com&gt; wrote:<br><br></blockquote></div><b=
lockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hello gu=
ys,<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; I have&nbsp;built a linux distribution&nbsp;using core-image-sato.I want=
 a qtwebbrowser&nbsp;as one of the application to be installed on the OS. c=
an anyone pls help&nbsp;me through&nbsp;this process.</div><div><br></div><=
div>Thanks and Regards,</div><div>ravi_uppada</div></div>
<span></span><br><span></span><br><span></span><br></div></blockquote></di=
v></div></body></html>

--Apple-Mail-44967E47-570D-4187-BC2F-82F04BD45F2A--
