Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFBF5E00E4B; Fri, 15 Jun 2018 03:51:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A918E009AC
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2018 03:50:59 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id j135-v6so2135675itj.1
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2018 03:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fNvWVefW7PErIcspOnc+4iop39n6CvvevuTQpbgKMNg=;
	b=Ppyq6n8N8hJhInQRIE03Nd+AH6C3+l5BK5BqAJkvOfxbidmiwKVDrWPBLjsc0DB96b
	Q5B7pg/rHzR7B12ZKVyXTUOggmMR4u0YO7isBRadan5x0saBg6ffwU595yHMB4vDpGe+
	idtnHn/yLi6AfZPHwyFtRpn9j5WM0WfAeMFxQxemxAcLwIUcH3CNxfFG6XsLmBN1lDoG
	wFjsoHIYDSK9dJHxqQqnbOi1EPyhnm9MCs5RT75vfdy7/n3LASO8TU2tE9Jsy+++qdwS
	d5eVtoJiy2rSpwkpv5SOU6hxTcbkV5a5aSUaSAaBm8kQ9TPzqSlhoB0Lsw0gASjuOsB+
	WvWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fNvWVefW7PErIcspOnc+4iop39n6CvvevuTQpbgKMNg=;
	b=ZyQDIPrV9TJM+zaqWE+VYrUTqDqso+NN7ugNLRXpvZM05oVTWDrldPRQWAxmjUKv8u
	G4yAoNMw/TU3l0liTS9sYoMJVXtNcHBeGAO2NHHKWeM5PTB3VUIwqMbdiljJHGYHo1dh
	XLB/UDf7nVN8v+2XKFudUUK3bgwT0D8VdrL8Yc3uUlOnMpG7UUX7CiBlPzfDbpQX2Tpd
	SdgKOmxdKPFikGLR7AwQEFZphmQ1pB9nQr38VMEHNQiP15ZgaX8t3khvndaG1E3aRZub
	13Huan96pyLH4mQ3kgGvm+ShYE/9HJHG7bB5iCXbg5WyWjaXYiz0DJsOpXOQfAKX1tyw
	DN8g==
X-Gm-Message-State: APt69E0WoFGK/AuJbWryPwvJQ0mow9BQKYjBfJmxN6qJkenetzOXF8hJ
	WdYjIuze6HvW4qUUA/EWLhO7fCYEAsFklzcNQQ==
X-Google-Smtp-Source: ADUXVKL06KVNrh+zotezQ3K43Z7POjgumCn9e9w89Z60AOoAc1cBFfXH+kT+bxQl166oC+urOs3RFHELovUsqbqyaXE=
X-Received: by 2002:a24:8385:: with SMTP id
	d127-v6mr809377ite.58.1529059858866; 
	Fri, 15 Jun 2018 03:50:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:5bc3:0:0:0:0:0 with HTTP; Fri, 15 Jun 2018 03:50:58
	-0700 (PDT)
In-Reply-To: <CA+chaQduocJz72ZGMQG0QcL8gRMxgvceDDyYuJKZ2-vvEpQvYA@mail.gmail.com>
References: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
	<20180614123314.GA1389@jama>
	<CA+FhBv_M1bg=JrLb5fkXWbXynhYLfsZQeAqduoXfxb=7QyzMig@mail.gmail.com>
	<CA+chaQduocJz72ZGMQG0QcL8gRMxgvceDDyYuJKZ2-vvEpQvYA@mail.gmail.com>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Fri, 15 Jun 2018 13:50:58 +0300
Message-ID: <CA+FhBv8oF-H=5NNVS=r9dkUUkTXU=RyUXQ48UG6xe+FtosN3wA@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: bbappend extra SRC_URI ignored
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
X-List-Received-Date: Fri, 15 Jun 2018 10:51:01 -0000
Content-Type: multipart/alternative; boundary="000000000000ba683e056eabfd19"

--000000000000ba683e056eabfd19
Content-Type: text/plain; charset="UTF-8"

It's exactly as you said. Thanks a lot!

I got it solved and learned some new tricks =)

-Damien

