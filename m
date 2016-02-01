Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1F11E00C1E; Mon,  1 Feb 2016 06:19:06 -0800 (PST)
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
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7EABE00BEE
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 06:19:02 -0800 (PST)
Received: by mail-lb0-f180.google.com with SMTP id x4so76703421lbm.0
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 06:19:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=HHfZwZhtej3SgEWkLzyD3Y16AksJcHoCTWypNJyGO0c=;
	b=rBTEz4LisHXj7Sy07vhDYlOZQmNK8tXiztl1hoFuaWpDJHq3Cz1XCOq7gQbue9K1lY
	85AzWBgRvz9lBxIR1QTYwondo8BPcAeNor2z4bjsz7DMMIYk6yE2e62JQ7U+4Wl8Jc4+
	NWgUFRcc6FCr8qjasLZ/UJdzaQiJElFebUJjXX89vdNrjXBBvKT+2hwutpepNZ5fkboS
	5w3hwEJSjoN82S73o9nisnubtPLk3eS84EFbaseo5LsNQ9ZJZ/U8ZEKqLCkj3OzNXF5M
	hKWKRHXM6K7Nge6a/5YGEXhCeNOXOtPJvfVkJ7d2yKqIFvDRBomlzQ1DhA2cTaKJ3cqW
	aEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=HHfZwZhtej3SgEWkLzyD3Y16AksJcHoCTWypNJyGO0c=;
	b=VGyqMX6n6uQJZT1ms9lERm1c7FcXit7qJDwcrib4eKLZSmXjaK+ObWZ5aeb8VmXL+N
	CBbXOyOc49Zo0now4EcB7Y9bGlW4OLGP7NTeQ8ClAVeX4lwmCIxM0aBFacq7adgx7K+a
	7OjSM/cwp6Zw+4AwyGdaJNd+/NJ+GsGtSMM4PdCLUaouKiVVuoCVtb7hSvEU3qQmzHWp
	6NFK16doimynp24Gjc+o1ZqIfeQSWaM3m51n/Jd26zLOgIbJfQoKk+jA3stUnZrHpNt7
	mGCjkuiXZi1Jacw0B5TScRhOn94ZzE+LxPKWaoQyQm+2t9/q9gA9z16H9AOvPTbW6t06
	groQ==
X-Gm-Message-State: AG10YOSO81gUQpJll8Ebeus2c8d6YAaDTgjd5n42XfEc4qRTBcNMO74zmLQIdMoUC3WNfBfkCgQrNJD1ePoEbg==
X-Received: by 10.112.160.232 with SMTP id xn8mr7187285lbb.22.1454336340635;
	Mon, 01 Feb 2016 06:19:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.171.168 with HTTP; Mon, 1 Feb 2016 06:18:41 -0800 (PST)
In-Reply-To: <BLUPR0501MB18434F9CCFB9D423227C9F53BBDA0@BLUPR0501MB1843.namprd05.prod.outlook.com>
References: <CAMCfZKF6asR9ubz7+oKJQ6FCO8mM0ryUzq-WDBGf6AAp2+WeMw@mail.gmail.com>
	<BLUPR0501MB18434F9CCFB9D423227C9F53BBDA0@BLUPR0501MB1843.namprd05.prod.outlook.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Mon, 1 Feb 2016 14:18:41 +0000
Message-ID: <CAMCfZKHu1YtfYq3GH2R8drMSnFWwYzD8VPs2nwQcGTg4LJr3Mg@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Migrate, or not Migrate, that's the question!!!
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
X-List-Received-Date: Mon, 01 Feb 2016 14:19:06 -0000
Content-Type: multipart/alternative; boundary=001a11c38e50f7b895052ab6101b

--001a11c38e50f7b895052ab6101b
Content-Type: text/plain; charset=UTF-8

Bryan,


On 28 January 2016 at 13:49, Bryan Evenson <bevenson@melinkcorp.com> wrote:

> In my opinion, I think in the long term it would be easier to make a clean
> break.  Start with a recent branch, like Jethro, get a minimal image to
> build for your hardware and then add your own layer with your proprietary
> recipes.  I think that will be a lot easier than trying to get oe-core
> working with 5+ year old versions of gcc and eglibc.  Yes, that would mean
> additional testing, but it may be less testing/integration than you are
> currently doing just trying to keep your current image maintained.
>
>
>

Thanks for your opinion.

But unfortunately, updating the packages is out of scope in this moment
since the product is certificated and doing this will require a new process.

Maybe I can use the Arago External Pre-built Binary Toolchain (2011-09)[1]
in which is supported by TI until daisy branch[2].


[1] -
http://software-dl.ti.com/sdoemb/sdoemb_public_sw/arago_toolchain/2011_09/index_FDS.html
[2] -
http://arago-project.org/git/?p=meta-arago.git;a=tree;f=meta-arago-extras/conf/distro/include;h=23e7bcba85ab80e4bf813fd43f64c61a12ba3f0a;hb=refs/heads/daisy


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c38e50f7b895052ab6101b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Bryan,</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On 28 January 2016 at 13:49, Bryan Evenson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@melinkcorp.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal"><span s=
tyle=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"=
>In my opinion, I think in the long term it would be easier to make a clean=
 break.=C2=A0 Start with a recent branch, like Jethro, get a minimal image =
to build for your
 hardware and then add your own layer with your proprietary recipes.=C2=A0 =
I think that will be a lot easier than trying to get oe-core working with 5=
+ year old versions of gcc and eglibc.=C2=A0 Yes, that would mean additiona=
l testing, but it may be less testing/integration
 than you are currently doing just trying to keep your current image mainta=
ined.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0</span></p></blockquote></div><=
br>Thanks for your opinion.</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">But unfortunately, updating the packages is out of sc=
ope in this moment since the product is certificated and doing this will re=
quire a new process.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Maybe I can use the Arago External Pre-built Binary Toolch=
ain (2011-09)[1] in which is supported by TI until daisy branch[2].</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">[1] -=C2=A0<a href=3D"http://software-dl.ti.com/sdo=
emb/sdoemb_public_sw/arago_toolchain/2011_09/index_FDS.html">http://softwar=
e-dl.ti.com/sdoemb/sdoemb_public_sw/arago_toolchain/2011_09/index_FDS.html<=
/a></div><div class=3D"gmail_extra">[2] -=C2=A0<a href=3D"http://arago-proj=
ect.org/git/?p=3Dmeta-arago.git;a=3Dtree;f=3Dmeta-arago-extras/conf/distro/=
include;h=3D23e7bcba85ab80e4bf813fd43f64c61a12ba3f0a;hb=3Drefs/heads/daisy"=
>http://arago-project.org/git/?p=3Dmeta-arago.git;a=3Dtree;f=3Dmeta-arago-e=
xtras/conf/distro/include;h=3D23e7bcba85ab80e4bf813fd43f64c61a12ba3f0a;hb=
=3Drefs/heads/daisy</a><br><br><br clear=3D"all"><div><div class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>D=
iego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.emb=
arcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;u=
tm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.=
com.br</a><br><br>/*long live rock &#39;n roll*/<br></div></div></div>
</div></div>

--001a11c38e50f7b895052ab6101b--
