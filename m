Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F090E00EDC; Fri, 16 Feb 2018 07:56:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEDE4E00DD9
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 07:56:26 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id d10so2356024itj.2
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 07:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=QwRupGqYrNIK8DbgZtNGdNpz0mEEvu1dLpI7275H4X0=;
	b=e2qVmd0w+0ozwtMrF9uVEkaHprtNYRqko9TyAuKINqFjeIn1Cu37yiePmRODVDKaoW
	zCuC4TBDm6s2YAgmdatuq0OhL65hC5GLe8H6j+ESdfiadx0srnhAJOgWnf5tUVNlY+77
	3cJgHx3NmuL9ktjjQ1bKQ+y7Es3v94MXoZ4kI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QwRupGqYrNIK8DbgZtNGdNpz0mEEvu1dLpI7275H4X0=;
	b=PPCc3Nd6GDphqeZyO5obIJIENjPjaVVgpNF/nki8zInx5xc4j0FhCgFEOnck+A+5wg
	tW2m7S8pKacTvBEn3P+ZqS175hNUQNALD1ZhuySVcXf37XR3No6xea3DQzrXss5wgOP2
	oJywzBRRxL36SNxGpgDm4B8Z/cYVVJiIQgB/4daSaddqnb/mYg+Bu4gSo08IjvceA8t0
	AUE7Ndvd4lMyFCD0io3nbS0CafxKqEUTKAO0ii8Sy3lulU5J8tNUbfLsierTLD8nUQTq
	CShGfo5cb72sw/Munukf+pVfgX6u1huvY/9KagiI3stGLdF9EQdOs+DOgKwKSK0JRkeS
	gYkQ==
X-Gm-Message-State: APf1xPD9isgMP1A2+NeUaUO35cJxNAa7L5tyMrhDCRKbxFKobExZ+l9e
	qZgdBENwBRIea6QI/pKuUb21qUjwnpdn+YvMd+ebhpgs
X-Google-Smtp-Source: AH8x225VxgudkoDU0C1bh8e4TO7Zw/V63xMRnEea78ELKzCK4SJRN2RjG2FWXpp0eAOYSwAT3V8ZR0II+SHvwAYPyEw=
X-Received: by 10.36.127.142 with SMTP id r136mr8668668itc.26.1518796585543;
	Fri, 16 Feb 2018 07:56:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Fri, 16 Feb 2018 07:56:25 -0800 (PST)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 16 Feb 2018 16:56:25 +0100
Message-ID: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Removing busybox completely from the generated image
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
X-List-Received-Date: Fri, 16 Feb 2018 15:56:28 -0000
Content-Type: multipart/alternative; boundary="001a1147c2a6f7c70a05655662d3"

--001a1147c2a6f7c70a05655662d3
Content-Type: text/plain; charset="UTF-8"

Hello forum!

I'm trying to build a yocto image without busybox and without any busybox
applet deployed.

I have tried that configuring my distro.conf file in this way:

    DISTRO_FEATURES_remove = " busybox"
    VIRTUAL-RUNTIME_base-utils = ""
    PREFERRED_PROVIDER_virtual/base-utils = ""

Nonetheless, busybox binary and two related applets (syslog and udhcpc) are
installed in the generated image:

    $ rpm -qa | grep busybox
    busybox-syslog-1.24.1-r0.corei7_64
    busybox-1.24.1-r0.corei7_64
    busybox-udhcpc-1.24.1-r0.corei7_64

I have tried disabling syslog applet appending to my distro.conf file:

    VIRTUAL-RUNTIME_syslog ?= ""

But syslogd applet is still installed:

    # ls -l /sbin/syslogd
    lrwxrwxrwx 1 root root 19 Feb 15 14:03 /sbin/syslogd ->
/bin/busybox.nosuid

Is there some way to remove busybox completely from the generated image?

Thank you in advance! :-)

--001a1147c2a6f7c70a05655662d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello forum!</div><div><br></div><div>I&#39;m trying =
to build a yocto image without busybox and without any busybox applet deplo=
yed.</div><div><br></div><div>I have tried that configuring my distro.conf =
file in this way:</div><div><br></div><div>=C2=A0 =C2=A0 DISTRO_FEATURES_re=
move =3D &quot; busybox&quot;<br></div><div>=C2=A0 =C2=A0 VIRTUAL-RUNTIME_b=
ase-utils =3D &quot;&quot;<br></div><div>=C2=A0 =C2=A0 PREFERRED_PROVIDER_v=
irtual/base-utils =3D &quot;&quot;<br></div><div><br></div><div>Nonetheless=
, busybox binary and two related applets (syslog and=C2=A0udhcpc) are insta=
lled in the generated image:</div><div><br></div><div>=C2=A0 =C2=A0 $ rpm -=
qa | grep busybox</div><div><div>=C2=A0 =C2=A0 busybox-syslog-1.24.1-r0.cor=
ei7_64</div><div>=C2=A0 =C2=A0 busybox-1.24.1-r0.corei7_64</div><div>=C2=A0=
 =C2=A0 busybox-udhcpc-1.24.1-r0.corei7_64</div></div><div><br></div><div>I=
 have tried disabling syslog applet appending to my distro.conf file:</div>=
<div><br></div><div>=C2=A0 =C2=A0=C2=A0<span style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline">VIRTUAL-RU=
NTIME_syslog ?=3D &quot;&quot;</span></div><div><br></div><div>But syslogd =
applet is still installed:<br></div><div><br></div><div><div>=C2=A0 =C2=A0 =
# ls -l /sbin/syslogd=C2=A0</div><div>=C2=A0 =C2=A0 lrwxrwxrwx 1 root root =
19 Feb 15 14:03 /sbin/syslogd -&gt; /bin/busybox.nosuid</div></div><div><br=
></div><div>Is there some way to remove busybox completely from the generat=
ed image?</div><div><br></div><div>Thank you in advance! :-)</div><div><br>=
</div><div><br></div>
</div>

--001a1147c2a6f7c70a05655662d3--
