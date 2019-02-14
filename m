Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1BD5E00C77; Thu, 14 Feb 2019 13:49:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DBD8E0048C
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 13:49:25 -0800 (PST)
Received: by mail-ed1-f48.google.com with SMTP id m35so2359401ede.10
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 13:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IW9JqR8FDaVgdbGYftj9SvJH0FEYXsIRhSRWbhR/Vyw=;
	b=JXOU/Xh4gjcHHj580XsPQqibWtojjfOFoJSg3lJPBVOyFB6zVuW1Wb3ZcY+H3CJZng
	LvL4EktwHFhD+/q3LLTr06pOpnP5mcXPxtSjk1uBh25v6D9t4l3gWwm/UPFr9eDO/3tM
	9YkzxCge9e41ZOSdAX+zWII9lFlRFK059og+X1zCwOj5vUoGpfYu4TzjA8MKwbcLuQRs
	bXXJhNZDk4HGjJQLK+DJFfRbp7MUO32m1XniT/RxJ+wWyTI6wcFFsnJhrmEFS09UpFLR
	dTxVPN1SW0YRVnJeARnL2a9WPnDogZ89bemSAN3WP2x7eHKCXCeqM4plRkSqzpiAQp14
	udNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IW9JqR8FDaVgdbGYftj9SvJH0FEYXsIRhSRWbhR/Vyw=;
	b=MY+je4jyib6Ou41yBgiELBFvik9rV+E1p7UmxmBiHJFIyXnmLC0cMLYa9XdCvtd4lT
	/PxE0yKYyv1LYrZkqCBoqY3+Dpt/GLz7Kt5xhiKLoSzVZbLQsWXM9dNxvh+OKPRWL0Cb
	MplBwWEc4fYk4SSe1uqMJLzlg4tc+Mau04MXqCMcIXmyPxyziH3hC/60gWnzaRX8ZQEO
	4WuaWv+SRpvVmJLLQjdEsgtR0/vVUfw8N/+bDrG3mJCJgxJXPSHYjLrusYZbGFJSt56L
	V+nYGwiOsJK8BcNJoNAwGxb4IHJES6zzfWDqroj6RnpsKwJV0by0wytEMTsds2noD0+1
	P2cw==
X-Gm-Message-State: AHQUAub9wTJiQQ5QN+w8Ly4qNPjLtMLXUKd+Ownv+gdQ47bL51EcWs06
	mKXb6xMZb6ogZ8Pr0sBs4HrrolixFcF7Ts9RQlldkU+a
X-Google-Smtp-Source: AHgI3IaTjMbAAjb46C/GPXD9r9MSBNofOxjRfaCCOGUjk+4g/flvqKZV2S6gp0ZK7yNLZhfq6zbdnD7fApnjCOvigJk=
X-Received: by 2002:a50:c946:: with SMTP id p6mr4991714edh.0.1550180964109;
	Thu, 14 Feb 2019 13:49:24 -0800 (PST)
MIME-Version: 1.0
References: <CAKpuFdft3u6-H2BwRe3PJSvhOem9Twc2KZ0OEwTys4-rPDodaA@mail.gmail.com>
	<CAB=6tBQWHaJT2VBZJ_gkSgBehaja-JpMuxOq6fvT2zuGLRgW3A@mail.gmail.com>
In-Reply-To: <CAB=6tBQWHaJT2VBZJ_gkSgBehaja-JpMuxOq6fvT2zuGLRgW3A@mail.gmail.com>
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Thu, 14 Feb 2019 22:49:14 +0100
Message-ID: <CAKpuFdcib2=sktsu_aQ+eg-Sa+hT5yez06WExAsPup8O6AOKyQ@mail.gmail.com>
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: npm recipe bad task order
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
X-List-Received-Date: Thu, 14 Feb 2019 21:49:26 -0000
Content-Type: multipart/alternative; boundary="000000000000b4103b0581e1a1a9"

