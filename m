Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E861E00798; Thu, 28 Aug 2014 13:13:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD67AE00507
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 13:13:10 -0700 (PDT)
Received: by mail-qc0-f173.google.com with SMTP id w7so1391549qcr.18
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 13:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ph4XtRflowhjVgSYrSdlehfas9XFudxxhEwAuLa/R+w=;
	b=AC+IKb6wxMc5kVlWwsSDyCiq8ZJCO5btfwW7sqT+jPOLT5RFvxRXDN4qnTwkJ4DUfx
	QbJ27+6ah/xdEscLH9Bg8sUEO2FbXvDTEaYvTGBrusKVrHVn/ADOVGMztgJX0H14XZgr
	ybtWOgxjfdyRg2wY9iUPgViE69u2jHLTdzG8i1oFMRVZTSx31twGuOSkGY5aMtxci3OK
	hzJzaZhByh1AcCjUzD5/Kv8hOEj6W2ay+TXdYMa4EENkLV8shfULz5aM8b12hzMulJZP
	rqQMZ5o5uA2fAmL52nfyUHXO/FgetKRJF/Dgy5ssC+n6ZsnOzJZqa3U2IJXVQdvGvsFd
	Bn8w==
X-Received: by 10.224.129.68 with SMTP id n4mr10055759qas.86.1409256789216;
	Thu, 28 Aug 2014 13:13:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Thu, 28 Aug 2014 13:12:49 -0700 (PDT)
In-Reply-To: <1474350.hVc8jgIq3k@localhost.localdomain>
References: <CALkREYA7nN3sL2ALk4JCOt=NrhYFPpd=gAS_pzMe2OMURXDVNg@mail.gmail.com>
	<23114885.AlUfQMMlDH@localhost.localdomain>
	<CALkREYBf0t6hydAj4CZXoMRe6QJQ6R0Yvd92e1+zBSDQ3oUrUw@mail.gmail.com>
	<1474350.hVc8jgIq3k@localhost.localdomain>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 28 Aug 2014 17:12:49 -0300
Message-ID: <CAMCfZKH5MO7K_m5vkiiQPKkG5fiXUAvqeL10-X2ccVch1SVy6A@mail.gmail.com>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build dts alone
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
X-List-Received-Date: Thu, 28 Aug 2014 20:13:15 -0000
Content-Type: multipart/alternative; boundary=001a11c2bac452432a0501b62a6a

--001a11c2bac452432a0501b62a6a
Content-Type: text/plain; charset=ISO-8859-1

Anooj,

On Wed, Aug 27, 2014 at 11:15 AM, Maciej Borzecki <
maciej.borzecki@open-rnd.pl> wrote:

> On Wednesday 27 of August 2014 16:12:58 Anooj Gopi wrote:
> > Thank you very much... devshell is really cool.
> >
> > It would be nice if we could mention this info some where in
> > http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html
>
> It is mentioned in developer's manual:
>
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#platdev-appdev-devshell


The dtb compilation is performed on do_install task. So you can regenerate
the dtb by issuing: "bitbake virtual/kernel -f -c install".

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c2bac452432a0501b62a6a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Anooj,</div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Wed, Aug 27, 2014 at 11:15 AM, Ma=
ciej Borzecki <span dir=3D"ltr">&lt;<a href=3D"mailto:maciej.borzecki@open-=
rnd.pl" target=3D"_blank">maciej.borzecki@open-rnd.pl</a>&gt;</span> wrote:=
<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Wednesday 27 of August 20=
14 16:12:58 Anooj Gopi wrote:<br>
&gt; Thank you very much... devshell is really cool.<br>
&gt;<br>
&gt; It would be nice if we could mention this info some where in<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/current/kernel-dev/kernel-=
dev.html" target=3D"_blank">http://www.yoctoproject.org/docs/current/kernel=
-dev/kernel-dev.html</a><br>
<br>
</div>It is mentioned in developer&#39;s manual:<br>
<a href=3D"https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.=
html#platdev-appdev-devshell" target=3D"_blank">https://www.yoctoproject.or=
g/docs/current/dev-manual/dev-manual.html#platdev-appdev-devshell</a></bloc=
kquote>

</div><br>The dtb compilation is performed on do_install task. So you can r=
egenerate the dtb by issuing: &quot;bitbake virtual/kernel -f -c install&qu=
ot;.<br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br=
>

</div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a hr=
ef=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_m=
edium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_bl=
ank">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c2bac452432a0501b62a6a--