On Thu, Jun 14, 2018 at 5:23 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> See ./recipes-bsp/tegra-binaries/tegra-shared-binaries.inc
>
> It's disabling standard do_fetch, do_unpack, do_patch and replacing them
> with tegra-binaries:do_unpack tegra-binaries:do_preconfigure which
> populates
> S directory in work-shared
> S = "${TMPDIR}/work-shared/L4T-${SOC_FAMILY}-${PV}-${PR}/Linux_for_Tegra"
>
> so basically you need to add it in tegra-binaries recipe (not tegra-tools).
>
> On Thu, Jun 14, 2018 at 3:22 PM Damien LEFEVRE <lefevre.da@gmail.com>
> wrote:
>
>>
>> Thanks
>>
>> Here are some interesting parts of bitbake -e. It seems my syntax is
>> correct
>>
>>
>> # $FILESEXTRAPATHS [3 operations]
>> #   set? /home/damien/procbox-pyro/sources/poky/meta/conf/
>> bitbake.conf:325
>> #     "__default:"
>> #   set /home/damien/procbox-pyro/sources/poky/meta/conf/
>> documentation.conf:173
>> #     [doc] "Extends the search path the OpenEmbedded build system uses
>> when looking for files and patches as it processes recipes and append
>> files."
>> #   _prepend[tegra186] /home/damien/procbox-pyro/
>> sources/meta-procbox/meta-tegra/recipes-bsp/tegra-
>> binaries/tegra-tools_28.2.0.bbappend:1
>> #     "/home/damien/procbox-pyro/sources/meta-procbox/meta-
>> tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186:"
>> # pre-expansion value:
>> #   "/home/damien/procbox-pyro/sources/meta-procbox/meta-
>> tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186:__default:"
>> FILESEXTRAPATHS="/home/damien/procbox-pyro/sources/meta-
>> procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186
>> :__default:"
>>
>> #
>> # $SRC_URI [10 operations]
>> .....
>> #     "    file://nvcamera-daemon.init     file://nvcamera-daemon.service
>>    file://argus-daemon.init     file://argus-daemon.service
>>  file://nvstartup.init     file://nvstartup.service "
>> #   _append[tegra186] /home/damien/procbox-pyro/
>> sources/meta-tegra/recipes-bsp/tegra-binaries/tegra-
>> binaries-28.2.0.inc:19
>> #     "     file://tegra186-flash-helper.sh     file://nvpmodel.init
>>  file://nvpmodel.service "
>> #   set /home/damien/procbox-pyro/sources/meta-tegra/recipes-
>> bsp/tegra-binaries/tegra-shared-binaries.inc:8
>> #     ""
>> #   _prepend[tegra186] /home/damien/procbox-pyro/
>> sources/meta-procbox/meta-tegra/recipes-bsp/tegra-
>> binaries/tegra-tools_28.2.0.bbappend:2
>> #     "file://nvpmodel.conf "
>> #   set tegra-binaries-28.2.0.inc:42 [__anon_46__home_damien_
>> procbox_pyro_sources_meta_tegra_recipes_bsp_tegra_
>> binaries_tegra_binaries_28_2_0_inc]
>> #     [md5sum] "22bbd0002db06bb26bf5de2d17cea8eb"
>> #   set tegra-binaries-28.2.0.inc:43 [__anon_46__home_damien_
>> procbox_pyro_sources_meta_tegra_recipes_bsp_tegra_
>> binaries_tegra_binaries_28_2_0_inc]
>> #     [sha256sum] "62f57b4c03fedde1fe0a1635bd0828
>> b334308eca71bd21f25ae5757f48fb3a76"
>> # pre-expansion value:
>> #   "file://nvpmodel.conf      file://tegra186-flash-helper.sh
>>  file://nvpmodel.init     file://nvpmodel.service "
>> SRC_URI="file://nvpmodel.conf      file://tegra186-flash-helper.sh
>>  file://nvpmodel.init     file://nvpmodel.service "
>>
>> Then no other mentions until the do_install
>>
>> Yet the nvpmodel.conf is never copied to ${WORKDIR} which
>> is /home/damien/procbox-pyro/build-jetson-tx2/tmp/work/
>> aarch64_tegra186-poky-linux/tegra-tools/28.2.0-r0 in my case.
>>
>> Could some bitbake options disable this standard behavior?
>>
>> On Thu, Jun 14, 2018 at 3:33 PM, Martin Jansa <martin.jansa@gmail.com>
>> wrote:
>>
>>> On Thu, Jun 14, 2018 at 03:16:00PM +0300, Damien LEFEVRE wrote:
>>> > HI,
>>> >
>>> > I'm working on meta-tegra layer and I'd like to append a recipe. The
>>> > original recipe looks like this:
>>> > https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.
>>> 2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb
>>> > <https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.
>>> 2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb>
>>> >
>>> > I've made a tegra-tools_28.2.0.bbappend to change the default PM_CONFIG
>>> > DEFAULT from 2 to 3 to get max performance in nvpmodel.conf
>>> configuration
>>> > file.
>>> >
>>> > ```
>>> > FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"
>>> > SRC_URI_prepend_tegra186 += "file://nvpmodel.conf "
>>> >
>>> > do_install_append_tegra186() {
>>> >     install -d ${D}${sysconfdir}
>>> >     install -m 0755 ${B}/usr/sbin/nvpmodel ${D}${sbindir}/
>>> >     install -m 0644 ${WORKDIR}/nvpmodel.conf
>>> ${D}${sysconfdir}/nvpmodel.conf
>>> >     install -d ${D}${sysconfdir}/init.d
>>> >     install -m 0644 ${S}/nvpmodel.init ${D}${sysconfdir}/init.d/
>>> nvpmodel
>>> >     install -d ${D}${systemd_system_unitdir}
>>> >     install -m 0644 ${S}/nvpmodel.service ${D}${systemd_system_unitdir}
>>> > }
>>> > ```
>>> > Would you have any idea why the nvpmodel.conf prepend is ignored and
>>> the
>>> > file never ends up in ${WORKDIR}.
>>> >
>>> > I've made sure the paths are correct. nvpmodel.conf exists and if I
>>> put a
>>> > typo like nvpmodel.conf_blabla bitbake throws a warning that it cannot
>>> find
>>> > the file. So I'm sure the file is found but somehow bitbake ignores it.
>>> >
>>> > I'm having this issue with this one single recipe only, none of the
>>> others
>>> > in my build system so I'm a bit puzzled.
>>>
>>> Always use bitbake -e to verify that the file://nvpmodel.conf ends where
>>> you expect it to end (and if it doesn't the history will show you why
>>> not).
>>>
>>> >
>>> > Thanks,
>>> > -Damien
>>>
>>> > --
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>> --
>>> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>>>
>>
>>

