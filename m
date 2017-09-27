Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E284E00B53; Wed, 27 Sep 2017 10:20:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22FAFE009F5
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:20:48 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id h4so7313732pfk.0
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Zr0LmZXFX65+3l5mXiXmIwgBUQm4sq/xZa7Bn7jHH+A=;
	b=sueWtgS/CnrC8PhZINftQKOBvtPlkMn46CxwbinQZGIAaig5LK52N9SVek+w1E11ym
	NHxV/Zmya9pkExxq/T34kGPEQWhIhuk1MrRyRlBo++1B0SGWv/bVHjhkLW6ehk4fodRi
	HVnc/Hp5jY+4oPFEF4H0Qhdq8+J5MSgKAVjO9YWLzMC6YlP77TgoztPNaO7KknNWBHcF
	Ohs2M2I0TkwfWzCjOzKjiNKHvGAQ37No28Oz63eQm+NweQwWcqaHXatbwG5m2FSDi8yl
	AekKlF8U92hzDP5Nmqqd/jLm8y6st1dyIaa+i0t4phidF+2DPfc+S/hk32dxMoSwLF1F
	rWKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Zr0LmZXFX65+3l5mXiXmIwgBUQm4sq/xZa7Bn7jHH+A=;
	b=Nt/Dg2GE/YgvZ/3Zft7RCfnwCDtlo3NSH123QHnFrYyofu/m/ndC03JmqXZNDuarFI
	HW4BhlPMoUyTMBdB+AIXxiYzlRwUkxAozGw7Aba3DB3cfp2lN7etDe8UO5KusfJPlfex
	XUaawF4QJ2BICm+6QihgSrMalyLfK7B2/rThxoTyChDtZMKhgZuYm/u6GoZdIT1Hywog
	fzlrbpU6DhFG7N208jyjQubvHRXyWCh6BQQZS3Esvq1Xp57hb7Zi/nD0T16ON14DB2U+
	+Mp4JIU0dSIha30hpI/wKdubqDYrshzubiY32Ex6QyE5b/BfBFVANuVkwEV+lwYBuheT
	GN4w==
X-Gm-Message-State: AHPjjUiL+ssjvvzeAtJLk3tzqET5F4ZBoGrOgcPF2mN7NWjkwvGX11Uk
	Fvm1i1h0W2JZSvJoLWZNopKbnJKHBZtAd7N4wx4=
X-Google-Smtp-Source: AOwi7QAStJ4NRbG/oa3IHqFz8RBzdpWzMnMyGwnpUys5pFYOAEeAoRyUzZUWjo+oxfNvi1OIA1Y771/J+X1IG3JlFdQ=
X-Received: by 10.101.85.204 with SMTP id k12mr1875793pgs.439.1506532848235;
	Wed, 27 Sep 2017 10:20:48 -0700 (PDT)
MIME-Version: 1.0
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
In-Reply-To: <CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Sep 2017 17:20:36 +0000
Message-ID: <CAMKF1sp4NnABqktpOHtRuaZ3QEsfrY1xWKpHyVfGguHr20pTAw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>, Martin Jansa <martin.jansa@gmail.com>, 
	Otavio Salvador <otavio@ossystems.com.br>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS support"
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
X-List-Received-Date: Wed, 27 Sep 2017 17:20:49 -0000
Content-Type: multipart/alternative; boundary="089e0824b77042f7ec055a2f039a"

--089e0824b77042f7ec055a2f039a
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 27, 2017 at 10:17 AM Andrei Gherzan <andrei@gherzan.ro> wrote:

> On Wed, Sep 27, 2017 at 4:23 PM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
>
>> * this reverts commit 04b37dbdb79638b17a670280058400ffaf1b6ccb.
>> * this makes qtbase and everything which depends on some qt* recipe to
>>   be effectivelly MACHINE_ARCH
>>
>> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>> ---
>>  dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 3 ---
>>  1 file changed, 3 deletions(-)
>>  delete mode 100644
>> dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>>
>> diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> deleted file mode 100644
>> index ae3f1d3..0000000
>> --- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> +++ /dev/null
>> @@ -1,3 +0,0 @@
>> -# Copyright (C) 2017 O.S. Systems Software LTDA.
>> -
>> -PACKAGECONFIG_GL_rpi   = "gles2 eglfs"
>
>
> What would be the solution though?
>
I think check for OpenGL feature to enable it
I think another thing is to also check for X11 in distro features before
enabling it

Gl support is quite soc specific so I don't think there is an elegant way
unless qt components can be built with soc specific elements as plugins or
something which then can have independent recipe



> --
> Andrei Gherzan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0824b77042f7ec055a2f039a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Wed, Sep 27, 2017 =
at 10:17 AM Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@=
gherzan.ro</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><di=
v class=3D"gmail_extra"><div><div class=3D"m_-2034679331798308697gmail_sign=
ature"><div><div>On Wed, Sep 27, 2017 at 4:23 PM, Martin Jansa <span>&lt;<a=
 href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmai=
l.com</a>&gt;</span> wrote:<br></div></div></div></div></div></div><div><di=
v class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">* this reverts commit 04b37dbdb79638b17a670280058=
400ffaf1b6ccb.<br>
* this makes qtbase and everything which depends on some qt* recipe to<br>
=C2=A0 be effectivelly MACHINE_ARCH<br>
<br>
Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com" t=
arget=3D"_blank">Martin.Jansa@gmail.com</a>&gt;<br>
---<br>
=C2=A0dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 3 ---<br>
=C2=A01 file changed, 3 deletions(-)<br>
=C2=A0delete mode 100644 dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.b=
bappend<br>
<br>
diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/dy=
namic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend<br>
deleted file mode 100644<br>
index ae3f1d3..0000000<br>
--- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend<br>
+++ /dev/null<br>
@@ -1,3 +0,0 @@<br>
-# Copyright (C) 2017 O.S. Systems Software LTDA.<br>
-<br>
-PACKAGECONFIG_GL_rpi=C2=A0 =C2=A0=3D &quot;gles2 eglfs&quot;</blockquote><=
div><br></div></div></div></div><div><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><div>What would be the solution though?</div></div></div><=
/div></blockquote><div dir=3D"auto">I think check for OpenGL feature to ena=
ble it</div><div dir=3D"auto">I think another thing is to also check for X1=
1 in distro features before enabling it</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Gl support is quite soc specific so I don&#39;t think there=
 is an elegant way unless qt components can be built with soc specific elem=
ents as plugins or something which then can have independent recipe</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto"><br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div><=
/div><div><br></div><div>--</div><div>Andrei Gherzan=C2=A0</div></div><br><=
/div></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--089e0824b77042f7ec055a2f039a--
