Return-Path: <selvabe99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7127E00929; Sun, 24 Jun 2018 11:44:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (selvabe99[at]gmail.com)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5234CE00874
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2018 11:44:52 -0700 (PDT)
Received: by mail-ed1-f66.google.com with SMTP id c1-v6so4019912edt.2
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2018 11:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=//bu97DksyJmIXrY/5KB4z65f3Xi5MKPJqpsbWRmrhk=;
	b=P1MWKVIAFawAG+QrRVj780ccI3QQ/1vrFqf+7Qpm9+pNWpcTHcKjqMFOmgaYGEZ92V
	iIiZfjJ9B1J7VMIv5FJHtRFh5nECgWU217xhD8EKBzAjgBxA9ERryQYuYLHKYAhi5695
	gJp4Y9CIZJeeloF7DZVTsXb3L4RYa/Ai14X3If0grmqassQ5K7QmNh3e0wxkenBBSWh6
	+2Vhsp/9SgoR+giOx6Qf8dJDMFObvJtE20n02CY5XmVwdeW0ibXWrxbF8cNN3UNHF/Gc
	uI08c5Zo/0wItmcRWqijm6jNcf5QCd8DYhJtknkF1hY34FNRd4+NojutKhTsUsO3NGfR
	gDbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=//bu97DksyJmIXrY/5KB4z65f3Xi5MKPJqpsbWRmrhk=;
	b=OSbFtJBmL3h2rnbhVpyq0DgAyIZjWXP9Ya6e077bOtU8iKEKvhTJjyTypO5ohBJvO2
	NE6a1YQQ18n2uHNq9Ra+oe38/mc6YOUtr2zw/ZUTEa1phcWKerpEwkRqVXpv1I3uxMAr
	PeJYy5RPlPD/6hIGNYxjTHYCJJhhAY90NXAk5cAMOE/idM+CWotg9DhDrPT7a2++kwYh
	U0WdWN8+0ZaM5w5F9LkZvKUsYebJcOFh1n6k30i3NW9exsNwHrjQV8yCptuyq49DqN5y
	vYIJ4m+zVH6hlcH/Wkuz8q1vn6pNjK5wv/Jdl+L+wLiYNEqc0FOKmgOoSWdQMTzvWhSu
	Nqgg==
X-Gm-Message-State: APt69E1Bn+qSznzkc6yt96iGmnqgYJOV29D2rMRUIo+psGXlq9XnVPPO
	ib8puwcx0ig2YmDXn00oZdNnz0TTnSDRTj8GK0XLiA==
X-Google-Smtp-Source: ADUXVKJGslvPXwC8ZG/ZKuuIo4JHtAYRSGVCc2IRbS7xjWz1SXmp8Qd3Pwq4FDCIcm19djOh3brMppBWggZFtvSvkv0=
X-Received: by 2002:a50:f01c:: with SMTP id
	r28-v6mr5323574edl.91.1529865891104; 
	Sun, 24 Jun 2018 11:44:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:ee07:0:0:0:0:0 with HTTP; Sun, 24 Jun 2018 11:44:50
	-0700 (PDT)
From: Selvaraj V <selvabe99@gmail.com>
Date: Sun, 24 Jun 2018 14:44:50 -0400
Message-ID: <CAJK=4YaPrqPzU778e3shLKZuFsdNFiF4dhCYd_EA6LYsce8J4g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Python 3.6 recipes
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
X-List-Received-Date: Sun, 24 Jun 2018 18:44:52 -0000
Content-Type: multipart/alternative; boundary="000000000000fe4cfb056f67a889"

--000000000000fe4cfb056f67a889
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am new to yocto and I wanted to use Python 3.6 for my development
activities. When I searched for Python 3.6, I found that the recipe was not
available.

I had looked at the Python 3.5 recipe for using it as a template but adding
to my troubles there are patches mentioned in the recipe. How do I find
which patches to include if I am starting to write the recipes for python
3.6 ?. Can I know the procedure to create Python 3.6 recipe ?. If there
have any been any effort made to create the recipe for python 3.6 can
anyone share me that link?

