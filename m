Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web10.11850.1579010648848633421
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 06:04:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kn43ggR5;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id h32so4822324uah.4
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2020 06:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hf/p27+wDFfzwBpKnSpCFX3M8FQXZul6qmYQcgymySk=;
        b=Kn43ggR5Q0yGD3v4sq/npiXZNpxdsYUxJffTUgIzdRFJ6xYx4c7eMZf87Fuwq0rgzh
         7nd6wbb7hqEP/fsROcAT9UaSCX31hJw9C/M/eKuJUOTl0sKgq4NCb6uVO7XIQv11Cx1P
         1qzR1mBPultt2T2uH8nE60pY5jXZjYUUtQSQJUvAzDl/H4Sv1n1gIqlRgY38L3NKbXqv
         lymd4T1ug7jy2PLaAF0aJh9uoHVdgsgPqfptRNTL9eXxelPVdWQFyMZLiWlMvRsaTXjq
         fbmsTRK4eq7ILcBiWk/ylMkH95/LmA5/uYiGGPYE+Ipx+PifCDHGXM6c7Wt5TnBeaHQa
         3cDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hf/p27+wDFfzwBpKnSpCFX3M8FQXZul6qmYQcgymySk=;
        b=i4fgww0X0kJ6WYQdDTnoXHf20VZeg/V7zKGCted3TXf5FSPKlUi10W3QqAHd859QCd
         7ltrCG2qEdMbxhcAf3itA4EnDuMmqZTII3qDWV+cRuHei+0F4KniR8w9RAu2WIebJJ5E
         +YIQuX7fVqmiktA4RfFC/QUfxzGOWOkcriOQ3dKvApEBCGJHKJb43k8KCfnf/fyeMZKA
         K7PBOJkn8Q3ZA1clSFniqYDpxpQX95aljBeJU8tuRPq5F3cmHHS4P7kkH62HH0irYIZw
         KJzOdKT/dpRUxghU0pD/tvoHYyecX75prV9NVCsDQlnL9w8S0NrelF8B+bPbQQgTVjIi
         JyOQ==
X-Gm-Message-State: APjAAAWVfPvE9dVFiMWJ3+aNn1/JgKW+yMySqk+/PcbhPdKt174YSkDJ
	tFRUD3mLUVQe+FSH4AcaZDpKItYNM9GXxZYU1Vg=
X-Google-Smtp-Source: APXvYqzknHYh69Arp8F/jEHA4vzHUWAQ0Wqkx3IocFffT11d4xwjeLOwjVip4yYr8EhfrO50xQknNf5vHrR7BvfQ7s4=
X-Received: by 2002:ab0:3381:: with SMTP id y1mr10129634uap.93.1579010647734;
 Tue, 14 Jan 2020 06:04:07 -0800 (PST)
MIME-Version: 1.0
References: <1049160807.70313.1579009824837.JavaMail.zimbra@inango-systems.com>
In-Reply-To: <1049160807.70313.1579009824837.JavaMail.zimbra@inango-systems.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 14 Jan 2020 15:03:56 +0100
Message-ID: <CANNYZj8De+K+p8Sq1ZvCuDE5nR5bJ1DBbhLw2ODUPNDbHbvcfA@mail.gmail.com>
Subject: Re: [yocto] Switching to OpenSSL 1.1.1 in Yocto Morty release
To: Nikolai Merinov <n.merinov@inango-systems.com>
Cc: yocto@lists.yoctoproject.org
X-Groupsio-MsgNum: 47956
Content-Type: multipart/related; boundary="000000000000c1c256059c1a10ab"

--000000000000c1c256059c1a10ab
Content-Type: multipart/alternative; boundary="000000000000c1c254059c1a10aa"

--000000000000c1c254059c1a10aa
Content-Type: text/plain; charset="UTF-8"

On Tue, 14 Jan 2020 at 14:51, Nikolay Merinov via Lists.Yoctoproject.Org
<n.merinov=inango-systems.com@lists.yoctoproject.org> wrote:

