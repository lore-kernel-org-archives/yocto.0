Return-Path: <richard.collins@guidedknowledge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 978B7E009BC; Thu, 12 Apr 2018 05:11:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03DE1E0084E
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 05:11:18 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id p15so3520300pff.11
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 05:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=guidedknowledge-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O6W5fmpEhGhpPS23kj3nIwNQKeH6mUdyudga4vqnHdo=;
	b=gkt7jXmlZUnIboLovJkuTb4svHoktgnIJ49F/yf9lAeacTVjaLL7Qu2Arpdqr81aky
	JEZe4y7UY1AceWx2Q8zH8ssQEaCc4V8l3JtTSagMwJN7jvwkTb0kk0rNJE+7cFHUiUE7
	KgbfrGwPayhOJIyZCKb0DhusEqG5mK8dKaUJFhULUdc7l2DHFzxf9CBSux/ZdyC9hkMy
	HyWrsxR6pxGfpdAOHtSfAMgVMQah4L5uwO88Huup1xCPUx11CFLIi9mjq7OGLWgQq1n5
	yBDhkzm5zg8bvgshkz/w6QuOg3YUHsWtqbvicbSiSljKxL+vFRtU2ZzIJQplAPoK5MTQ
	QWoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O6W5fmpEhGhpPS23kj3nIwNQKeH6mUdyudga4vqnHdo=;
	b=h/DJZDkAxIf7TWaRtIjcDoK1DAO3GE3IQWlJAcbylxg//L9ZpGm+40/B+RQBoHcemr
	qcxieUcUYQvtY72x2FiYid7sjvVNSRm2ub7EnEsyWEI2lHlxlKQEb0CAK4Mq3Mln8Mcd
	QfzoM5QYejZcYAe2mPdxGYQnvF0Qni5/Ninh+qG242Sm48HQF3ofkAJnO+FxlkHGciiu
	Ao+SQATmp1dq75EYB340fTHGRqfYGcUSaW8D4w8UxGdU3r4rssTMAVHxnbkag+wjCiGj
	NlWYJdVdqqJFq7YW0N23DY4rKBfOS2Kh0qSG5vVB/NPe198WC61oTF2MmOwcWA8ht07Y
	5VZQ==
X-Gm-Message-State: ALQs6tABcwrZXrHYY9SareD1zJGXcjeHpkDLSKFPBdalduUseASSTKtZ
	HmELoKnj+5HM69XtAn6Mc0X0hbqM439hxy9Y8C5pMQ==
X-Google-Smtp-Source: AIpwx49I7Xs46t4Fa2FbHDHYWBJ5lhZ1ktY+3hUaHT/kz9KeYN/hvsC4P0P3Md34k0skTrUwynaSiFJR08Id62leymw=
X-Received: by 10.98.99.4 with SMTP id x4mr7488421pfb.179.1523535078308; Thu,
	12 Apr 2018 05:11:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.164.199 with HTTP; Thu, 12 Apr 2018 05:11:17 -0700 (PDT)
In-Reply-To: <37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
From: Richard Collins <richard.collins@guidedknowledge.com>
Date: Thu, 12 Apr 2018 13:11:17 +0100
Message-ID: <CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Thu, 12 Apr 2018 12:11:19 -0000
Content-Type: multipart/alternative; boundary="001a114b15ee254e9f0569a5a73d"

--001a114b15ee254e9f0569a5a73d
Content-Type: text/plain; charset="UTF-8"

I get the following for DISTRO.

DISTRO            = "yogurt"
DISTRO_VERSION    = "BSP-Yocto-RK3288-PD17.1.1"

Can't find any reference to yogurt so I assume this is something the
supplier of our SOM's has done. Looking on their Wiki it seems to be based
on 2.1.2 (Krogoth)


Thanks for the help. :)

On 12 April 2018 at 11:21, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 04/12/2018 12:44 PM, Richard Collins wrote:
>
>> I've inherited a Yocto project that I know to be an old version. So one
>> of my tasks is to update to the latest version. Before I do this I would
>> like to know what version I have. The only information I can find is the
>> bitbake version, BB_VERSION        = "1.32.0".
>>
>
> When you run bitbake, it should also print the values of DISTRO and
> DISTRO_VERSION. Those should give a clue where you are at.
>
> Alex
>

--001a114b15ee254e9f0569a5a73d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I get the following for DISTRO.<div><br></div><div><div>DI=
STRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;yogurt&quot;</div><=
div>DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;BSP-Yocto-RK3288-PD17.1.1&quot;</=
div></div><div><br></div><div>Can&#39;t find any reference to=C2=A0<span st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline">yogurt so I assume this is something the supplier of our =
SOM&#39;s has done. Looking on their Wiki it seems to be based on=C2=A02.1.=
2 (Krogoth)</span></div><div><span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline"><br></span></div><di=
v><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline"><br><span style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline">Thanks for the he=
lp. :)</span></span></div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 12 April 2018 at 11:21, Alexander Kanavin <span dir=3D"=
ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_bl=
ank">alexander.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><span class=3D"">On 04/12/2018 12:44 PM, Richard Collin=
s wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I&#39;ve inherited a Yocto project that I know to be an old version. So one=
 of my tasks is to update to the latest version. Before I do this I would l=
ike to know what version I have. The only information I can find is the bit=
bake version, BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;.=
<br>
</blockquote>
<br></span>
When you run bitbake, it should also print the values of DISTRO and DISTRO_=
VERSION. Those should give a clue where you are at.<br>
<br>
Alex<br>
</blockquote></div><br></div>

--001a114b15ee254e9f0569a5a73d--
