Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E8F4E00D73; Thu,  9 May 2019 13:48:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F96E00D6B
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 13:48:46 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id k9so2958703oig.9
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 13:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=aT3CCIRRd20iiuZ0NJ6rHcnW82ozw1l3yGHewwb8dGg=;
	b=1bbAJvP32TifkggbZ6AEhdFmrvlflvXtnBY/g4QpgbgWCQFvdKX/0lsr1GoMALTvkY
	zFbL0PZbJ6eqrq/BB7lBqnk7e2qA3Iugu11nvZTvWMiADi3j3wBOnDLH5u+hPhz+sLc2
	kFgS8eA6FxecG5lT17i6CNm7swUlD/AzFCiODDymmbdfhJ8GGnREMl1STWQ7thoRj1sv
	9lb9NbWqf3SdozzSaQ6AGjBqNDDGKBw+uLLfQZNO9+zItjxVbLAH3PQJNDVsGg1o/BTF
	v6CX6mDEjxmstL4lpX6jJJptUQnoKyhs43GusVFFK7Jj0c4lajIn0AMP6gHJcyWMzQ/D
	oD5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=aT3CCIRRd20iiuZ0NJ6rHcnW82ozw1l3yGHewwb8dGg=;
	b=fdTEknblxmqvn2PavI4S0REJBUwp5ISwWZ7x57/evh40hIxia2s3zZvs9gMzKxp5nz
	+4vWOYh/z1wEtNfxzC7E5I5iXgQEQDWM5m7/5DtenhXUJ8/rTc5YQuzfAkOSU76T/Hgt
	50aaKYgcTyvJkXOKZDhFfV2Oi2kpW7bWQwX80jLY+zd3jSnq9alHj/QbKmg+xwWPUw1Q
	qjJzRe+iLu6Qy0NT3JYYxm9mOCz95S9jkp+TqLtYMJiD5nDXhfQdZazVkDnKyFJVNtLi
	wPw9s1Q9Lx4wTTc1+HeIW0daX4taxQ0+IJZ4eFUxxShbRFL3EFyxRjUAkXZ3SyPbjiEN
	nEgw==
X-Gm-Message-State: APjAAAWklCx4v3Ij0egnhry9azC9g9xXcyuqlF9Tyj2pAzRrVduRjGeJ
	Har3ZNVZX8/CRvjzUpcmZOb0hzisGNI/mwP6bZCFDg2C
X-Google-Smtp-Source: APXvYqwe1FQZu00IY5J2B1R3PtFwKor/dUFsichE2W/NFIys9gyGFnjFTaDHsTM5slImPL/0vyeSeXIPEnDSME68x+Y=
X-Received: by 2002:aca:3f84:: with SMTP id m126mr2664746oia.164.1557434925820;
	Thu, 09 May 2019 13:48:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAFSZm+j8cBQ6SxD=VsuUWc1+JCvGe6asJpCgjhe=Bp+r5XPLPw@mail.gmail.com>
In-Reply-To: <CAFSZm+j8cBQ6SxD=VsuUWc1+JCvGe6asJpCgjhe=Bp+r5XPLPw@mail.gmail.com>
From: Aaron Cohen <aaron@assonance.org>
Date: Thu, 9 May 2019 16:48:35 -0400
Message-ID: <CAFSZm+jm1dh6JZwXgxRiTpXutRNJD3+BxzxzLAP3O6YYHcV_hw@mail.gmail.com>
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
X-List-Received-Date: Thu, 09 May 2019 20:48:48 -0000
Content-Type: multipart/alternative; boundary="00000000000083c42f05887a9348"

--00000000000083c42f05887a9348
Content-Type: text/plain; charset="UTF-8"

I think the problem is in the python-numpy_1.14.5.bb recipe.

It does: RDEPENDS_${PN}_class-target_append = ...

where it seems to need to be: RDEPENDS_${PN}_append_class-target = ...

Note the position of the word append.