> Our company interested in updating an old Yocto releases (especially the
> Morty release) to use the OpenSSL version 1.1.1.
>
> Can Yocto Project integrate all necessary changes if Inango prepares all
> required modification to compile all the code that exists in Poky Morty
> distribution with OpenSSL 1.1.1b (version used for Thud release)?
>

I assume you want to upgrade because openssl 1.0 is no longer supported
upstream, and you want to keep your stack secure, is that so? What is the
reason behind it?

What I am getting at is that updating just one component will not solve the
security problem; you need to update your products to a supported Yocto
release.

Alex

--000000000000c1c254059c1a10aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 14 Jan 2020 at 14:51, Nikolay Mer=
inov via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Org</=
a> &lt;n.merinov=3D<a href=3D"mailto:inango-systems.com@lists.yoctoproject.=
org">inango-systems.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv><div style=3D"font-family:arial,helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)"><div style=3D"font-family:arial,helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">Our company interested in updating an old Yocto re=
leases (especially the Morty release) to use the OpenSSL version 1.1.1.<div=
><br></div><div>Can Yocto Project integrate all necessary changes if Inango=
 prepares all required modification to compile all the code that exists in =
Poky Morty distribution with OpenSSL 1.1.1b (version used for Thud release)=
?<br></div></div></div></div></blockquote><div><br></div><div>I assume you =
want to upgrade because openssl 1.0 is no longer supported upstream, and yo=
u want to keep your stack secure, is that so? What is the reason behind it?=
</div><div><br></div><div>What I am getting at is that updating just one co=
mponent will not solve the security problem; you need to update your produc=
ts to a supported Yocto release.<br></div><div><br></div><div>Alex<br></div=
></div></div>

--000000000000c1c254059c1a10aa--

--000000000000c1c256059c1a10ab
Content-Type: image/png; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64
Content-ID: <attach_0_15E9C512B0290A86_2075@groups.io>
X-Attachment-Id: attach_0_15E9C512B0290A86_2075@groups.io

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

--000000000000c1c256059c1a10ab
Content-Type: image/png; name="dummyfile.1.part"
Content-Disposition: inline; filename="dummyfile.1.part"
Content-Transfer-Encoding: base64
Content-ID: <attach_1_15E9C512B03408FA_2075@groups.io>
X-Attachment-Id: attach_1_15E9C512B03408FA_2075@groups.io

iVBORw0KGgoAAAANSUhEUgAAADgAAAAQCAYAAABDebxFAAAB5ElEQVRIid2VwXGrMBCG0wejO6MG
TAMeCmDUgGkANWAqQAUEDsnRNGAuvu683FWBqUAV/Dkkq7GIIJDkzXPezuyMsCzxf9pfywP+83j4
1wLWRF0foVSxOuv66NfePWDXtRAi2ZxEBOAdkMmttR9eoHWFvj99KmRpjy3R96egCsY0XnRZHiBl
uh1w+iMHEUGIBFKmcM4tCpvbY2swkFJF8MwaboG/DcgnuqYqfxtQiARZtvuaRefEWWsD6/GYiKBU
gTzfe/ve7uGcQ1keoFSBsjxgHK/QuoKUKaRMoXXlHWGtRVkeIEQCrSs/ngJm2Q7GNFCqgBAJjGmg
deXXGdME9t1kUZ6bO61xvAb/Y5FSpnh5+RO9NwwwV5Up4PQZAMbx6jOm98uAxjQYhnN0Ls/3ftz3
p6ALdl3rT12IBG376MdSpkE11wAC8IfH1+hHANleS9VlQSw4lrew/G7ea20Fp+sXAbuuBREFGYPg
iM3dAvX9KWgSXddiGM7QugIR4fn5Kai8c85DrwGMWXIRMNaJtgJyA2LbXS6XwIZsKaUKOOdmv2t3
DTiOVy88z/cgoqCZZNkOw3AG8NZFeS7LdqjrYxSI9+EKE9GH+z3bZO451n7YY8UBfgGgcy7ozGuS
7zPwCwC/G688sUFG/tfqsAAAAABJRU5ErkJggg==

--000000000000c1c256059c1a10ab--
