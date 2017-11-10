Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 930ECE00D3A; Fri, 10 Nov 2017 08:01:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B834FE00CFF
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 08:01:02 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id b9so3709663wmh.0
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 08:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Vd/qBUm3vfHhlYlXTAb/Fp43bB5YAedT0SvtVU8LUi0=;
	b=XgjskOsq3CNgFsq21+HO1/W/hXTCKfnrtEhY4FMJ1ga0i391ttqTZ5jxcAwWVDyZrD
	NuMErm9f/OYhhPaoH82YRGnmRj1czLixgUoLTJLKvWteUq5OLktZ41U1niNlx1yKK2U+
	dvRPcYGhnwtbcy8D33BFIgyCEmW+s4zbYAEf3uTf4cqQ+agJgzQHSmFZfxfe/iU4+cgi
	hmG6sXd50+40qwWTPXv+sGgfNfHJIjKv67Ay4S5eWX1g3fY0Brdoo+cdXstxRoezZNYo
	rRycskfjy8kxORtsSMI0MZOl8D1nFmsHIo3twJAoaFfGQnKyTG898GFecLYHsRloQOY9
	FdkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Vd/qBUm3vfHhlYlXTAb/Fp43bB5YAedT0SvtVU8LUi0=;
	b=KUozyEvChJ6A8bJvJRNvV+fhLmjs+13Uo5yjzjJBbQv6gyj2+VQNB+UTviTCFh5H0a
	gRXJ6NEx2S35smd5WTIK1Q+hb1od12yS4ogQWIjp6oLWPCuUfalsrsfu4RnSyyxyJ6YB
	YG2AuEGXe3tRcF2vVzznWJT8XIG8Yx0v4tJuJfobu1GBqMgQDXW/q3w32eKRJx74ONGW
	1+4PLY17vcnOsTrS8PSm1/Q5CI+tXvt8e64z3lK55J/kgyXufasiL6p+2QV9DYjQDgJg
	G7cY1beoXmP/O7dBwjImJ39aTyyNaMzME7jqHKl6FLSsxkY+JBA9fjzdv4AEBQWOLEXV
	0GCA==
X-Gm-Message-State: AJaThX4oNFXvAhfAblsAXSt7mqjQK2b4YgawDisYyPYnuPOOoY2Qn3Rl
	Q+1snrw1NqBVDDOUyQ0gkFhojTtvXy9hnd74Xa1Qtw==
X-Google-Smtp-Source: AGs4zMZBoGURlEn1+xIOhkxVwaFzfqcI4KmimJNe0JtV+Gcqlx2/2XgE7Wqd951lex+K4MDMiCrdEvOCAVaEVQgRMAQ=
X-Received: by 10.28.46.137 with SMTP id u131mr616373wmu.64.1510329661954;
	Fri, 10 Nov 2017 08:01:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Fri, 10 Nov 2017 08:01:01 -0800 (PST)
In-Reply-To: <CAOT_U5ab9tGoB_pojuUO8OaqMaNbcmS3i+-NwGeoHAMdY3d_uQ@mail.gmail.com>
References: <CAGAf8LwHndPmYzEZ7kbZ6cG0iVrJqnMxU-uq7Y3WaoEYNLv7Ug@mail.gmail.com>
	<CAOT_U5ab9tGoB_pojuUO8OaqMaNbcmS3i+-NwGeoHAMdY3d_uQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 10 Nov 2017 17:01:01 +0100
Message-ID: <CAGAf8Lzm2_iTN-XM7Ei89L4HQ6QYP8W-JMr0=HggrQiYaXYn4A@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: export command in bitbake
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
X-List-Received-Date: Fri, 10 Nov 2017 16:01:07 -0000
Content-Type: multipart/alternative; boundary="001a11422f3cfe9dee055da3062e"

--001a11422f3cfe9dee055da3062e
Content-Type: text/plain; charset="UTF-8"

> Just to see if I understood correctly.
> Are saying here that you can't pass a custom environmental variable to a
child
> process of the parent process is the python interpreter?

It is actually vice versa, but it does not matter. You did not understand
what I wanted to say/point here.

> The oe-init-build-env is just a bash scritp. You could try running it
with -x to see
> if the file you're referring to is actually being used.

