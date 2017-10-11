Return-Path: <henriklindblomster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2902BE00B87; Wed, 11 Oct 2017 03:06:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (henriklindblomster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CDEFE00B53
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 03:06:15 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id z50so3511668qtj.4
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 03:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0vnztU0O3cRyzydPxaDE4O+9caxKEQ/BW2c1v7Hih6w=;
	b=SUfEtiHDwZZp+WCvxBACMZCyXEvy3VTC0byHdrwg5j+u6huX5XMT+kGK/BnuXHOwH2
	KCscn6NAYcmX1Na1tcmJ9OLdfu/XjF3RFgvogSbLXuWknMSCpqxnqmfvhMpFqx02ndVf
	W0hZCxsb/AT/Bgr8lYu165ROPi6AIGbWMwRkEd7xxh0Bxmy1N4KryhwEa16uzIzPFr5u
	Rj7NkGZuxk2Mnwni6GFVLtO/p8GF5Ot4xc27OcDA8XFP/cvzMEW6XOd8e5Lg4BjI4qgb
	FdWbpCkxnTERPFuJ+qhA5cvQGwJra7JvrQiv2Q9TIbhaei+ZxLb2lr+p5p5nSCzx2My3
	6kOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0vnztU0O3cRyzydPxaDE4O+9caxKEQ/BW2c1v7Hih6w=;
	b=WLLF7bmnHIOfvoLsuFQR6e/LQxjTMxMhrHS89rGiokr+OGu0nvC+Fu6lggmi1FB4W0
	RI5TW2VPkgon7sqX1C6GWQySqFz5JfAMyhNOguXQv+99JSvskwSSA1s0E0mDIvoxRCOS
	cRWNLKUoFG8D3X0EyrO7seEJKaNGKPXO6zDTTlz6QSQGsU05PlQlIC0WSjB8RYtFsxL3
	X141LaMmQVwYguSFkeO8iH4c178PUKRJokd9MDwQd/G6kcrmeWM7zPJuHkodV3dX3Ga2
	UCJ3OA9l52EblB2xG1g4Qs4WcEumwI5qvo1nl5wbHXyqDYCewdyLIXjlR3cLUToDk9JS
	MPtg==
X-Gm-Message-State: AMCzsaX4PjA/ni94hDdyKT5aG+MzpMtp1gFiGwH+k3sTJmRzlRM9eChN
	nYqahuzFFWRSxmw5O5G53CoTGYNi6REvV/qI8DFj1Q==
X-Google-Smtp-Source: AOwi7QDKvWpeBYrW3G+9D9oToCnsZhmDZ4AhRo3Plo7O25LNH60Jf/p41TaSuqd81J1DVXmrQEUESgaDqyyCzB2k8XY=
X-Received: by 10.55.120.131 with SMTP id t125mr18636720qkc.48.1507716375235; 
	Wed, 11 Oct 2017 03:06:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.134 with HTTP; Wed, 11 Oct 2017 03:06:14 -0700 (PDT)
In-Reply-To: <1507713360.9509.27.camel@collabora.co.uk>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
	<CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
	<1507713002.9509.25.camel@collabora.co.uk>
	<1507713360.9509.27.camel@collabora.co.uk>
From: Henrik Lindblom <henriklindblomster@gmail.com>
Date: Wed, 11 Oct 2017 13:06:14 +0300
Message-ID: <CAOgGgETUawMZ8wAJW-n-UiEW8NOR8sO19gUhkEjJqbDCDa81RQ@mail.gmail.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Wed, 11 Oct 2017 10:06:17 -0000
Content-Type: multipart/alternative; boundary="94eb2c05baecf7d2a3055b42922d"

--94eb2c05baecf7d2a3055b42922d
Content-Type: text/plain; charset="UTF-8"

I think you'll want RDEPENDS instead of DEPENDS in your recipe. DEPENDS
implies build time dependencies (e.g. libraries) while RDEPENDS actually
gets the component installed as a runtime dependency.

On Wed, Oct 11, 2017 at 12:16 PM, Fabien Lahoudere <
fabien.lahoudere@collabora.co.uk> wrote:

> FI, with bitbake testuser -c devshell
>
> # cat ../1.0-r1/recipe-sysroot/etc/passwd
> root::0:0:root:/root:/bin/sh
> daemon:*:1:1:daemon:/usr/sbin:/bin/sh
> bin:*:2:2:bin:/bin:/bin/sh
> sys:*:3:3:sys:/dev:/bin/sh
> sync:*:4:65534:sync:/bin:/bin/sync
> games:*:5:60:games:/usr/games:/bin/sh
> man:*:6:12:man:/var/cache/man:/bin/sh
> lp:*:7:7:lp:/var/spool/lpd:/bin/sh
> mail:*:8:8:mail:/var/mail:/bin/sh
> news:*:9:9:news:/var/spool/news:/bin/sh
> uucp:*:10:10:uucp:/var/spool/uucp:/bin/sh
> proxy:*:13:13:proxy:/bin:/bin/sh
> www-data:*:33:33:www-data:/var/www:/bin/sh
> backup:*:34:34:backup:/var/backups:/bin/sh
> list:*:38:38:Mailing List Manager:/var/list:/bin/sh
> irc:*:39:39:ircd:/var/run/ircd:/bin/sh
> gnats:*:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh
> nobody:*:65534:65534:nobody:/nonexistent:/bin/sh
>
>
> Users are not found
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c05baecf7d2a3055b42922d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"monospace, monospace">I think you&#39;ll wan=
t RDEPENDS instead of DEPENDS in your recipe. DEPENDS implies build time de=
pendencies (e.g. libraries) while RDEPENDS actually gets the component inst=
alled as a runtime dependency.</font></div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Wed, Oct 11, 2017 at 12:16 PM, Fabien Lahouder=
e <span dir=3D"ltr">&lt;<a href=3D"mailto:fabien.lahoudere@collabora.co.uk"=
 target=3D"_blank">fabien.lahoudere@collabora.co.uk</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div><div>FI, with bitbake testuser -c dev=
shell</div><div><br></div><div># cat ../1.0-r1/recipe-sysroot/etc/<wbr>pass=
wd=C2=A0</div><div>root::0:0:root:/root:/bin/sh</div><div>daemon:*:1:1:daem=
on:/usr/sbin:<wbr>/bin/sh</div><div>bin:*:2:2:bin:/bin:/bin/sh</div><div>sy=
s:*:3:3:sys:/dev:/bin/sh</div><div>sync:*:4:65534:sync:/bin:/bin/<wbr>sync<=
/div><div>games:*:5:60:games:/usr/games:<wbr>/bin/sh</div><div>man:*:6:12:m=
an:/var/cache/man:<wbr>/bin/sh</div><div>lp:*:7:7:lp:/var/spool/lpd:/<wbr>b=
in/sh</div><div>mail:*:8:8:mail:/var/mail:/<wbr>bin/sh</div><div>news:*:9:9=
:news:/var/spool/<wbr>news:/bin/sh</div><div>uucp:*:10:10:uucp:/var/spool/<=
wbr>uucp:/bin/sh</div><div>proxy:*:13:13:proxy:/bin:/bin/<wbr>sh</div><div>=
www-data:*:33:33:www-data:/<wbr>var/www:/bin/sh</div><div>backup:*:34:34:ba=
ckup:/var/<wbr>backups:/bin/sh</div><div>list:*:38:38:Mailing List Manager:=
/var/list:/bin/sh</div><div>irc:*:39:39:ircd:/var/run/<wbr>ircd:/bin/sh</di=
v><div>gnats:*:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin=
/sh</div><div>nobody:*:65534:65534:nobody:/<wbr>nonexistent:/bin/sh</div><d=
iv><span><pre><br></pre><pre>Users are not found</pre></span></div></div><b=
r>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c05baecf7d2a3055b42922d--