--000000000000b4103b0581e1a1a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My recipe is as following, i have striped down some checksum files and
licenses for packages:
___________________________________________________________________________=
____________
SUMMARY =3D "microServiceBus-node is the node.js based device agent used
together with microServiceBus.com."

DESCRIPTION =3D  "microServiceBus.com is an integration platform for IoT an=
d
enterprise applications. \
                This platform lets you expose microservices from small
devices and large systems using a remote hosting infrastructure. \
                These nodes can run on both Linux and Windows using
components built either natively (ARM) or using node.js."

HOMEPAGE =3D "https://microservicebus.com"

LICENSE =3D "BSD-3-Clause & Unlicense & Apache-2.0 & \
BSD-2-Clause & ISC & MIT"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D75dbbb2f49d90bfc476532dc5861fd26=
 \

file://node_modules/inherits/LICENSE;md5=3D5b2ef2247af6d355ae9d9f988092d470=
 \

file://node_modules/psl/LICENSE;md5=3D2425d288296fae32e27553694ff40294 \

file://node_modules/rc/LICENSE.MIT;md5=3De0f70a42adf526e6f5e605a94d98a420"

SRC_URI =3D "npm://registry.npmjs.org;name=3Dmicroservicebus-node;version=
=3D${PV}"

NPM_SHRINKWRAP :=3D "${THISDIR}/${PN}/npm-shrinkwrap.json"
NPM_LOCKDOWN :=3D "${THISDIR}/${PN}/lockdown.json"

inherit npm

# Must be set after inherit npm since that itself sets S
S =3D "${WORKDIR}/npmpkg"
LICENSE_${PN}-app-module-path =3D "BSD-2-Clause"
LICENSE_${PN}-async-lodash =3D "MIT"

RDEPENDS_${PN} +=3D " python nodejs-npm"
___________________________________________________________________________=
____________

The recipe have worked for some version of sumo, I have tested 2.5.1 with
the same result, the only other thing that I have added is som generic
licenses in the layer:
________________________________________________________
# Additional license directories.
LICENSE_PATH +=3D "${LAYERDIR}/files/common-licenses"
SPDXLICENSEMAP[Unlicensev1] =3D "Unlicense"
SPDXLICENSEMAP[WTFPLv1] =3D "WTFPL"
_________________________________________________________

/Jonas

Den tors 14 feb. 2019 kl 21:38 skrev Chuck Wolber <chuckwolber@gmail.com>:

> Normally the source archive is unpacked first, which contains the license
> file. Is there something different with the source packaging for your
> recipe?
>
> ..Ch:W..
>
> On Thu, Feb 14, 2019 at 02:26 Jonas Andersson <jonaskgandersson@gmail.com=
>
> wrote:
>
>> Hi,
>>
>> I have some recipes created from npm packages with devtool.
>>
>> do_populate_lic with: WARNING: Could not copy license file
>> and LIC_FILES_CHKSUM points to an invalid file.
>>
>> In my understanding the problem is that do_populate_lic task is running
>> before do_compile:
>>
>> log.task_order
>> _______________________________________________________________
>> do_cleansstate (20550): log.do_cleansstate.20550
>> do_cleanall (20551): log.do_cleanall.20551
>> do_fetch (20653): log.do_fetch.20653
>> do_unpack (22861): log.do_unpack.22861
>> do_prepare_recipe_sysroot (22862): log.do_prepare_recipe_sysroot.22862
>> do_patch (23281): log.do_patch.23281
>> do_configure (23283): log.do_configure.23283
>> do_populate_lic (23284): log.do_populate_lic.23284
>> do_compile (23289): log.do_compile.23289
>> _______________________________________________________________
>>
>> The recipes npm created with devtool reference license to S
>> (${WORKDIR}/npmpkg):
>>
>> ________________________________________________________________________=
______
>> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D75dbbb2f49d90bfc476532dc5861f=
d26 \
>>
>> file://node_modules/inherits/LICENSE;md5=3D5b2ef2247af6d355ae9d9f988092d=
470 \
>>
>> file://node_modules/psl/LICENSE;md5=3D2425d288296fae32e27553694ff40294 \
>>
>> file://node_modules/rc/LICENSE.MIT;md5=3De0f70a42adf526e6f5e605a94d98a42=
0"
>>
>> ________________________________________________________________________=
______
>>
>> But as npm_do_compile is the task that populates workdir there is no
>> license files available when do_populate_lic runs.
>>
>> I have tried both sumo and thud but with the same result, is the order
>> something that have change?
>>
>> Best regards
>> Jonas
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> =E2=80=9CI would challenge anyone here to think of a question upon which =
we once
> had a scientific answer, however inadequate, but for which now the best
> answer is a religious one."  -Sam Harris
>

