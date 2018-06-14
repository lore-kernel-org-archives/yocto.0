Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC242E01478; Thu, 14 Jun 2018 07:23:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76FBEE0145D
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 07:23:30 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id v131-v6so12379783wma.1
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 07:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oWTIjLtAB4VUsp75P4k6KvRMb1ZigwLp3MhWA8ZIKE0=;
	b=c9aLZYneQbL4U30VB8hTW+6RhlTsCLHMNhEBi2S/S686PfoIncFwvr9M80ALdDtMvH
	cwDSUayQiogBOUie5dSKKEUbIGnanFBpRVhUwR1raTKHuPib7+4iptGVjmmWUCZhUzW+
	C3/nX2rD8A3IPdtMpGSKU4KGzrXAgjn/OO0Qi1kWK0ypCSiCwwEISd0zhiZo/7MUfyI9
	9bhdcBWeELbhl+lgrS6t0KO1GAWsUa2GLmlG0WW/tq0Tdg0CH21Y1nP/jW6tCCZhDMf1
	ut2JvdVv4zLG4UQRTuAN5gEm0D3rRbgiLqjycMJFeJLTagZsfayLf6gkeDypfE6YD4JP
	X7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oWTIjLtAB4VUsp75P4k6KvRMb1ZigwLp3MhWA8ZIKE0=;
	b=XMKKLNsFLNrkW0heXvb2TLjx9tZ7MKyrfRaY9nZH+EqOWYsjR29vPtH91QhGGUT2Bk
	/JKxOHTzDxh+1bSIycsZ1votnfyDRElXQrFeVo+vp3LJsOwisIAi33MG8deuRRU7iFnK
	VKclCLwYbYpOb/vdxl0Q6RXWF7YuLLhN3eJyD+HnNPvur9ZUhuTiDI/+wicsog1MdGFl
	pIuEdJ3VWiyGKujhDoZ7TYdtHFVa2Cx6o7Qt8Gzj62nOgkB9LrHd0Sfd2EbfIBv+xnPU
	efkR03cqiMHBOwYt+Hzb92eKvc6U0s+IaOU898TtoAOUHHgxiId0Czz1mxafpKcbDhQZ
	Ahvw==
X-Gm-Message-State: APt69E0/y4NtGW3/kPtL0SFYR7xK5V5ifAc0bIgGC90EiyFS7WZrMBK0
	e5P8TVbF8Ep35ClzYBjvINb7uri0hpKdik2also=
X-Google-Smtp-Source: ADUXVKKVXw0modZi0Ae9ckaCfKn0Xoyp74iJCq6VGfzDCSVHooCk3ntRL9Jq50p0dbbNm/IEH9gnRUp65We5yRrqIJE=
X-Received: by 2002:a1c:bfce:: with SMTP id
	o75-v6mr1940255wmi.122.1528986209579; 
	Thu, 14 Jun 2018 07:23:29 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
	<20180614123314.GA1389@jama>
	<CA+FhBv_M1bg=JrLb5fkXWbXynhYLfsZQeAqduoXfxb=7QyzMig@mail.gmail.com>
In-Reply-To: <CA+FhBv_M1bg=JrLb5fkXWbXynhYLfsZQeAqduoXfxb=7QyzMig@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 14 Jun 2018 16:23:17 +0200
Message-ID: <CA+chaQduocJz72ZGMQG0QcL8gRMxgvceDDyYuJKZ2-vvEpQvYA@mail.gmail.com>
To: lefevre.da@gmail.com
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
X-List-Received-Date: Thu, 14 Jun 2018 14:23:31 -0000
Content-Type: multipart/alternative; boundary="000000000000e3766a056e9ad7fe"

--000000000000e3766a056e9ad7fe
Content-Type: text/plain; charset="UTF-8"

See ./recipes-bsp/tegra-binaries/tegra-shared-binaries.inc

It's disabling standard do_fetch, do_unpack, do_patch and replacing them
with tegra-binaries:do_unpack tegra-binaries:do_preconfigure which populates
S directory in work-shared
S = "${TMPDIR}/work-shared/L4T-${SOC_FAMILY}-${PV}-${PR}/Linux_for_Tegra"

so basically you need to add it in tegra-binaries recipe (not tegra-tools).

On Thu, Jun 14, 2018 at 3:22 PM Damien LEFEVRE <lefevre.da@gmail.com> wrote:

