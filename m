Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E65FEE00B81; Tue, 24 Nov 2015 05:25:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAEEEE00B6F
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 05:25:40 -0800 (PST)
Received: by qkas77 with SMTP id s77so5009971qka.0
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 05:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=p2lu5Z9ch+Gd06xRXO1nSJzZqWuakX9Xt0X2pAI2G/U=;
	b=cehkrcwnXDY9YSHUIisI0zYNDUDfi0+Fjh+IKYbwylwqUoqX+5VZCa0gs4AuKddwPC
	6uPsw0jRBpjNQpdINc5a5RZ5GvmDoJyyRBrXPkN8O3JApm0hIKIoBcq1tBdiUbYJO5Lk
	f2+sdiAhz61iSzy/SHDPsqaF71O4raNe2Ev/4KvrpyPuNOtTj4JYoNRuV37OXm2mmYs2
	SZ7eMqFCbWLovTfr4NReUu8CT+aDxpzG6bNA24mMpyh4v9GG8RD4iIXbrqlrrHbHjTaV
	2SGWU+icYr5cYXOrZ1xFVA/4YBK7wyycqrdDdxnUM6FuN0UoR0xpITaqn9HuUlx8x97b
	e9Nw==
MIME-Version: 1.0
X-Received: by 10.55.81.198 with SMTP id f189mr32714703qkb.41.1448371539914;
	Tue, 24 Nov 2015 05:25:39 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.55.173.206 with HTTP; Tue, 24 Nov 2015 05:25:39 -0800 (PST)
Date: Tue, 24 Nov 2015 11:25:39 -0200
X-Google-Sender-Auth: QyaDc-sI-AY_q9H2U8d7P-C0RYc
Message-ID: <CABKVDBC-pxrhG-ypAR99WEfysTj0Qx4Am3UismqK4TGU86ZhWw@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: i.MX6DL Qt5.5 Image
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
X-List-Received-Date: Tue, 24 Nov 2015 13:25:42 -0000
Content-Type: multipart/alternative; boundary=001a114a8a2a23b788052549471c

--001a114a8a2a23b788052549471c
Content-Type: text/plain; charset=UTF-8

Recipe alsa-utils-alsaconf only create config alsa, can be migrate the
recipe fido to jethro:

http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-multimedia/alsa/alsa-utils-alsaconf_1.0.28.bb?h=fido

-- 

*Att,Cleiton Bueno*

Blog <http://www.cleitonbueno.com> | Linkedin
<http://br.linkedin.com/in/cleitonbueno> | Portal Embarcados
<http://www.embarcados.com.br/author/cleitonrbuenogmail-com/>

--001a114a8a2a23b788052549471c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Recipe alsa-utils-alsaconf only create config alsa, can be=
 migrate the recipe fido to jethro:<br><br><a href=3D"http://cgit.openembed=
ded.org/openembedded-core/tree/meta/recipes-multimedia/alsa/alsa-utils-alsa=
conf_1.0.28.bb?h=3Dfido">http://cgit.openembedded.org/openembedded-core/tre=
e/meta/recipes-multimedia/alsa/alsa-utils-alsaconf_1.0.28.bb?h=3Dfido</a><b=
r clear=3D"all"><br>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><i><b>Att,<br>Cleiton Bueno</b></i><br=
><br><font color=3D"#000000"><a href=3D"http://www.cleitonbueno.com" target=
=3D"_blank">Blog</a> | <a href=3D"http://br.linkedin.com/in/cleitonbueno" t=
arget=3D"_blank">Linkedin</a> | <a href=3D"http://www.embarcados.com.br/aut=
hor/cleitonrbuenogmail-com/" target=3D"_blank">Portal Embarcados</a> <br></=
font><br></div></div></div></div></div></div></div></div></div></div>
</div>

--001a114a8a2a23b788052549471c--
