Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 584E1E00CCC; Thu, 14 Jun 2018 05:16:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8EB1E0084E
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 05:16:12 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id 76-v6so7960978itx.4
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 05:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=C0of1YonjaQBYukO9t+lpNFPxhTFypdmvJvPzP8Sq/8=;
	b=k6WMnoW+Zaw9KbC/BOhzcPvTpRJaK8LjhnC3YpOMNFcvhXq8AhkSkMkXAVb4hmelcH
	w5QwCd57iTfTOXsaXpmidCiVHgj2IPOl8SvmfhNifHsiHS6ryeULmcAb2HTN2VKobQIv
	plTmr3u4oPqmNOeKoRjoOJKs5zZStwxd0Y6ReMSXygRZmFpegagWyCob3GpqKyjd5XCG
	S8wcofxwFXQfdomp+mYd/r1BSErfnX5KhTud8L6l+u3qI052zYlufwiq3yZ6JlSx0D6t
	DqNkPam1MON0tkKleQp39yFaiq6w+fvywiJ+ngqeDmmWkAfvwA11vbO78n3iPdQyHnNN
	1dDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=C0of1YonjaQBYukO9t+lpNFPxhTFypdmvJvPzP8Sq/8=;
	b=IFiJKjj+UZvV+Ola2FGkbGLRfjRQ2NL8MrH/hACKOG+0eSI8E8OYO9CX0L60mMcOrv
	zaTuIyX0LUk3ES4lVKGKf9FVljvHtwiK33DS2GLBaVnvYhhkj2xQ6ZjpT0zn6qxdjWlT
	kZ5xzlgisBjn0OqhjNUNWSDuuXUpBT2XFxpeT12ZNrn8AB325y3/pealMVg6NVBQFtKX
	9ezTq0dM9/+Qi420MNxEuZZlKAMoApEJlj45pWvk+VoZ6Xl2nWHKfYyxuMzLZ0RPUKb4
	gMXcyeFS81ZbuzoFnza920iuRoox/fAGEvDPSwogvQJVOxuzErfm10ONZkAD/amTF9x7
	Cvhg==
X-Gm-Message-State: APt69E1BdyyABoXSeKbXPaGY4U/TopUi1nIqW6Yubs6Gd96JbFtvjCHO
	Y+0X/YnW0wLBhCHyzncxCkS+QsKTh0F/CmN2oAf8
X-Google-Smtp-Source: ADUXVKLfPmJjLy42FwOk/BIphUXGQzIWVdt3Y8w4Y9ZqYYY0EUPpvq7v9AxXaYH5llv7DhOPTXLvkaFnNrdaq1QYXL8=
X-Received: by 2002:a24:8385:: with SMTP id
	d127-v6mr2049789ite.58.1528978571737; 
	Thu, 14 Jun 2018 05:16:11 -0700 (PDT)
MIME-Version: 1.0
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Thu, 14 Jun 2018 15:16:00 +0300
Message-ID: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: bbappend extra SRC_URI ignored
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
X-List-Received-Date: Thu, 14 Jun 2018 12:16:13 -0000
Content-Type: multipart/alternative; boundary="000000000000a33ed9056e9910bf"

--000000000000a33ed9056e9910bf
Content-Type: text/plain; charset="UTF-8"

HI,

I'm working on meta-tegra layer and I'd like to append a recipe. The
original recipe looks like this:
https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb
<https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb>

I've made a tegra-tools_28.2.0.bbappend to change the default PM_CONFIG
DEFAULT from 2 to 3 to get max performance in nvpmodel.conf configuration
file.

```
FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"
SRC_URI_prepend_tegra186 += "file://nvpmodel.conf "

do_install_append_tegra186() {
    install -d ${D}${sysconfdir}
    install -m 0755 ${B}/usr/sbin/nvpmodel ${D}${sbindir}/
    install -m 0644 ${WORKDIR}/nvpmodel.conf ${D}${sysconfdir}/nvpmodel.conf
    install -d ${D}${sysconfdir}/init.d
    install -m 0644 ${S}/nvpmodel.init ${D}${sysconfdir}/init.d/nvpmodel
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${S}/nvpmodel.service ${D}${systemd_system_unitdir}
}
```
Would you have any idea why the nvpmodel.conf prepend is ignored and the
file never ends up in ${WORKDIR}.

I've made sure the paths are correct. nvpmodel.conf exists and if I put a
typo like nvpmodel.conf_blabla bitbake throws a warning that it cannot find
the file. So I'm sure the file is found but somehow bitbake ignores it.

I'm having this issue with this one single recipe only, none of the others
in my build system so I'm a bit puzzled.

Thanks,
-Damien

--000000000000a33ed9056e9910bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI,<div><div><br></div><div>I&#39;m working on meta-tegra =
layer and I&#39;d like to append a recipe. The original recipe looks like t=
his:</div><div><a href=3D"https://github.com/madisongh/meta-tegra/blob/rock=
o-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb">https://githu=
b.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/=
tegra-tools_28.2.0.bb=C2=A0</a><br></div><div><br></div><div>I&#39;ve made =
a tegra-tools_28.2.0.bbappend to change the default PM_CONFIG DEFAULT from =
2 to 3 to get max performance in <span style=3D"background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline">nvpmodel.conf</span> configuration file.</div><div><br><=
/div><div>```</div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files=
/tegra186:&quot;</div><div>SRC_URI_prepend_tegra186 +=3D &quot;file://nvpmo=
del.conf &quot;</div><div><br></div><div>do_install_append_tegra186() {</di=
v><div>=C2=A0 =C2=A0 install -d ${D}${sysconfdir}</div><div>=C2=A0 =C2=A0 i=
nstall -m 0755 ${B}/usr/sbin/nvpmodel ${D}${sbindir}/</div><div>=C2=A0 =C2=
=A0 install -m 0644 ${WORKDIR}/nvpmodel.conf ${D}${sysconfdir}/nvpmodel.con=
f</div><div>=C2=A0 =C2=A0 install -d ${D}${sysconfdir}/init.d</div><div>=C2=
=A0 =C2=A0 install -m 0644 ${S}/nvpmodel.init ${D}${sysconfdir}/init.d/nvpm=
odel</div><div>=C2=A0 =C2=A0 install -d ${D}${systemd_system_unitdir}</div>=
<div>=C2=A0 =C2=A0 install -m 0644 ${S}/nvpmodel.service ${D}${systemd_syst=
em_unitdir}</div><div>}</div><div>```</div><div>Would you have any idea why=
 the nvpmodel.conf prepend is ignored and the file never ends up in ${WORKD=
IR}.=C2=A0</div><div><br></div><div>I&#39;ve made sure the paths are correc=
t. nvpmodel.conf exists and if I put a typo like nvpmodel.conf_blabla bitba=
ke throws a warning that it cannot find the file. So I&#39;m sure the file =
is found but somehow bitbake ignores it.</div><div><br></div><div>I&#39;m h=
aving this issue with this one single recipe only, none of the others in my=
 build system so I&#39;m a bit puzzled.</div></div><div><br></div><div>Than=
ks,</div><div>-Damien</div><div><br></div><div><br></div></div>

--000000000000a33ed9056e9910bf--