I have not at all idea what you tried to say/convey to me here. Could you
be more specific?

> The environment variables that you get when you source oe-init-build-env,
> are the variables that have been set. You know about grepping env?
> If they aren't there it means, that the haven't been exported and
> are set only for a particular building step you execute.

You missed the point, completely,. All Cool. I'll continue my research as
it comes... Alone.

Be Well,
Zoran

On Fri, Nov 10, 2017 at 9:11 AM, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Hi
>
>>
>> I have both python (2.7.14) and python3.6 (3.6.2). But, as far as I can
>> see/say, both interpreters do NOT support export declaration (supported
>> with /bin/bash). In other words, every child shell will (with export
>> declaration on certain variables) inherit parent's environment.
>>
>> [user@192 conf]$ python
>> Python 2.7.14 (default, Nov  2 2017, 18:42:05)
>> [GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux2
>> Type "help", "copyright", "credits" or "license" for more information.
>> >>>
>> [user@192 conf]$ python3.6
>> Python 3.6.2 (default, Oct  2 2017, 16:51:32)
>> [GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux
>> Type "help", "copyright", "credits" or "license" for more information.
>> >>>
>> [user@192 conf]$
>
>
> Just to see if I understood correctly.
> Are saying here that you can't pass a custom environmental variable to a
> child
> process of the parent process is the python interpreter?
>
>
> I assume this file: ...poky/meta/conf/bitbake.conf mandatory executes when
>> I source the oe-init-build-env file. Command: . oe-init-build-env
>>
>
> The oe-init-build-env is just a bash scritp. You could try running it with
> -x to see
> if the file you're referring to is actually being used.
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/oe-init-build-env
>
>
> I need advise here: how I can query bitbake environment variables set by .
>> oe-init-build-env, using /bin/bash? Or should I use some special written
>> python procedure to do this?
>>
>
>
> The environment variables that you get when you source oe-init-build-env,
> are the variables that have been set. You know about grepping env?
> If they aren't there it means, that the haven't been exported and
> are set only for a particular building step you execute.
>
> If you need custom variables, you can set them by modifying the
> oe-init-build-env
> with your own exports.
>
>
> On Fri, Nov 10, 2017 at 7:44 AM, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> Hello to all YOCTO users,
>>
>> I have one (I should say naive) question considering/querying environment
>> variables, initially set with bitbake scripts.
>>
>> I have both python (2.7.14) and python3.6 (3.6.2). But, as far as I can
>> see/say, both interpreters do NOT support export declaration (supported
>> with /bin/bash). In other words, every child shell will (with export
>> declaration on certain variables) inherit parent's environment.
>>
>> [user@192 conf]$ python
>> Python 2.7.14 (default, Nov  2 2017, 18:42:05)
>> [GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux2
>> Type "help", "copyright", "credits" or "license" for more information.
>> >>>
>> [user@192 conf]$ python3.6
>> Python 3.6.2 (default, Oct  2 2017, 16:51:32)
>> [GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux
>> Type "help", "copyright", "credits" or "license" for more information.
>> >>>
>> [user@192 conf]$
>>
>> Now, I see that bitbake (written in python language) supports export.
>> From here:
>> ...poky/meta/conf/bitbake.conf
>>
>> Excerpt from the file:
>> # Path prefixes
>> export base_prefix = ""
>> export prefix = "/usr"
>> export exec_prefix = "${prefix}"
>>
>> root_prefix = "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge',
>> '${exec_prefix}', '${base_prefix}', d)}"
>>
>> # Base paths
>> export base_bindir = "${root_prefix}/bin"
>> export base_sbindir = "${root_prefix}/sbin"
>> export base_libdir = "${root_prefix}/${baselib}"
>> export nonarch_base_libdir = "${root_prefix}/lib"
>>
>> I assume this file: ...poky/meta/conf/bitbake.conf mandatory executes
>> when I source the oe-init-build-env file. Command: . oe-init-build-env
>>
>> After that I would like to access these environment variables from the
>> /bin/bash, and query them, but it seems that this is NOT possible?!
>>
>> I need advise here: how I can query bitbake environment variables set by
>> . oe-init-build-env, using /bin/bash? Or should I use some special written
>> python procedure to do this?
>>
>> Help required/needed!?
>>
>> I hope what I write here does make sense, does'n it?
>>
>> Thank you,
>> Zoran
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a11422f3cfe9dee055da3062e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:12.8px">&gt; Just to see if I unde=
rstood correctly.<br></div><div style=3D"font-size:12.8px">&gt; Are saying =
here that you can&#39;t pass a custom environmental variable to a child=C2=
=A0<br>&gt; process of the parent process is the python interpreter?</div><=
div style=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">It=
 is actually vice versa, but it does not matter. You did not understand wha=
t I wanted to say/point here.</div><div style=3D"font-size:12.8px"><br></di=
v><div style=3D"font-size:12.8px"><div style=3D"font-size:12.8px">&gt; The =
oe-init-build-env is just a bash scritp. You could try running it with -x t=
o see<br></div><div style=3D"font-size:12.8px">&gt; if the file you&#39;re =
referring to is actually being used.<br></div><div><br></div><div>I have no=
t at all idea what you tried to say/convey to me here. Could you be more sp=
ecific?</div><div><br></div><div><div style=3D"font-size:12.8px">&gt; The e=
nvironment variables that you get when you source oe-init-build-env,=C2=A0<=
br></div><div style=3D"font-size:12.8px">&gt; are the variables that have b=
een set. You know about grepping env?<br></div><div style=3D"font-size:12.8=
px">&gt; If they aren&#39;t there it means, that the haven&#39;t been expor=
ted and<br></div><div style=3D"font-size:12.8px">&gt; are set only for a pa=
rticular building step you execute.</div></div><div style=3D"font-size:12.8=
px"><br></div><div style=3D"font-size:12.8px">You missed the point, complet=
ely,. All Cool. I&#39;ll continue my research as it comes... Alone.</div><d=
iv style=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Be =
Well,</div><div style=3D"font-size:12.8px">Zoran</div></div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Nov 10, 2017 at 9:=
11 AM, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martino=
vic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi<span class=3D""=
><br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><br><div>I have both=
 python (2.7.14) and python3.6 (3.6.2). But, as far as I
 can see/say, both interpreters do NOT support export declaration=20
(supported with /bin/bash). In other words, every child shell will (with
 export declaration on certain variables) inherit parent&#39;s environment.=
</div><div><br></div><div>[user@192 conf]$ python</div><div>Python 2.7.14 (=
default, Nov=C2=A0 2 2017, 18:42:05)=C2=A0</div><div>[GCC 7.2.1 20170915 (R=
ed Hat 7.2.1-2)] on linux2</div><div>Type &quot;help&quot;, &quot;copyright=
&quot;, &quot;credits&quot; or &quot;license&quot; for more information.</d=
iv><div>&gt;&gt;&gt;=C2=A0</div><div>[user@192 conf]$ python3.6</div><div>P=
ython 3.6.2 (default, Oct=C2=A0 2 2017, 16:51:32)=C2=A0</div><div>[GCC 7.2.=
1 20170915 (Red Hat 7.2.1-2)] on linux</div><div>Type &quot;help&quot;, &qu=
ot;copyright&quot;, &quot;credits&quot; or &quot;license&quot; for more inf=
ormation.</div><div>&gt;&gt;&gt;=C2=A0</div>[user@192 conf]$</blockquote><d=
iv><br></div></span><div>Just to see if I understood correctly.<br></div><d=
iv>Are saying here that you can&#39;t pass a custom environmental variable =
to a child <br>process of the parent process is the python interpreter?<br>=
</div><span class=3D""><br><div><br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div>I assume this file: ...poky/meta/conf/bitbake.conf mandator=
y=20
executes when I source the=C2=A0oe-init-build-env file. Command: .=20
oe-init-build-env</div></blockquote><br></div></span><div>The oe-init-build=
-env is just a bash scritp. You could try running it with -x to see<br></di=
v><div>if the file you&#39;re referring to is actually being used.<br></div=
><div><br><a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/o=
e-init-build-env" target=3D"_blank">https://git.yoctoproject.org/c<wbr>git/=
cgit.cgi/poky/tree/oe-init<wbr>-build-env</a><span class=3D""><br><br><br><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div>I need advise here: h=
ow I can query bitbake environment variables=20
set by . oe-init-build-env, using /bin/bash? Or should I use some=20
special written python procedure to do this?</div></blockquote><br><br></sp=
an></div><div>The environment variables that you get when you source oe-ini=
t-build-env, <br></div><div>are the variables that have been set. You know =
about grepping env?<br></div><div>If they aren&#39;t there it means, that t=
he haven&#39;t been exported and<br></div><div>are set only for a particula=
r building step you execute.<br></div><div><br></div><div>If you need custo=
m variables, you can set them by modifying the oe-init-build-env<br></div><=
div>with your own exports.<br></div><div><br></div></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote"><div><div class=3D"h5">On Fri, Nov =
10, 2017 at 7:44 AM, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@=
gmail.com</a><wbr>&gt;</span> wrote:<br></div></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div><div class=3D"h5"><div dir=3D"ltr"><div>Hello to all YOCTO use=
rs,</div><div><br></div><div>I have one (I should say naive) question consi=
dering/querying environment variables, initially set with bitbake scripts.<=
/div><div><br></div><div>I have both python (2.7.14) and python3.6 (3.6.2).=
 But, as far as I can see/say, both interpreters do NOT support export decl=
aration (supported with /bin/bash). In other words, every child shell will =
(with export declaration on certain variables) inherit parent&#39;s environ=
ment.</div><div><br></div><div>[user@192 conf]$ python</div><div>Python 2.7=
.14 (default, Nov=C2=A0 2 2017, 18:42:05)=C2=A0</div><div>[GCC 7.2.1 201709=
15 (Red Hat 7.2.1-2)] on linux2</div><div>Type &quot;help&quot;, &quot;copy=
right&quot;, &quot;credits&quot; or &quot;license&quot; for more informatio=
n.</div><div>&gt;&gt;&gt;=C2=A0</div><div>[user@192 conf]$ python3.6</div><=
div>Python 3.6.2 (default, Oct=C2=A0 2 2017, 16:51:32)=C2=A0</div><div>[GCC=
 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux</div><div>Type &quot;help&quot;=
, &quot;copyright&quot;, &quot;credits&quot; or &quot;license&quot; for mor=
e information.</div><div>&gt;&gt;&gt;=C2=A0</div><div>[user@192 conf]$<br><=
/div><div><br></div><div>Now, I see that bitbake (written in python languag=
e) supports export. From here:</div><div>...poky/meta/conf/bitbake.conf<br>=
</div><div><br></div><div>Excerpt from the file:</div><div><div># Path pref=
ixes</div><div>export base_prefix =3D &quot;&quot;</div><div>export prefix =
=3D &quot;/usr&quot;</div><div>export exec_prefix =3D &quot;${prefix}&quot;=
</div><div><br></div><div>root_prefix =3D &quot;${@bb.utils.contains(&#39;D=
ISTRO_<wbr>FEATURES&#39;, &#39;usrmerge&#39;, &#39;${exec_prefix}&#39;, &#3=
9;${base_prefix}&#39;, d)}&quot;</div><div><br></div><div># Base paths</div=
><div>export base_bindir =3D &quot;${root_prefix}/bin&quot;</div><div>expor=
t base_sbindir =3D &quot;${root_prefix}/sbin&quot;</div><div>export base_li=
bdir =3D &quot;${root_prefix}/${baselib}&quot;</div><div>export nonarch_bas=
e_libdir =3D &quot;${root_prefix}/lib&quot;</div></div><div><br></div><div>=
I assume this file: ...poky/meta/conf/bitbake.conf mandatory executes when =
I source the=C2=A0oe-init-build-env file. Command: . oe-init-build-env</div=
><div><br></div><div>After that I would like to access these environment va=
riables from the /bin/bash, and query them, but it seems that this is NOT p=
ossible?!<br></div><div><br></div><div>I need advise here: how I can query =
bitbake environment variables set by . oe-init-build-env, using /bin/bash? =
Or should I use some special written python procedure to do this?</div><div=
><br></div><div>Help required/needed!?</div><div><br></div><div>I hope what=
 I write here does make sense, does&#39;n it?</div><div><br></div><div>Than=
k you,</div><div>Zoran</div><div><br></div><div><br></div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--001a11422f3cfe9dee055da3062e--
