Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71ACFE00D97; Mon,  8 Feb 2016 08:04:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AC65E0086B
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 08:04:37 -0800 (PST)
Received: by mail-ig0-f175.google.com with SMTP id hb3so58394245igb.0
	for <yocto@yoctoproject.org>; Mon, 08 Feb 2016 08:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mBXROUROw4FBmr1h3IGT9DGTEJ+yoGsn3cGeoeg+h7c=;
	b=kNyjAMmCF142gJiOYmOADPgAagp2+Lk7t4AkLVqmV/qZ3ln6B6MVC9nPSTDB9Nr9E4
	GC6g07PkhXi+ONfeM1D/mcfF+wZobzQkwtFNlcaP+RzQQh+SVEj+dX8HKOSwwEafBbsT
	o8oXI12SNJq09IhanKQIvuGxeFGP7hE/GDb4o2e8mV1W/senc70rtInVB//nxa85iwZt
	MkoDEfPvjvpQxGMD8giQy0iQYn7AFW4mW7FAcXm68yQk0CI+ikZZse2Dlj03z3db7Onz
	R4lqd4mWjQvWLv2VMjbhUGe2UGI3cK7CYix2v3fgY00pd6KvrxDy6W1aS/zhl9xnKumA
	fgEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mBXROUROw4FBmr1h3IGT9DGTEJ+yoGsn3cGeoeg+h7c=;
	b=YKhkqqMqjW59whJzeLwKHw04nL3g//nE8zlIbbDcKxRVM638BTVWzz5vys94bk5A2X
	S2lEKZmIiLnBBnhWUuUW6/MEtWK7LJBtwXsQnHuBxJkoLMRY294jTYe4gYT+IZxrKCc+
	95ELTT0j/CaN4/fLPXwhgGjzKrtytf9T0ZYp+RmXJAKRDGb7aC23dkah13TetOtJygNg
	9YU6Cbg2XEggwbvf62n6EttftBkVvEUstUtzatMkLhtetibb9mO3r769tt15vjP99jGo
	IV8mC5jAdsdHdwhbgl9C9jLbgH45Icj8R0AkUI/Hj0h1LLvoozlxWH44d37TjAvNe616
	K0vQ==
X-Gm-Message-State: AG10YOQ6ZryHP1AP8f56LYlcka6g4/HypY+UuadTUAFW8SWkGxuQ/ibFX4DqnKj8mxTXtyd3ZpKo6v17/lHt52Ow
X-Received: by 10.50.126.8 with SMTP id mu8mr28040686igb.52.1454947477228;
	Mon, 08 Feb 2016 08:04:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 8 Feb 2016 08:04:17 -0800 (PST)
In-Reply-To: <2236FBA76BA1254E88B949DDB74E612B41A6F30D@IRSMSX102.ger.corp.intel.com>
References: <2236FBA76BA1254E88B949DDB74E612B41A6F227@IRSMSX102.ger.corp.intel.com>
	<CAJTo0LY6-=w7W6Cwx4JxmQmOLktauPhxFN+_VdT9Hj0PK0n1dQ@mail.gmail.com>
	<2236FBA76BA1254E88B949DDB74E612B41A6F30D@IRSMSX102.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Feb 2016 16:04:17 +0000
Message-ID: <CAJTo0LZ3buNGnROT0ufhosvtpjNPS8L4QMjYq+deKb8htQSGzA@mail.gmail.com>
To: "Reshetova, Elena" <elena.reshetova@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the correct way to get a list of package run-time dependencies during the build process?
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
X-List-Received-Date: Mon, 08 Feb 2016 16:04:43 -0000
Content-Type: multipart/alternative; boundary=047d7b1635bf8c2fd5052b445bcd

--047d7b1635bf8c2fd5052b445bcd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5 February 2016 at 10:45, Reshetova, Elena <elena.reshetova@intel.com>
wrote:

> recipe.r_deps =3D d.getVar('RDEPENDS_' + recipe.name, True)
>
>
>
> or even simple:
>
>
>
> recipe.r_deps =3D d.getVar('RDEPENDS=E2=80=99, True)
>
>
Did you mean RDEPENDS_ + package name?

Ross

--047d7b1635bf8c2fd5052b445bcd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 February 2016 at 10:45, Reshetova, Elena <span dir=3D"ltr">&lt;<a href=
=3D"mailto:elena.reshetova@intel.com" target=3D"_blank">elena.reshetova@int=
el.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"=
MsoNormal"><span lang=3D"EN-GB">recipe.r_deps =3D d.getVar(&#39;RDEPENDS_&#=
39; + </span><a href=3D"http://recipe.name" target=3D"_blank"><span lang=3D=
"EN-GB">recipe.name</span></a><span lang=3D"EN-GB">, True)<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-GB">or even simple:<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB">recipe.r_deps =
=3D d.getVar(&#39;RDEPENDS=E2=80=99, True)<u></u><u></u></span></p><p class=
=3D"MsoNormal"></p></blockquote></div><br>Did you mean RDEPENDS_ + package =
name?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=
Ross</div></div>

--047d7b1635bf8c2fd5052b445bcd--
