Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A529E0095D; Thu,  2 Apr 2015 14:28:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0DF7E00953
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 14:27:58 -0700 (PDT)
Received: by igcau2 with SMTP id au2so87482819igc.0
	for <yocto@yoctoproject.org>; Thu, 02 Apr 2015 14:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=oRwp6PZG+vtxGW4tpDCHjg/jTaFo6s162yo4mLBtSmw=;
	b=kem50OTMgk2bGCo0UPgliANZA1qOKYLU9S2v1xjoxys1qqVxQNi9yTgkDNsXO1hdpC
	KqDfMVuPOoPX+b6tJb+Gi74f30eqohHnM49/VimFkaPJxEbmCEPftbKxoSKgo/oDbX65
	AXIWx6HNmNjQsZxJLonNj1J423GuZYIUheHrFmz1+xUpWdHirFKcERVplpDGCDW10iZq
	Jp+Z4CedyDvvfbyxWox58YKg8XBjgqLzZEdH1svX9OEs0/Qy6Bw90frQ3lTA9YSYNA+i
	1Wd2kQ1ypmNSPpuwRUcxCiK8OT4KJ1J6410dcX/jGBSOM/gkcEfKiLsfCjBCb+GO6JmU
	tbMg==
MIME-Version: 1.0
X-Received: by 10.50.36.103 with SMTP id p7mr23522407igj.20.1428010077477;
	Thu, 02 Apr 2015 14:27:57 -0700 (PDT)
Received: by 10.36.76.151 with HTTP; Thu, 2 Apr 2015 14:27:57 -0700 (PDT)
In-Reply-To: <CADu_VSbVs6AT+8UCjuEeeSFKCNxLreBj-8Qd8r4RQFZjxN9avw@mail.gmail.com>
References: <CADu_VSbVs6AT+8UCjuEeeSFKCNxLreBj-8Qd8r4RQFZjxN9avw@mail.gmail.com>
Date: Thu, 2 Apr 2015 14:27:57 -0700
Message-ID: <CANx9H-CMJS-W4+tYda4hSNVo5KpKij-AHVzCKdufKW-+r2Fcjg@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
To: Matthew Karas <mkarascybi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing custom python packages
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
X-List-Received-Date: Thu, 02 Apr 2015 21:28:01 -0000
Content-Type: multipart/alternative; boundary=089e01184d5c67a00d0512c481ac

--089e01184d5c67a00d0512c481ac
Content-Type: text/plain; charset=UTF-8

Matthew,

Please have a look at the python recipes in
http://git.openembedded.org/meta-openembedded/tree/meta-python/recipes-devtools/python
Creating your own similar recipe will allow you to add the python package
to your built image, or load it an runtime as an rpm/ipk/deb.
You could add this recipe to your own layer, if it is custom and not useful
to the community.

It is possible to run pip on the target (if you added pip to your image,
e.g. IMAGE_INSTALL_append = " python-pip" is in your local.conf).


Regards,

--Tim


On Thu, Apr 2, 2015 at 12:09 PM, Matthew Karas <mkarascybi@gmail.com> wrote:

> How do I install a custom python package in yocto?  I've tried looking up
> google but nothing comes up.  On my non-target machine I just do pip
> install <package-folder>.  What do I put in my bb file?
>
> Many Thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e01184d5c67a00d0512c481ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Matthew,<br><br></div>Please have a lo=
ok at the python recipes in <a href=3D"http://git.openembedded.org/meta-ope=
nembedded/tree/meta-python/recipes-devtools/python">http://git.openembedded=
.org/meta-openembedded/tree/meta-python/recipes-devtools/python</a><br></di=
v>Creating your own similar recipe will allow you to add the python package=
 to your built image, or load it an runtime as an rpm/ipk/deb.<br></div><di=
v>You could add this recipe to your own layer, if it is custom and not usef=
ul to the community.<br></div><div><br></div>It is possible to run pip on t=
he target (if you added pip to your image, e.g. IMAGE_INSTALL_append =3D &q=
uot; python-pip&quot; is in your local.conf).<br><br><br></div><div>Regards=
,<br><br></div><div>--Tim<br></div><div><br></div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Thu, Apr 2, 2015 at 12:09 PM, Mat=
thew Karas <span dir=3D"ltr">&lt;<a href=3D"mailto:mkarascybi@gmail.com" ta=
rget=3D"_blank">mkarascybi@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr"><div><span>How do I install a custom pyt=
hon package in yocto?<span>=C2=A0=C2=A0</span>I&#39;ve tried looking up goo=
gle but nothing comes up.<span>=C2=A0=C2=A0</span>On my non-target machine =
I just do pip install &lt;package-folder&gt;.<span>=C2=A0=C2=A0</span>What =
do I put in my bb file?<br><br></span></div><span>Many Thanks<br></span></d=
iv>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--089e01184d5c67a00d0512c481ac--
