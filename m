Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C023E00D18; Fri, 10 Nov 2017 00:11:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f173.google.com (mail-ot0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 575CAE00CE2
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 00:11:45 -0800 (PST)
Received: by mail-ot0-f173.google.com with SMTP id c47so7535392otj.6
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 00:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hhfeJTrIFM2nsdWP6qaMWEtCNYXUdddOmPo+swfcuAo=;
	b=BLPDpVDXEbjRu02nZT5IJwF2SrE9Mm12Lq2rbYF6RyBrJWgUKOtnQLNqPonoIR9hew
	ZncOSCVgWW/+q9ba+YroFHuTob2+Uw1GF2QFHOs3UceKO2TUepWI71lFj8SaFrQqxJII
	ujLty6eoPYY+womR2kMFhDeImiKHy85HzoFE+2JQ8tPKT3OFFXPK8Ldmeiwi+29TvuCW
	caA+vFZ0fSg9FYjdq2AGVQaWbz0M+O33jFkDMMiQ59WbLm/YxeflPz/oqWSS2haeHe9o
	n0/mewseCb9y4XmVhiWgFw7VYD5SqaDcRqeTAHmZbqJbH570gbrtkjNCv7soQDrZm0V5
	7www==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hhfeJTrIFM2nsdWP6qaMWEtCNYXUdddOmPo+swfcuAo=;
	b=IXvO0+JBAX0wCd0JsW0FWtZtJvJob9Pj286VUrxu73I6RCi7q8MDxaHUsJ9v4w+/mM
	mHfQ70pfBA83ZshAzKvhP+zeWp6W5/miEmw/ClwL1SrrHHuKwkIJLLZc8y0ThJkzuWEb
	u/mPCa0f8qTuplUE6XnSMDcTTrFe5+otIzf73WEDrgAtu0uWJ2QvgNLD7fCw7bkS81Cj
	1Ziqx3On17TnLUC4Aepf3eRutdDQ9kFLRibhrt7Exje/RmVrdQD0Ze30qwKs9bTLO0OH
	K64ST+qTEPcjY7snlMsAxsJXcIaOD4LGwGQ0MPJ8Aiem9faHtMiP2jQOMHS6h62g5EB0
	w9Gg==
X-Gm-Message-State: AJaThX4r24DtRoemMvb7Rh0Sbk9PsQ9NZOEdCIoDUIk4PHBVhje+A60C
	yu6BMvzycY9WzblAWlLCowv7Q8aS2nmZ5ScjdZhxkA==
X-Google-Smtp-Source: AGs4zMa0E1P8M210icJro65qyEGTcL6qA44w0vNZkg7+kb6STsc++SZ8VaFBLI6vrzdQ+JEGj4r/IoxTX5ldCY6hRZs=
X-Received: by 10.157.15.67 with SMTP id 61mr1925001ott.198.1510301504428;
	Fri, 10 Nov 2017 00:11:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Fri, 10 Nov 2017 00:11:44 -0800 (PST)
In-Reply-To: <CAGAf8LwHndPmYzEZ7kbZ6cG0iVrJqnMxU-uq7Y3WaoEYNLv7Ug@mail.gmail.com>
References: <CAGAf8LwHndPmYzEZ7kbZ6cG0iVrJqnMxU-uq7Y3WaoEYNLv7Ug@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 10 Nov 2017 09:11:44 +0100
Message-ID: <CAOT_U5ab9tGoB_pojuUO8OaqMaNbcmS3i+-NwGeoHAMdY3d_uQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
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
X-List-Received-Date: Fri, 10 Nov 2017 08:11:46 -0000
Content-Type: multipart/alternative; boundary="94eb2c04d54cacfa78055d9c7882"

--94eb2c04d54cacfa78055d9c7882
Content-Type: text/plain; charset="UTF-8"

Hi

>
> I have both python (2.7.14) and python3.6 (3.6.2). But, as far as I can
> see/say, both interpreters do NOT support export declaration (supported
> with /bin/bash). In other words, every child shell will (with export
> declaration on certain variables) inherit parent's environment.
>
> [user@192 conf]$ python
> Python 2.7.14 (default, Nov  2 2017, 18:42:05)
> [GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux2
> Type "help", "copyright", "credits" or "license" for more information.
> >>>
> [user@192 conf]$ python3.6
> Python 3.6.2 (default, Oct  2 2017, 16:51:32)
> [GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux
> Type "help", "copyright", "credits" or "license" for more information.
> >>>
> [user@192 conf]$


Just to see if I understood correctly.
Are saying here that you can't pass a custom environmental variable to a
child
process of the parent process is the python interpreter?


I assume this file: ...poky/meta/conf/bitbake.conf mandatory executes when
> I source the oe-init-build-env file. Command: . oe-init-build-env
>

The oe-init-build-env is just a bash scritp. You could try running it with
-x to see
if the file you're referring to is actually being used.

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/oe-init-build-env


I need advise here: how I can query bitbake environment variables set by .
> oe-init-build-env, using /bin/bash? Or should I use some special written
> python procedure to do this?
>


The environment variables that you get when you source oe-init-build-env,
are the variables that have been set. You know about grepping env?
If they aren't there it means, that the haven't been exported and
are set only for a particular building step you execute.

If you need custom variables, you can set them by modifying the
oe-init-build-env
with your own exports.


On Fri, Nov 10, 2017 at 7:44 AM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello to all YOCTO users,
>
> I have one (I should say naive) question considering/querying environment
> variables, initially set with bitbake scripts.
>
> I have both python (2.7.14) and python3.6 (3.6.2). But, as far as I can
> see/say, both interpreters do NOT support export declaration (supported
> with /bin/bash). In other words, every child shell will (with export
> declaration on certain variables) inherit parent's environment.
>
> [user@192 conf]$ python
> Python 2.7.14 (default, Nov  2 2017, 18:42:05)
> [GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux2
> Type "help", "copyright", "credits" or "license" for more information.
> >>>
> [user@192 conf]$ python3.6
> Python 3.6.2 (default, Oct  2 2017, 16:51:32)
> [GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux
> Type "help", "copyright", "credits" or "license" for more information.
> >>>
> [user@192 conf]$
>
> Now, I see that bitbake (written in python language) supports export. From
> here:
> ...poky/meta/conf/bitbake.conf
>
> Excerpt from the file:
> # Path prefixes
> export base_prefix = ""
> export prefix = "/usr"
> export exec_prefix = "${prefix}"
>
> root_prefix = "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge',
> '${exec_prefix}', '${base_prefix}', d)}"
>
> # Base paths
> export base_bindir = "${root_prefix}/bin"
> export base_sbindir = "${root_prefix}/sbin"
> export base_libdir = "${root_prefix}/${baselib}"
> export nonarch_base_libdir = "${root_prefix}/lib"
>
> I assume this file: ...poky/meta/conf/bitbake.conf mandatory executes when
> I source the oe-init-build-env file. Command: . oe-init-build-env
>
> After that I would like to access these environment variables from the
> /bin/bash, and query them, but it seems that this is NOT possible?!
>
> I need advise here: how I can query bitbake environment variables set by .
> oe-init-build-env, using /bin/bash? Or should I use some special written
> python procedure to do this?
>
> Help required/needed!?
>
> I hope what I write here does make sense, does'n it?
>
> Thank you,
> Zoran
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c04d54cacfa78055d9c7882
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><b=
r><div>I have both python (2.7.14) and python3.6 (3.6.2). But, as far as I
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
iv><br></div><div>Just to see if I understood correctly.<br></div><div>Are =
saying here that you can&#39;t pass a custom environmental variable to a ch=
ild <br>process of the parent process is the python interpreter?<br></div><=
br><div><br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>I assume=
 this file: ...poky/meta/conf/bitbake.conf mandatory=20
executes when I source the=C2=A0oe-init-build-env file. Command: .=20
oe-init-build-env</div></blockquote><br></div><div>The oe-init-build-env is=
 just a bash scritp. You could try running it with -x to see<br></div><div>=
if the file you&#39;re referring to is actually being used.<br></div><div><=
br><a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/oe-init-=
build-env" target=3D"_blank">https://git.yoctoproject.org/<wbr>cgit/cgit.cg=
i/poky/tree/oe-<wbr>init-build-env</a><br><br><br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div>I need advise here: how I can query bitbake e=
nvironment variables=20
set by . oe-init-build-env, using /bin/bash? Or should I use some=20
special written python procedure to do this?</div></blockquote><br><br></di=
v><div>The environment variables that you get when you source oe-init-build=
-env, <br></div><div>are the variables that have been set. You know about g=
repping env?<br></div><div>If they aren&#39;t there it means, that the have=
n&#39;t been exported and<br></div><div>are set only for a particular build=
ing step you execute.<br></div><div><br></div><div>If you need custom varia=
bles, you can set them by modifying the oe-init-build-env<br></div><div>wit=
h your own exports.<br></div><div><br></div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Fri, Nov 10, 2017 at 7:44 AM, Zoran Sto=
jsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmai=
l.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello to all YOCT=
O users,</div><div><br></div><div>I have one (I should say naive) question =
considering/querying environment variables, initially set with bitbake scri=
pts.</div><div><br></div><div>I have both python (2.7.14) and python3.6 (3.=
6.2). But, as far as I can see/say, both interpreters do NOT support export=
 declaration (supported with /bin/bash). In other words, every child shell =
will (with export declaration on certain variables) inherit parent&#39;s en=
vironment.</div><div><br></div><div>[user@192 conf]$ python</div><div>Pytho=
n 2.7.14 (default, Nov=C2=A0 2 2017, 18:42:05)=C2=A0</div><div>[GCC 7.2.1 2=
0170915 (Red Hat 7.2.1-2)] on linux2</div><div>Type &quot;help&quot;, &quot=
;copyright&quot;, &quot;credits&quot; or &quot;license&quot; for more infor=
mation.</div><div>&gt;&gt;&gt;=C2=A0</div><div>[user@192 conf]$ python3.6</=
div><div>Python 3.6.2 (default, Oct=C2=A0 2 2017, 16:51:32)=C2=A0</div><div=
>[GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux</div><div>Type &quot;help&=
quot;, &quot;copyright&quot;, &quot;credits&quot; or &quot;license&quot; fo=
r more information.</div><div>&gt;&gt;&gt;=C2=A0</div><div>[user@192 conf]$=
<br></div><div><br></div><div>Now, I see that bitbake (written in python la=
nguage) supports export. From here:</div><div>...poky/meta/conf/bitbake.con=
f<br></div><div><br></div><div>Excerpt from the file:</div><div><div># Path=
 prefixes</div><div>export base_prefix =3D &quot;&quot;</div><div>export pr=
efix =3D &quot;/usr&quot;</div><div>export exec_prefix =3D &quot;${prefix}&=
quot;</div><div><br></div><div>root_prefix =3D &quot;${@bb.utils.contains(&=
#39;DISTRO_<wbr>FEATURES&#39;, &#39;usrmerge&#39;, &#39;${exec_prefix}&#39;=
, &#39;${base_prefix}&#39;, d)}&quot;</div><div><br></div><div># Base paths=
</div><div>export base_bindir =3D &quot;${root_prefix}/bin&quot;</div><div>=
export base_sbindir =3D &quot;${root_prefix}/sbin&quot;</div><div>export ba=
se_libdir =3D &quot;${root_prefix}/${baselib}&quot;</div><div>export nonarc=
h_base_libdir =3D &quot;${root_prefix}/lib&quot;</div></div><div><br></div>=
<div>I assume this file: ...poky/meta/conf/bitbake.conf mandatory executes =
when I source the=C2=A0oe-init-build-env file. Command: . oe-init-build-env=
</div><div><br></div><div>After that I would like to access these environme=
nt variables from the /bin/bash, and query them, but it seems that this is =
NOT possible?!<br></div><div><br></div><div>I need advise here: how I can q=
uery bitbake environment variables set by . oe-init-build-env, using /bin/b=
ash? Or should I use some special written python procedure to do this?</div=
><div><br></div><div>Help required/needed!?</div><div><br></div><div>I hope=
 what I write here does make sense, does&#39;n it?</div><div><br></div><div=
>Thank you,</div><div>Zoran</div><div><br></div><div><br></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c04d54cacfa78055d9c7882--
