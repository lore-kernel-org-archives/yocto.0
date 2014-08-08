Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4F98E00769; Fri,  8 Aug 2014 00:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.54 listed in list.dnswl.org]
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9321DE00744
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 00:43:39 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id n16so3768915oag.41
	for <yocto@yoctoproject.org>; Fri, 08 Aug 2014 00:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=b8fiXsgNYzopnNwC2WSxUS19mBkWlSuutSSsSVUzvOQ=;
	b=K19AXMFQNLGsoH8DorVcJ+kSl4e3eQdYSU3neLoORAxcpr8xQazt3QZJpDWIsLUQ6b
	rMDAYRrYcne9iCyd9J1QSZG453MdfzRhqbcCJrDNZg11vEcPKEjF+Tot9OZUk228tyXE
	5f8YqMW/xt8zzj1qLjr8SO1nu/bd2wmY+uzTJet3Gu1KUKsEbcEH8y+FaThdkUCnSnPu
	QBqTJV9xa+0FcFH0r/JjjIkbmMaAo9DGN8LulYr64HLCd6aIcRYX6R+aX14eK8UIcYIZ
	AQIezuXSctOly/O+6/XolfuTsbMbLF74ftx14ZiePjPlgtvI74ILH0aKCR6r42Jpl/DO
	uPmg==
MIME-Version: 1.0
X-Received: by 10.60.43.38 with SMTP id t6mr28424995oel.14.1407483818987; Fri,
	08 Aug 2014 00:43:38 -0700 (PDT)
Received: by 10.202.17.204 with HTTP; Fri, 8 Aug 2014 00:43:38 -0700 (PDT)
In-Reply-To: <D0095026.15910%pourya.shirazian@daimler.com>
References: <D0095026.15910%pourya.shirazian@daimler.com>
Date: Fri, 8 Aug 2014 13:13:38 +0530
Message-ID: <CAE_REAuAi3yDstb14WDbmXwKmn0b7s9Rr+Rnw=yjkTju4LwZkA@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: pourya.shirazian@daimler.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about Package Splitting
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
X-List-Received-Date: Fri, 08 Aug 2014 07:43:46 -0000
Content-Type: multipart/alternative; boundary=001a11c2ced40ed8010500195d5d

--001a11c2ced40ed8010500195d5d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

You can do something like this if you want your own package:

PACKAGES +=3D "${PN}-frontend ${PN}-backend ${PN}-tests"

Here ${PN} means "project" and yes "project-dbg" and "project-dev" will be
created by default.

And than you can put your required files in particular package by,

FILES_${PN}-frontend =3D "${bindir}" -- just example...likewise you can hav=
e
your own packages with required files.

//Gaurang Shastri


On Fri, Aug 8, 2014 at 4:17 AM, <pourya.shirazian@daimler.com> wrote:

>  Hi,
>
>  My question is about producing multiple packages in the same recipe.
> I created a recipe e.g. =E2=80=9Cproject.bb" to produce 5 packages from t=
he same
> source repository. The package names are as following:
>
>    1. project-frontend
>    2. project-backend
>    3. project-tests
>    4. project-dbg
>    5. project-dev
>
> How do I include these packages in the assembled file system? I.e. Should
> I just include =E2=80=9Cproject=E2=80=9D as the parent name for all the s=
ub-packages or I
> should include =E2=80=9Cproject-frontend=E2=80=9D, =E2=80=9Cproject-end=
=E2=80=9D etc.
> When I tried the latter method only the first package appeared in the
> final file system.
>
>  Thanks
>
> If you are not the addressee, please inform us immediately that you have
> received this e-mail by mistake, and delete it. We thank you for your
> support.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c2ced40ed8010500195d5d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>You can do something like this if y=
ou want your own package:</div><div><br></div><div>PACKAGES +=3D &quot;${PN=
}-frontend ${PN}-backend ${PN}-tests&quot;</div><div><br></div><div>Here ${=
PN} means &quot;project&quot; and yes &quot;project-dbg&quot; and &quot;pro=
ject-dev&quot; will be created by default.</div>
<div><br></div><div>And than you can put your required files in particular =
package by,</div><div><br></div><div>FILES_${PN}-frontend =3D &quot;${bindi=
r}&quot; -- just example...likewise you can have your own packages with req=
uired files.</div>
<div><br></div><div>//Gaurang Shastri</div></div><div class=3D"gmail_extra"=
><br><br><div class=3D"gmail_quote">On Fri, Aug 8, 2014 at 4:17 AM,  <span =
dir=3D"ltr">&lt;<a href=3D"mailto:pourya.shirazian@daimler.com" target=3D"_=
blank">pourya.shirazian@daimler.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">



<div style=3D"word-wrap:break-word;color:rgb(0,0,0);font-size:14px;font-fam=
ily:Calibri,sans-serif">
<div>Hi,=C2=A0</div>
<div><br>
</div>
<div>My question is about producing multiple packages in the same recipe.=
=C2=A0</div>
<div>I created a recipe e.g. =E2=80=9C<a href=3D"http://project.bb" target=
=3D"_blank">project.bb</a>&quot; to produce 5 packages from the same source=
 repository. The package names are as following:</div>
<ol>
<li>project-frontend</li><li>project-backend</li><li>project-tests</li><li>=
project-dbg</li><li>project-dev</li></ol>
<div>How do I include these packages in the assembled file system? I.e. Sho=
uld I just include =E2=80=9Cproject=E2=80=9D as the parent name for all the=
 sub-packages or I should include =E2=80=9Cproject-frontend=E2=80=9D, =E2=
=80=9Cproject-end=E2=80=9D etc.</div>
<div>When I tried the latter method only the first package appeared in the =
final file system.</div>
<div><br>
</div>
<div>Thanks</div>
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody><tr><td><font face=3D"sans-serif, Arial, Helvetica" size=3D"-1" colo=
r=3D"#808080"><br>
If you are not the addressee, please inform us immediately that you have re=
ceived this e-mail by mistake, and delete it. We thank you for your support=
.<br>
<br>
</font>
</td></tr></tbody></table>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c2ced40ed8010500195d5d--
