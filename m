Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60FD0E007E4; Sun,  7 Sep 2014 03:00:36 -0700 (PDT)
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
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8DDAE003DB
	for <yocto@yoctoproject.org>; Sun,  7 Sep 2014 03:00:33 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id l6so14535931qcy.14
	for <yocto@yoctoproject.org>; Sun, 07 Sep 2014 03:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=5lk44OtGX34nDrrx3ySCnAg1/9lettbkN57TU7/R/QE=;
	b=aJeJflJLv5+eTjCMATiGi8dV1b8R8aIO6T/1Oo2TRm0QhnQb307XrkqqFIJOnGVK3W
	zYB3k2FmNF8zzpYLz8gTbaIJ6oGSJHfaDThGal0tDEBh6m/iOaiaSOmQikCMUlP1TWCM
	iLR4CSXwvunvGCeh/Oovu7zEuErKPIJkVdSL3q+w9aKFfezNuDOfvkEnHgCYQER+tIDY
	FApMzNHk7F3npeIidMPcnvFyjkinBLLNX66w8fq4k0XJsEtE972sQA954I62jBa3hsAP
	KSERV7uShR2FOw0diiliIIFu0e8QzsntS9BQBwH/9v0MDSoTfVbZqgbPbw7Z7OFz3bA0
	Yb9g==
X-Received: by 10.224.161.11 with SMTP id p11mr32981307qax.40.1410084032312;
	Sun, 07 Sep 2014 03:00:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Sun, 7 Sep 2014 03:00:12 -0700 (PDT)
In-Reply-To: <CAPhDKbF9rxgz6kfJzRSE_rC5Piy2D0Akp2Uwsxc6AAM6W-XBkA@mail.gmail.com>
References: <CAPhDKbHAzY4MikG=izTnfs3_wULDghYKhc5pThF5Ft4QbmA-+Q@mail.gmail.com>
	<CAMCfZKH=YLuCt1SDOFuALAJjzgmcx_OAtF7NxMnFDWiYQY0UNQ@mail.gmail.com>
	<CAPhDKbF9rxgz6kfJzRSE_rC5Piy2D0Akp2Uwsxc6AAM6W-XBkA@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Sun, 7 Sep 2014 07:00:12 -0300
Message-ID: <CAMCfZKHkouirNyspGTTTRj3cTJcSJX2FCn9Pb3dPkHOv2eGLhQ@mail.gmail.com>
To: Ilya Dmitrichenko <errordeveloper@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: systemd crashes above emergency runlevel
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
X-List-Received-Date: Sun, 07 Sep 2014 10:00:36 -0000
Content-Type: multipart/alternative; boundary=089e0149d2e8d97dfa050276c5c1

--089e0149d2e8d97dfa050276c5c1
Content-Type: text/plain; charset=ISO-8859-1

Ilya,

On Sat, Sep 6, 2014 at 7:12 AM, Ilya Dmitrichenko <errordeveloper@gmail.com>
wrote:

> I am suspecting this could be simply something to do with the rootfs
> being read-only when he tries to start, but I'll dig into it and see
> what's up exactly.
>

Take a look at this layer to have a read only fs with systemd:
https://github.com/MentorEmbedded/meta-ro-rootfs

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--089e0149d2e8d97dfa050276c5c1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Ilya,</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Sat, Sep 6, 2014 at 7:12 AM, Ilya =
Dmitrichenko <span dir=3D"ltr">&lt;<a href=3D"mailto:errordeveloper@gmail.c=
om" target=3D"_blank">errordeveloper@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex"><div id=3D":6ga" class=3D"" style=3D"overflow:hidden">I am su=
specting this could be simply something to do with the rootfs<br>
being <span class=3D"">read</span>-<span class=3D"">only</span> when he tri=
es to start, but I&#39;ll dig into it and see<br>
what&#39;s up exactly.<br></div></blockquote></div><br>Take a look at this =
layer to have a read only fs with systemd:</div><div class=3D"gmail_extra">=
<a href=3D"https://github.com/MentorEmbedded/meta-ro-rootfs">https://github=
.com/MentorEmbedded/meta-ro-rootfs</a><br><br clear=3D"all"><div><div dir=
=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br=
>Administrador do Embarcados<br><a href=3D"http://www.embarcados.com.br/?ut=
m_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DAssi=
natura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br</a><br><br>=
/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--089e0149d2e8d97dfa050276c5c1--
