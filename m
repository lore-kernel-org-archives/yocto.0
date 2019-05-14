Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85A84E00A0C; Tue, 14 May 2019 11:16:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1238AE0097C
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 11:16:09 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id g18so15927305otj.11
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 11:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Z8uYMJH1z2MAUBQoV2MnPxMjv/HFKEAOLSkRkeCTWBM=;
	b=iuaXEtCTDb9rNZyePmGhF166AE66xN895FtdlCInRyYkL2KBw1aRES+dmQRI+zv04A
	r+ukorivKDeswfXn1GM1qstlZQf/ugbQQBYR2nOWiE9vrOZhWw/sMDSCJM8YYFj/K4Hy
	qZqXHIfFZcKDexRJAx4UoVX5kXZT2EHFtnO8jtwR+L9c8Q9mjikQrn5MCUAN6W3yukgG
	mb0vFmrU299PvA+jsUZ9szpmUgkGyMZVjXCs3zj13wqS0j84Y7gWySKqI7tm2pFok380
	1nhlGcl4TtBD0aKPRv493A6XPEkhIjvwPnWvfM1FoR69u22hIVgzISh5hNnhDpvCfGbs
	TbDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Z8uYMJH1z2MAUBQoV2MnPxMjv/HFKEAOLSkRkeCTWBM=;
	b=X35fZxURMWQXKmso2/PuLtMdR33zD17CWKMzRtz0E/LhJn1lSG9Cp64TzlEPvHHr+e
	DBhWsfxxjqfFYps12QEvqW0oepnr6TARHsvSK7912msI5d+c+FLU79ejyGFbT06r8KmW
	VFoRYqDY7RTIoKZ3njLpBGbGAhjp8iWP01TuvfSaGOUPHwIDFt1cadcwa1jXvMdPwD0b
	tKHPFaT7Esh369eQT6UeyfAo1a41ngkLhqbKJ41Oro2/z8gSBQSDyA23xbus+AHghr/S
	YEcDr20YgCsDOVEsUKD3+6iPGQVauwyB5Jf65JYWrHn+Bsn6BswEJ2E7hFoUVP0+NgRs
	/3zA==
X-Gm-Message-State: APjAAAUJUaxGo4Onc7tWfyzBlSaSi1tgxPxgkKi7Don/AkAUWSoJZWo/
	6MkEQ41A5I8+Em8C9y1gvqwYA8P6VfMsCQOkZnT8KxnXghA=
X-Google-Smtp-Source: APXvYqzMTfjtPWJa7kTOhTG0DcP9d32hxAL9gNQf01zX4nX8EGeY5qKdj/G96sWphG7nPdn3hiVUilHqZSnID8FaBPk=
X-Received: by 2002:a9d:694a:: with SMTP id p10mr22444384oto.61.1557857769089; 
	Tue, 14 May 2019 11:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAFSZm+j8cBQ6SxD=VsuUWc1+JCvGe6asJpCgjhe=Bp+r5XPLPw@mail.gmail.com>
	<CAFSZm+jm1dh6JZwXgxRiTpXutRNJD3+BxzxzLAP3O6YYHcV_hw@mail.gmail.com>
In-Reply-To: <CAFSZm+jm1dh6JZwXgxRiTpXutRNJD3+BxzxzLAP3O6YYHcV_hw@mail.gmail.com>
From: Aaron Cohen <aaron@assonance.org>
Date: Tue, 14 May 2019 14:15:58 -0400
Message-ID: <CAFSZm+hTjnO1h4o24M+Ym9gRELB0jzd5SDp_ejbfMcxVCfqGmg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: python-numpy RDEPENDS not honored?
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
X-List-Received-Date: Tue, 14 May 2019 18:16:12 -0000
Content-Type: multipart/alternative; boundary="000000000000f0109d0588dd06c0"

--000000000000f0109d0588dd06c0
Content-Type: text/plain; charset="UTF-8"

Is there a place I should post this that would get more attention?

On Thu, May 9, 2019 at 4:48 PM Aaron Cohen <aaron@assonance.org> wrote:

