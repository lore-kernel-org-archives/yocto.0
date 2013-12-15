Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A95DBE0049A
	for <yocto@yoctoproject.org>; Sun, 15 Dec 2013 05:48:14 -0800 (PST)
Received: by mail-we0-f173.google.com with SMTP id u57so3677560wes.32
	for <yocto@yoctoproject.org>; Sun, 15 Dec 2013 05:48:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=yS9jK5W35MeC9IY6BC1HpfB3UXSL39pVVGRJy8XCudE=;
	b=kzJigotPJYfvx9c3UtYRRyRxmvgY2MglCyquy5/KFRGGrEi5f11QxWlCElxQ89n1pM
	jO2SymwXZt/P1Pv1RPwOmeqL/UGe1e4mqtNR73XxBxt9EDvtK3T2aXiN4yiNrxYPefhX
	gqu9GfLi30O1Ak16ShwI5wsUY0Ft3sXk0L82g3PHj9m848gqU+pBYWF2juS97SSa0g1r
	0reAFjUT1eDxVCMqqJxgS3ykBPFUrW6TC++QCRkfxxmozznjuvK31jvx824sgRtxhSQT
	PgtDip1ujKBOR72BKMJqjez93M6InfSXdAqm02jpaY0tDSJmgoyUaSvbjWRwnrfYVAmR
	GPUQ==
X-Gm-Message-State: ALoCoQle4rp53dByNq0Wp9yuuZ7QAjXNDfgPy/qBgnbjVaCiaV/fQlri0hD7qJhU07Wda0/6xUz1
X-Received: by 10.180.160.239 with SMTP id xn15mr9626885wib.17.1387115292709; 
	Sun, 15 Dec 2013 05:48:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Sun, 15 Dec 2013 05:47:52 -0800 (PST)
X-Originating-IP: [5.13.221.193]
In-Reply-To: <1384274279-16413-1-git-send-email-andrei@gherzan.ro>
References: <1384274279-16413-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 15 Dec 2013 15:47:52 +0200
Message-ID: <CAK18fxH_WtgWLzgRAJn+5=1nzUcnmnyX6S=bqegzgxHZu6koAA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Cc: Dan McGregor <dan.mcgregor@usask.ca>
Subject: Re: [meta-raspberrypi][PATCH 1/1] wiringpi: Add new package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 15 Dec 2013 13:48:16 -0000
Content-Type: multipart/alternative; boundary=047d7b62427848ea4004ed92f2ff

--047d7b62427848ea4004ed92f2ff
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Nov 12, 2013 at 6:37 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> From: Dan McGregor <dan.mcgregor@usask.ca>
>
> Commit created from merging:
>
> https://github.com/SaskatoonTechworks/meta-raspberrypi/commit/c8046050db1f0026c1f10e41d95619d86ac7a822
>
> https://github.com/SaskatoonTechworks/meta-raspberrypi/commit/fe2467c0e82ff3d243993bdffde6a24754c3a7f6
>
> https://github.com/SaskatoonTechworks/meta-raspberrypi/commit/72f7705cbac99b834654894b545d5fa431a13b51
>
> Added some minor changes:
> * remove PR
> * remove tabs
>

Merged.

-- 
*ag*

--047d7b62427848ea4004ed92f2ff
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Nov 12, 2013 at 6:37 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">From: Dan McGregor &lt;<a href=3D"mailto:dan.mcgregor@usas=
k.ca">dan.mcgregor@usask.ca</a>&gt;<br>


<br>
Commit created from merging:<br>
<a href=3D"https://github.com/SaskatoonTechworks/meta-raspberrypi/commit/c8=
046050db1f0026c1f10e41d95619d86ac7a822" target=3D"_blank">https://github.co=
m/SaskatoonTechworks/meta-raspberrypi/commit/c8046050db1f0026c1f10e41d95619=
d86ac7a822</a><br>


<a href=3D"https://github.com/SaskatoonTechworks/meta-raspberrypi/commit/fe=
2467c0e82ff3d243993bdffde6a24754c3a7f6" target=3D"_blank">https://github.co=
m/SaskatoonTechworks/meta-raspberrypi/commit/fe2467c0e82ff3d243993bdffde6a2=
4754c3a7f6</a><br>


<a href=3D"https://github.com/SaskatoonTechworks/meta-raspberrypi/commit/72=
f7705cbac99b834654894b545d5fa431a13b51" target=3D"_blank">https://github.co=
m/SaskatoonTechworks/meta-raspberrypi/commit/72f7705cbac99b834654894b545d5f=
a431a13b51</a><br>


<br>
Added some minor changes:<br>
* remove PR<br>
* remove tabs<br></blockquote><div><br></div><div>Merged.</div><div><br></d=
iv><div>--=A0</div><div><b style=3D"color:rgb(51,51,51);font-family:Arial;t=
ext-align:center">ag</b></div></div>
</div></div>

--047d7b62427848ea4004ed92f2ff--
