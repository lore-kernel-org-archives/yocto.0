Return-Path: <alain.achkar@triacta.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D31E1E00AAA; Thu, 23 Mar 2017 08:51:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B3F5E00777
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 08:51:21 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id r203so62419297oib.3
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 08:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triacta.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=SEWDDCu/S2u1Zokov2cEN/q8L0mbZi6hfRc0DIczXTE=;
	b=OmbfgJU1x5pLXfZ9LOO041BYuUToEr29n1kP5m4Btgzaf6isd35HA5X3SA/N2C6IMV
	M6gOOC5dQWiG7Q8vHG91738lqo+j22YTtHhBAUSeAuVxaJDLNFX2hji2ICHGoXbiV+zh
	/fwFzWEpVh/uSvzVEwA8hX4nWsfzzh0uxx//k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SEWDDCu/S2u1Zokov2cEN/q8L0mbZi6hfRc0DIczXTE=;
	b=rLIfK0L3Gr399FMxjaizwJlVREyf2ubxIX5+RI1oYpJd8LJF+srstcFc4Mzq9/LPGm
	Jc/vtRGCQGDOJ6YuLTedmm4N274jIXiosIGrP51O/MSsDZtt4WM6Uz5VjVU4rTsH3CGp
	ZH3zwU8PjTbqFxz31G9atMtCAW/h60A+XBqVfznpUTd2IkPfLS6Mpo+8HjEBcMDf7SIk
	SNsonKKa5mP9tBo6jhB1QMk4mj9aYO5rVaeFA7fKTDE2BcweqFoH3mNnx6HY7/1AYR49
	reFGUQxDFVfdVMkesqJRP2eWPJGPbHqlELjjoFkGW9j1fvdaWfCynHJSsmWun+ETP73P
	JTUQ==
X-Gm-Message-State: AFeK/H2s1HNbfjTRa0oQ1ZqJR73LkFn/DSBJPzcPI8nl303T9D6bm9cWsqE827JhKjPetbfbLKa07fOPmuYqoMrw
X-Received: by 10.202.87.81 with SMTP id l78mr1820693oib.1.1490284280086; Thu,
	23 Mar 2017 08:51:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.21 with HTTP; Thu, 23 Mar 2017 08:50:39 -0700 (PDT)
From: Alain Achkar <alain.achkar@triacta.com>
Date: Thu, 23 Mar 2017 11:50:39 -0400
Message-ID: <CAGkf0HDQYKbKYYH=eQdrnBkcrPDXm0LsaQpC_3XWN1HSbnikWQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to interpret the "Recipes reporting system" (e.g. for Python3 3.4, 3.5, 3.6)
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
X-List-Received-Date: Thu, 23 Mar 2017 15:51:32 -0000
Content-Type: multipart/alternative; boundary=001a1147ce8c210fdd054b67d958

--001a1147ce8c210fdd054b67d958
Content-Type: text/plain; charset=UTF-8

Hello!

Is there any brief README or documentation about the "Recipe reporting
system" ?

For example: http://recipes.yoctoproject.org/rrs/recipedetail/297/

Is it automatically generated or manually maintained? (If you look at the
field Source URI, it points to Python-3.4.3.tar.xz but the Recipe file
points to python3_3.5.3.bb which contains:

SRC_URI = "http://www.python.org/ftp/python/${PV}/Python-${PV}.tar.xz \



I am trying to understand how/if I can use it. For example, if I am using
Jethro and I want Python 3.5 or 3.6, how can I use the "Recipe reporting
system" to achieve this? (I don't want to upgrade to Krogoth or Morty)

In Jethro, I have:


*poky/meta/recipes-devtools/python/python3_3.4.3.bb
<http://python3_3.4.3.bb>*

which of course builds Python 3.4

I know that if I download Morty, I get:

*poky/meta/recipes-devtools/python/python3_3.5.2.bb
<http://python3_3.5.2.bb>*

so, I tried copying this recipe into my Jethro source tree (at the same
location) but I got too many errors (I think there are several patches that
are needed).

So, is it possible to use the "Recipe reporting system" to see changes in
another branch and bring them in to my branch?

Moreover, if Python 3.6 is not available in Morty, how can I make a recipe
for it?

Thanks!

--001a1147ce8c210fdd054b67d958
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>Is there any brief README or doc=
umentation about the &quot;Recipe reporting system&quot; ?</div><div><br></=
div><div>For example:=C2=A0<a href=3D"http://recipes.yoctoproject.org/rrs/r=
ecipedetail/297/">http://recipes.yoctoproject.org/rrs/recipedetail/297/</a>=
<br></div><div><br></div><div>Is it automatically generated or manually mai=
ntained? (If you look at the field Source URI, it points to Python-3.4.3.ta=
r.xz but the Recipe file points to <a href=3D"http://python3_3.5.3.bb">pyth=
on3_3.5.3.bb</a> which contains:<br></div><div><br></div><div><pre style=3D=
"padding:0px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);font-size:13=
.3333px"><span class=3D"gmail-nv" style=3D"color:rgb(51,102,153)">SRC_URI</=
span> <span class=3D"gmail-o">=3D</span> <span class=3D"gmail-s2" style=3D"=
color:rgb(221,34,0);background-color:rgb(255,240,240)">&quot;<a href=3D"htt=
p://www.python.org/ftp/python/${PV}/Python-${PV}.tar.xz">http://www.python.=
org/ftp/python/${PV}/Python-${PV}.tar.xz</a> \</span>
</pre></div><div><span class=3D"gmail-s2" style=3D"color:rgb(221,34,0);back=
ground-color:rgb(255,240,240)"><br></span></div><div><br></div><div>I am tr=
ying to understand how/if I can use it. For example, if I am using Jethro a=
nd I want Python 3.5 or 3.6, how can I use the &quot;Recipe reporting syste=
m&quot; to achieve this? (I don&#39;t want to upgrade to Krogoth or Morty)<=
/div><div><br></div><div>In Jethro, I have:</div><div><br></div><div><font =
face=3D"monospace, monospace"><b>poky/meta/recipes-devtools/python/<a href=
=3D"http://python3_3.4.3.bb">python3_3.4.3.bb</a><br></b></font></div><div>=
<br></div><div>which of course builds Python 3.4</div><div><br></div><div>I=
 know that if I download Morty, I get:</div><div><br></div><div><div><font =
face=3D"monospace, monospace"><b>poky/meta/recipes-devtools/python/<a href=
=3D"http://python3_3.5.2.bb">python3_3.5.2.bb</a></b></font></div></div><di=
v><br></div><div>so, I tried copying this recipe into my Jethro source tree=
 (at the same location) but I got too many errors (I think there are severa=
l patches that are needed).</div><div><br></div><div>So, is it possible to =
use the &quot;Recipe reporting system&quot; to see changes in another branc=
h and bring them in to my branch?</div><div><br></div><div>Moreover, if Pyt=
hon 3.6 is not available in Morty, how can I make a recipe for it?</div><di=
v><br></div><div>Thanks!</div><div><br></div><div><br></div><div><div><br><=
/div><br>
</div></div>

--001a1147ce8c210fdd054b67d958--
