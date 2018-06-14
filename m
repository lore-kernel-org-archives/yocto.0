Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 734D5E01225; Thu, 14 Jun 2018 06:22:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lefevre.da[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA71E0097C
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 06:22:45 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id 16-v6so8243825itl.5
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 06:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=5XM1uO/OdX2Sq27Xnvl7Y9GShOSgeuaJVynSVEDNtxo=;
	b=A9/7CYsKOwM+QULVDufw81m1etOCnPSYbGZhWTuE+th3Ifdufhk+8BFWl624ZoSAXo
	FvORLYSKJCAstmLE197olpiOBh/RbYuYGStkl4fooAMh/VHu2mFbL1nLGi8lP6GnqJwW
	KcDm6bvQ4I5eMhQWG+jBCMQnTLqyxameyYZpyPUWDDRY7n9Flnn8wSs3gxSyJEDDiKoT
	RnxYJpEb5W0wbyk2pHbQPuc5FyIk57am5Uu2QOTRSp4PZDVhS/YnCMZ0PfGHEeh2p+ws
	pN1+HtA2P/vMZZGyWRoOrx/iE3bSUYnWq3p8r+Byc195O2CzBhvK+Bz5qYvYA4CZedM9
	6kBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=5XM1uO/OdX2Sq27Xnvl7Y9GShOSgeuaJVynSVEDNtxo=;
	b=oUOyJgoTwyRzM5N91meNgqugwd+6Q20u+b+OwMSH/eC/B9WP2iNtz9cVn6cYM6xMpI
	AgeMCOIa/UT3g3b1FxWP5v4p8T+EYDdtRNlzv8D2jAhk1WY01IPqPeOFBY7zLd9R00BS
	AhwcSv10wROuw92NerD1yMKpSjhv7T+TY5/yMlua1iBAfBieuKcLZjtAgVIzZXmDNhZ8
	6btJACtkF9tN1yTT7xDZ6VxjvXE54nyYCvsQUDrOwEY+N9L2f1aCJ5xmilasJVFFQWY6
	Uet+bftu9piA/jtNPidU18b2OXRkaMRru4q5fwN6xf5+5SNo6x6CDPlPw/GBfKjjxgzN
	hIGQ==
X-Gm-Message-State: APt69E1PLTbtHtuhIGz4ZGCyungoH2qFMdM+lrKZEDU5PWhpiXHxwbmr
	HQHimcsGAI5gmbu8voqgbFaajZQSeEuhIUR8dg==
X-Google-Smtp-Source: ADUXVKL3ASZM9oC/wgyTr1tFGJ3U3ohhH0ugD8Hpqy4ubqZdhgdubHNOz2A568PR2ZviUEQfNVofRXArtXWjgKh0lwY=
X-Received: by 2002:a24:2109:: with SMTP id e9-v6mr2272468ita.39.1528982565130;
	Thu, 14 Jun 2018 06:22:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:5bc3:0:0:0:0:0 with HTTP; Thu, 14 Jun 2018 06:22:44
	-0700 (PDT)
In-Reply-To: <20180614123314.GA1389@jama>
References: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
	<20180614123314.GA1389@jama>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Thu, 14 Jun 2018 16:22:44 +0300
Message-ID: <CA+FhBv_M1bg=JrLb5fkXWbXynhYLfsZQeAqduoXfxb=7QyzMig@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 14 Jun 2018 13:22:47 -0000
Content-Type: multipart/alternative; boundary="000000000000a9a16c056e99feda"

--000000000000a9a16c056e99feda
Content-Type: text/plain; charset="UTF-8"

Thanks

Here are some interesting parts of bitbake -e. It seems my syntax is
correct


# $FILESEXTRAPATHS [3 operations]
#   set? /home/damien/procbox-pyro/sources/poky/meta/conf/bitbake.conf:325
#     "__default:"
#   set
/home/damien/procbox-pyro/sources/poky/meta/conf/documentation.conf:173
#     [doc] "Extends the search path the OpenEmbedded build system uses
when looking for files and patches as it processes recipes and append
files."
#   _prepend[tegra186]
/home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bbappend:1
#
 "/home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186:"
# pre-expansion value:
#
"/home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186
:__default:"
FILESEXTRAPATHS="
/home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186
:__default:"

#
# $SRC_URI [10 operations]
.....
#     "    file://nvcamera-daemon.init     file://nvcamera-daemon.service
   file://argus-daemon.init     file://argus-daemon.service
 file://nvstartup.init     file://nvstartup.service "
#   _append[tegra186]
/home/damien/procbox-pyro/sources/meta-tegra/recipes-bsp/tegra-binaries/tegra-binaries-28.2.0.inc:19
#     "     file://tegra186-flash-helper.sh     file://nvpmodel.init
 file://nvpmodel.service "
#   set
/home/damien/procbox-pyro/sources/meta-tegra/recipes-bsp/tegra-binaries/tegra-shared-binaries.inc:8
#     ""
#   _prepend[tegra186]
/home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bbappend:2
#     "file://nvpmodel.conf "
#   set tegra-binaries-28.2.0.inc:42
[__anon_46__home_damien_procbox_pyro_sources_meta_tegra_recipes_bsp_tegra_binaries_tegra_binaries_28_2_0_inc]
#     [md5sum] "22bbd0002db06bb26bf5de2d17cea8eb"
#   set tegra-binaries-28.2.0.inc:43
[__anon_46__home_damien_procbox_pyro_sources_meta_tegra_recipes_bsp_tegra_binaries_tegra_binaries_28_2_0_inc]
#     [sha256sum]
"62f57b4c03fedde1fe0a1635bd0828b334308eca71bd21f25ae5757f48fb3a76"
# pre-expansion value:
#   "file://nvpmodel.conf      file://tegra186-flash-helper.sh
 file://nvpmodel.init     file://nvpmodel.service "
SRC_URI="file://nvpmodel.conf      file://tegra186-flash-helper.sh
 file://nvpmodel.init     file://nvpmodel.service "

Then no other mentions until the do_install

Yet the nvpmodel.conf is never copied to ${WORKDIR} which
is /home/damien/procbox-pyro/build-jetson-tx2/tmp/work/aarch64_tegra186-poky-linux/tegra-tools/28.2.0-r0
in my case.

Could some bitbake options disable this standard behavior?

On Thu, Jun 14, 2018 at 3:33 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> On Thu, Jun 14, 2018 at 03:16:00PM +0300, Damien LEFEVRE wrote:
> > HI,
> >
> > I'm working on meta-tegra layer and I'd like to append a recipe. The
> > original recipe looks like this:
> > https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.
> 2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb
> > <https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.
> 2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb>
> >
> > I've made a tegra-tools_28.2.0.bbappend to change the default PM_CONFIG
> > DEFAULT from 2 to 3 to get max performance in nvpmodel.conf configuration
> > file.
> >
> > ```
> > FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"
> > SRC_URI_prepend_tegra186 += "file://nvpmodel.conf "
> >
> > do_install_append_tegra186() {
> >     install -d ${D}${sysconfdir}
> >     install -m 0755 ${B}/usr/sbin/nvpmodel ${D}${sbindir}/
> >     install -m 0644 ${WORKDIR}/nvpmodel.conf ${D}${sysconfdir}/nvpmodel.
> conf
> >     install -d ${D}${sysconfdir}/init.d
> >     install -m 0644 ${S}/nvpmodel.init ${D}${sysconfdir}/init.d/nvpmodel
> >     install -d ${D}${systemd_system_unitdir}
> >     install -m 0644 ${S}/nvpmodel.service ${D}${systemd_system_unitdir}
> > }
> > ```
> > Would you have any idea why the nvpmodel.conf prepend is ignored and the
> > file never ends up in ${WORKDIR}.
> >
> > I've made sure the paths are correct. nvpmodel.conf exists and if I put a
> > typo like nvpmodel.conf_blabla bitbake throws a warning that it cannot
> find
> > the file. So I'm sure the file is found but somehow bitbake ignores it.
> >
> > I'm having this issue with this one single recipe only, none of the
> others
> > in my build system so I'm a bit puzzled.
>
> Always use bitbake -e to verify that the file://nvpmodel.conf ends where
> you expect it to end (and if it doesn't the history will show you why
> not).
>
> >
> > Thanks,
> > -Damien
>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--000000000000a9a16c056e99feda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Thanks</div><div><br></div><div>Here a=
re some interesting parts of bitbake -e. It seems my syntax is correct=C2=
=A0</div><div><br></div><div><br></div><div><div># $FILESEXTRAPATHS [3 oper=
ations]</div><div>#=C2=A0 =C2=A0set? /home/damien/procbox-pyro/sources/poky=
/meta/conf/bitbake.conf:325</div><div>#=C2=A0 =C2=A0 =C2=A0&quot;__default:=
&quot;</div><div>#=C2=A0 =C2=A0set /home/damien/procbox-pyro/sources/poky/m=
eta/conf/documentation.conf:173</div><div>#=C2=A0 =C2=A0 =C2=A0[doc] &quot;=
Extends the search path the OpenEmbedded build system uses when looking for=
 files and patches as it processes recipes and append files.&quot;</div><di=