>
> Thanks
>
> Here are some interesting parts of bitbake -e. It seems my syntax is
> correct
>
>
> # $FILESEXTRAPATHS [3 operations]
> #   set? /home/damien/procbox-pyro/sources/poky/meta/conf/bitbake.conf:325
> #     "__default:"
> #   set
> /home/damien/procbox-pyro/sources/poky/meta/conf/documentation.conf:173
> #     [doc] "Extends the search path the OpenEmbedded build system uses
> when looking for files and patches as it processes recipes and append
> files."
> #   _prepend[tegra186]
> /home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bbappend:1
> #
>  "/home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186:"
> # pre-expansion value:
> #
> "/home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186
> :__default:"
> FILESEXTRAPATHS="
> /home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186
> :__default:"
>
> #
> # $SRC_URI [10 operations]
> .....
> #     "    file://nvcamera-daemon.init     file://nvcamera-daemon.service
>    file://argus-daemon.init     file://argus-daemon.service
>  file://nvstartup.init     file://nvstartup.service "
> #   _append[tegra186]
> /home/damien/procbox-pyro/sources/meta-tegra/recipes-bsp/tegra-binaries/tegra-binaries-28.2.0.inc:19
> #     "     file://tegra186-flash-helper.sh     file://nvpmodel.init
>  file://nvpmodel.service "
> #   set
> /home/damien/procbox-pyro/sources/meta-tegra/recipes-bsp/tegra-binaries/tegra-shared-binaries.inc:8
> #     ""
> #   _prepend[tegra186]
> /home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bbappend:2
> #     "file://nvpmodel.conf "
> #   set tegra-binaries-28.2.0.inc:42
> [__anon_46__home_damien_procbox_pyro_sources_meta_tegra_recipes_bsp_tegra_binaries_tegra_binaries_28_2_0_inc]
> #     [md5sum] "22bbd0002db06bb26bf5de2d17cea8eb"
> #   set tegra-binaries-28.2.0.inc:43
> [__anon_46__home_damien_procbox_pyro_sources_meta_tegra_recipes_bsp_tegra_binaries_tegra_binaries_28_2_0_inc]
> #     [sha256sum]
> "62f57b4c03fedde1fe0a1635bd0828b334308eca71bd21f25ae5757f48fb3a76"
> # pre-expansion value:
> #   "file://nvpmodel.conf      file://tegra186-flash-helper.sh
>  file://nvpmodel.init     file://nvpmodel.service "
> SRC_URI="file://nvpmodel.conf      file://tegra186-flash-helper.sh
>  file://nvpmodel.init     file://nvpmodel.service "
>
> Then no other mentions until the do_install
>
> Yet the nvpmodel.conf is never copied to ${WORKDIR} which
> is /home/damien/procbox-pyro/build-jetson-tx2/tmp/work/aarch64_tegra186-poky-linux/tegra-tools/28.2.0-r0
> in my case.
>
> Could some bitbake options disable this standard behavior?
>
> On Thu, Jun 14, 2018 at 3:33 PM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
>
>> On Thu, Jun 14, 2018 at 03:16:00PM +0300, Damien LEFEVRE wrote:
>> > HI,
>> >
>> > I'm working on meta-tegra layer and I'd like to append a recipe. The
>> > original recipe looks like this:
>> >
>> https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb
>> > <
>> https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb
>> >
>> >
>> > I've made a tegra-tools_28.2.0.bbappend to change the default PM_CONFIG
>> > DEFAULT from 2 to 3 to get max performance in nvpmodel.conf
>> configuration
>> > file.
>> >
>> > ```
>> > FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"
>> > SRC_URI_prepend_tegra186 += "file://nvpmodel.conf "
>> >
>> > do_install_append_tegra186() {
>> >     install -d ${D}${sysconfdir}
>> >     install -m 0755 ${B}/usr/sbin/nvpmodel ${D}${sbindir}/
>> >     install -m 0644 ${WORKDIR}/nvpmodel.conf
>> ${D}${sysconfdir}/nvpmodel.conf
>> >     install -d ${D}${sysconfdir}/init.d
>> >     install -m 0644 ${S}/nvpmodel.init ${D}${sysconfdir}/init.d/nvpmodel
>> >     install -d ${D}${systemd_system_unitdir}
>> >     install -m 0644 ${S}/nvpmodel.service ${D}${systemd_system_unitdir}
>> > }
>> > ```
>> > Would you have any idea why the nvpmodel.conf prepend is ignored and the
>> > file never ends up in ${WORKDIR}.
>> >
>> > I've made sure the paths are correct. nvpmodel.conf exists and if I put
>> a
>> > typo like nvpmodel.conf_blabla bitbake throws a warning that it cannot
>> find
>> > the file. So I'm sure the file is found but somehow bitbake ignores it.
>> >
>> > I'm having this issue with this one single recipe only, none of the
>> others
>> > in my build system so I'm a bit puzzled.
>>
>> Always use bitbake -e to verify that the file://nvpmodel.conf ends where
>> you expect it to end (and if it doesn't the history will show you why
>> not).
>>
>> >
>> > Thanks,
>> > -Damien
>>
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>>
>
>