If someone wanted to point me in the right direction, I could try to make a
qa task that would discover this sort of error if it seems feasible?

--Aaron


On Thu, May 9, 2019 at 4:15 PM Aaron Cohen <aaron@assonance.org> wrote:

> python-numpy is being installed on my image as a dependency of one of my
> packages.
>
> However, none of python-numpy's RDEPENDS are currently being included on
> the image.
>
> When I run bitbake -e python-numpy > numpy.txt, I see that for some
> reason, the RDEPENDS is being overridden to a nearly empty value:
>
> # $RDEPENDS_python-numpy [5 operations]
>> #   append
>> /home/joel-cohen/code/juevos/poky/meta/classes/distutils-base.bbclass:2
>> #     "${@['', '${PYTHON_PN}-core']['${CLASSOVERRIDE}' ==
>> 'class-target']}"
>> #   set
>> /home/joel-cohen/code/juevos/poky/meta/recipes-devtools/python-numpy/python-numpy.inc:112
>> #     "${PYTHON_PN}-unittest                   ${PYTHON_PN}-difflib
>>              ${PYTHON_PN}-pprint                   ${PYTHON_PN}-pickle
>>              ${PYTHON_PN}-shell                   ${PYTHON_PN}-nose
>>            ${PYTHON_PN}-doctest                   ${PYTHON_PN}-datetime
>>                ${PYTHON_PN}-distutils                   ${PYTHON_PN}-misc
>>                  ${PYTHON_PN}-mmap
>>  ${PYTHON_PN}-netclient                   ${PYTHON_PN}-numbers
>>      ${PYTHON_PN}-pydoc                   ${PYTHON_PN}-pkgutil
>>      ${PYTHON_PN}-email                   ${PYTHON_PN}-compression
>>          ${PYTHON_PN}-ctypes                   ${PYTHON_PN}-threading "
>> #   rename from RDEPENDS_${PN} data.py:117 [expandKeys]
>> #     "${PYTHON_PN}-unittest                   ${PYTHON_PN}-difflib
>>              ${PYTHON_PN}-pprint                   ${PYTHON_PN}-pickle
>>              ${PYTHON_PN}-shell                   ${PYTHON_PN}-nose
>>            ${PYTHON_PN}-doctest                   ${PYTHON_PN}-datetime
>>                ${PYTHON_PN}-distutils                   ${PYTHON_PN}-misc
>>                  ${PYTHON_PN}-mmap
>>  ${PYTHON_PN}-netclient                   ${PYTHON_PN}-numbers
>>      ${PYTHON_PN}-pydoc                   ${PYTHON_PN}-pkgutil
>>      ${PYTHON_PN}-email                   ${PYTHON_PN}-compression
>>          ${PYTHON_PN}-ctypes                   ${PYTHON_PN}-threading "
>> #   override[class-native]:set
>> /home/joel-cohen/code/juevos/poky/meta/recipes-devtools/python-numpy/python-numpy.inc:114
>> #     ""
>> #   override[class-native]:rename from RDEPENDS_${PN}_class-native
>> data_smart.py:644 [renameVar]
>> #     ""
>> # pre-expansion value:
>> #   "     ${PYTHON_PN}-subprocess "
>> RDEPENDS_python-numpy="     python-subprocess "
>
>
>
> Anyone have any ideas for why this recipe doesn't seem to be behaving
> correctly?
>
> I'm using poky 2.6 at the moment.
>
> Thanks for any help,
> Aaron
>

--00000000000083c42f05887a9348
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">I think the problem is in the=C2=A0<a href=3D"ht=
tp://python-numpy_1.14.5.bb" target=3D"_blank">python-numpy_1.14.5.bb</a> r=
ecipe.</div><div dir=3D"ltr"><br></div><div>It does:=C2=A0RDEPENDS_${PN}_cl=
ass-target_append =3D ...</div><div><br></div><div>where it seems to need t=
o be:=C2=A0RDEPENDS_${PN}_append_class-target =3D ...</div><div><br></div><=
div>Note the position of the word append.</div><div><br></div><div>If someo=
ne wanted to point me in the right direction, I could try to make a qa task=
 that would discover this sort of error if it seems feasible?</div><div><br=
