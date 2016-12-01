Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB73BE00D07; Thu,  1 Dec 2016 11:06:29 -0800 (PST)
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
	*      [209.85.210.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f169.google.com (mail-wj0-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03DE4E00CF1
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 11:06:23 -0800 (PST)
Received: by mail-wj0-f169.google.com with SMTP id qp4so213252274wjc.3
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 11:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Y4vYtGxnlk6fURDMs9kkEeZ4k0RdfUvGeYwe/t3W0VQ=;
	b=IzzPOS84FMrkmup7fvxwlSCOOygnwzLSbWujuQr6H6PG1gRsM9gXiekQlz0+VdoyPS
	W43J+85yDUO9vspJFXxkkYrnuY1hWbxkcvxveJy+vgB2LlCxPbEce2yKVFBvIsoXaV9L
	Ml7qRqkV0VV5mjGvJG2jFodNe5ztxD1EOgY/Gsna+NaOY0xBWKy6lpfUkkyIPZOL+wg7
	ugOaSB23QuJcpQ2KN0nW+pc1cb0cU3W9ofTza0EL+9iTmQiPg6b81A7CThFaP7k75riu
	ap1UEIkDapYnv01x5hvL+4VpED+yhBtjlLKzRgbVZIYOld1xjzJ8j/ubvSDufLaKpuSG
	YPQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Y4vYtGxnlk6fURDMs9kkEeZ4k0RdfUvGeYwe/t3W0VQ=;
	b=YwtD9190Ik14tgWXndWhAnUo9ktjYpgpSqug+amXiy40qedeEDYPu1jJz+mmQgIcYp
	Ki2vY/MB4l69ObJj73Qo2jyvbr/5DcWk2vzul6JzWtQ4tu/LgkK3TNJg90rJDD+b/MV+
	ugyucPdRSgMAHWwR7zCqQp8fQWjoK3w/1+ybIOffBd+hLzOpmRLqU8SfeyOHcE1F9C1a
	JOYMhxG9BeslmgLqVPg48RsCE9+JpUWLVR0n3wRj/di/AWmg7Kyt6u6jgwHgT292fdwT
	Pf7J+qM0gLssVWyDlBaiB5LvUKJKZ2G+4ubScM+6GGTStK4A7qve6soCi19o5apzEro8
	3Qdw==
X-Gm-Message-State: AKaTC0093K94SBUQwcNbQI3m1JN1KGXLccX08lBT9PvtdNtEZSD+Ex8DHFV/bcDpACmnQfpcBSJnOTgV5uuC3A==
X-Received: by 10.194.77.83 with SMTP id q19mr34827259wjw.186.1480619183064;
	Thu, 01 Dec 2016 11:06:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.134.144 with HTTP; Thu, 1 Dec 2016 11:06:22 -0800 (PST)
In-Reply-To: <DM5PR05MB2954A758A4F3A3642281F22FBB8F0@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB2954A758A4F3A3642281F22FBB8F0@DM5PR05MB2954.namprd05.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 1 Dec 2016 20:06:22 +0100
Message-ID: <CA+chaQeQuM4-WBOJ6Wo2nEupT1Meopg5bzeCeDeYqr=k2swAPQ@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't set march=armv5te
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
X-List-Received-Date: Thu, 01 Dec 2016 19:06:29 -0000
Content-Type: multipart/alternative; boundary=047d7bfcfd7c744eb005429d8481

--047d7bfcfd7c744eb005429d8481
Content-Type: text/plain; charset=UTF-8

Using and not using thumb was also controlled not only by TUNE_FEATURES
(MACHINE defines that) but also by ARM_INSTRUCTION_SET (DISTRO defines
that).

So you weren't building with thumb enabled even when you were seeing
armv5te before.

On Thu, Dec 1, 2016 at 5:26 PM, Bryan Evenson <bevenson@melinkcorp.com>
wrote:

> I'm in the process of upgrading from the dizzy branch to the fido branch,
> and I'm still a little confused about some tune changes that I'm seeing.
> I'm using an Atmel AT91SAM9G25 processor.  The meta-atmel layer that I am
> using had incorrectly set DEFAULTTUNE = "arm926ejs" which had been setting
> the architecture to "arm926ejste".  They fixed that here:
> https://github.com/linux4sam/meta-atmel/commit/
> 47238062c04ca97c2ea0570576072ad5b46ce261 and according to the commit
> message it should now be building with DEFAULTTUNE (and the resulting
> architecture) set to "armv5te".  However, when I build using my autobuilder
> I am getting an architecture of "armv5e".  From my understanding, this
> means the compiler thinks the processor does not have Thumb support.  I've
> tried "arm926ejs" and "armv5te" for DEFAULTTUNE settings and it hasn't made
> any difference.
>
> I've checked the working directories for a few packages, and previously
> the relevant gcc options were being set to: "-march=armv5te -marm
> -mthumb-interwork -mtune=arm926ej-s".  Now they are being set to:
> "-march=armv5e -marm  -mthumb-interwork".  How do I get it back to building
> with march=armv5te?
>
> Here is the autobuilder configuration that I am using:
>
> [nightly-atmel-demo-fido]
> builders: 'builder1'
> repos: [{'poky':
>             {'repourl':'git://git.yoctoproject.org/poky',
>                  'layerversion':{'core':'meta',
> 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
>              'branch':'fido'}},
>         {'meta-atmel':
>             {'repourl':'git://github.com/linux4sam/meta-atmel.git',
>              'branch':'fido'}},
>         {'meta-openembedded':
>             {'autoinclude':False, 'repourl':'git://git.
> openembedded.org/meta-openembedded',
>              'branch':'fido'}},
>         {'meta-qt5':
>             {'repourl':'git://github.com/meta-qt5/meta-qt5.git',
>              'branch':'fido'}}]
> steps: [{'SetDest':{}},
>         {'CheckOutLayers': {}},
>         {'RunPreamble': {}},
>         {'GetDistroVersion' : {'distro': 'poky'}},
>         {'CreateAutoConf': {'machine': 'at91sam9x5ek', 'SDKMACHINE':
> 'i686', 'distro': 'poky-atmel', 'buildhistory': True, 'packages': 'ipk',
> 'atextappend': 'EXTRA_IMAGE_FEATURES = ""\nDEFAULTTUNE = "armv5te"\n'}},
>         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs':
>             ['meta-atmel', 'meta-qt5', 'meta-openembedded/meta-oe',
> 'meta-openembedded/meta-networking', 'meta-openembedded/meta-python']}},
>         {'BuildImages': {'images': 'atmel-demo-image'}},
>         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['at91sam9x5ek', 'ipk']}}]
> scheduler: [{'nightly-scheduler-atmel-fido' :
>                 {'type':'Nightly',
>                  'hour':'1',
>                  'minute':'15',}}]
>
> The resulting build configuration:
> Build Configuration:
> BB_VERSION        = "1.26.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "at91sam9x5ek"
> DISTRO            = "poky-atmel"
> DISTRO_VERSION    = "1.8.2"
> TUNE_FEATURES     = "arm armv5 thumb dsp"
> TARGET_FPU        = "soft"
> meta
> meta-yocto
> meta-yocto-bsp    = "fido:c9f0a99050ec0050f0dbcd55d0cd2ab18848113f"
> meta-atmel        = "fido:dd595e6e8ec7010cf646a9ca356b2e01f10e274c"
> meta-qt5          = "fido:90919b9d86988e7da01fa2c0a07246b5b5600a5d"
> meta-oe
> meta-networking
> meta-python       = "fido:902964a4da26e46018d2a8d17dcdda1ac4627a39"
>
> TUNE_FEATURES includes "thumb", but the compiler options aren't set for
> armv5te.  I've tried changing the DEFAULTTUNE specification in
> CreateAutoConf to "arm926ejs" and I've had the same results.  How do I get
> the architecture set back correctly for the processor I'm using?
>
> Thanks,
> Bryan Evenson
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bfcfd7c744eb005429d8481
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Using and not using thumb was also controlled not only by =
TUNE_FEATURES (MACHINE defines that) but also by=C2=A0ARM_INSTRUCTION_SET (=
DISTRO defines that).<div><br></div><div>So you weren&#39;t building with t=
humb enabled even when you were seeing armv5te before.</div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 1, 2016 at 5:2=
6 PM, Bryan Evenson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenson@melink=
corp.com" target=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">I&#39;m in the process of upgrading from t=
he dizzy branch to the fido branch, and I&#39;m still a little confused abo=
ut some tune changes that I&#39;m seeing.=C2=A0 I&#39;m using an Atmel AT91=
SAM9G25 processor.=C2=A0 The meta-atmel layer that I am using had incorrect=
ly set DEFAULTTUNE =3D &quot;arm926ejs&quot; which had been setting the arc=
hitecture to &quot;arm926ejste&quot;.=C2=A0 They fixed that here: <a href=
=3D"https://github.com/linux4sam/meta-atmel/commit/47238062c04ca97c2ea05705=
76072ad5b46ce261" rel=3D"noreferrer" target=3D"_blank">https://github.com/l=
inux4sam/<wbr>meta-atmel/commit/<wbr>47238062c04ca97c2ea0570576072a<wbr>d5b=
46ce261</a> and according to the commit message it should now be building w=
ith DEFAULTTUNE (and the resulting architecture) set to &quot;armv5te&quot;=
.=C2=A0 However, when I build using my autobuilder I am getting an architec=
ture of &quot;armv5e&quot;.=C2=A0 From my understanding, this means the com=
piler thinks the processor does not have Thumb support.=C2=A0 I&#39;ve trie=
d &quot;arm926ejs&quot; and &quot;armv5te&quot; for DEFAULTTUNE settings an=
d it hasn&#39;t made any difference.<br>
<br>
I&#39;ve checked the working directories for a few packages, and previously=
 the relevant gcc options were being set to: &quot;-march=3Darmv5te -marm -=
