Return-Path: <henriklindblomster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5353CE00AD5; Tue,  9 Apr 2019 09:27:47 -0700 (PDT)
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
	*      [209.85.208.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2777E006D8
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 09:27:45 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id s16so15530911edr.3
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 09:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=1Lr5LPJvcycLxKNN4z7t68vYf8EXsAcMwhuaMb4Rww0=;
	b=BrUDrp9JaK4Qcn4JThfbLoogkohF1u0w18Ao5Im+VNDFedC5VFgOI/Xu4yTjskOVze
	0d1kXHLkGXLC5cFydIOVpRkeUsgPLlhmoRMCQ6sD5BAuENHIziuoGWsKjYK+eUndHhpN
	m/QuFHqjn7y0qqw37WBRGbwKYG3s0duQCkShOESwVaWGM144ptyKJCTN1CO8FhtiLIHv
	vDt5Ggvqot3uOa61J14YzaGQoen8GLS0SIHwWb5XCJOsvLts003O6aipoGF2d51/gnje
	LVJ7M0Ol2qdHvU+JKBxlNaak/E4iEujo177iA1AFToiDDmMHb6j15q3dtL4gADxHMjNU
	xMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=1Lr5LPJvcycLxKNN4z7t68vYf8EXsAcMwhuaMb4Rww0=;
	b=bHe6gAMG5K5hdrN8CJkjyHHyj9LwbddrExPKpILp4FL/iyrSzahSAv2DT9MFWORDBT
	OOsXS4IoSWGiX4VxUAQQ+UZvL4dBhgL2smcDxlNdx4kmOSRAVpMc4maiI0w03iX4r0/m
	okzfnKZz/yyRyZPw+nvtqXKvCGB1UEqYIJSIPdqvDiwcI6oOIzunzMibyytwT/wJQaaT
	lu9mNKDayffHY61P7DpF9yj+3Bm6GBB5hE+Rwe9/9gTjhmPpWhydt5Pljpg2ULAvab8F
	qJ29Eoz2NygQcXHaQsdXng0Zy/knSqT8AVtkyX6M+iBY63IumpcJoDnLfzKuaDoRrUTY
	B7eA==
X-Gm-Message-State: APjAAAXpjm8t7X+uo9gzSiRjrbkQhaQ3O6SKdMcREXnn5n8plgpzr6En
	ECC6NAJvw8rLq7FOlZ4vdttOHmEw+my+RW/Drxw=
X-Google-Smtp-Source: APXvYqzEGkHb/n/eHFhhaBcbl1H90OyMxUkH0CBpL4Z/6Wad61M6f9eLtO1t0RyQ+LSOM4qVvk8T7bMfEHIuS5OP0+E=
X-Received: by 2002:aa7:ccca:: with SMTP id y10mr8481319edt.114.1554827264905; 
	Tue, 09 Apr 2019 09:27:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCdBQh-Thsn+YgBs8mCVU+ddF4SJQOXUJjsDveZTKcSiA@mail.gmail.com>
	<CAOgGgEQYZtKodfnKCSNeZh98gh60OfcNLhR6VLhoXrJuZeuceg@mail.gmail.com>
	<CAAx3WaDJr1YnFt62+ShvuugJNCp8=q_6p2P1ms7sD7TR+YevAg@mail.gmail.com>
In-Reply-To: <CAAx3WaDJr1YnFt62+ShvuugJNCp8=q_6p2P1ms7sD7TR+YevAg@mail.gmail.com>
From: Henrik Lindblom <henriklindblomster@gmail.com>
Date: Tue, 9 Apr 2019 19:27:33 +0300
Message-ID: <CAOgGgEToOm6FCh-y-ixqAL_Po_yWcXGtHD45jvxyb0mdgX6NzA@mail.gmail.com>
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
X-List-Received-Date: Tue, 09 Apr 2019 16:27:47 -0000
Content-Type: multipart/alternative; boundary="000000000000cfd5c405861b6ed0"

--000000000000cfd5c405861b6ed0
Content-Type: text/plain; charset="UTF-8"

Your recipes seem a bit off. Doesn't bitbake complain about them at all?

In your logger library you declare a dependency to
"texa-cmake-modules", not "cmake-modules". Also, assuming the naming
conflict is only present in pastebin versions of your recipes, in
cmake-modules.bb you add all files under ${MODULES_DEST_PATH} to both
FILES_${PN}-dev and FILES_${PN}. These variables are used to populate
packages ${PN}-dev and ${PN} respectively. The order in which they
"grab" the files depends on PACKAGES, which has a default value of
"${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale
${PACKAGE_BEFORE_PN} ${PN}". Since ${PN}-dev appears before ${PN} in
this list, your cmake-modules package is most likely empty (I think
this should even yield a QA warning). Furthermore, your
MODULE_DEST_PATH incorrectly points to a path under ${STAGING_DATADIR}
which is also
where you install all your files in do_install(). Correct path for
installation is

${D}${datadir}/cmake/Modules

and for FILES

${datadir}/cmake/Modules/*

Depending on how you fix cmake-modules you likely need to change

DEPENDS = "cmake-modules boost"

to

DEPENDS = "cmake-modules-dev boost"

in your library recipe, adjusting for the actual name of your cmake
module.

See:
https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-D
https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-PACKAGES
https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-FILES

Cheers,
Henrik

On Tue, Apr 9, 2019 at 5:39 PM Gabriele Zampieri <gabbla.malist@gmail.com>
wrote:

> Hi,
>
> yes, following:
>
> - cmake-modules.bb https://pastebin.com/5VqN9msS
> - xxx-log.bb : https://pastebin.com/LYcPW3hc
>
> The first one install the modules, thus is a dependency of many libraries,
> the second one is a simple logger library that uses first's module
>
> Thanks for your help,
> Gabriele
>
>
>
>
>
> Il giorno lun 8 apr 2019 alle ore 19:05 Henrik Lindblom <
> henriklindblomster@gmail.com> ha scritto:
>
>> FILES_${PN}-dev = "${MODULES_DEST_PATH}/*"
>>>
>>
>> Does your library recipe explicitly depend on <cmake_module>-dev? Can you
>> share the failing recipe?
>>
>> Cheers,
>> Henrik
>>
>> On Wed, Apr 3, 2019 at 1:18 PM Gabriele Zampieri <gabbla.malist@gmail.com>
>> wrote:
>>
>>> Hi all,
>>>
>>> I'm setting up a layer that will compile our applications and libraries.
>>> All the applications are based on cmake and they share modules. Before
>>> using yocto I kept the modules in <workspace>/cmake (under version control)
>>> alongside applications and libraries. With yocto I wrote a recipe that
>>> checkout the module repo and install them in
>>> "${STAGING_DATADIR}/cmake/Modules/". I took this path from
>>> "meta/classes/cmake.bbclass". If i build the module target, I get the files
>>> installed in the target recipe datadir. If I want to build a library (that
>>> depends also on my modules recipe) the task do_configure fails because
>>> cmake cannot find none of my include. Digging around I found that the
>>> toolchain.cmake file points to a module location that doesn't exist in the
>>> library workdir, but in module recipe (${STAGING_DATADIR}/cmake/Modules/).
>>>
>>> The module recipe looks like as follow:
>>>
>>> MODULES_DEST_PATH = "${STAGING_DATADIR}/cmake/Modules"
>>> FILES_${PN}-dev = "${MODULES_DEST_PATH}/*"
>>>
>>> do_install() {
>>>     DEST_DIR=${MODULES_DEST_PATH}
>>>
>>>     # Create the destination folder
>>>     install -d $DEST_DIR
>>>     install -m 0444 ${S}/my/module.cmake $DEST_DIR
>>>     ......
>>> }
>>>
>>> So my question is: where should I install the shared modules
>>> (MODULE_DEST_PATH int the above snippet)? and how to update the
>>> CMAKE_MODULE_PATH properly to append that location?
>>>
>>> Thanks,
>>> Gabriele
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>

--000000000000cfd5c405861b6ed0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Your recipes seem a=
 bit off. Doesn&#39;t bitbake complain about them at all?</div><div><br></d=
iv><div>In your logger library you declare a dependency to</div><div>&quot;=
texa-cmake-modules&quot;, not &quot;cmake-modules&quot;. Also, assuming the=
 naming</div><div>conflict is only present in pastebin versions of your rec=
ipes, in</div><div><a href=3D"http://cmake-modules.bb">cmake-modules.bb</a>=
 you add all files under ${MODULES_DEST_PATH} to both</div><div>FILES_${PN}=
-dev and FILES_${PN}. These variables are used to populate</div><div>packag=
es ${PN}-dev and ${PN} respectively. The order in which they</div><div>&quo=
t;grab&quot; the files depends on PACKAGES, which has a default value of</d=
iv><div>&quot;${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale</d=
iv><div>${PACKAGE_BEFORE_PN} ${PN}&quot;. Since ${PN}-dev appears before ${=
PN} in</div><div>this list, your cmake-modules package is most likely empty=
 (I think</div><div>this should even yield a QA warning). Furthermore, your=
</div><div>MODULE_DEST_PATH incorrectly points to a path under ${STAGING_DA=
TADIR} which is also</div><div>where you install all your files in do_insta=
ll(). Correct path for installation is</div><div><br></div><div>${D}${datad=
ir}/cmake/Modules</div><div><br></div><div>and for FILES</div><div><br></di=
v><div>${datadir}/cmake/Modules/*</div><div><br></div><div>Depending on how=
 you fix cmake-modules you likely need to change</div><div><br></div><div>D=
EPENDS =3D &quot;cmake-modules boost&quot;</div><div><br></div><div>to</div=
><div><br></div><div>DEPENDS =3D &quot;cmake-modules-dev boost&quot;</div><=
div><br></div><div>in your library recipe, adjusting for the actual name of=
 your cmake</div><div>module.</div><div><br></div><div>See:</div><div><a hr=
ef=3D"https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-=
D">https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-D</=
a></div><div><a href=3D"https://www.yoctoproject.org/docs/1.8/ref-manual/re=
f-manual.html#var-PACKAGES">https://www.yoctoproject.org/docs/1.8/ref-manua=
l/ref-manual.html#var-PACKAGES</a></div><div><a href=3D"https://www.yoctopr=
oject.org/docs/1.8/ref-manual/ref-manual.html#var-FILES">https://www.yoctop=
roject.org/docs/1.8/ref-manual/ref-manual.html#var-FILES</a></div><div><br>=
</div><div>Cheers,</div><div>Henrik</div></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 9, 2019 =
at 5:39 PM Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com"=
>gabbla.malist@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>yes, following:</div><di=
v><br></div><div>- <a href=3D"http://cmake-modules.bb" target=3D"_blank">cm=
ake-modules.bb</a> <a href=3D"https://pastebin.com/5VqN9msS" target=3D"_bla=
nk">https://pastebin.com/5VqN9msS</a></div><div>- <a href=3D"http://xxx-log=
.bb" target=3D"_blank">xxx-log.bb</a> : <a href=3D"https://pastebin.com/LYc=
PW3hc" target=3D"_blank">https://pastebin.com/LYcPW3hc</a></div><div><br></=
div><div>The first one install the modules, thus is a dependency of many li=
braries, the second one is a simple logger library that uses first&#39;s mo=
dule</div><div><br></div><div>Thanks for your help,</div><div>Gabriele<br><=
/div><div><br></div><br><div><br></div><div><br></div></div></div></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il =
giorno lun 8 apr 2019 alle ore 19:05 Henrik Lindblom &lt;<a href=3D"mailto:=
henriklindblomster@gmail.com" target=3D"_blank">henriklindblomster@gmail.co=
m</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">FI=
LES_${PN}-dev =3D &quot;${MODULES_DEST_PATH}/*&quot;<br></blockquote><div><=
br></div>Does your library recipe explicitly depend on &lt;cmake_module&gt;=
-dev? Can you share the failing recipe?<div><br></div><div>Cheers,</div><di=
v>Henrik=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Apr 3, 2019 at 1:18 PM Gabriele Zampieri &lt;<a=
 href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">gabbla.malist@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div=
><div><br></div><div>I&#39;m setting up a layer that will compile our appli=
cations and libraries. All the applications are based on cmake and they sha=
re modules. Before using yocto I kept the modules in &lt;workspace&gt;/cmak=
e (under version control) alongside applications and libraries. With yocto =
I wrote a recipe that checkout the module repo and install them in &quot;${=
STAGING_DATADIR}/cmake/Modules/&quot;. I took this path from &quot;meta/cla=
sses/cmake.bbclass&quot;. If i build the module target, I get the files ins=
talled in the target recipe datadir. If I want to build a library (that dep=
ends also on my modules recipe) the task do_configure fails because cmake c=
annot find none of my include. Digging around I found that the toolchain.cm=
ake file points to a module location that doesn&#39;t exist in the library =
workdir, but in module recipe (${STAGING_DATADIR}/cmake/Modules/). <br></di=
v><div><br></div><div>The module recipe looks like as follow:</div><div><br=
></div><div>MODULES_DEST_PATH =3D &quot;${STAGING_DATADIR}/cmake/Modules&qu=
ot;<br>FILES_${PN}-dev =3D &quot;${MODULES_DEST_PATH}/*&quot;<br><br>do_ins=
tall() {<br>=C2=A0=C2=A0=C2=A0 DEST_DIR=3D${MODULES_DEST_PATH}<br><br>=C2=
=A0=C2=A0=C2=A0 # Create the destination folder<br>=C2=A0=C2=A0=C2=A0 insta=
ll -d $DEST_DIR<br></div><div>=C2=A0=C2=A0=C2=A0 install -m 0444 ${S}/my/mo=
dule.cmake $DEST_DIR</div><div>=C2=A0=C2=A0=C2=A0 ......</div><div>}<br></d=
iv><div>=C2=A0=C2=A0=C2=A0 <br></div><div>So my question is: where should I=
 install the shared modules (MODULE_DEST_PATH int the above snippet)? and h=
ow to update the CMAKE_MODULE_PATH properly to append that location?</div><=
div><br></div><div>Thanks, <br></div><div>Gabriele<br></div></div></div></d=
iv>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000cfd5c405861b6ed0--