--000000000000ba683e056eabfd19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s exactly as you said. Thanks a lot!<div><br></div>=
<div>I got it solved and learned some new tricks =3D)</div><div><br></div><=
div>-Damien</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Thu, Jun 14, 2018 at 5:23 PM, Martin Jansa <span dir=3D"ltr">&lt;<=
a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr">See=C2=A0./recipes-bsp/tegra-<wbr>binaries/tegra-shared-<wbr>binaries.=
inc<div><br></div><div>It&#39;s disabling standard do_fetch, do_unpack, do_=
patch and replacing them with=C2=A0tegra-binaries:do_unpack=C2=A0<wbr>tegra=
-binaries:do_preconfigure which populates</div><div>S directory in work-sha=
red</div><div>S =3D &quot;${TMPDIR}/work-shared/L4T-${<wbr>SOC_FAMILY}-${PV=
}-${PR}/Linux_<wbr>for_Tegra&quot;<br></div><div><br></div><div>so basicall=
y you need to add it in tegra-binaries recipe (not tegra-tools).</div></div=
><div class=3D"HOEnZb"><div class=3D"h5"><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">On Thu, Jun 14, 2018 at 3:22 PM Damien LEFEVRE &lt;<a href=3D=
"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><br>=
</div><div>Thanks</div><div><br></div><div>Here are some interesting parts =
of bitbake -e. It seems my syntax is correct=C2=A0</div><div><br></div><div=
><br></div><div><div># $FILESEXTRAPATHS [3 operations]</div><div>#=C2=A0 =
=C2=A0set? /home/damien/procbox-pyro/<wbr>sources/poky/meta/conf/<wbr>bitba=
ke.conf:325</div><div>#=C2=A0 =C2=A0 =C2=A0&quot;__default:&quot;</div><div=
>#=C2=A0 =C2=A0set /home/damien/procbox-pyro/<wbr>sources/poky/meta/conf/<w=
br>documentation.conf:173</div><div>#=C2=A0 =C2=A0 =C2=A0[doc] &quot;Extend=
s the search path the OpenEmbedded build system uses when looking for files=
 and patches as it processes recipes and append files.&quot;</div><div>#=C2=
