Return-Path: <germonprez@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA8CFE00559; Thu, 31 Jul 2014 05:19:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (germonprez[at]gmail.com)
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
	*      [209.85.220.172 listed in list.dnswl.org]
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DA26E00547
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 05:19:45 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id im17so4007929vcb.31
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 05:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bTIfFkJh75yDtGPGLYkS6j429VFRnRAMYwb0lwhM0mw=;
	b=AldFf8imw0vs/cdcAFmlGm0H2xtEdTycTFmdloZrJsetJi/5vBxWkVkEhBn9E9mA5/
	NqiUMxPO9iHoUKA5sXnVtR/HWdag3M7SYw6TA0zpuZY3mlW+NrgIsHUFZJE93/NsHfzH
	IAuhYGWY975THANN9g5Ihf9i6/WV348v34S6TI6XyCheBfF1Ix5P12y/ejlwILxZ1jAB
	zaqXxQ3pnAB4fi6U8Qv9Qv++mdVJEeDhOZTgLZ7aryrkWizKYqtGzlXNFw37nd+RkyDF
	fDQ704/6dZFt6llgHr1JjlVkZwyonRDCzgJpf1t4fMf53aqDFURKSkadjef1KSZocOcJ
	1bIA==
MIME-Version: 1.0
X-Received: by 10.220.15.8 with SMTP id i8mr12091528vca.45.1406809183863; Thu,
	31 Jul 2014 05:19:43 -0700 (PDT)
Received: by 10.220.125.65 with HTTP; Thu, 31 Jul 2014 05:19:43 -0700 (PDT)
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAAB965@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1B56A49860EB2D45ADE3731B15C959FDAAA4DD@G08CNEXMBPEKD01.g08.fujitsu.local>
	<CAPhnLPAe+NNPbXpqcVQPcRnuzDyZ0dZPWgfoSXK0Lrwbqb-yTg@mail.gmail.com>
	<1B56A49860EB2D45ADE3731B15C959FDAAB965@G08CNEXMBPEKD01.g08.fujitsu.local>
Date: Thu, 31 Jul 2014 07:19:43 -0500
Message-ID: <CADFygWjAdNZ_vgE=+=MnXdedgjO84L5d=DPJ761+aHBpKd2piw@mail.gmail.com>
From: Matt Germonprez <germonprez@gmail.com>
To: "leimaohui@cn.fujitsu.com" <leimaohui@cn.fujitsu.com>
X-Mailman-Approved-At: Thu, 31 Jul 2014 11:46:50 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: questions about spdx
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
X-List-Received-Date: Thu, 31 Jul 2014 12:19:48 -0000
Content-Type: multipart/alternative; boundary=001a11c3e09eabca0204ff7c49a5

--001a11c3e09eabca0204ff7c49a5
Content-Type: text/plain; charset=UTF-8

Hi Lei,

>
> I'll try to set up a FOSSologySPDX instance server and try again.
>
> Seriously, in documents of yocto, the description of spdx is too simple.
>

Agreed. These links can provide documentation.

FOSSology+SPDX:
https://github.com/spdx-tools/fossology-spdx
https://github.com/spdx-tools/fossology-spdx/wiki/Fossology-SPDX-Web-API

Yocto+SPDX:
https://sites.google.com/site/fossologyunospdx/spdx-yocto

That's to say, In the future yocto 1.7, there will be no improvement about
> spdx ?
>

Our most recent work at the University of Nebraska - Omaha has been focused
on creating a generic DoSPDX process: https://github.com/zwmcfarland/DoSPDX

It should be reasonable to bring this back to Yocto but that was not our
focus lately.

Thanks,
Matt

--001a11c3e09eabca0204ff7c49a5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div=
>Hi Lei, =C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bord=
er-left-style:solid;padding-left:1ex">


<div><br></div>
I&#39;ll try to set up a FOSSologySPDX instance server and try again.<br>
<br>
Seriously, in documents of yocto, the description of spdx is too simple.<br=
></blockquote><div><br></div><div><span style=3D"font-family:arial,sans-ser=
if;font-size:12.727272033691406px">Agreed. These links can provide document=
ation.</span></div>

<div><span style=3D"font-family:arial,sans-serif;font-size:12.7272720336914=
06px"><br></span></div><div><span style=3D"font-family:arial,sans-serif;fon=
t-size:12.727272033691406px">FOSSology+SPDX:=C2=A0</span></div><div><font f=
ace=3D"arial, sans-serif"><a href=3D"https://github.com/spdx-tools/fossolog=
y-spdx" target=3D"_blank">https://github.com/spdx-tools/fossology-spdx</a>=
=C2=A0</font></div>

<div><span style=3D"font-family:arial,sans-serif"><a href=3D"https://github=
.com/spdx-tools/fossology-spdx/wiki/Fossology-SPDX-Web-API" target=3D"_blan=
k">https://github.com/spdx-tools/fossology-spdx/wiki/Fossology-SPDX-Web-API=
</a></span></div>
<div>
<span style=3D"font-family:arial,sans-serif"><br></span></div><div><span st=
yle=3D"font-family:arial,sans-serif">Yocto+SPDX:=C2=A0</span></div><div><sp=
an style=3D"font-family:arial,sans-serif"><a href=3D"https://sites.google.c=
om/site/fossologyunospdx/spdx-yocto" target=3D"_blank">https://sites.google=
.com/site/fossologyunospdx/spdx-yocto</a></span></div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">That&#39;s to say, In the future yocto 1.7,=
 there will be no improvement about spdx ?<br>


</blockquote><div><br></div><div>Our most recent work at the University of =
Nebraska - Omaha has been focused on creating a generic DoSPDX process:=C2=
=A0<a href=3D"https://github.com/zwmcfarland/DoSPDX" target=3D"_blank">http=
s://github.com/zwmcfarland/DoSPDX</a><div>


<br></div><div>It should be reasonable to bring this back to Yocto but that=
 was not our focus lately.=C2=A0</div></div><div><br></div><div>Thanks,<br>=
Matt</div></div><div dir=3D"ltr"></div>
</div></div>

--001a11c3e09eabca0204ff7c49a5--
