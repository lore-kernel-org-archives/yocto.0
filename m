Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0048E007FE; Wed, 20 Aug 2014 11:39:31 -0700 (PDT)
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
	*      [209.85.216.178 listed in list.dnswl.org]
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58D3BE004F5
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 11:39:26 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id x3so7988249qcv.23
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 11:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=NPq370isae1SpNWcGUnlxdEqGQxICdcfIiOdZD+Rf7Y=;
	b=yKCra6bxSOCdIhLt+D2t7of3Yq6NvLi4VYGZM2WTPkzUg2qoT7r5Yqijrt2ze2N4sN
	hVatVIt+87pg9Ti+Feh2pUaJ8Ap1cLxcuQVobw4XoSfjVhN2Fzp/qJRoCc96CszlnByU
	k8vENfSkN8rZ7+VyHM3/3fIdZKcV/Eg0/2MvxztKGcTH22JWZq1r8A6vdqitrAT8gO4G
	b5V/hOEE3GyDFxDt1wEYah9bYwvElJmsEvTKYu1EmeKK8Kucj1mH4PZ+sWKtTMEn75jQ
	7ivLmpEfj4HneMT5ajyaF3welkZBy7ZyMjuHeihIHcI54VwqrIutGWZ7W9jFememJ2eT
	eNqA==
X-Received: by 10.140.16.194 with SMTP id 60mr16945819qgb.105.1408559965710;
	Wed, 20 Aug 2014 11:39:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Wed, 20 Aug 2014 11:39:05 -0700 (PDT)
In-Reply-To: <CAL7ttbfhyeXxh1xHkAreqJG8_kBd8ND6wkiBSb3Jt2Ry1=MUig@mail.gmail.com>
References: <CAL7ttbfhyeXxh1xHkAreqJG8_kBd8ND6wkiBSb3Jt2Ry1=MUig@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 20 Aug 2014 15:39:05 -0300
Message-ID: <CAMCfZKG0LVY7=qmQSe+hjre0jgovzDsCM3PvReU2p7J3zA8P3w@mail.gmail.com>
To: Alex Damian <alex.r.damian@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: should systemd be considered harmful ?
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
X-List-Received-Date: Wed, 20 Aug 2014 18:39:31 -0000
Content-Type: multipart/alternative; boundary=001a11c0a65466b197050113ec8d

--001a11c0a65466b197050113ec8d
Content-Type: text/plain; charset=ISO-8859-1

Alex,

On Wed, Aug 20, 2014 at 2:53 PM, Alex Damian <alex.r.damian@gmail.com>
wrote:

> Hello,
>
> In release 216, systemd includes a caching nameserver, and full TTY stream
> parsing. See details
>
> http://lists.freedesktop.org/archives/systemd-devel/2014-August/022295.html
>
> I think the ever growing number of components in systemd will create
> conflicts with the normal tools, like libresolv, used in traditional UNIX
> systems.
>
> I think the number of components shipped with and required by systemd is
> pretty outside the scope for an init system.
>
> I would argue that the monolithic systemd is not in line with the UNIX
> philosophy of small tools that do one thing and do it well, and that it is
> actually contra-productive to use it in embedded systems due to the large
> number of dependencies needed to get it to run, as well as the difficulty
> to debug when something goes amiss.
>
> Can I get your opinions in the respect that systemd is a useful tool to
> have in the Yocto Project ?


I like systemd for embedded systems. The boot process is faster then
sysVinit and it's easy to create/manage services.
It should me nice if we can install "systemd-ecosystem" with some
granularity like we do with python, for example. But I don't know if it's
possible or not.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c0a65466b197050113ec8d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Alex,</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Wed, Aug 20, 2014 at 2:53 PM, Alex=
 Damian <span dir=3D"ltr">&lt;<a href=3D"mailto:alex.r.damian@gmail.com" ta=
rget=3D"_blank">alex.r.damian@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div><div>Hello,<br><br></div>In releas=
e 216, systemd includes a caching nameserver, and full TTY stream parsing. =
See details <br>

<br><a href=3D"http://lists.freedesktop.org/archives/systemd-devel/2014-Aug=
ust/022295.html" target=3D"_blank">http://lists.freedesktop.org/archives/sy=
stemd-devel/2014-August/022295.html</a><br>
<br>I think the ever growing number of components in systemd will create co=
nflicts with the normal tools, like libresolv, used in traditional UNIX sys=
tems.<br><br>I think the number of components shipped with and required by =
systemd is pretty outside the scope for an init system. <br>


<br>I would argue that the monolithic systemd is not in line with the UNIX =
philosophy of small tools that do one thing and do it well, and that it is =
actually contra-productive to use it in embedded systems due to the large n=
umber of dependencies needed to get it to run, as well as the difficulty to=
 debug when something goes amiss.<br>


</div><br></div>Can I get your opinions in the respect that systemd is a us=
eful tool to have in the Yocto Project ?</blockquote></div><br>I like syste=
md for embedded systems. The boot process is faster then sysVinit and it&#3=
9;s easy to create/manage services.</div>

<div class=3D"gmail_extra">It should me nice if we can install &quot;system=
d-ecosystem&quot; with some granularity like we do with python, for example=
. But I don&#39;t know if it&#39;s possible or not.<br><br><br clear=3D"all=
">

<div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego =
Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcad=
os.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_ca=
mpaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.b=
r</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c0a65466b197050113ec8d--