Any help with respect to the above questions will be highly appreciated.

Thanks
selvaraj

--000000000000fe4cfb056f67a889
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am new to yocto=C2=A0and I wa=
nted to use Python 3.6 for my development activities. When I=C2=A0searched =
for Python 3.6, I found that the recipe was not available.=C2=A0</div><div>=
<br></div><div>I had looked at the Python 3.5 recipe for using it as a temp=
late but adding to my troubles there are patches mentioned in the recipe. H=
ow do I find which patches to include if I am starting to write the recipes=
 for python 3.6 ?.=C2=A0<span style=3D"font-size:small;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">Can<span>=C2=A0I</span></span><span style=3D"font=
-size:small;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline"><span>=C2=A0</spa=
n></span><span class=3D"gmail-gr_ gmail-gr_629 gmail-gr-alert gmail-gr_gram=
m gmail-gr_inline_cards gmail-gr_run_anim gmail-Grammar gmail-multiReplace"=
 id=3D"gmail-629" style=3D"display:inline;font-size:small;border-bottom:2px=
 solid transparent;background-repeat:no-repeat;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial"><span cl=
ass=3D"gmail-gr_ gmail-gr_695 gmail-gr-alert gmail-gr_gramm gmail-gr_inline=
_cards gmail-gr_run_anim gmail-Grammar gmail-multiReplace" id=3D"gmail-695"=
 style=3D"display:inline;border-bottom:2px solid transparent;background-rep=
eat:no-repeat;color:inherit;font-size:inherit">know</span></span><span styl=
e=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline"><span>=
=C2=A0</span>the procedure to create Python 3.6<span>=C2=A0</span></span><s=
pan class=3D"gmail-gr_ gmail-gr_699 gmail-gr-alert gmail-gr_gramm gmail-gr_=
inline_cards gmail-gr_run_anim gmail-Style gmail-multiReplace" id=3D"gmail-=
699" style=3D"display:inline;font-size:small;border-bottom:2px solid transp=
arent;background-repeat:no-repeat;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial">recipe ?. If there ha=
ve any been any effort made to create the recipe=C2=A0for python 3.6 can an=
yone share me that link?=C2=A0=C2=A0</span></div><div><span class=3D"gmail-=
gr_ gmail-gr_699 gmail-gr-alert gmail-gr_gramm gmail-gr_inline_cards gmail-=
gr_run_anim gmail-Style gmail-multiReplace" style=3D"display:inline;font-si=
ze:small;border-bottom:2px solid transparent;background-repeat:no-repeat;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial"><br></span></div><div><span class=3D"gmail-gr_ gmail-gr_6=
99 gmail-gr-alert gmail-gr_gramm gmail-gr_inline_cards gmail-gr_run_anim gm=
ail-Style gmail-multiReplace" style=3D"display:inline;font-size:small;borde=
r-bottom:2px solid transparent;background-repeat:no-repeat;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al">Any help with respect to the above questions will be highly appreciated=
.</span></div><div><span class=3D"gmail-gr_ gmail-gr_699 gmail-gr-alert gma=
il-gr_gramm gmail-gr_inline_cards gmail-gr_run_anim gmail-Style gmail-multi=
Replace" style=3D"display:inline;font-size:small;border-bottom:2px solid tr=
ansparent;background-repeat:no-repeat;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial"><br></span></div>=
<div>Thanks<br></div><div><span class=3D"gmail-gr_ gmail-gr_699 gmail-gr-al=
ert gmail-gr_gramm gmail-gr_inline_cards gmail-gr_run_anim gmail-Style gmai=
l-multiReplace" style=3D"display:inline;font-size:small;border-bottom:2px s=
olid transparent;background-repeat:no-repeat;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial">selvaraj</=
span></div><div><br></div><div>=C2=A0</div></div>

--000000000000fe4cfb056f67a889--
