Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D88AE00C43; Mon,  8 Apr 2019 06:26:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA5C2E00BB7
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 06:26:36 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id v22so11234106lje.9
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 06:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=g1t74kWDqYYUS2qWZRKRfuh6diU9TXf321OtFuwp0qo=;
	b=kwPB/s4hiF8v0GyWonFY3hBcESKXk+0+O7lNj9MpuGyB6FDW25DDlQqEU2iEyfimaq
	VzFO3pPgi5A/yOru5sPLhPcx5Fz8V1HqNMs5fHmws43v8XcqLljeCfqAV+LU9RtZOteV
	xl07Qc2TMdMMWzQz9bbm5usJxp45x1dp0eAKxwRE8AGsek7Sow1he5iOxKIpL9woyE0x
	v/nxJxHWIslJ3G6le4HIy/e+tjIi2hsw4mUqCeRpPhnekbWNDEkmsy83Wl619wfh1lRg
	Z5G68nf/jT0CO9cwGTVmb6fKvT0zRYqTGEGKQup5+lSmxB4Zx20+h4kPcywi6ITjz67O
	CJkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=g1t74kWDqYYUS2qWZRKRfuh6diU9TXf321OtFuwp0qo=;
	b=JyrTRzes4cWNoQhuZbeUTWWUNPGHC2GE3aGUy5EglqJX/usX6+cWgVKbScfRBCe+cM
	DNR1e0QI/oscI8TFrcWEYYVsBgfO10CH8fAmO6DR9vbU8Q3H+vf00DcZoynv/B+3NmhF
	JlPTlaKBJeVU2voxbC5O81b4yigc/ppH3T8zTqu6lNhT2P4J/2Dwmgq/pj+lOzdj/P4A
	f3JquffxGXoVNtktKnx9FsetHT28WgEHXk2Q5xdGI2ACi2qPZ3qDirJXycrW1zTJJByy
	oq1W82qCkuI88J9roS6ckG0yTNVOiuxe4gNMCbVYZt2VMPGLLxxB85hijey6P/Xox7G+
	MJYw==
X-Gm-Message-State: APjAAAVo3uqbSAAFGbMCvtFLjzv5W18Uo7ha3zsscZ0Yse3Q64MlkEl+
	/0P9oMEDHoAXE7fXLxaDNaciel/Q6dbYrbuRjJq+2w==
X-Google-Smtp-Source: APXvYqwugvose72ulQNofUpJ2TddR4C4LrUfMyIegn+ipl5RbUoJy7rAOV4O4uARH4FqGbWwF+C2/6oflTEMIw9z3MI=
X-Received: by 2002:a2e:8316:: with SMTP id a22mr15745509ljh.171.1554729995213;
	Mon, 08 Apr 2019 06:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCdBQh-Thsn+YgBs8mCVU+ddF4SJQOXUJjsDveZTKcSiA@mail.gmail.com>
In-Reply-To: <CAAx3WaCdBQh-Thsn+YgBs8mCVU+ddF4SJQOXUJjsDveZTKcSiA@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 8 Apr 2019 15:26:23 +0200
Message-ID: <CAAx3WaD7YuG84Y7CJe=TDEFJ9Tq7mpS7LaNMTbQm5gXfU98tEg@mail.gmail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 08 Apr 2019 13:26:41 -0000
Content-Type: multipart/alternative; boundary="000000000000161ef6058604c97f"

--000000000000161ef6058604c97f
Content-Type: text/plain; charset="UTF-8"

bump

Il giorno mer 3 apr 2019 alle ore 12:07 Gabriele Zampieri <
gabbla.malist@gmail.com> ha scritto:

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
>

--000000000000161ef6058604c97f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">bump<br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">Il giorno mer 3 apr 2019 alle ore 12:07 Gabriele Z=
ampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com">gabbla.malist@gmail.=
com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</di=
v><div><br></div><div>I&#39;m setting up a layer that will compile our appl=
ications and libraries. All the applications are based on cmake and they sh=
are modules. Before using yocto I kept the modules in &lt;workspace&gt;/cma=
ke (under version control) alongside applications and libraries. With yocto=
 I wrote a recipe that checkout the module repo and install them in &quot;$=
{STAGING_DATADIR}/cmake/Modules/&quot;. I took this path from &quot;meta/cl=
asses/cmake.bbclass&quot;. If i build the module target, I get the files in=
stalled in the target recipe datadir. If I want to build a library (that de=
pends also on my modules recipe) the task do_configure fails because cmake =
cannot find none of my include. Digging around I found that the toolchain.c=
make file points to a module location that doesn&#39;t exist in the library=
 workdir, but in module recipe (${STAGING_DATADIR}/cmake/Modules/). <br></d=
iv><div><br></div><div>The module recipe looks like as follow:</div><div><b=
r></div><div>MODULES_DEST_PATH =3D &quot;${STAGING_DATADIR}/cmake/Modules&q=
uot;<br>FILES_${PN}-dev =3D &quot;${MODULES_DEST_PATH}/*&quot;<br><br>do_in=
stall() {<br>=C2=A0=C2=A0=C2=A0 DEST_DIR=3D${MODULES_DEST_PATH}<br><br>=C2=
=A0=C2=A0=C2=A0 # Create the destination folder<br>=C2=A0=C2=A0=C2=A0 insta=
ll -d $DEST_DIR<br></div><div>=C2=A0=C2=A0=C2=A0 install -m 0444 ${S}/my/mo=
dule.cmake $DEST_DIR</div><div>=C2=A0=C2=A0=C2=A0 ......</div><div>}<br></d=
iv><div>=C2=A0=C2=A0=C2=A0 <br></div><div>So my question is: where should I=
 install the shared modules (MODULE_DEST_PATH int the above snippet)? and h=
ow to update the CMAKE_MODULE_PATH properly to append that location?</div><=
div><br></div><div>Thanks, <br></div><div>Gabriele<br></div></div></div></d=
iv>
</blockquote></div>

--000000000000161ef6058604c97f--