> I think the problem is in the python-numpy_1.14.5.bb recipe.
>
> It does: RDEPENDS_${PN}_class-target_append = ...
>
> where it seems to need to be: RDEPENDS_${PN}_append_class-target = ...
>
> Note the position of the word append.
>
> If someone wanted to point me in the right direction, I could try to make
> a qa task that would discover this sort of error if it seems feasible?
>
> --Aaron
>
>
> On Thu, May 9, 2019 at 4:15 PM Aaron Cohen <aaron@assonance.org> wrote:
>
>> python-numpy is being installed on my image as a dependency of one of my
>> packages.
>>
>> However, none of python-numpy's RDEPENDS are currently being included on
>> the image.
>>
>> When I run bitbake -e python-numpy > numpy.txt, I see that for some
>> reason, the RDEPENDS is being overridden to a nearly empty value:
>>
>> # $RDEPENDS_python-numpy [5 operations]
>>> #   append
>>> /home/joel-cohen/code/juevos/poky/meta/classes/distutils-base.bbclass:2
>>> #     "${@['', '${PYTHON_PN}-core']['${CLASSOVERRIDE}' ==
>>> 'class-target']}"
>>> #   set
>>> /home/joel-cohen/code/juevos/poky/meta/recipes-devtools/python-numpy/python-numpy.inc:112
>>> #     "${PYTHON_PN}-unittest                   ${PYTHON_PN}-difflib
>>>              ${PYTHON_PN}-pprint                   ${PYTHON_PN}-pickle
>>>              ${PYTHON_PN}-shell                   ${PYTHON_PN}-nose
>>>            ${PYTHON_PN}-doctest                   ${PYTHON_PN}-datetime
>>>                ${PYTHON_PN}-distutils                   ${PYTHON_PN}-misc
>>>                  ${PYTHON_PN}-mmap
>>>  ${PYTHON_PN}-netclient                   ${PYTHON_PN}-numbers
>>>      ${PYTHON_PN}-pydoc                   ${PYTHON_PN}-pkgutil
>>>      ${PYTHON_PN}-email                   ${PYTHON_PN}-compression
>>>          ${PYTHON_PN}-ctypes                   ${PYTHON_PN}-threading "
>>> #   rename from RDEPENDS_${PN} data.py:117 [expandKeys]
>>> #     "${PYTHON_PN}-unittest                   ${PYTHON_PN}-difflib
>>>              ${PYTHON_PN}-pprint                   ${PYTHON_PN}-pickle
>>>              ${PYTHON_PN}-shell                   ${PYTHON_PN}-nose
>>>            ${PYTHON_PN}-doctest                   ${PYTHON_PN}-datetime
>>>                ${PYTHON_PN}-distutils                   ${PYTHON_PN}-misc
>>>                  ${PYTHON_PN}-mmap
>>>  ${PYTHON_PN}-netclient                   ${PYTHON_PN}-numbers
>>>      ${PYTHON_PN}-pydoc                   ${PYTHON_PN}-pkgutil
>>>      ${PYTHON_PN}-email                   ${PYTHON_PN}-compression
>>>          ${PYTHON_PN}-ctypes                   ${PYTHON_PN}-threading "
>>> #   override[class-native]:set
>>> /home/joel-cohen/code/juevos/poky/meta/recipes-devtools/python-numpy/python-numpy.inc:114
>>> #     ""
>>> #   override[class-native]:rename from RDEPENDS_${PN}_class-native
>>> data_smart.py:644 [renameVar]
>>> #     ""
>>> # pre-expansion value:
>>> #   "     ${PYTHON_PN}-subprocess "
>>> RDEPENDS_python-numpy="     python-subprocess "
>>
>>
>>
>> Anyone have any ideas for why this recipe doesn't seem to be behaving
>> correctly?
>>
>> I'm using poky 2.6 at the moment.
>>
>> Thanks for any help,
>> Aaron
>>
>

