Return-Path: <henriklindblomster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 473DDE00A0C; Mon,  8 Apr 2019 10:05:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (henriklindblomster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 575C2E00994
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 10:05:27 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id d13so2358244edr.5
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 10:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZScvmrIzxiV6hRd+GoRMxSN1n8hShrBLKW9UhfaWZF4=;
	b=VOfW7/9VurBCGUvSHO4UUP5RPq0r7v2z3x67gGuUduRvhoY92eR1hYYq5r0KaMVz0/
	4AOSVs/zHcWr8vpaG6iLklldstClUW7lCzZ/OAzfGFar9KSzsEnHGkbsvJdx9l/no+ia
	fnv0TrxaxvTwE+3dk5Nn4eMcr+wfPgjBulNiIILqauasF7ScR0CUPtAYI2ZRIXK+rfCh
	RiAxA4HmFJA781DxLUxrPktv2HJ3koomWrfC/uAvumSXGfLmaLfD86kL13+GqlvMbjj7
	z6V+mcFWYgegqy7uWUGG6LLYLDbv3RfC5V85Oa0fFE6loCqPgGC5dC4LNO1ejHQaMiQV
	lZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZScvmrIzxiV6hRd+GoRMxSN1n8hShrBLKW9UhfaWZF4=;
	b=jEaVcJJKgPNIH8rAQM6uK5b4yD5+qGN06enxlTB0TE9RLj9W8Zp5dpFbByMnmNHq7H
	bvdsB7zPyttFJApwDt9TH/EZ+Wsa+cP4L3ROC8fz2/lVpxPH5XkYsD/2TeMDJ2Ia5+tS
	urPMuCd245ctCh/+m1LrkY5XnXBEtXNAv/PW3GLZmlmorz3xec6FjT4C2Fm+UI8v16gb
	qdIf3jdzq2Nb1sywpgPYS1w86mgQQNB9iFlt476tqlCQlac+GuI3FMy7kv3rqnmrSNnq
	Mn0vyM85ihAvTcozeEDyChWkdAWGH2Q14FZGLctBGo4mctIWa3o3VUTeiaY0qLQetDHZ
	M70A==
X-Gm-Message-State: APjAAAW9c9tgRjfQP6zyY+dYlrvSlrDFoKqKl4qilnGFoouvhIX47PBm
	Iz1NDx3Vjc3k3adkEmtG86GVKFv6BfWTJMbSQEIyO32DKzY=
X-Google-Smtp-Source: APXvYqxst1hDzIHXHfqQUuRMvzVKPSCynE2MYT8o0naURuNl6R28MADD6g8tJ9zu6YdB7KfY3H5J+Q8c3w/9VAWOK74=
X-Received: by 2002:a17:906:aece:: with SMTP id
	me14mr17861804ejb.0.1554743126407; 
	Mon, 08 Apr 2019 10:05:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCdBQh-Thsn+YgBs8mCVU+ddF4SJQOXUJjsDveZTKcSiA@mail.gmail.com>
In-Reply-To: <CAAx3WaCdBQh-Thsn+YgBs8mCVU+ddF4SJQOXUJjsDveZTKcSiA@mail.gmail.com>
From: Henrik Lindblom <henriklindblomster@gmail.com>
Date: Mon, 8 Apr 2019 20:05:15 +0300
Message-ID: <CAOgGgEQYZtKodfnKCSNeZh98gh60OfcNLhR6VLhoXrJuZeuceg@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: shared cmake modules
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
X-List-Received-Date: Mon, 08 Apr 2019 17:05:28 -0000
Content-Type: multipart/alternative; boundary="000000000000c4403c058607d756"

--000000000000c4403c058607d756
Content-Type: text/plain; charset="UTF-8"

>
> FILES_${PN}-dev = "${MODULES_DEST_PATH}/*"
>

Does your library recipe explicitly depend on <cmake_module>-dev? Can you
share the failing recipe?

Cheers,
Henrik

On Wed, Apr 3, 2019 at 1:18 PM Gabriele Zampieri <gabbla.malist@gmail.com>
wrote:

> Hi all,
>
> I'm setting up a layer that will compile our applications and libraries.
> All the applications are based on cmake and they share modules. Before
> using yocto I kept the modules in <workspace>/cmake (under version control)
> alongside applications and libraries. With yocto I wrote a recipe that
> checkout the module repo and install them in
> "${STAGING_DATADIR}/cmake/Modules/". I took this path from
> "meta/classes/cmake.bbclass". If i build the module target, I get the files
> installed in the target recipe datadir. If I want to build a library (that
> depends also on my modules recipe) the task do_configure fails because
> cmake cannot find none of my include. Digging around I found that the
> toolchain.cmake file points to a module location that doesn't exist in the
> library workdir, but in module recipe (${STAGING_DATADIR}/cmake/Modules/).
>
> The module recipe looks like as follow:
>
> MODULES_DEST_PATH = "${STAGING_DATADIR}/cmake/Modules"
> FILES_${PN}-dev = "${MODULES_DEST_PATH}/*"
>
> do_install() {
>     DEST_DIR=${MODULES_DEST_PATH}
>
>     # Create the destination folder
>     install -d $DEST_DIR
>     install -m 0444 ${S}/my/module.cmake $DEST_DIR
>     ......
> }
>
> So my question is: where should I install the shared modules
> (MODULE_DEST_PATH int the above snippet)? and how to update the
> CMAKE_MODULE_PATH properly to append that location?
>
> Thanks,
> Gabriele
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000c4403c058607d756
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">FILES_${=
PN}-dev =3D &quot;${MODULES_DEST_PATH}/*&quot;<br></blockquote><div><br></d=
iv>Does your library recipe explicitly depend on &lt;cmake_module&gt;-dev? =
Can you share the failing recipe?<div><br></div><div>Cheers,</div><div>Henr=
ik=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Apr 3, 2019 at 1:18 PM Gabriele Zampieri &lt;<a hre=
f=3D"mailto:gabbla.malist@gmail.com">gabbla.malist@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I=
&#39;m setting up a layer that will compile our applications and libraries.=
 All the applications are based on cmake and they share modules. Before usi=
ng yocto I kept the modules in &lt;workspace&gt;/cmake (under version contr=
ol) alongside applications and libraries. With yocto I wrote a recipe that =
checkout the module repo and install them in &quot;${STAGING_DATADIR}/cmake=
/Modules/&quot;. I took this path from &quot;meta/classes/cmake.bbclass&quo=
t;. If i build the module target, I get the files installed in the target r=
ecipe datadir. If I want to build a library (that depends also on my module=
s recipe) the task do_configure fails because cmake cannot find none of my =
include. Digging around I found that the toolchain.cmake file points to a m=
odule location that doesn&#39;t exist in the library workdir, but in module=
 recipe (${STAGING_DATADIR}/cmake/Modules/). <br></div><div><br></div><div>=
The module recipe looks like as follow:</div><div><br></div><div>MODULES_DE=
ST_PATH =3D &quot;${STAGING_DATADIR}/cmake/Modules&quot;<br>FILES_${PN}-dev=
 =3D &quot;${MODULES_DEST_PATH}/*&quot;<br><br>do_install() {<br>=C2=A0=C2=
=A0=C2=A0 DEST_DIR=3D${MODULES_DEST_PATH}<br><br>=C2=A0=C2=A0=C2=A0 # Creat=
e the destination folder<br>=C2=A0=C2=A0=C2=A0 install -d $DEST_DIR<br></di=
v><div>=C2=A0=C2=A0=C2=A0 install -m 0444 ${S}/my/module.cmake $DEST_DIR</d=
iv><div>=C2=A0=C2=A0=C2=A0 ......</div><div>}<br></div><div>=C2=A0=C2=A0=C2=
=A0 <br></div><div>So my question is: where should I install the shared mod=
ules (MODULE_DEST_PATH int the above snippet)? and how to update the CMAKE_=
MODULE_PATH properly to append that location?</div><div><br></div><div>Than=
ks, <br></div><div>Gabriele<br></div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000c4403c058607d756--