--000000000000b4103b0581e1a1a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">My reci=
pe is as following, i have striped down some checksum files and licenses fo=
r packages:<br></div><div dir=3D"ltr">_____________________________________=
__________________________________________________=C2=A0=C2=A0<br></div><di=
v dir=3D"ltr"><div dir=3D"ltr">SUMMARY =3D &quot;microServiceBus-node is th=
e node.js based device agent used together with microServiceBus.com.&quot;<=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr">DESCRIPTION =3D=C2=A0 &quo=
t;microServiceBus.com is an integration platform for IoT and enterprise app=
lications. \</div><div dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 This platform lets you expose microservices from small de=
vices and large systems using a remote hosting infrastructure. \</div><div =
dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 These n=
odes can run on both Linux and Windows using components built either native=
ly (ARM) or using node.js.&quot;</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">HOMEPAGE =3D &quot;<a href=3D"https://microservicebus.com">https:/=
/microservicebus.com</a>&quot;</div><div dir=3D"ltr"><br></div><div dir=3D"=
ltr">LICENSE =3D &quot;BSD-3-Clause &amp; Unlicense &amp; Apache-2.0 &amp; =
\</div><div dir=3D"ltr">BSD-2-Clause &amp; ISC &amp; MIT&quot;</div><div di=
r=3D"ltr">LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D75dbbb2f49d90bfc4=
76532dc5861fd26 \</div><div dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://node_modules/inherits/LICENSE;md5=
=3D5b2ef2247af6d355ae9d9f988092d470 \</div><div dir=3D"ltr">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://node_modules=
/psl/LICENSE;md5=3D2425d288296fae32e27553694ff40294 \</div><div dir=3D"ltr"=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file=
://node_modules/rc/LICENSE.MIT;md5=3De0f70a42adf526e6f5e605a94d98a420&quot;=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">SRC_URI =3D &quot;npm://<=
a href=3D"http://registry.npmjs.org">registry.npmjs.org</a>;name=3Dmicroser=
vicebus-node;version=3D${PV}&quot;</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">NPM_SHRINKWRAP :=3D &quot;${THISDIR}/${PN}/npm-shrinkwrap.json&quo=
t;</div><div dir=3D"ltr">NPM_LOCKDOWN :=3D &quot;${THISDIR}/${PN}/lockdown.=
json&quot;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">inherit npm</di=
v><div dir=3D"ltr"><br></div><div dir=3D"ltr"># Must be set after inherit n=
pm since that itself sets S</div><div dir=3D"ltr">S =3D &quot;${WORKDIR}/np=
mpkg&quot;</div><div dir=3D"ltr">LICENSE_${PN}-app-module-path =3D &quot;BS=
D-2-Clause&quot;</div><div dir=3D"ltr">LICENSE_${PN}-async-lodash =3D &quot=
;MIT&quot;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">RDEPENDS_${PN} =
+=3D &quot; python nodejs-npm&quot;</div><div>_____________________________=
__________________________________________________________</div><div><br></=
div><div>The recipe have worked for some version of sumo, I have tested 2.5=
.1 with the same result, the only other thing that I have added is som gene=
ric licenses in the layer:</div><div>______________________________________=
__________________</div><div><div># Additional license directories.</div><d=
iv>LICENSE_PATH +=3D &quot;${LAYERDIR}/files/common-licenses&quot;</div><di=
v>SPDXLICENSEMAP[Unlicensev1] =3D &quot;Unlicense&quot;</div><div>SPDXLICEN=
SEMAP[WTFPLv1] =3D &quot;WTFPL&quot;</div></div><div>______________________=
___________________________________</div><div><br></div><div>/Jonas</div></=
div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Den tors 14 feb. 2019 kl 21:38 skrev Chuck Wolber &lt;<a hr=
ef=3D"mailto:chuckwolber@gmail.com">chuckwolber@gmail.com</a>&gt;:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div dir=3D"auto">N=
ormally the source archive is unpacked first, which contains the license fi=
le. Is there something different with the source packaging for your recipe?=
</div></div><div dir=3D"auto"><br></div><div dir=3D"auto">..Ch:W..</div><di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Feb 14, 2019 at 02:26 Jonas Andersson &lt;<a href=3D"mailto:jonaskgande=
rsson@gmail.com" target=3D"_blank">jonaskgandersson@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr">Hi,<div><br></div><div>I have some recipes created from npm pa=
ckages with devtool.</div><div><br></div><div>do_populate_lic with:=C2=A0WA=
RNING: Could not copy license file and=C2=A0LIC_FILES_CHKSUM points to an i=
nvalid file.</div><div><br></div><div>In my understanding the problem is th=
at do_populate_lic task is running before do_compile:</div><div><br></div><=
div>log.task_order</div><div>______________________________________________=
_________________</div><div><div>do_cleansstate (20550): log.do_cleansstate=
.20550</div><div>do_cleanall (20551): log.do_cleanall.20551</div><div>do_fe=
tch (20653): log.do_fetch.20653</div><div>do_unpack (22861): log.do_unpack.=
22861</div><div>do_prepare_recipe_sysroot (22862): log.do_prepare_recipe_sy=
sroot.22862</div><div>do_patch (23281): log.do_patch.23281</div><div>do_con=
figure (23283): log.do_configure.23283</div><div>do_populate_lic (23284): l=
og.do_populate_lic.23284</div><div>do_compile (23289): log.do_compile.23289=
</div></div><div>__________________________________________________________=
_____</div><div><br></div><div>The recipes npm created with devtool referen=
ce license to S (${WORKDIR}/npmpkg):</div><div>____________________________=
__________________________________________________<br></div><div><div>LIC_F=
ILES_CHKSUM =3D &quot;file://LICENSE;md5=3D75dbbb2f49d90bfc476532dc5861fd26=
 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 file://node_modules/inherits/LICENSE;md5=3D5b2ef2247af6d355ae9d9f98=
8092d470 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 file://node_modules/psl/LICENSE;md5=3D2425d288296fae32e27=
553694ff40294 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 file://node_modules/rc/LICENSE.MIT;md5=3De0f70a42adf52=
6e6f5e605a94d98a420&quot;</div></div><div>_________________________________=
_____________________________________________</div><div><br></div><div>But =
as npm_do_compile is the task that populates workdir there is no license fi=
les available when do_populate_lic runs.</div><div><br></div><div>I have tr=
ied both sumo and thud but with the same result, is the order something tha=
t have change?=C2=A0</div><div><br></div><div>Best regards</div></div></div=
></div></div></div></div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Jonas</div><div><b=
r></div></div></div></div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail-m_191049012=
9918309162gmail_signature"><div dir=3D"ltr">=E2=80=9CI would challenge anyo=
ne here to think of a question upon which we once had a scientific=C2=A0ans=
wer, however inadequate, but for which now the best answer is a religious o=
ne.&quot;=C2=A0 -Sam Harris</div></div>
</blockquote></div>

--000000000000b4103b0581e1a1a9--