--000000000000f0109d0588dd06c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there a place I should post this that would get more at=
tention?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, May 9, 2019 at 4:48 PM Aaron Cohen &lt;<a href=3D"mailto:aa=
ron@assonance.org">aaron@assonance.org</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I think th=
e problem is in the=C2=A0<a href=3D"http://python-numpy_1.14.5.bb" target=
=3D"_blank">python-numpy_1.14.5.bb</a> recipe.</div><div dir=3D"ltr"><br></=
div><div>It does:=C2=A0RDEPENDS_${PN}_class-target_append =3D ...</div><div=
><br></div><div>where it seems to need to be:=C2=A0RDEPENDS_${PN}_append_cl=
ass-target =3D ...</div><div><br></div><div>Note the position of the word a=
ppend.</div><div><br></div><div>If someone wanted to point me in the right =
direction, I could try to make a qa task that would discover this sort of e=
rror if it seems feasible?</div><div><br></div><div>--Aaron</div><div><br><=
/div></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, May 9, 2019 at 4:15 PM Aaron Cohen &l=
t;<a href=3D"mailto:aaron@assonance.org" target=3D"_blank">aaron@assonance.=
org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div dir=3D"ltr">python-numpy is being installed on my =
image as a dependency of one of my packages.<div><br></div><div>However, no=
ne of python-numpy&#39;s RDEPENDS are currently being included on the image=
.</div><div><br></div><div>When I run bitbake -e python-numpy &gt; numpy.tx=
t, I see that for some reason, the RDEPENDS is being overridden to a nearly=
 empty value:</div><div><br></div><div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"># $RDEPENDS_python-numpy [5 operations]<br>#=C2=A0 =C2=A0appe=
nd /home/joel-cohen/code/juevos/poky/meta/classes/distutils-base.bbclass:2<=
br>#=C2=A0 =C2=A0 =C2=A0&quot;${@[&#39;&#39;, &#39;${PYTHON_PN}-core&#39;][=
&#39;${CLASSOVERRIDE}&#39; =3D=3D &#39;class-target&#39;]}&quot;<br>#=C2=A0=
 =C2=A0set /home/joel-cohen/code/juevos/poky/meta/recipes-devtools/python-n=
umpy/python-numpy.inc:112<br>#=C2=A0 =C2=A0 =C2=A0&quot;${PYTHON_PN}-unitte=
st=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PY=
THON_PN}-difflib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0${PYTHON_PN}-pprint=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pickle=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-shell=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-nose=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}=
-doctest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0${PYTHON_PN}-datetime=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-distutils=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-misc=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-mmap=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-=
netclient=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0${PYTHON_PN}-numbers=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0${PYTHON_PN}-pydoc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pkgutil=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-email=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-com=
pression=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0${PYTHON_PN}-ctypes=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0${PYTHON_PN}-threading &quot;<br>#=C2=A0 =C2=A0rename from=
 RDEPENDS_${PN} data.py:117 [expandKeys]<br>#=C2=A0 =C2=A0 =C2=A0&quot;${PY=
THON_PN}-unittest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0${PYTHON_PN}-difflib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pprint=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pickle=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-shell=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTH=
ON_PN}-nose=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0${PYTHON_PN}-doctest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-datetime=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-distutils=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-misc=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}=
-mmap=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$=
{PYTHON_PN}-netclient=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0${PYTHON_PN}-numbers=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pydoc=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pkgutil=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-ema=
il=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PY=
THON_PN}-compression=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0${PYTHON_PN}-ctypes=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-threading &quot;<br>#=C2=A0 =C2=A0o=
verride[class-native]:set /home/joel-cohen/code/juevos/poky/meta/recipes-de=
vtools/python-numpy/python-numpy.inc:114<br>#=C2=A0 =C2=A0 =C2=A0&quot;&quo=
t;<br>#=C2=A0 =C2=A0override[class-native]:rename from RDEPENDS_${PN}_class=
-native data_smart.py:644 [renameVar]<br>#=C2=A0 =C2=A0 =C2=A0&quot;&quot;<=
br># pre-expansion value:<br>#=C2=A0 =C2=A0&quot;=C2=A0 =C2=A0 =C2=A0${PYTH=
ON_PN}-subprocess &quot;<br>RDEPENDS_python-numpy=3D&quot;=C2=A0 =C2=A0 =C2=
=A0python-subprocess &quot;</blockquote></div><div><br></div><div><br></div=
><div>Anyone have any ideas for why this recipe doesn&#39;t seem to be beha=
ving correctly?</div><div><br></div><div>I&#39;m using poky 2.6 at the mome=
nt.</div><div><br></div><div>Thanks for any help,</div><div>Aaron</div></di=
v></div>
</blockquote></div>
</blockquote></div>

--000000000000f0109d0588dd06c0--
