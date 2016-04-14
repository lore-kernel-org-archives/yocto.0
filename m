Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFDC6E00E60; Thu, 14 Apr 2016 10:42:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1303AE00D7D
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:42:00 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id j35so67371652qge.0
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=d7PGcMfRdjiqKIOrk7oCa4u6Pp+gea1CmvTEtI++Rvg=;
	b=SIxEcVg3rAzki+zwBHut93RTO2x3uDiO6G4Gvpz6vhFoFWBm45G4bsuyO2IvzWjKRp
	lmJ08PIFgILKj2Fas7vNeZEZgPf2i3PK59Xg212jIjMOOatJTO5+qxuzTEn5i1JreElf
	6O3TEokH6D0tSbhuXKN50W66gnRWSQ/o7XuZ+Gp4yTnubpl5vZBDLjNSbrSHRGyUuywf
	Arr9Znxkqjb0nNPEFm/UtP25kqzP0egCHcTkt5CvLn+m5LsAJkNKGGh/JsNXypEmnQos
	MI/4I3tlSOYfzIFMS+y0MRzH/A83LO4DTSxCWcf37jz8G1hUTMmiBbMHgiKRSiHmwNyY
	FIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=d7PGcMfRdjiqKIOrk7oCa4u6Pp+gea1CmvTEtI++Rvg=;
	b=RPfxQV37gwz1HNpYtzPL3IJ62crf7olQFydcPWYYquZl54h076m45jb0B6zH//ggvu
	bwI3EnFZr/wHT/InFn7koBm+OTyxkv9OGeZVKnopPri7Gd38GMMrtbAJtJRdJcywmp03
	/tKwR7/efevly+/RWM18sFPK8nlykKrt1/lNK46qMPyagGqU0sUWO5D38sQZb5QMRUA0
	u0uQ7zua7gra2a8hbfOXTFt8oxek5VgEL9f2oTaQUmgs69Zsl9zmpUHJ0tx4XDYwx1Hh
	n1juVCFfW5NUX84SMbZzLctlopPTD8j0GPa7YDxPEeglh90v4N8y3RAACitWaubxZBMl
	4D3g==
X-Gm-Message-State: AOPr4FWEAJjp8PawkNpWbVi1/UvDuTBvhYa/Gi1JlsnjDshyYZqiUX4W8PeFDjlxfZXxf2F499UtyCNdOgBT2Q==
MIME-Version: 1.0
X-Received: by 10.140.254.213 with SMTP id z204mr10069339qhc.5.1460655719757; 
	Thu, 14 Apr 2016 10:41:59 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Thu, 14 Apr 2016 10:41:59 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Thu, 14 Apr 2016 10:41:59 -0700 (PDT)
In-Reply-To: <CALo-6+hwVYUev6Mit_-myyT26brPm0VX+LxFPDm6JySNULdsnA@mail.gmail.com>
References: <CALo-6+hwVYUev6Mit_-myyT26brPm0VX+LxFPDm6JySNULdsnA@mail.gmail.com>
Date: Thu, 14 Apr 2016 10:41:59 -0700
Message-ID: <CAMKF1sqZH7-D8yBgACKa7evuk6HfY7XL_pArpdqwS8Qq=cPddQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Charles Krinke <charles.krinke@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Understanding Yocto
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
X-List-Received-Date: Thu, 14 Apr 2016 17:42:03 -0000
Content-Type: multipart/alternative; boundary=001a113aa03050c306053075699b

--001a113aa03050c306053075699b
Content-Type: text/plain; charset=UTF-8

Repo is an Android tool for workspace management. You should be able to
download it separately and put it in path angstrom uses it too and has the
download location mentioned in readme
On Apr 14, 2016 10:37 AM, "Charles Krinke" <charles.krinke@gmail.com> wrote:

> I am trying to build an imx6 bsp and having a little trouble with the
> "repo" command.
>
> Can someone help me understand how to apt-get this package into my
> development system, please? "sudo apt-get install repo" fails, so I suspect
> it needs a name with version or a slightly different name.
>
> --
> Charles Krinke
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113aa03050c306053075699b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Repo is an Android tool for workspace management. You should=
 be able to download it separately and put it in path angstrom uses it too =
and has the download location mentioned in readme</p>
<div class=3D"gmail_quote">On Apr 14, 2016 10:37 AM, &quot;Charles Krinke&q=
uot; &lt;<a href=3D"mailto:charles.krinke@gmail.com">charles.krinke@gmail.c=
om</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv dir=3D"ltr"><div>I am trying to build an imx6 bsp and having a little tr=
ouble with the &quot;repo&quot; command.</div><div><br></div><div>Can someo=
ne help me understand how to apt-get this package into my development syste=
m, please? &quot;sudo apt-get install repo&quot; fails, so I suspect it nee=
ds a name with version or a slightly different name.<br clear=3D"all"><br>-=
- <br></div><div>Charles Krinke<br><br></div>
</div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div>

--001a113aa03050c306053075699b--