v>#=C2=A0 =C2=A0_prepend[tegra186] /home/damien/procbox-pyro/sources/meta-p=
rocbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bbappend:1<=
/div><div>#=C2=A0 =C2=A0<font color=3D"#ff0000"> =C2=A0&quot;/home/damien/p=
rocbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegr=
a-tools_28.2.0/tegra186:&quot;</font></div><div># pre-expansion value:</div=
><div>#=C2=A0 =C2=A0<font color=3D"#ff0000">&quot;/home/damien/procbox-pyro=
/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.=
2.0/tegra186</font>:__default:&quot;</div><div>FILESEXTRAPATHS=3D&quot;<fon=
t color=3D"#ff0000">/home/damien/procbox-pyro/sources/meta-procbox/meta-teg=
ra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186</font>:__default:=
&quot;</div></div><br><div><div>#</div><div># $SRC_URI [10 operations]</div=
><div>.....</div><div>#=C2=A0 =C2=A0 =C2=A0&quot;=C2=A0 =C2=A0 file://nvcam=
era-daemon.init=C2=A0 =C2=A0 =C2=A0file://nvcamera-daemon.service=C2=A0 =C2=
=A0 =C2=A0file://argus-daemon.init=C2=A0 =C2=A0 =C2=A0file://argus-daemon.s=
ervice=C2=A0 =C2=A0 =C2=A0file://nvstartup.init=C2=A0 =C2=A0 =C2=A0file://n=
vstartup.service &quot;</div><div>#=C2=A0 =C2=A0_append[tegra186] /home/dam=
ien/procbox-pyro/sources/meta-tegra/recipes-bsp/tegra-binaries/tegra-binari=
es-28.2.0.inc:19</div><div>#=C2=A0 =C2=A0 =C2=A0&quot;=C2=A0 =C2=A0 =C2=A0f=
ile://tegra186-flash-helper.sh=C2=A0 =C2=A0 =C2=A0file://nvpmodel.init=C2=
=A0 =C2=A0 =C2=A0file://nvpmodel.service &quot;</div><div>#=C2=A0 =C2=A0set=
 /home/damien/procbox-pyro/sources/meta-tegra/recipes-bsp/tegra-binaries/te=