></div><div>--Aaron</div><div><br></div></div></div></div></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May=
 9, 2019 at 4:15 PM Aaron Cohen &lt;<a href=3D"mailto:aaron@assonance.org" =
target=3D"_blank">aaron@assonance.org</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">pyth=
on-numpy is being installed on my image as a dependency of one of my packag=
es.<div><br></div><div>However, none of python-numpy&#39;s RDEPENDS are cur=
rently being included on the image.</div><div><br></div><div>When I run bit=
bake -e python-numpy &gt; numpy.txt, I see that for some reason, the RDEPEN=
DS is being overridden to a nearly empty value:</div><div><br></div><div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"># $RDEPENDS_python-numpy [5=
 operations]<br>#=C2=A0 =C2=A0append /home/joel-cohen/code/juevos/poky/meta=
/classes/distutils-base.bbclass:2<br>#=C2=A0 =C2=A0 =C2=A0&quot;${@[&#39;&#=
39;, &#39;${PYTHON_PN}-core&#39;][&#39;${CLASSOVERRIDE}&#39; =3D=3D &#39;cl=
ass-target&#39;]}&quot;<br>#=C2=A0 =C2=A0set /home/joel-cohen/code/juevos/p=
oky/meta/recipes-devtools/python-numpy/python-numpy.inc:112<br>#=C2=A0 =C2=
=A0 =C2=A0&quot;${PYTHON_PN}-unittest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-difflib=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pprint=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pic=
kle=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${P=
YTHON_PN}-shell=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0${PYTHON_PN}-nose=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-doctest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-datetime=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-distutils=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTH=
ON_PN}-misc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0${PYTHON_PN}-mmap=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0${PYTHON_PN}-netclient=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-numbers=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pydoc=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-=
pkgutil=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0${PYTHON_PN}-email=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0${PYTHON_PN}-compression=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-ctypes=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-threading &quo=
t;<br>#=C2=A0 =C2=A0rename from RDEPENDS_${PN} data.py:117 [expandKeys]<br>=
#=C2=A0 =C2=A0 =C2=A0&quot;${PYTHON_PN}-unittest=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-difflib=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pprint=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTH=
ON_PN}-pickle=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0${PYTHON_PN}-shell=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-nose=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-doctest=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-datetime=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-=
distutils=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0${PYTHON_PN}-misc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0${PYTHON_PN}-mmap=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-netclient=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-numbers=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-pyd=
oc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PY=
THON_PN}-pkgutil=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0${PYTHON_PN}-email=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-compression=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-ctypes=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-threadi=
ng &quot;<br>#=C2=A0 =C2=A0override[class-native]:set /home/joel-cohen/code=
/juevos/poky/meta/recipes-devtools/python-numpy/python-numpy.inc:114<br>#=
=C2=A0 =C2=A0 =C2=A0&quot;&quot;<br>#=C2=A0 =C2=A0override[class-native]:re=
name from RDEPENDS_${PN}_class-native data_smart.py:644 [renameVar]<br>#=C2=
=A0 =C2=A0 =C2=A0&quot;&quot;<br># pre-expansion value:<br>#=C2=A0 =C2=A0&q=
uot;=C2=A0 =C2=A0 =C2=A0${PYTHON_PN}-subprocess &quot;<br>RDEPENDS_python-n=
umpy=3D&quot;=C2=A0 =C2=A0 =C2=A0python-subprocess &quot;</blockquote></div=
><div><br></div><div><br></div><div>Anyone have any ideas for why this reci=
pe doesn&#39;t seem to be behaving correctly?</div><div><br></div><div>I&#3=
9;m using poky 2.6 at the moment.</div><div><br></div><div>Thanks for any h=
elp,</div><div>Aaron</div></div></div>
</blockquote></div>

--00000000000083c42f05887a9348--
