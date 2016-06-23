Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56690E00BE0; Wed, 22 Jun 2016 18:38:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f176.google.com (mail-yw0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97275E00B54
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 18:38:02 -0700 (PDT)
Received: by mail-yw0-f176.google.com with SMTP id v77so59172137ywg.0
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 18:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=JfBUR4YOiM0YmCCa/sEXumjSqPkS8IrGW4AXbnGZ268=;
	b=xNbxQF61sTJ1Ee0CX4sdSrbF0JLpOzN6trEh0t4KJh/ciH2mmyJXf2DlVhpTuV/rD6
	uSHupVJLjRYmS7XvyVo7AV8lH6LMzc0FMyS0UiMSmWxURaAIoRta8tlOOLwADUgj3gAY
	oT1MFIrWo6ROAKnC5fLfVbztwwF4wW/OD2GAVVK3upkQwTivs6SnDuztsPhMPTrso9Ir
	oOhSOY0P0HuhdJ+KIzmisx6atLQ0pTKkrpTYjZZY/g1d9D/tyHBQo9eGzI06bisKVQjs
	oQ6WCtYabbg8JLoiaiernGY3ZP8yWV8oRysRAEzigL72Vmf6F+4U7HsoqYQyl0F3FuDX
	OrlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=JfBUR4YOiM0YmCCa/sEXumjSqPkS8IrGW4AXbnGZ268=;
	b=FJaxdGyMgf1bAOdQdUPXIXVZbcWfe74IZEz61nQKsEwiqW70EsZZkmnQYtreNe7Jat
	FO62I1ligjPqVG55rLWhCVSCuNzGHziDxmIEVy9sxCHIrgLLdODZ4MuOeG9FniLe/Nkt
	+de44vPYq06KBwhLpe9XPlmlzDUW0YBhk9prftv0c1hMOl/aEzc/b+Uw1vzThanVrPkN
	tqBiNEwE/ddKVgwOCWhtNu0ebUTPaVTi0DPMeNkhSF6PWUusqZjjLBtWpM2jqic434BD
	5Wp1aHfB0c5Yutje4acbGUwahklUacwrsuvuAjpdLEx43dXKLOLBQoU2NuZ/gZUe+Gmo
	4K7g==
X-Gm-Message-State: ALyK8tIPcZG50h/VwnNdEdTFNChBrsRjCLl6Xhjf1RUZxFtcWdzBt3gVQpuYNwch8mgRsrSFdYvFFFhZbUuq4g==
X-Received: by 10.13.254.67 with SMTP id o64mr18547437ywf.145.1466645882176;
	Wed, 22 Jun 2016 18:38:02 -0700 (PDT)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.129.41.139 with HTTP; Wed, 22 Jun 2016 18:37:42 -0700 (PDT)
In-Reply-To: <2dd61737-29f6-98e6-60e1-13625d355de9@windriver.com>
References: <CAFrQVPMhmCAT+TfdOmQ95LsaTSc13=6GNvc=L=6cHmACGHRZgw@mail.gmail.com>
	<856fbb9f-74bc-545b-f5e5-3405d452c0f2@windriver.com>
	<CAFrQVPOE2bwaiQ9iDx8ogKuc_CCG2RjVu8NKfW-UOgp+LPLR8w@mail.gmail.com>
	<2dd61737-29f6-98e6-60e1-13625d355de9@windriver.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Wed, 22 Jun 2016 21:37:42 -0400
X-Google-Sender-Auth: s6h2CF5XBF6PAkJ6klQM0H_rNoE
Message-ID: <CAFrQVPNS7h9uAdh3Ctrh6F+-Y_EJZmEzfdApg03v99e3vYFOqg@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: prelink support
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
X-List-Received-Date: Thu, 23 Jun 2016 01:38:06 -0000
Content-Type: multipart/alternative; boundary=94eb2c07f3c4d18c480535e81abb

--94eb2c07f3c4d18c480535e81abb
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 22, 2016 at 10:57 AM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> What is the specific error you got?  This is the type of stuff I'd like to
> resolve.
>

I don't have the logs on me at the moment for the specific output, but
there were two errors (one for 'int scope_cnt' and the other for 'unsigned
int cnt') being declared in the for loop initialization, which isn't
supported until -std=c99.  I was able to move the declaration to the
beginning of _dl_show_scope just for testing and prelink finished compiling
successfully.

Are you using a branch and gcc that is part of OpenEmbedded?  If so, I need
> to
> know how to configure the system so I can attempt to reproduce and work
> around
> the issue.
>

I think we're using the gcc compiler that's included in poky.  I was
running poky at the following commit on jethro.

ddbc131 toasterconf.json: exclude releases Toaster can't build

The only configuration change that I'm aware of was setting GCCVERSION back
to "4.9%" as recommended in
http://www.yoctoproject.org/docs/2.1/mega-manual/mega-manual.html#migration-2.0-gcc-5

I had updated the SRCREV and branch in the prelink recipe to point to
cross_prelink_staging as you suggested.  It simply seems that the version
of dl-open.c on cross_prelink_staging just isn't compatible with gcc 4.9,
which seems to default to C90.

I can dig further into our setup and send specific steps tomorrow if you're
not able to get similar results.

--94eb2c07f3c4d18c480535e81abb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Jun 22, 2016 at 10:57 AM, Mark Hatle <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:mark.hatle@windriver.com" target=3D"_blank">mark.hatle@windriver.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left=
-color:rgb(204,204,204);padding-left:1ex"><div id=3D":14r" class=3D"">What =
is the specific error you got?=C2=A0 This is the type of stuff I&#39;d like=
 to resolve.<br></div></blockquote><div><br></div><div>I don&#39;t have the=
 logs on me at the moment for the specific output, but there were two error=
s (one for &#39;int scope_cnt&#39; and the other for &#39;unsigned int cnt&=
#39;) being declared in the for loop initialization, which isn&#39;t suppor=
ted until -std=3Dc99.=C2=A0 I was able to move the declaration to the begin=
ning of=C2=A0_dl_show_scope just for testing and prelink finished compiling=
 successfully.</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex"><div id=3D":14r" class=
=3D"">Are you using a branch and gcc that is part of OpenEmbedded?=C2=A0 If=
 so, I need to<br>
know how to configure the system so I can attempt to reproduce and work aro=
und<br>
the issue.</div></blockquote></div><br>I think we&#39;re using the gcc comp=
iler that&#39;s included in poky.=C2=A0 I was running poky at the following=
 commit on jethro.</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">ddbc131=C2=A0toasterconf.json: exclude releases Toaster can&#3=
9;t build</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">The only configuration change that I&#39;m aware of was setting GCCVERS=
ION back to &quot;4.9%&quot; as recommended in <a href=3D"http://www.yoctop=
roject.org/docs/2.1/mega-manual/mega-manual.html#migration-2.0-gcc-5">http:=
//www.yoctoproject.org/docs/2.1/mega-manual/mega-manual.html#migration-2.0-=
gcc-5</a></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">I had updated the SRCREV and branch in the prelink recipe to point to c=
ross_prelink_staging as you suggested.=C2=A0 It simply seems that the versi=
on of dl-open.c on cross_prelink_staging just isn&#39;t compatible with gcc=
 4.9, which seems to default to C90.</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">I can dig further into our setup and send sp=
ecific steps tomorrow if you&#39;re not able to get similar results.</div><=
div class=3D"" style=3D"font-weight:bold;font-size:16.6667px;margin:1.5em 0=
em 0.5em;padding:0em;color:rgb(255,255,255);font-family:sans-serif;backgrou=
nd-color:rgb(51,51,51)"><span class=3D""></span></div></div>

--94eb2c07f3c4d18c480535e81abb--
