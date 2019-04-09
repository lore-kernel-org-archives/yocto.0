Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4903E00AD5; Tue,  9 Apr 2019 07:39:08 -0700 (PDT)
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
	*      [209.85.167.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A57EDE00942
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 07:39:07 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id h18so4089001lfj.11
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 07:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xIAIdFSIOAAJRFVv08EuAlMmTTdakzMpqUexTdQLMJs=;
	b=C73Zk0aoe/RGe1s8tcn4zC5PTeMjjbwbKhbi5ZKYRoJ3Mc3gpOtyPt2fGJNVbsUdMU
	lFTnwzKKS6NGKzgcpTwlJiY9hA1XEV931pfwmin5+/vhMHfNDZon+Ew4wbuf6G0WigF2
	/p3iuEAllX9pI8bwtnR/nlRKN99BZwOHGZAXG+rIbjs4kUUduYqGw0WARCBunXbQcjxi
	aqfypVrB/NYmmN30wS9RriM/dqtHfeYMfyXffIv3wRUxFXxwFihVdH6PyL+j68rAELCC
	Ea2sHNTjuorrLQh0r/D9B2yEdjgimLhL3miyyXvFvyLcs9LSZouePei0dIbTLGFwtD7J
	IS0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xIAIdFSIOAAJRFVv08EuAlMmTTdakzMpqUexTdQLMJs=;
	b=im1Xv6qT3UbJgc3IWUVSdqiF4Ts6DjFHfdlC8Rts3eYKw83PQRSsjQzfh4TItwPYPb
	wBBmqAVu7h31IovRBnRva8TvZnqN+lEdqJjo5Gj2M1hp2lWIOHdTXDHC5aiuHk76UB/7
	eSrk2gz3emif1ELHN5PeZL72mfrMHLplvLqQAAdxhrwxbM69cOAp+vS8VtCA74peOOmf
	EwAxLnTOogoAfA5FWdszeA8ds/oC9UM2y103m5obyevuczJjWs7J3W3NyzvP1o8FbrTq
	9EgOZOzIaKuckyyXjHXARxmtnuEhPWFZzqpyJsba+36zEjsdyxmLUUuiLBJ/96N5RM20
	/XMg==
X-Gm-Message-State: APjAAAWNVkRHcYssjua7aJ1/Jl0d5EWrD6xZ74aH1w7OHdyA7/BDBMgS
	7NQ6+bQjYcujmZRuSYPsO9hN+AzmxtNqyiVf3K0=
X-Google-Smtp-Source: APXvYqzem5lDDawxarm0Tw8m/BoMTgSX/yJTzrLabpgs89E55YjCrIZWmEAA5TyRruUDRSwzED68cL2xDLMJyO/f+a0=
X-Received: by 2002:ac2:4893:: with SMTP id x19mr10762090lfc.109.1554820746711;
	Tue, 09 Apr 2019 07:39:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCdBQh-Thsn+YgBs8mCVU+ddF4SJQOXUJjsDveZTKcSiA@mail.gmail.com>
	<CAOgGgEQYZtKodfnKCSNeZh98gh60OfcNLhR6VLhoXrJuZeuceg@mail.gmail.com>
In-Reply-To: <CAOgGgEQYZtKodfnKCSNeZh98gh60OfcNLhR6VLhoXrJuZeuceg@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 9 Apr 2019 16:38:55 +0200
Message-ID: <CAAx3WaDJr1YnFt62+ShvuugJNCp8=q_6p2P1ms7sD7TR+YevAg@mail.gmail.com>
To: Henrik Lindblom <henriklindblomster@gmail.com>
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
X-List-Received-Date: Tue, 09 Apr 2019 14:39:08 -0000
Content-Type: multipart/alternative; boundary="0000000000004c1697058619ea46"

--0000000000004c1697058619ea46
Content-Type: text/plain; charset="UTF-8"

Hi,

yes, following:

- cmake-modules.bb https://pastebin.com/5VqN9msS
- xxx-log.bb : https://pastebin.com/LYcPW3hc

The first one install the modules, thus is a dependency of many libraries,
the second one is a simple logger library that uses first's module

Thanks for your help,
Gabriele





Il giorno lun 8 apr 2019 alle ore 19:05 Henrik Lindblom <
henriklindblomster@gmail.com> ha scritto:

> FILES_${PN}-dev = "${MODULES_DEST_PATH}/*"
>>
>
> Does your library recipe explicitly depend on <cmake_module>-dev? Can you
> share the failing recipe?
>
> Cheers,
> Henrik
>
> On Wed, Apr 3, 2019 at 1:18 PM Gabriele Zampieri <gabbla.malist@gmail.com>
> wrote:
>
>> Hi all,
>>
>> I'm setting up a layer that will compile our applications and libraries.
>> All the applications are based on cmake and they share modules. Before
>> using yocto I kept the modules in <workspace>/cmake (under version control)
>> alongside applications and libraries. With yocto I wrote a recipe that
>> checkout the module repo and install them in
>> "${STAGING_DATADIR}/cmake/Modules/". I took this path from
>> "meta/classes/cmake.bbclass". If i build the module target, I get the files
>> installed in the target recipe datadir. If I want to build a library (that
>> depends also on my modules recipe) the task do_configure fails because
>> cmake cannot find none of my include. Digging around I found that the
>> toolchain.cmake file points to a module location that doesn't exist in the
>> library workdir, but in module recipe (${STAGING_DATADIR}/cmake/Modules/).
>>
>> The module recipe looks like as follow:
>>
>> MODULES_DEST_PATH = "${STAGING_DATADIR}/cmake/Modules"
>> FILES_${PN}-dev = "${MODULES_DEST_PATH}/*"
>>
>> do_install() {
>>     DEST_DIR=${MODULES_DEST_PATH}
>>
>>     # Create the destination folder
>>     install -d $DEST_DIR
>>     install -m 0444 ${S}/my/module.cmake $DEST_DIR
>>     ......
>> }
>>
>> So my question is: where should I install the shared modules
>> (MODULE_DEST_PATH int the above snippet)? and how to update the
>> CMAKE_MODULE_PATH properly to append that location?
>>
>> Thanks,
>> Gabriele
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--0000000000004c1697058619ea46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi=
,</div><div><br></div><div>yes, following:</div><div><br></div><div>- <a hr=
ef=3D"http://cmake-modules.bb">cmake-modules.bb</a> <a href=3D"https://past=
ebin.com/5VqN9msS">https://pastebin.com/5VqN9msS</a></div><div>- <a href=3D=
"http://xxx-log.bb">xxx-log.bb</a> : <a href=3D"https://pastebin.com/LYcPW3=
hc">https://pastebin.com/LYcPW3hc</a></div><div><br></div><div>The first on=
e install the modules, thus is a dependency of many libraries, the second o=
ne is a simple logger library that uses first&#39;s module</div><div><br></=
div><div>Thanks for your help,</div><div>Gabriele<br></div><div><br></div><=
br><div><br></div><div><br></div></div></div></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 8 apr 2019=
 alle ore 19:05 Henrik Lindblom &lt;<a href=3D"mailto:henriklindblomster@gm=
ail.com">henriklindblomster@gmail.com</a>&gt; ha scritto:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">FILES_${PN}-dev =3D &quot;${MODULES_DEST_=
PATH}/*&quot;<br></blockquote><div><br></div>Does your library recipe expli=
citly depend on &lt;cmake_module&gt;-dev? Can you share the failing recipe?=
<div><br></div><div>Cheers,</div><div>Henrik=C2=A0</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 3, 2019=
 at 1:18 PM Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com=
" target=3D"_blank">gabbla.malist@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;m setting up=
 a layer that will compile our applications and libraries. All the applicat=
ions are based on cmake and they share modules. Before using yocto I kept t=
he modules in &lt;workspace&gt;/cmake (under version control) alongside app=
lications and libraries. With yocto I wrote a recipe that checkout the modu=
le repo and install them in &quot;${STAGING_DATADIR}/cmake/Modules/&quot;. =
I took this path from &quot;meta/classes/cmake.bbclass&quot;. If i build th=
e module target, I get the files installed in the target recipe datadir. If=
 I want to build a library (that depends also on my modules recipe) the tas=
k do_configure fails because cmake cannot find none of my include. Digging =
around I found that the toolchain.cmake file points to a module location th=
at doesn&#39;t exist in the library workdir, but in module recipe (${STAGIN=
G_DATADIR}/cmake/Modules/). <br></div><div><br></div><div>The module recipe=
 looks like as follow:</div><div><br></div><div>MODULES_DEST_PATH =3D &quot=
;${STAGING_DATADIR}/cmake/Modules&quot;<br>FILES_${PN}-dev =3D &quot;${MODU=
LES_DEST_PATH}/*&quot;<br><br>do_install() {<br>=C2=A0=C2=A0=C2=A0 DEST_DIR=
=3D${MODULES_DEST_PATH}<br><br>=C2=A0=C2=A0=C2=A0 # Create the destination =
folder<br>=C2=A0=C2=A0=C2=A0 install -d $DEST_DIR<br></div><div>=C2=A0=C2=
=A0=C2=A0 install -m 0444 ${S}/my/module.cmake $DEST_DIR</div><div>=C2=A0=
=C2=A0=C2=A0 ......</div><div>}<br></div><div>=C2=A0=C2=A0=C2=A0 <br></div>=
<div>So my question is: where should I install the shared modules (MODULE_D=
EST_PATH int the above snippet)? and how to update the CMAKE_MODULE_PATH pr=
operly to append that location?</div><div><br></div><div>Thanks, <br></div>=
<div>Gabriele<br></div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</blockquote></div>

--0000000000004c1697058619ea46--
