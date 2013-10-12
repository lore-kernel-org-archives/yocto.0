Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51FE7E016BC
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2013 03:19:57 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id qd12so5020904ieb.5
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2013 03:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4Vv8m0wQl7cvI3rc85WHrLA8xLhs4LLDvW2IanB4qAs=;
	b=Nc/YLND2UMOyCNrAong2HxbdgTn+0BpAO4bmdSQLhE/5qRRyFXWTa0rMUF+U2RndTB
	mhp1u+LhzpCpydFtv6zjL1TrfqbQXQoRJdNEp5pvsi98gVTLKefNlQeStq2M1BlypKNR
	V9rn7A5UVNVdKFKT1UiYn5l29T9CJJXpw0KJ72sZtLMutrLPLwyB9MOffbEjwVKvDWqz
	I9CZExto2A/suhNzwa67WCxblZvTiq3098+Vi8lzliQnp0KXN4RmCAR1/CLA2CoCcjLb
	BBYy6ciCaQdn+6uI0qLP3/ZzBMqfoWcFPdMy8r1uvkXFUOpeQ4n27Fian+ZyR/15FlKL
	Av1Q==
MIME-Version: 1.0
X-Received: by 10.50.1.84 with SMTP id 20mr6155066igk.17.1381573196743; Sat,
	12 Oct 2013 03:19:56 -0700 (PDT)
Received: by 10.64.26.233 with HTTP; Sat, 12 Oct 2013 03:19:56 -0700 (PDT)
Received: by 10.64.26.233 with HTTP; Sat, 12 Oct 2013 03:19:56 -0700 (PDT)
In-Reply-To: <CABmxB3PBrzxioeyu2ZJNPC3LJXesfz8XCwvqhw_bcaUMhzahGg@mail.gmail.com>
References: <CABmxB3PBrzxioeyu2ZJNPC3LJXesfz8XCwvqhw_bcaUMhzahGg@mail.gmail.com>
Date: Sat, 12 Oct 2013 07:19:56 -0300
Message-ID: <CAMCfZKEUyo-z3hoCBJqzqwtFG1sBDLBye+56OdsiyQfRiU5hXQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
To: Dilip Kumar <008dilip@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Kernel module
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
X-List-Received-Date: Sat, 12 Oct 2013 10:19:58 -0000
Content-Type: multipart/alternative; boundary=047d7bdc188c9fd72004e8889345

--047d7bdc188c9fd72004e8889345
Content-Type: text/plain; charset=ISO-8859-1

Dilip,

You can take a look at this example :

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod

-- 
*dS

Diego Sueiro
sent from my droid tablet.
On Oct 11, 2013 11:17 PM, "Dilip Kumar" <008dilip@gmail.com> wrote:

> Hi,
> What all the modifications has to be done and steps to follow for adding
> external kernel module into the linux-yocto and checking that in qemulator.
>
> regards
> dilip
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7bdc188c9fd72004e8889345
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Dilip, </p>
<p dir=3D"ltr">You can take a look at this example :</p>
<p dir=3D"ltr"><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tr=
ee/meta-skeleton/recipes-kernel/hello-mod">http://git.yoctoproject.org/cgit=
/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod</a><br></p>
<p dir=3D"ltr">-- <br>
*dS</p>
<p dir=3D"ltr">Diego Sueiro<br>
sent from my droid tablet.</p>
<div class=3D"gmail_quote">On Oct 11, 2013 11:17 PM, &quot;Dilip Kumar&quot=
; &lt;<a href=3D"mailto:008dilip@gmail.com">008dilip@gmail.com</a>&gt; wrot=
e:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<p dir=3D"ltr">Hi,<br>
What all the modifications has to be done and steps to follow for adding ex=
ternal kernel module into the linux-yocto and checking that in qemulator. <=
/p>
<p dir=3D"ltr">regards <br>
dilip</p>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div>

--047d7bdc188c9fd72004e8889345--
