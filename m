Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8A8BE00BD0; Mon, 25 Jan 2016 01:41:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C40E2E00B44
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 01:40:57 -0800 (PST)
Received: by mail-lf0-f52.google.com with SMTP id m198so80942659lfm.0
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 01:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=/pWHoQgMc5BrejxO/EAVSqWsZ415a6GR6UXCAgmImT0=;
	b=BZo6qoR7T/Yvr3VDYvVdBLxu4LKp/NCYoV7z2ijoLaKjtrlbMYZQ1MeC77Wj+hoLxF
	fKmN5SFOvbDMwMfIZLPBCDwCzv2lMnWDfKeIxBrsVNO2HAu83FP/GAixd74Bsr/KJKuL
	F45e1/dnp1Kjfnd8D/d6J/rP5/4L+0M/sN/uSNM73FXwwuUZTN5O5vQWlYiAuZnCr3FI
	fLlEXaT1SP66veq3rGgkUsgM84jQ8oqZTOWf7DVzRZ6sWARRg9pob766OGIFl9IimTJC
	Q/eLWDLLjlmx9+FuSgk6DVA0GlLd5IG4SsdtI5otorZRNDrJ9Txm0ChbwIP78BCtjKrJ
	cWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=/pWHoQgMc5BrejxO/EAVSqWsZ415a6GR6UXCAgmImT0=;
	b=bLMYS2JuPPdVXkxXfOns+Z15AZnaCx4xSpnoqRHfIjLHwEkKKEBZFE0RQ6VIBMayg+
	3O9USj6H770WitadRTmG8AiHGiDWfEQ30dVwyYViTND5aent71xL1Md9G0KmU1kUDMzO
	B94iCAMSSbmfOD/oXKwxo96oVNLD8YL0RfuMMwJZj5bNu2kypKD2qvEXy7MSFfeVeJDQ
	urqvuyahDqr/dm8JOriel4Z/U+aiXpkCM6XY4iKRHTzSmrjrLKUPJeQzn8ZT0jrdKIof
	P+K//l0IfSg1RKNgYBrbEsBQHrQIhfUm6qa/fY58FDQN7IBuQXfLb/eYNjFfD2TWfNjp
	4Img==
X-Gm-Message-State: AG10YOTZBlWBcfvA/Ay5N8SXoYb80VoS0AH0KSbivDTl1dv79PCmR6c/FpeKPYyvIaCkbzRbzYMnRjec6a9kcg==
X-Received: by 10.25.23.85 with SMTP id n82mr6063253lfi.164.1453714855139;
	Mon, 25 Jan 2016 01:40:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.171.168 with HTTP; Mon, 25 Jan 2016 01:40:35 -0800 (PST)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Mon, 25 Jan 2016 09:40:35 +0000
Message-ID: <CAMCfZKF6asR9ubz7+oKJQ6FCO8mM0ryUzq-WDBGf6AAp2+WeMw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Migrate, or not Migrate, that's the question!!!
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
X-List-Received-Date: Mon, 25 Jan 2016 09:41:00 -0000
Content-Type: multipart/alternative; boundary=001a11401fc28ba517052a255de2

--001a11401fc28ba517052a255de2
Content-Type: text/plain; charset=UTF-8

Hello folks,


I'm in a project that uses openembedded-classic and Arago stuff to build
the product's image.
A lot of problems have been raised in relation to build time, dependencies
handling, integrating new recipes, recipes tweaks etc.

We are evaluating the possibility to migrate to Yocto Project (Openembedded
Core). But some requirements MUST be met:

   - eglibc (2.12), gcc (4.5.3), u-boot, kernel and other packages versions
   must have be maintained. We cannot update it versions since this product is
   in the field for a couple of years and it was heavily tested and certified.


I read some guidelines[1][2], but my main concern is if I'm going into a
"can of worms", as most packages dating from 2011 and I do not know how
much the OpenEmbedded-core is "coupled" to glibc and gcc versions, for
example.


I think the ideal scenario is to use the most recent Yocto version and have
all nice features available. Perhaps to achieve this I have to migrate
first to "2011-1" branch of openembedded-core and have all packages
versions and custom modifications ported to the new openembedded platform
and then migrate to the a newer version.



I really appreciate if you guys have some thoughts, tips or some kind of
information that can help me to take this decision and move forward.



[1]
http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#migration
[2] http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core



Regards,

--
*dS
Diego Sueiro

Administrator of Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

--001a11401fc28ba517052a255de2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello folks,</div><div><br></div><div><br></div><div>=
I&#39;m in a project that uses openembedded-classic and Arago stuff to buil=
d the product&#39;s image.</div><div>A lot of problems have been raised in =
relation to build time, dependencies handling, integrating new recipes, rec=
ipes tweaks etc.</div><div><br></div><div>We are evaluating the possibility=
 to migrate to Yocto Project (Openembedded Core). But some requirements MUS=
T be met:</div><div><ul><li>eglibc (2.12), gcc (4.5.3), u-boot, kernel and =
other packages versions must have be maintained. We cannot update it versio=
ns since this product is in the field for a couple of years and it was heav=
ily tested and certified.</li></ul></div><div><br></div><div>I read some gu=
idelines[1][2], but my main concern is if I&#39;m going into a &quot;can of=
 worms&quot;, as most packages dating from 2011 and I do not know how much =
the OpenEmbedded-core is &quot;coupled&quot; to glibc and gcc versions, for=
 example.</div><div><br></div><div><br></div><div>I think the ideal scenari=
o is to use the most recent Yocto version and have all nice features availa=
ble. Perhaps to achieve this I have to migrate first to &quot;2011-1&quot; =
branch of openembedded-core and have all packages versions and custom modif=
ications ported to the new openembedded platform and then migrate to the a =
newer version.</div><div><br></div><div><br></div><div><br></div><div>I rea=
lly appreciate if you guys have some thoughts, tips or some kind of informa=
tion that can help me to take this decision and move forward.</div><div><br=
></div><div><br></div><div><br></div><div>[1]=C2=A0<a href=3D"http://www.yo=
ctoproject.org/docs/2.0/mega-manual/mega-manual.html#migration">http://www.=
yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#migration</a><br></d=
iv><div>[2]=C2=A0<a href=3D"http://www.openembedded.org/wiki/Migrating_meta=
data_to_OE-Core">http://www.openembedded.org/wiki/Migrating_metadata_to_OE-=
Core</a><br></div><div><br></div><div><br></div><br clear=3D"all"><div><div=
 class=3D"gmail_signature"><div dir=3D"ltr"><div>Regards,</div><div><br></d=
iv>--<br>*dS<br>Diego Sueiro<br><br>Administrator of Embarcados<br><a href=
=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_med=
ium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blan=
k">www.embarcados.com.br</a><br></div></div></div>
</div>

--001a11401fc28ba517052a255de2--