=A0 =C2=A0_prepend[tegra186] /home/damien/procbox-pyro/<wbr>sources/meta-pr=
ocbox/meta-<wbr>tegra/recipes-bsp/tegra-<wbr>binaries/tegra-tools_28.2.0.<w=
br>bbappend:1</div><div>#=C2=A0 =C2=A0<font color=3D"#ff0000"> =C2=A0&quot;=
/home/damien/procbox-pyro/<wbr>sources/meta-procbox/meta-<wbr>tegra/recipes=
-bsp/tegra-<wbr>binaries/tegra-tools_28.2.0/<wbr>tegra186:&quot;</font></di=
v><div># pre-expansion value:</div><div>#=C2=A0 =C2=A0<font color=3D"#ff000=
0">&quot;/home/damien/procbox-pyro/<wbr>sources/meta-procbox/meta-<wbr>tegr=
a/recipes-bsp/tegra-<wbr>binaries/tegra-tools_28.2.0/<wbr>tegra186</font>:_=
_default:&quot;</div><div>FILESEXTRAPATHS=3D&quot;<font color=3D"#ff0000">/=
home/damien/<wbr>procbox-pyro/sources/meta-<wbr>procbox/meta-tegra/recipes-=
<wbr>bsp/tegra-binaries/tegra-<wbr>tools_28.2.0/tegra186</font>:__<wbr>defa=
ult:&quot;</div></div><br><div><div>#</div><div># $SRC_URI [10 operations]<=
/div><div>.....</div><div>#=C2=A0 =C2=A0 =C2=A0&quot;=C2=A0 =C2=A0 file://n=
vcamera-daemon.init=C2=A0 =C2=A0 =C2=A0file://nvcamera-daemon.<wbr>service=
=C2=A0 =C2=A0 =C2=A0file://argus-daemon.init=C2=A0 =C2=A0 =C2=A0file://argu=
s-daemon.service=C2=A0 =C2=A0 =C2=A0file://nvstartup.init=C2=A0 =C2=A0 =C2=
=A0file://nvstartup.service &quot;</div><div>#=C2=A0 =C2=A0_append[tegra186=
] /home/damien/procbox-pyro/<wbr>sources/meta-tegra/recipes-<wbr>bsp/tegra-=
binaries/tegra-<wbr>binaries-28.2.0.inc:19</div><div>#=C2=A0 =C2=A0 =C2=A0&=
quot;=C2=A0 =C2=A0 =C2=A0file://tegra186-flash-helper.<wbr>sh=C2=A0 =C2=A0 =
=C2=A0file://nvpmodel.init=C2=A0 =C2=A0 =C2=A0file://nvpmodel.service &quot=
;</div><div>#=C2=A0 =C2=A0set /home/damien/procbox-pyro/<wbr>sources/meta-t=
egra/recipes-<wbr>bsp/tegra-binaries/tegra-<wbr>shared-binaries.inc:8</div>=
<div>#=C2=A0 =C2=A0 =C2=A0&quot;&quot;</div><div>#=C2=A0 =C2=A0_prepend[teg=
ra186] /home/damien/procbox-pyro/<wbr>sources/meta-procbox/meta-<wbr>tegra/=
recipes-bsp/tegra-<wbr>binaries/tegra-tools_28.2.0.<wbr>bbappend:2</div><di=
v>#=C2=A0 =C2=A0 =C2=A0&quot;file://nvpmodel.conf &quot;</div><div>#=C2=A0 =
=C2=A0set tegra-binaries-28.2.0.inc:42 [__anon_46__home_damien_<wbr>procbox=
_pyro_sources_meta_<wbr>tegra_recipes_bsp_tegra_<wbr>binaries_tegra_binarie=
s_28_2_<wbr>0_inc]</div><div>#=C2=A0 =C2=A0 =C2=A0[md5sum] &quot;<wbr>22bbd=
0002db06bb26bf5de2d17cea8<wbr>eb&quot;</div><div>#=C2=A0 =C2=A0set tegra-bi=
naries-28.2.0.inc:43 [__anon_46__home_damien_<wbr>procbox_pyro_sources_meta=
_<wbr>tegra_recipes_bsp_tegra_<wbr>binaries_tegra_binaries_28_2_<wbr>0_inc]=
</div><div>#=C2=A0 =C2=A0 =C2=A0[sha256sum] &quot;<wbr>62f57b4c03fedde1fe0a=
1635bd0828<wbr>b334308eca71bd21f25ae5757f48fb<wbr>3a76&quot;</div><div># pr=
e-expansion value:</div><div>#=C2=A0 =C2=A0<font color=3D"#ff0000">&quot;fi=
le://nvpmodel.conf=C2=A0</font> =C2=A0 =C2=A0 file://tegra186-flash-helper.=
<wbr>sh=C2=A0 =C2=A0 =C2=A0file://nvpmodel.init=C2=A0 =C2=A0 =C2=A0file://n=
vpmodel.service &quot;</div><div>SRC_URI=3D&quot;<font color=3D"#ff0000">fi=
le://nvpmodel.conf</font>=C2=A0 =C2=A0 =C2=A0 file://tegra186-flash-helper.=
<wbr>sh=C2=A0 =C2=A0 =C2=A0file://nvpmodel.init=C2=A0 =C2=A0 =C2=A0file://n=
vpmodel.service &quot;</div></div><div><br></div><div>Then no other mention=
s until the do_install</div><div><br></div><div>Yet the nvpmodel.conf is ne=
ver copied to ${WORKDIR} which is=C2=A0/home/damien/procbox-pyro/<wbr>build=
-jetson-tx2/tmp/work/<wbr>aarch64_tegra186-poky-linux/<wbr>tegra-tools/28.2=
.0-r0 in my case.</div><div><br></div><div>Could some bitbake options disab=
le this standard behavior?</div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Thu, Jun 14, 2018 at 3:33 PM, Martin Jansa <span di=
r=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">m=
artin.jansa@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div class=3D"m_5270604732485601548m_5287218189820923441HOEnZb"><div cla=
ss=3D"m_5270604732485601548m_5287218189820923441h5">On Thu, Jun 14, 2018 at=
 03:16:00PM +0300, Damien LEFEVRE wrote:<br>