--000000000000e3766a056e9ad7fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See=C2=A0./recipes-bsp/tegra-binaries/tegra-shared-binarie=
s.inc<div><br></div><div>It&#39;s disabling standard do_fetch, do_unpack, d=
o_patch and replacing them with=C2=A0tegra-binaries:do_unpack=C2=A0tegra-bi=
naries:do_preconfigure which populates</div><div>S directory in work-shared=
</div><div>S =3D &quot;${TMPDIR}/work-shared/L4T-${SOC_FAMILY}-${PV}-${PR}/=
Linux_for_Tegra&quot;<br></div><div><br></div><div>so basically you need to=
 add it in tegra-binaries recipe (not tegra-tools).</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jun 14, 2018 at 3:22 PM Damien =
LEFEVRE &lt;<a href=3D"mailto:lefevre.da@gmail.com">lefevre.da@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>=
<br></div><div>Thanks</div><div><br></div><div>Here are some interesting pa=
rts of bitbake -e. It seems my syntax is correct=C2=A0</div><div><br></div>=
<div><br></div><div><div># $FILESEXTRAPATHS [3 operations]</div><div>#=C2=
=A0 =C2=A0set? /home/damien/procbox-pyro/sources/poky/meta/conf/bitbake.con=
f:325</div><div>#=C2=A0 =C2=A0 =C2=A0&quot;__default:&quot;</div><div>#=C2=
=A0 =C2=A0set /home/damien/procbox-pyro/sources/poky/meta/conf/documentatio=
n.conf:173</div><div>#=C2=A0 =C2=A0 =C2=A0[doc] &quot;Extends the search pa=
th the OpenEmbedded build system uses when looking for files and patches as=
 it processes recipes and append files.&quot;</div><div>#=C2=A0 =C2=A0_prep=
end[tegra186] /home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/rec=
ipes-bsp/tegra-binaries/tegra-tools_28.2.0.bbappend:1</div><div>#=C2=A0 =C2=
=A0<font color=3D"#ff0000"> =C2=A0&quot;/home/damien/procbox-pyro/sources/m=
eta-procbox/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra1=
86:&quot;</font></div><div># pre-expansion value:</div><div>#=C2=A0 =C2=A0<=
font color=3D"#ff0000">&quot;/home/damien/procbox-pyro/sources/meta-procbox=
/meta-tegra/recipes-bsp/tegra-binaries/tegra-tools_28.2.0/tegra186</font>:_=
_default:&quot;</div><div>FILESEXTRAPATHS=3D&quot;<font color=3D"#ff0000">/=
home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/recipes-bsp/tegra-=
binaries/tegra-tools_28.2.0/tegra186</font>:__default:&quot;</div></div><br=
><div><div>#</div><div># $SRC_URI [10 operations]</div><div>.....</div><div=
>#=C2=A0 =C2=A0 =C2=A0&quot;=C2=A0 =C2=A0 file://nvcamera-daemon.init=C2=A0=
 =C2=A0 =C2=A0file://nvcamera-daemon.service=C2=A0 =C2=A0 =C2=A0file://argu=
