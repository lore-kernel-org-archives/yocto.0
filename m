Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E4FEE00BBF; Thu, 29 May 2014 21:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
Received: from mail-yk0-f174.google.com (mail-yk0-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91AA7E00B71
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 21:05:40 -0700 (PDT)
Received: by mail-yk0-f174.google.com with SMTP id 9so1089234ykp.5
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 21:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=HKiNRhDb2XeJxacJCts88d7pPYP2mbNSYolHYe4klJQ=;
	b=rojXGU9erEa21IxjEXCTvePKfh+GywkOIrOVOodJQ9h6Fpf7IEyRCZvc50LbM1ZfDW
	aDaBlty0DAROcgmFP3QZwS4nT7V91D48jx4RLwl/MT34O1q4/hr+VqfX04RsWSWZSp4O
	28dv5RIVJvzjEXHjMHLtKdmhrhJk+ZzEfSDp8zCFa/IgAFU4LgVpG4g1GGhPTrmI5mak
	iU8fsfKqWyAmDHq7gtpmbNK+zaNuOYbof2VOlnkg3JQv4aBiFvz2xL171EJv98mr1PZi
	XT/idskNCjIypY8QTeoiFK6INTD/EIrJnzRaZ1q+2AAxOiRFlNch+RiNv3XvioHdZb6I
	3ypQ==
MIME-Version: 1.0
X-Received: by 10.236.93.16 with SMTP id k16mr16996989yhf.140.1401422739005;
	Thu, 29 May 2014 21:05:39 -0700 (PDT)
Received: by 10.170.143.138 with HTTP; Thu, 29 May 2014 21:05:38 -0700 (PDT)
Date: Fri, 30 May 2014 09:35:38 +0530
Message-ID: <CANJXcUaz1vz2VNNN4eweMr+uSwDQUmUVNuF1nx-q1rvqh9Mk-w@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: yocto@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Fri, 30 May 2014 04:05:49 -0000
Content-Type: multipart/alternative; boundary=20cf301b5f5d89e57104fa962851

--20cf301b5f5d89e57104fa962851
Content-Type: text/plain; charset=UTF-8

Hello Community,
This is my first question please excuse if I'm making a silly mistake. I am
just starting learning the yocto project to develop custom linux os. I was
following the few commands to download and setup poky on my build system
from the quick start guide at .

$ git clone http://git.yoctoproject.org/git/poky
     $ cd poky
     $ git checkout -b daisy origin/daisy
     $ source oe-init-build-env

Executing the last line gives me the following issue


kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto/poky$ ls
>
> bitbake        meta-selftest   oe-init-build-env         scripts
>
> documentation  meta-skeleton   oe-init-build-env-memres
>
> LICENSE        meta-yocto      README
>
> meta           meta-yocto-bsp  README.hardware
>
> kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto/poky$ source
>> oe-init-build-env
>
> bash:
>> /media/kashyap/3E0800DC08009555/yocto/poky/scripts/oe-setup-builddir:
>> Permission denied
>
> kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto/poky$
>
>
>
I tried searching over the internet about the possible issues but couldn't
figure out the problem here.
Anyone please help.

--20cf301b5f5d89e57104fa962851
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Community,<div>This is my first question please excu=
se if I&#39;m making a silly mistake. I am just starting learning the yocto=
 project to develop custom linux os. I was following the few commands to do=
wnload and setup poky on my build system from the quick start guide at .=C2=
=A0</div>
<div><br></div><div><pre class=3D"" style=3D"overflow:auto;color:rgb(51,51,=
51)">$ git clone <a href=3D"http://git.yoctoproject.org/git/poky">http://gi=
t.yoctoproject.org/git/poky</a>
     $ cd poky
     $ git checkout -b daisy origin/daisy
     $ source oe-init-build-env</pre><pre class=3D"" style=3D"overflow:auto=
;color:rgb(51,51,51)">Executing the last line gives me the following issue<=
/pre><pre class=3D"" style=3D"overflow:auto;color:rgb(51,51,51)"><br></pre>=
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex">
kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto/poky$ ls</blockq=
uote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">
bitbake =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-selftest =C2=A0 oe-init-build-env =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 scripts</blockquote><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-=
color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
documentation =C2=A0meta-skeleton =C2=A0 oe-init-build-env-memres</blockquo=
te><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:soli=
d;padding-left:1ex">
LICENSE =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-yocto =C2=A0 =C2=A0 =C2=A0README</b=
lockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-yoc=
to-bsp =C2=A0README.hardware</blockquote>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto=
/poky$ source oe-init-build-env</blockquote>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">bash: /media/kashyap/3E0800DC08009555/yocto/poky/scripts/o=
e-setup-builddir: Permission denied</blockquote>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto=
/poky$=C2=A0</blockquote>
<div><br></div></blockquote><div><br></div><div>I tried searching over the =
internet about the possible issues but couldn&#39;t figure out the problem =
here.</div><div>Anyone please help.=C2=A0</div></div>

--20cf301b5f5d89e57104fa962851--