&gt; HI,<br>
&gt; <br>
&gt; I&#39;m working on meta-tegra layer and I&#39;d like to append a recip=
e. The<br>
&gt; original recipe looks like this:<br>
&gt; <a href=3D"https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.=
2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/madisongh/<wbr>meta-tegra/blob/rocko-l4t-r=
28.<wbr>2/recipes-bsp/tegra-binaries/<wbr>tegra-tools_28.2.0.bb</a><br>
&gt; &lt;<a href=3D"https://github.com/madisongh/meta-tegra/blob/rocko-l4t-=
r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb" rel=3D"noreferrer" =
target=3D"_blank">https://github.com/madisongh/<wbr>meta-tegra/blob/rocko-l=
4t-r28.<wbr>2/recipes-bsp/tegra-binaries/<wbr>tegra-tools_28.2.0.bb</a>&gt;=
<br>
&gt; <br>
&gt; I&#39;ve made a tegra-tools_28.2.0.bbappend to change the default PM_C=
ONFIG<br>
&gt; DEFAULT from 2 to 3 to get max performance in nvpmodel.conf configurat=
ion<br>
&gt; file.<br>
&gt; <br>
&gt; ```<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files/tegra186:&quot;<br=
>
&gt; SRC_URI_prepend_tegra186 +=3D &quot;file://nvpmodel.conf &quot;<br>
&gt; <br>
&gt; do_install_append_tegra186() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${sysconfdir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0755 ${B}/usr/sbin/nvpmodel ${D}${sbindi=
r}/<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/nvpmodel.conf ${D}${sysc=
onfdir}/nvpmodel.<wbr>conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${sysconfdir}/init.d<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0644 ${S}/nvpmodel.init ${D}${sysconfdir=
}/init.d/<wbr>nvpmodel<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${systemd_system_unitdir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0644 ${S}/nvpmodel.service ${D}${systemd=
_system_unitdir}<br>
&gt; }<br>
&gt; ```<br>
&gt; Would you have any idea why the nvpmodel.conf prepend is ignored and t=
he<br>
&gt; file never ends up in ${WORKDIR}.<br>
&gt; <br>
&gt; I&#39;ve made sure the paths are correct. nvpmodel.conf exists and if =
I put a<br>
&gt; typo like nvpmodel.conf_blabla bitbake throws a warning that it cannot=
 find<br>
&gt; the file. So I&#39;m sure the file is found but somehow bitbake ignore=
s it.<br>
&gt; <br>
&gt; I&#39;m having this issue with this one single recipe only, none of th=
e others<br>
&gt; in my build system so I&#39;m a bit puzzled.<br>
<br>
</div></div>Always use bitbake -e to verify that the file://nvpmodel.conf e=
nds where<br>
you expect it to end (and if it doesn&#39;t the history will show you why<b=
r>
not).<br>
<br>
&gt; <br>
&gt; Thanks,<br>
&gt; -Damien<br>
<span class=3D"m_5270604732485601548m_5287218189820923441HOEnZb"><font colo=
r=3D"#888888"><br>
&gt; -- <br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
<br>
-- <br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com" target=3D"_blank">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div>
</blockquote></div>
</div></div></blockquote></div><br></div>

--000000000000ba683e056eabfd19--
