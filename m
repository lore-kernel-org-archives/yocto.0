Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A46CE00563; Tue,  9 Sep 2014 10:28:47 -0700 (PDT)
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
	*      [209.85.216.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6BC5E0049D
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 10:28:37 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id w8so15686615qac.26
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 10:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=1gOWFCzKZj6JM2j3xcV6Xz+GvCFmNCz7BxXZZFDV908=;
	b=npxiwLaMgIas21rrbQ+158chQO8vEI+qy/7GX2jgYNyGkIb4NDZi0BVpOXLuthJFoJ
	5EQitR3DAcDGcIlAFdk1/tBim7iDt4au6JH6apSCNJOuYUD5xpS6bdvoXTtvUQlNtoLz
	T1thaPWBCsD7lhtGkkPIUppVAXzqr4bGzlKzv0VuAJc5fKdGIvk4vdWZ4lwl3phabAgk
	f8kRR+TdBQd+IPrI7bqAOBY7IKda/rbNvpmKXvBnB2APpiFgr58nyXhnwhWiMcFxhUz/
	0BWPeZO7J/tTuD7jXJsRra9GXP2r9lyJVK/ILi/aZxZVtL8X7qYMp4LuIhWXvKJPxDTB
	IxIg==
X-Received: by 10.224.115.79 with SMTP id h15mr38606140qaq.21.1410283716738;
	Tue, 09 Sep 2014 10:28:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Tue, 9 Sep 2014 10:28:16 -0700 (PDT)
In-Reply-To: <CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 9 Sep 2014 14:28:16 -0300
Message-ID: <CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
To: "tomek82221 Gazeta.pl" <tomek82221@gazeta.pl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Tue, 09 Sep 2014 17:28:47 -0000
Content-Type: multipart/alternative; boundary=047d7bdc78def806b70502a54398

--047d7bdc78def806b70502a54398
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 9, 2014 at 12:53 PM, tomek82221 Gazeta.pl <tomek82221@gazeta.pl>
wrote:

> ok, but where i can add INSANE_SKIP_${PN} += "installed-vs-shipped"
> in meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb
> ?
> or create
> meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bbappend
> ?
>
> thanks for your help
>

Both will work.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--047d7bdc78def806b70502a54398
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Sep 9, 2014 at 12:53 PM, tomek82221 Gazeta.pl <span dir=3D"ltr">&lt=
;<a href=3D"mailto:tomek82221@gazeta.pl" target=3D"_blank">tomek82221@gazet=
a.pl</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":9i=
t" class=3D"a3s" style=3D"overflow:hidden">ok, but where i can add INSANE_S=
KIP_${PN} +=3D &quot;installed-vs-shipped&quot;<br>
in meta-beagleboard/common-bsp/recipes-kernel/linux/<a href=3D"http://linux=
-mainline_3.8.bb" target=3D"_blank">linux-mainline_3.8.bb</a> ?<br>
or create meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3=
.8.bbappend<br>
?<br>
<br>
thanks for your help</div></blockquote></div><div class=3D"gmail_extra"><br=
></div>Both will work.<br><br><br clear=3D"all"><div><div dir=3D"ltr"><div>=
Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador=
 do Embarcados<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dass=
inatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email=
%20Diego" target=3D"_blank">www.embarcados.com.br</a><br><br>/*long live ro=
ck &#39;n roll*/<br></div></div>
</div></div>

--047d7bdc78def806b70502a54398--
