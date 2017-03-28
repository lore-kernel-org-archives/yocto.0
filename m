Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82410E00B0B; Mon, 27 Mar 2017 19:26:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10DAAE00B01
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 19:26:12 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id 81so43418162pgh.2
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 19:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=85wQrua5eHrKKF8gV/KJQ+NolhIqqDPQJK4XhYkehzk=;
	b=K3bweGuefvd9hfOm9CczEaFgFuHYkCkhmhx5CvXfqjYYw0zzH3681glu7coFUwpiD7
	Wv9UPwuGqrlhDXdQf+eDpEZ5l4Am7RWuElXjkyUVk7Y48ckoUSyulwZrbkOc+Kww/iUb
	4h26RzT4fH9L6EqZbj1Bj1GX2S45YcqQ+5xKH5jbvWW1KG51Z0CLr9MLRNqweQhth9EB
	NzXKn9YeXtmHWJQW4hbQ6jWk1IZ3NkugBGRRIoUu3zhiw42M4hJu58jJmVlcznFjIJeB
	jZe8xOwLapMXdxxj3a/MN1N2/zhix+Lm+Ld47xKoSb4hB/CLArm3EEsxKu2VyGXN/L+X
	acaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=85wQrua5eHrKKF8gV/KJQ+NolhIqqDPQJK4XhYkehzk=;
	b=SFLPKx1pjHoMrb15yZN3Me8qLrnOnDwHDA0zIeH8nIf9DNqP1/sIfMnyQwlT4ME4TB
	W8fWVW0jY20bZ/FV/3R766EXWkOW0wdsnrHsVURRKVx8OyV9KCoqfIOK3rsU859YHv+R
	ZZ1rZ8H7g6pf5bEfOH09fOyc6M+sYVrQ2oOI8EHq62bwUZamh6zR3O8xXVul46Kse1oQ
	IogFaw/k+wFoDSbWDg0ROEMeB9dUu1nbon5f8XmYEsVKDkgxXe6Zog/1/4Ut6pgN9hOM
	+EaSSMNWe+IFfgujSbshINbszbArJUUFalOY95gCMqkwA/wkVLyafQdXloEAelfmB0iW
	RUlA==
X-Gm-Message-State: AFeK/H2Sv9jFmJOr/hgLlOliiCvs/t775YWv5kJ5OIc9mwjVB4Tv+4CHyJC2ialzJXvQXMmAdu/f7Dkp4QVkMQ==
X-Received: by 10.99.124.75 with SMTP id l11mr26957038pgn.46.1490667971837;
	Mon, 27 Mar 2017 19:26:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.164.164 with HTTP; Mon, 27 Mar 2017 19:26:11 -0700 (PDT)
In-Reply-To: <52BAB51D-FC39-4767-8244-41C8E61C894E@intel.com>
References: <9f434631-d18d-5582-dd86-13d9f5187af8@iot.bzh>
	<52BAB51D-FC39-4767-8244-41C8E61C894E@intel.com>
From: Brian Avery <avery.brian@gmail.com>
Date: Mon, 27 Mar 2017 19:26:11 -0700
Message-ID: <CAKV_0ejj8WbJJCgW2kz7VFLoo6+LH+X6dW8EXQw+4xNzMRNnGw@mail.gmail.com>
To: "Hofemeier, Ulf" <ulf.hofemeier@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is CROPS the right option for Automotive Grade Linux SDK ?
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
X-List-Received-Date: Tue, 28 Mar 2017 02:26:14 -0000
Content-Type: multipart/alternative; boundary=f403045e2f86f08393054bc12e61

--f403045e2f86f08393054bc12e61
Content-Type: text/plain; charset=UTF-8

Hi Sebastian,

