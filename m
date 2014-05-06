Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 226DFE00A44; Tue,  6 May 2014 11:34:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F047E00B4C
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 11:34:47 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id l6so5071950qcy.37
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 11:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Ff4PiwyCUlDl3KKohqyuLhzzUFygIjZ+7XHeLJoRqZw=;
	b=rF6nSh4bi3Xh6ahaX+tOyAy162V1ZzQ4Ck0HHLVzzyywjCMzwUyudazTNIghDLRpbW
	er7DlQLH0L12srenCH3JtNsNORKlBcugAYnKGK9TbuH2BKQL+vP7j4l32dqdghj4pKUY
	6hkkwO5yswhaEzwxXH9Lvx9Z25Nu5xtUIA1N2vALInv15KnO9lW6rBdC5jiNs3/RHxpN
	xnT/cyODLf+zFDQCUtsXA//QcKcnQ0xOgzdVTs8kkwgybizYFXq2ZwttmUBE1kWLVhCH
	5q6ZF/XbN5v9efJrItRtM/AYnwwTSanz3gXhfCY0UbnC4ZFFO0rSMcJha4+p6k2SkL87
	UwXA==
X-Received: by 10.140.101.170 with SMTP id u39mr29846584qge.32.1399401287256; 
	Tue, 06 May 2014 11:34:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Tue, 6 May 2014 11:34:27 -0700 (PDT)
In-Reply-To: <CAMKF1spVm46k7s+xm0BKCu6=sHR4npEbHLfAUVfQDOve9thc0A@mail.gmail.com>
References: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>
	<CAMKF1spVm46k7s+xm0BKCu6=sHR4npEbHLfAUVfQDOve9thc0A@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 6 May 2014 15:34:27 -0300
Message-ID: <CAMCfZKGF=dftUZ2AEwmUBCaGjBLOn5PAnrWuf4hDviu_3anNrw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM to Verify Installed Packages
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
X-List-Received-Date: Tue, 06 May 2014 18:34:51 -0000
Content-Type: multipart/alternative; boundary=001a11c16fc6a0125904f8bf8091

--001a11c16fc6a0125904f8bf8091
Content-Type: text/plain; charset=ISO-8859-1

Hi Khem,
On Tue, May 6, 2014 at 3:29 PM, Khem Raj <raj.khem@gmail.com> wrote:

> what kind of corruption ?


It's hard to say. But when I try to execute it I receive: "cannot execute
binary file".
And the output of "file" command is: "data".

My bet is that the system was powered down during the update process.

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c16fc6a0125904f8bf8091
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Khem,<br><div class=3D"gmail=
_quote">On Tue, May 6, 2014 at 3:29 PM, Khem Raj <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&=
gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">what kind of corruption ?</blockquote></div><br>It&#39;s h=
ard to say. But when I try to execute it I receive: &quot;cannot execute bi=
nary file&quot;.</div>

<div class=3D"gmail_extra">And the output of &quot;file&quot; command is: &=
quot;data&quot;.</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">My bet is that the system was powered down during the update pro=
cess.<br>

<br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>-=
-<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"h=
ttp://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=
=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">=
www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c16fc6a0125904f8bf8091--