s-daemon.init=C2=A0 =C2=A0 =C2=A0file://argus-daemon.service=C2=A0 =C2=A0 =
=C2=A0file://nvstartup.init=C2=A0 =C2=A0 =C2=A0file://nvstartup.service &qu=
ot;</div><div>#=C2=A0 =C2=A0_append[tegra186] /home/damien/procbox-pyro/sou=
rces/meta-tegra/recipes-bsp/tegra-binaries/tegra-binaries-28.2.0.inc:19</di=
v><div>#=C2=A0 =C2=A0 =C2=A0&quot;=C2=A0 =C2=A0 =C2=A0file://tegra186-flash=
-helper.sh=C2=A0 =C2=A0 =C2=A0file://nvpmodel.init=C2=A0 =C2=A0 =C2=A0file:=
//nvpmodel.service &quot;</div><div>#=C2=A0 =C2=A0set /home/damien/procbox-=
pyro/sources/meta-tegra/recipes-bsp/tegra-binaries/tegra-shared-binaries.in=
c:8</div><div>#=C2=A0 =C2=A0 =C2=A0&quot;&quot;</div><div>#=C2=A0 =C2=A0_pr=
epend[tegra186] /home/damien/procbox-pyro/sources/meta-procbox/meta-tegra/r=
ecipes-bsp/tegra-binaries/tegra-tools_28.2.0.bbappend:2</div><div>#=C2=A0 =
=C2=A0 =C2=A0&quot;file://nvpmodel.conf &quot;</div><div>#=C2=A0 =C2=A0set =
tegra-binaries-28.2.0.inc:42 [__anon_46__home_damien_procbox_pyro_sources_m=
eta_tegra_recipes_bsp_tegra_binaries_tegra_binaries_28_2_0_inc]</div><div>#=
=C2=A0 =C2=A0 =C2=A0[md5sum] &quot;22bbd0002db06bb26bf5de2d17cea8eb&quot;</=
div><div>#=C2=A0 =C2=A0set tegra-binaries-28.2.0.inc:43 [__anon_46__home_da=
mien_procbox_pyro_sources_meta_tegra_recipes_bsp_tegra_binaries_tegra_binar=
ies_28_2_0_inc]</div><div>#=C2=A0 =C2=A0 =C2=A0[sha256sum] &quot;62f57b4c03=
fedde1fe0a1635bd0828b334308eca71bd21f25ae5757f48fb3a76&quot;</div><div># pr=
e-expansion value:</div><div>#=C2=A0 =C2=A0<font color=3D"#ff0000">&quot;fi=
le://nvpmodel.conf=C2=A0</font> =C2=A0 =C2=A0 file://tegra186-flash-helper.=
sh=C2=A0 =C2=A0 =C2=A0file://nvpmodel.init=C2=A0 =C2=A0 =C2=A0file://nvpmod=
el.service &quot;</div><div>SRC_URI=3D&quot;<font color=3D"#ff0000">file://=
nvpmodel.conf</font>=C2=A0 =C2=A0 =C2=A0 file://tegra186-flash-helper.sh=C2=
=A0 =C2=A0 =C2=A0file://nvpmodel.init=C2=A0 =C2=A0 =C2=A0file://nvpmodel.se=
rvice &quot;</div></div><div><br></div><div>Then no other mentions until th=
e do_install</div><div><br></div><div>Yet the nvpmodel.conf is never copied=
 to ${WORKDIR} which is=C2=A0/home/damien/procbox-pyro/build-jetson-tx2/tmp=
/work/aarch64_tegra186-poky-linux/tegra-tools/28.2.0-r0 in my case.</div><d=
iv><br></div><div>Could some bitbake options disable this standard behavior=
?</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On T=
hu, Jun 14, 2018 at 3:33 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"=
mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"m_528721=
8189820923441HOEnZb"><div class=3D"m_5287218189820923441h5">On Thu, Jun 14,=
 2018 at 03:16:00PM +0300, Damien LEFEVRE wrote:<br>
&gt; HI,<br>
&gt; <br>
&gt; I&#39;m working on meta-tegra layer and I&#39;d like to append a recip=
e. The<br>
&gt; original recipe looks like this:<br>
&gt; <a href=3D"https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.=
2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/=
recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb</a><br>
&gt; &lt;<a href=3D"https://github.com/madisongh/meta-tegra/blob/rocko-l4t-=
r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb" rel=3D"noreferrer" =
target=3D"_blank">https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r2=
8.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb</a>&gt;<br>
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
onfdir}/nvpmodel.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${sysconfdir}/init.d<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0644 ${S}/nvpmodel.init ${D}${sysconfdir=
}/init.d/nvpmodel<br>
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
<span class=3D"m_5287218189820923441HOEnZb"><font color=3D"#888888"><br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
<br>
-- <br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com" target=3D"_blank">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div>
</blockquote></div>

--000000000000e3766a056e9ad7fe--