gra-shared-binaries.inc:8</div><div>#=C2=A0 =C2=A0 =C2=A0&quot;&quot;</div>=
<div>#=C2=A0 =C2=A0_prepend[tegra186] /home/damien/procbox-pyro/sources/met=
a-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bbappend=
:2</div><div>#=C2=A0 =C2=A0 =C2=A0&quot;file://nvpmodel.conf &quot;</div><d=
iv>#=C2=A0 =C2=A0set tegra-binaries-28.2.0.inc:42 [__anon_46__home_damien_p=
rocbox_pyro_sources_meta_tegra_recipes_bsp_tegra_binaries_tegra_binaries_28=
_2_0_inc]</div><div>#=C2=A0 =C2=A0 =C2=A0[md5sum] &quot;22bbd0002db06bb26bf=
5de2d17cea8eb&quot;</div><div>#=C2=A0 =C2=A0set tegra-binaries-28.2.0.inc:4=
3 [__anon_46__home_damien_procbox_pyro_sources_meta_tegra_recipes_bsp_tegra=
_binaries_tegra_binaries_28_2_0_inc]</div><div>#=C2=A0 =C2=A0 =C2=A0[sha256=
sum] &quot;62f57b4c03fedde1fe0a1635bd0828b334308eca71bd21f25ae5757f48fb3a76=
&quot;</div><div># pre-expansion value:</div><div>#=C2=A0 =C2=A0<font color=
=3D"#ff0000">&quot;file://nvpmodel.conf=C2=A0</font> =C2=A0 =C2=A0 file://t=
egra186-flash-helper.sh=C2=A0 =C2=A0 =C2=A0file://nvpmodel.init=C2=A0 =C2=
=A0 =C2=A0file://nvpmodel.service &quot;</div><div>SRC_URI=3D&quot;<font co=
lor=3D"#ff0000">file://nvpmodel.conf</font>=C2=A0 =C2=A0 =C2=A0 file://tegr=
a186-flash-helper.sh=C2=A0 =C2=A0 =C2=A0file://nvpmodel.init=C2=A0 =C2=A0 =
=C2=A0file://nvpmodel.service &quot;</div></div><div><br></div><div>Then no=
 other mentions until the do_install</div><div><br></div><div>Yet the nvpmo=
del.conf is never copied to ${WORKDIR} which is=C2=A0/home/damien/procbox-p=
yro/build-jetson-tx2/tmp/work/aarch64_tegra186-poky-linux/tegra-tools/28.2.=
0-r0 in my case.</div><div><br></div><div>Could some bitbake options disabl=
e this standard behavior?</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Thu, Jun 14, 2018 at 3:33 PM, Martin Jansa <span dir=
=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">ma=
rtin.jansa@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div class=3D"HOEnZb"><div class=3D"h5">On Thu, Jun 14, 2018 at 03:16:00P=
M +0300, Damien LEFEVRE wrote:<br>
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
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
&gt; -- <br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
<br>
-- <br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div>

--000000000000a9a16c056e99feda--