CROPS in terms of cli (command line containers) is fairly well supported on
mac and windows (https://github.com/crops/docker-win-mac-docs/wiki). I have
built a number of YP based projects using these containers.

The eclipse support has suffered from a lack of resources with background
in Eclipse plugin development.  The eclipse plugin we are currently working
on does communicate with the containers using the Eclipse docker tooling
api. This is a scaled back version that we hope is doable given current
resources.
BR,
Brian Avery
an Intel employee


On Mon, Mar 27, 2017 at 9:38 AM, Hofemeier, Ulf <ulf.hofemeier@intel.com>
wrote:

> Hi Sebastien,
>
> You should be able to cross compile AGL applications using the Yocto
> project as is.
>
> Please open: http://www.yoctoproject.org/docs/current/sdk-manual/sdk-
> manual.html#the-cross-development-toolchain for more information.
>
> Thanks.
>
> Ulf Hofemeier
>
>
>
> On 3/27/17, 3:00 AM, "yocto-bounces@yoctoproject.org on behalf of
> Sebastien D" <yocto-bounces@yoctoproject.org on behalf of
> sebastien@iot.bzh> wrote:
>
>       Hi,
>
>     I'm working on Automotive Grade Linux (AGL) project [1] that is based
> on
>     Yocto and OpenEmbedded and I'm wondering if CROPS [2] is the right tool
>     to cross-build an AGL application ?
>     I'm looking for a framework which allows developers to easily
>     cross-compile application whatever is the host architecture (Windows,
>     Linux, Mac).
>
>     So Crops project seems to match my needs but this project is no longer
>     active. At least the communication mechanism seems to be superseded by
>     an eclipse plugin [3] that communicates directly with the containers.
>     But this solution (from my point of view) is too restrictive compared
> to
>     the initial one.
>
>     Any comments are appreciated.
>
>     Regards,
>     Sebastien.
>
>
>     [1] : https://www.automotivelinux.org/
>     [2] : https://github.com/crops/crops
>     [3] : https://github.com/crops/eclipse-crops
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045e2f86f08393054bc12e61
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sebastian,=C2=A0<div><br></div><div>CROPS in terms of c=
li (command line containers) is fairly well supported on mac and windows (<=
a href=3D"https://github.com/crops/docker-win-mac-docs/wiki">https://github=
.com/crops/docker-win-mac-docs/wiki</a>). I have built a number of YP based=
 projects using these containers.</div><div><br></div><div>The eclipse supp=
ort has suffered from a lack of resources with background in Eclipse plugin=
 development.=C2=A0 The eclipse plugin we are currently working on does com=
municate with the containers using the Eclipse docker tooling api. This is =
a scaled back version that we hope is doable given current resources. =C2=
=A0</div><div>BR,</div><div>Brian Avery</div><div>an Intel employee</div><d=
iv><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Mon, Mar 27, 2017 at 9:38 AM, Hofemeier, Ulf <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ulf.hofemeier@intel.com" target=3D"_blank">ulf.hofemeier@int=
el.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Sebastien=
,<br>
<br>
You should be able to cross compile AGL applications using the Yocto projec=
t as is.<br>
<br>
Please open: <a href=3D"http://www.yoctoproject.org/docs/current/sdk-manual=
/sdk-manual.html#the-cross-development-toolchain" rel=3D"noreferrer" target=
=3D"_blank">http://www.yoctoproject.org/<wbr>docs/current/sdk-manual/sdk-<w=
br>manual.html#the-cross-<wbr>development-toolchain</a> for more informatio=
n.<br>
<br>
Thanks.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ulf Hofemeier<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
On 3/27/17, 3:00 AM, &quot;<a href=3D"mailto:yocto-bounces@yoctoproject.org=
">yocto-bounces@yoctoproject.<wbr>org</a> on behalf of Sebastien D&quot; &l=
t;<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproj=
ect.<wbr>org</a> on behalf of sebastien@iot.bzh&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 Hi,<br>
<br>
=C2=A0 =C2=A0 I&#39;m working on Automotive Grade Linux (AGL) project [1] t=
hat is based on<br>
=C2=A0 =C2=A0 Yocto and OpenEmbedded and I&#39;m wondering if CROPS [2] is =
the right tool<br>
=C2=A0 =C2=A0 to cross-build an AGL application ?<br>
=C2=A0 =C2=A0 I&#39;m looking for a framework which allows developers to ea=
sily<br>
=C2=A0 =C2=A0 cross-compile application whatever is the host architecture (=
Windows,<br>
=C2=A0 =C2=A0 Linux, Mac).<br>
<br>
=C2=A0 =C2=A0 So Crops project seems to match my needs but this project is =
no longer<br>
=C2=A0 =C2=A0 active. At least the communication mechanism seems to be supe=
rseded by<br>
=C2=A0 =C2=A0 an eclipse plugin [3] that communicates directly with the con=
tainers.<br>
=C2=A0 =C2=A0 But this solution (from my point of view) is too restrictive =
compared to<br>
=C2=A0 =C2=A0 the initial one.<br>
<br>
=C2=A0 =C2=A0 Any comments are appreciated.<br>
<br>
=C2=A0 =C2=A0 Regards,<br>
=C2=A0 =C2=A0 Sebastien.<br>
<br>
<br>
=C2=A0 =C2=A0 [1] : <a href=3D"https://www.automotivelinux.org/" rel=3D"nor=
eferrer" target=3D"_blank">https://www.automotivelinux.<wbr>org/</a><br>
=C2=A0 =C2=A0 [2] : <a href=3D"https://github.com/crops/crops" rel=3D"noref=
errer" target=3D"_blank">https://github.com/crops/crops</a><br>
=C2=A0 =C2=A0 [3] : <a href=3D"https://github.com/crops/eclipse-crops" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/crops/<wbr>eclipse-cro=
ps</a><br>
<br>
=C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 ______________________________<wbr>_________________<br>
=C2=A0 =C2=A0 yocto mailing list<br>
=C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a><br>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--f403045e2f86f08393054bc12e61--