mthumb-interwork -mtune=3Darm926ej-s&quot;.=C2=A0 Now they are being set to=
: &quot;-march=3Darmv5e -marm=C2=A0 -mthumb-interwork&quot;.=C2=A0 How do I=
 get it back to building with march=3Darmv5te?<br>
<br>
Here is the autobuilder configuration that I am using:<br>
<br>
[nightly-atmel-demo-fido]<br>
builders: &#39;builder1&#39;<br>
repos: [{&#39;poky&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://git.yoctoproject.org/poky" rel=3D"noreferrer" target=3D"_bla=
nk">git.<wbr>yoctoproject.org/poky</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;layerver=
sion&#39;:{&#39;core&#39;:&#39;meta&#39;, &#39;yoctobsp&#39;:&#39;meta-yoct=
o-bsp&#39;, &#39;yocto&#39;:&#39;meta-yocto&#39;, &#39;poky&#39;:&#39;meta-=
poky&#39;},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-atmel&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://github.com/linux4sam/meta-atmel.git" rel=3D"noreferrer" targ=
et=3D"_blank">github.com/<wbr>linux4sam/meta-atmel.git</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-openembedded&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;autoinclude&#39;:False, &#3=
9;repourl&#39;:&#39;git://<a href=3D"http://git.openembedded.org/meta-opene=
mbedded" rel=3D"noreferrer" target=3D"_blank">git.<wbr>openembedded.org/met=
a-<wbr>openembedded</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-qt5&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://github.com/meta-qt5/meta-qt5.git" rel=3D"noreferrer" target=
=3D"_blank">github.com/<wbr>meta-qt5/meta-qt5.git</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}}]<br>
steps: [{&#39;SetDest&#39;:{}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CheckOutLayers&#39;: {}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;RunPreamble&#39;: {}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;GetDistroVersion&#39; : {&#39;distro&#39;=
: &#39;poky&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CreateAutoConf&#39;: {&#39;machine&#39;: =
&#39;at91sam9x5ek&#39;, &#39;SDKMACHINE&#39;: &#39;i686&#39;, &#39;distro&#=
39;: &#39;poky-atmel&#39;, &#39;buildhistory&#39;: True, &#39;packages&#39;=
: &#39;ipk&#39;, &#39;atextappend&#39;: &#39;EXTRA_IMAGE_FEATURES =3D &quot=
;&quot;\nDEFAULTTUNE =3D &quot;armv5te&quot;\n&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CreateBBLayersConf&#39;: {&#39;buildprovi=
der&#39; : &#39;yocto&#39;, &#39;layerdirs&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;meta-atmel&#39;, &#39;meta-=
qt5&#39;, &#39;meta-openembedded/meta-oe&#39;, &#39;meta-openembedded/meta-=
<wbr>networking&#39;, &#39;meta-openembedded/meta-<wbr>python&#39;]}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;BuildImages&#39;: {&#39;images&#39;: &#39=
;atmel-demo-image&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;SyncPersistDB&#39; : {&#39;commit&#39; : =
True, &#39;distro&#39;:&#39;poky&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;PublishLayerTarballs&#39;:{}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;PublishArtifacts&#39;: {&#39;artifacts&#3=
9;: [&#39;at91sam9x5ek&#39;, &#39;ipk&#39;]}}]<br>
scheduler: [{&#39;nightly-scheduler-atmel-<wbr>fido&#39; :<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;type&#39;:&#3=
9;Nightly&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;hour&#39=
;:&#39;1&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;minute&#=
39;:&#39;15&#39;,}}]<br>
<br>
The resulting build configuration:<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.26.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-12.04&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot=
;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;at91sam9x5ek&quot=
;<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky-atmel&quot;<=
br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.8.2&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv5 thumb dsp&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;soft&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;fido:<wbr>c9f0a99050ec0050f0dbcd55d0c=
d2a<wbr>b18848113f&quot;<br>
meta-atmel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;fido:<wbr>dd595e6e8ec7010cf=
646a9ca356b2e<wbr>01f10e274c&quot;<br>
meta-qt5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;fido:<wbr>90919b9d8698=
8e7da01fa2c0a07246<wbr>b5b5600a5d&quot;<br>
meta-oe<br>
meta-networking<br>
meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;fido:<wbr>902964a4da26e4601=
8d2a8d17dcdda<wbr>1ac4627a39&quot;<br>
<br>
TUNE_FEATURES includes &quot;thumb&quot;, but the compiler options aren&#39=
;t set for armv5te.=C2=A0 I&#39;ve tried changing the DEFAULTTUNE specifica=
tion in CreateAutoConf to &quot;arm926ejs&quot; and I&#39;ve had the same r=
esults.=C2=A0 How do I get the architecture set back correctly for the proc=
essor I&#39;m using?<br>
<br>
Thanks,<br>
Bryan Evenson<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--047d7bfcfd7c744eb005429d8481--
