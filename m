Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 238FCE00CEC; Thu,  1 Sep 2016 03:34:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA0A8E00CE0
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 03:34:46 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id c15so110142386oig.0
	for <yocto@yoctoproject.org>; Thu, 01 Sep 2016 03:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zJuKnGMV3kqrJhCDF30LV3g9JGYuOENtF2K8hvo1C48=;
	b=OP9fO67rExQn320V/OnWKz1I5QMg8xra/8alZzmBNchO3iKDlKNu7seO+1s6FEoovo
	X7J0kdFxJDiRWzifzDf3pW0JKLIL7m8ZNr9PT/AJ1BkLxRfnq+RmgNtv7rdVYIjiiKTW
	YZBbcfv0OjEFz75tfk37owFp36oOs+YdV5CNgwOMxEDRCxDEQZiVePbwHp12LBhdKfPB
	o4DCrpX9FIi6ymORLNIq8ZmfwOAWTototI2+YWdZU5050jk250ZVTN9Gkv/Wm3+gQQyz
	+bCjgApW+ta/k7R4H+XvZd2J6APbmvgOZLt6MrodWypfZwTsYYGmDQSyyvLFctfHh/pj
	0QgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zJuKnGMV3kqrJhCDF30LV3g9JGYuOENtF2K8hvo1C48=;
	b=nJQP+0LxbqczEriYSNONMGG/DXpJqlX6eARh1FeEbvJQxrXTCd2hO5lwRRyv/9NtWi
	OgduIb9Y55lCcU6IplCbRAnQ0ilVLKWtdU0ZgmEUL0cDC2+HK8PP/aa1nwQAWews0tim
	B0efnCWXgLBFSy+GxZqUkshm0FdXNVsbDMVRCF5ij9IlLrg13KPVkxIR+zWPKFnO50lr
	tfkPLLGzbArvd6eLNbTTtuVWAvF06RF73qP3fil1bBF+TwJ1dvUiN3aIqi5QeQNz515u
	fDuKqlOHnkOjnShaZxM9S9QsG+K92SH9B/Ncijxb1t1s0r1hIv2Q9PUUQmDtTMRb8hFs
	oL2Q==
X-Gm-Message-State: AE9vXwN7QG7kpfwE7cs1PPanDKeZU/ZniVpduOE1JZBH67yq0/9hm5wqCC4tjHDBhttp/PXoo0U5g3IBtcu2RVHR
X-Received: by 10.202.102.208 with SMTP id m77mr12896886oik.24.1472726086127; 
	Thu, 01 Sep 2016 03:34:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.241.11 with HTTP; Thu, 1 Sep 2016 03:34:15 -0700 (PDT)
In-Reply-To: <85bd928a2ecb47663d9a90ca24756f16@herrie.org>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
	<CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
	<87fupkarqt.fsf@posteo.net>
	<85bd928a2ecb47663d9a90ca24756f16@herrie.org>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 1 Sep 2016 13:34:15 +0300
Message-ID: <CAHiDW_GBefiLcDQOgEEPVXeKTQGun8w6n62H33V6W4bvCv6sSA@mail.gmail.com>
To: yoctoproject.org@herrie.org
Cc: Yocto Project <yocto@yoctoproject.org>, Pietro <pulsarpietro@posteo.net>
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Thu, 01 Sep 2016 10:34:50 -0000
Content-Type: multipart/alternative; boundary=001a11c015c437299f053b6fc3d4

--001a11c015c437299f053b6fc3d4
Content-Type: text/plain; charset=UTF-8

On 1 September 2016 at 13:21, Herman van Hazendonk <me@herrie.org> wrote:

> Hi Pietro,
>
> You can override the recipe by adding a recipe for version 3.0.0+ in your
> own layer and making sure your layer has a higher priority in
> bblayers.conf. See for example what we do in our project:
>
> https://github.com/webOS-ports/webos-ports-setup/blob/testin
> g/conf/bblayers.conf
>
> openembedded-core provides ofono 1.1.7 for example with
> https://github.com/openembedded/openembedded-core/tree/
> krogoth/meta/recipes-connectivity/ofono
>
> However we want to use ANOTHER version of ofono (1.1.7 based, but from a
> different repo/project).
>
> So we have our own .bbappend at https://github.com/webOS-ports
> /meta-webos-ports/blob/krogoth/meta-luneos/recipes-connectiv
> ity/ofono/ofono_git.bbappend where we specify the different repo etc to
> use.
>
> This doesn't apply 1:1 in your case, but you could simply add a
> protobuf_3.0.0.bb in your own layer and it should build that instead.
> Just make sure you have your layer at a higher position compared to
> meta-openembedded in your bblayers.conf
>

In the normal case (a simple upgrade to the newest version) the best choice
would be to send a upgrade patch to openembedded-devel list: that way you
never have to maintain it in your own layer.

Jussi

--001a11c015c437299f053b6fc3d4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
 September 2016 at 13:21, Herman van Hazendonk <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:me@herrie.org" target=3D"_blank">me@herrie.org</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Pietro,<br>
<br>
You can override the recipe by adding a recipe for version 3.0.0+ in your o=
wn layer and making sure your layer has a higher priority in bblayers.conf.=
 See for example what we do in our project:<br>
<br>
<a href=3D"https://github.com/webOS-ports/webos-ports-setup/blob/testing/co=
nf/bblayers.conf" rel=3D"noreferrer" target=3D"_blank">https://github.com/w=
ebOS-ports<wbr>/webos-ports-setup/blob/testin<wbr>g/conf/bblayers.conf</a><=
br>
<br>
openembedded-core provides ofono 1.1.7 for example with <a href=3D"https://=
github.com/openembedded/openembedded-core/tree/krogoth/meta/recipes-connect=
ivity/ofono" rel=3D"noreferrer" target=3D"_blank">https://github.com/openem=
bedde<wbr>d/openembedded-core/tree/<wbr>krogoth/meta/recipes-<wbr>connectiv=
ity/ofono</a><br>
<br>
However we want to use ANOTHER version of ofono (1.1.7 based, but from a di=
fferent repo/project).<br>
<br>
So we have our own .bbappend at <a href=3D"https://github.com/webOS-ports/m=
eta-webos-ports/blob/krogoth/meta-luneos/recipes-connectivity/ofono/ofono_g=
it.bbappend" rel=3D"noreferrer" target=3D"_blank">https://github.com/webOS-=
ports<wbr>/meta-webos-ports/blob/krogoth<wbr>/meta-luneos/recipes-connectiv=
<wbr>ity/ofono/ofono_git.bbappend</a> where we specify the different repo e=
tc to use.<br>
<br>
This doesn&#39;t apply 1:1 in your case, but you could simply add a <a href=
=3D"http://protobuf_3.0.0.bb" rel=3D"noreferrer" target=3D"_blank">protobuf=
_3.0.0.bb</a> in your own layer and it should build that instead. Just make=
 sure you have your layer at a higher position compared to meta-openembedde=
d in your bblayers.conf<br></blockquote><div><br></div><div>In the normal c=
ase (a simple upgrade to the newest version) the best choice would be to se=
nd a upgrade patch to=C2=A0<span style=3D"font-size:12.8px">openembedded-de=
vel list: that way you never have to maintain it in your own layer.</span><=
/div><div><br></div><div>Jussi</div><div><br></div></div></div></div>

--001a11c015c437299f053b6fc3d4--
