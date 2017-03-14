Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9421DE00939; Tue, 14 Mar 2017 02:20:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56624E0050B
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 02:20:15 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id m27so10245888iti.1
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 02:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=bbV+HPvGuH8fAEv8UB0b3DDqWMMhkEZC/HDo8+P+yh8=;
	b=pCNYd70JIdyOJW0v5ek8XnUHItl0/3As+7xFgtMDN4yCOrUw0K44fhko4jzC05YvEh
	G3mZrgsANYdddMx+a5HhkN3xQyG2y4GKas/YtsMvOW1s8dzHSNpb3JYizPIb+2Pcfjoo
	mYaHl7vvMzZDyxjJ6Vhdu+BmuBt9fpYQIEdG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bbV+HPvGuH8fAEv8UB0b3DDqWMMhkEZC/HDo8+P+yh8=;
	b=eBr8ecbaOGH254JrSg658Jd/+OFy6UWf6WQxOIR+XF/DKkadVTDgZPtyvTOLxXCLcB
	lWqL4gaq33df+iG6yIQ8y6bBqBKHiCi1fad5C1oJlOIPaujJuxby4DYKjPSC4VR4YXek
	P2So0BlP0/D5C1tEpf8ufoRMicjKxlMDYWV8SqQ2ICsWgholwsPsTblc7xe8vrBQ70O8
	3qMYjXB2IkeY1vXXCHkKaVmUxqQbHjG1GMwplp/LAiDp82M2cdttuPg357hizbExMoSR
	GKJDRfIyj6deC6nKhqtVz1DmC6apbb+lyNnFgU8OsTOSSRDjA45ZOioNP2XCa5JqMg/F
	kzzg==
X-Gm-Message-State: AFeK/H3LK4qsrhKxN31Cu2GAHolcVyO/b5R0sRduQVZbqAc/8JMr8QVwlX1ksf6CfVNjuUl3EBafDGRpMoBGpQ==
X-Received: by 10.36.134.65 with SMTP id u62mr14345131itd.34.1489483215035;
	Tue, 14 Mar 2017 02:20:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Tue, 14 Mar 2017 02:20:14 -0700 (PDT)
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Tue, 14 Mar 2017 14:50:14 +0530
Message-ID: <CALDHXteTtgxuKk_6iO4c8GhGqzTo_DVHS7jAB6tGijnY5ivORA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: core-image-minimal-xfce error
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
X-List-Received-Date: Tue, 14 Mar 2017 09:20:18 -0000
Content-Type: multipart/alternative; boundary=94eb2c088fb8ee7381054aad5536

--94eb2c088fb8ee7381054aad5536
Content-Type: text/plain; charset=UTF-8

Hi everybody,
I am getting some errors in building of *core-image-minimal-xfce *image.

I am using ubuntu 14.04 build system and Yocto 2.1.

I added the meta-openembedded layer into poky  and configured the
bblayers.con ffile as follows.


 POKY_BBLAYERS_CONF_VERSION = "2"
  4
  5 BBPATH = "${TOPDIR}"
  6 BBFILES ?= ""
  7
  8 BBLAYERS ?= " \









* 9   /home/mistral/yocto/poky/meta \ 10
/home/mistral/yocto/poky/meta-poky \ 11
/home/mistral/yocto/poky/meta-yocto-bsp \ 12
/home/mistral/yocto/poky/meta-openembedded/meta-oe \ 13
/home/mistral/yocto/poky/meta-openembedded/meta-gnome \ 14
/home/mistral/yocto/poky/meta-openembedded/meta-multimedia \ 15
/home/mistral/yocto/poky/meta-openembedded/meta-python \ 16
/home/mistral/yocto/poky/meta-openembedded/meta-xfce \ 17   "*

i am getting following error after *bitbake*




*core-image-minimal-xfceERROR: ExpansionError during parsing
/home/mistral/yocto/poky/meta-openembedded/meta-xfce/recipes-xfce/xfce4-power-manager/xfce4-power-manager_1.6.0.bb
<http://xfce4-power-manager_1.6.0.bb>: Failure expanding variable
PACKAGECONFIG, expression was ${@bb.utils.filter('DISTRO_FEATURES',
'systemd', d)} which triggered exception AttributeError: 'module' object
has no attribute 'filter'*
What is the problem and how to solve this problem  ?

--94eb2c088fb8ee7381054aad5536
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi everybody,<br></div>I am getti=
ng some errors in building of <b>core-image-minimal-xfce </b>image.<br><br>=
</div>I am using ubuntu 14.04 build system and Yocto 2.1.<br><br></div><div=
>I added the meta-openembedded layer into poky=C2=A0 and configured the bbl=
ayers.con ffile as follows.<br><br></div><br>=C2=A0POKY_BBLAYERS_CONF_VERSI=
ON =3D &quot;2&quot;<br>=C2=A0 4 <br>=C2=A0 5 BBPATH =3D &quot;${TOPDIR}&qu=
ot;<br>=C2=A0 6 BBFILES ?=3D &quot;&quot;<br>=C2=A0 7 <br>=C2=A0 8 BBLAYERS=
 ?=3D &quot; \<br>=C2=A0<b> 9=C2=A0=C2=A0 /home/mistral/yocto/poky/meta \<b=
r>=C2=A010=C2=A0=C2=A0 /home/mistral/yocto/poky/meta-poky \<br>=C2=A011=C2=
=A0=C2=A0 /home/mistral/yocto/poky/meta-yocto-bsp \<br>=C2=A012=C2=A0=C2=A0=
 /home/mistral/yocto/poky/meta-openembedded/meta-oe \<br>=C2=A013=C2=A0=C2=
=A0 /home/mistral/yocto/poky/meta-openembedded/meta-gnome \<br>=C2=A014=C2=
=A0=C2=A0 /home/mistral/yocto/poky/meta-openembedded/meta-multimedia \<br>=
=C2=A015=C2=A0=C2=A0 /home/mistral/yocto/poky/meta-openembedded/meta-python=
 \<br>=C2=A016=C2=A0=C2=A0 /home/mistral/yocto/poky/meta-openembedded/meta-=
xfce \<br>=C2=A017=C2=A0=C2=A0 &quot;<br></b><br><br></div>i am getting fol=
lowing error after <b>bitbake</b> <b>core-image-minimal-xfce<br><br><br>ERR=
OR: ExpansionError during parsing /home/mistral/yocto/poky/meta-openembedde=
d/meta-xfce/recipes-xfce/xfce4-power-manager/<a href=3D"http://xfce4-power-=
manager_1.6.0.bb">xfce4-power-manager_1.6.0.bb</a>: Failure expanding varia=
ble PACKAGECONFIG, expression was ${@bb.utils.filter(&#39;DISTRO_FEATURES&#=
39;, &#39;systemd&#39;, d)} which triggered exception AttributeError: &#39;=
module&#39; object has no attribute &#39;filter&#39;<br><br></b></div>What =
is the problem and how to solve this problem=C2=A0 ?<br><br><br><div><div><=
div><b><br></b></div></div></div></div>

--94eb2c088fb8ee7381054aad5536--
