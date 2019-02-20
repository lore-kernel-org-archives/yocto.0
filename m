Return-Path: <joao.jfgoncalves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6444DE00BB7; Wed, 20 Feb 2019 15:50:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (joao.jfgoncalves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA46E00546
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 15:50:56 -0800 (PST)
Received: by mail-it1-f170.google.com with SMTP id x131so19776842itc.3
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 15:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ndXkIiRDlMndWdAoOkQIgvi+3DxHnv5C2TJJjyrkX7E=;
	b=OA8xydKvueK5OEPKqzaR7JRnWIs7u1kelOO10OzbYrWea3bDc9jLoaGGzWTxfAd2Fb
	+Bhvns9ch2CNSwpjCeMUAzfHzPzivBBBBCspUtSWZ1HC2zROuDvknLjNhqN24QkhOOPM
	OPCq8xxaXy1lH7zKOU32R7V2RgyG5ENGerY6oK0Z35fveT9FxTBzQzxYtp3p4HivzYkP
	9KOk/UFuX2VJJcfqdOdWIYpO0VeghRXutHNMfQ9VUsDWIvg1G+ghEfnQocbnphuY13g6
	MU7LNbLCwcMS++i22QddB4xU6cdMSDLevSfKwW5uvSBjRdOK3Tw9WAN4OCHhvYM1wPPC
	ihRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ndXkIiRDlMndWdAoOkQIgvi+3DxHnv5C2TJJjyrkX7E=;
	b=gpOhMVfgbYfe4ASN43fklrrCptBftuhfjL1PA2JkZG+6Iu1qzjirXh0XABIGXwP1vd
	U69g6e6PiZ+65MdFz1Xi4BrwBHSzYV+nqnHwsYB/OMCHWje797eTMCaDeLNXoCNtl6md
	B6ajIkEb+HkVY9rsMf8wWlW6XEnbNSvVLy8b0aDvKa5TcEq76Faij7N+L9SIWWXEZEi+
	YcR95ueeLkPt8+xhdWnrbQOMrEVqA5E0FeJBFbLjqreYrdT3jkZbtMV7Yn7KAiWQlm1S
	0DJkuLi4sKyauooMUfGQVCUiDMuZoG4kZldx6rpyKH6TaqyLfaSQiDWlR6w5p0sRuEAi
	7b4w==
X-Gm-Message-State: AHQUAuYnPu9euj6xccBJr+EAuRqC1fA6ElAYbKWEttmCCClpedQ0z0NK
	Iwz0O+mFbaM+ZqOsnw3qnQYFxoRpSsfw2pmTo/yLmWOb
X-Google-Smtp-Source: AHgI3IZwsHVndokpPKY6pJW/aBEAmz7lSqqyodQWfJv4/MB0X/jHwa2TjKhbESOnKDf+2i2wVz6eV88nGZqyaQfR1xY=
X-Received: by 2002:a05:660c:44e:: with SMTP id
	d14mr6133110itl.99.1550706655887; 
	Wed, 20 Feb 2019 15:50:55 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?Sm/Do28gR29uw6dhbHZlcw==?= <joao.jfgoncalves@gmail.com>
Date: Wed, 20 Feb 2019 23:50:45 +0000
Message-ID: <CAHXEV+mfcxpGekquU2NFxLcmtw1gTAtp9eR3FYsXfdURW9YyfQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: qemu segmentation fault on gobject-introspection
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
X-List-Received-Date: Wed, 20 Feb 2019 23:50:57 -0000
Content-Type: multipart/alternative; boundary="00000000000060081105825c07da"

--00000000000060081105825c07da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
when trying to migrate my build to master branch of oe layers I got this
qemu segmentation fault during gobject-introspection.
Does anyone have any clue on this?

Thank you,
Jo=C3=A3o Gon=C3=A7alves

| qemu: uncaught target signal 11 (Segmentation fault) - core dumped
| Segmentation fault (core dumped)
| If the above error message is about missing .so libraries, then setting
up GIR_EXTRA_LIBS_PATH in the recipe should help.
| (typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
| Command
'['/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-lin=
ux-gnueabi/gobject-introspection/1.58.3-r0/build/g-ir-scanner-qemuwrapper',
'/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux=
-gnueabi/gobject-introspection/1.58.3-r0/build/tmp-introspect5euoldbk/GLib-=
2.0',
'--introspect-dump=3D/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf=
-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/build/tmp-intr=
ospect5euoldbk/functions.txt,/home/joao/poky_imx6/build/tmp-glibc/work/cort=
exa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/build/=
tmp-introspect5euoldbk/dump.xml']'
returned non-zero exit status 1.
| ninja: build stopped: subcommand failed.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-=
gnueabi/gobject-introspection/1.58.3-r0/temp/log.do_compile.20894)
ERROR: Task
(/home/joao/poky_imx6/poky/meta/recipes-gnome/gobject-introspection/gobject=
-introspection_1.58.3.bb:do_compile)
failed with exit code '1'

--00000000000060081105825c07da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,=C2=A0</div><=
div>when trying to migrate my build to master branch of oe=C2=A0layers I go=
t this qemu=C2=A0segmentation fault during=C2=A0gobject-introspection.</div=
><div>Does anyone have any clue on this?</div><div><br></div><div>Thank you=
,</div><div>Jo=C3=A3o Gon=C3=A7alves</div><div><br></div><div>| qemu: uncau=
ght target signal 11 (Segmentation fault) - core dumped</div><div>| Segment=
ation fault (core dumped)</div><div>| If the above error message is about m=
issing .so libraries, then setting up GIR_EXTRA_LIBS_PATH in the recipe sho=
uld help.</div><div>| (typically like this: GIR_EXTRA_LIBS_PATH=3D&quot;${B=
}/something/.libs&quot; )</div><div>| Command &#39;[&#39;/home/joao/poky_im=
x6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-in=
trospection/1.58.3-r0/build/g-ir-scanner-qemuwrapper&#39;, &#39;/home/joao/=
poky_imx6/build/tmp-glibc/work/cortexa9t2hf-neon-angstrom-linux-gnueabi/gob=
ject-introspection/1.58.3-r0/build/tmp-introspect5euoldbk/GLib-2.0&#39;, &#=
39;--introspect-dump=3D/home/joao/poky_imx6/build/tmp-glibc/work/cortexa9t2=
hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/build/tmp-in=
trospect5euoldbk/functions.txt,/home/joao/poky_imx6/build/tmp-glibc/work/co=
rtexa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/buil=
d/tmp-introspect5euoldbk/dump.xml&#39;]&#39; returned non-zero exit status =
1.</div><div>| ninja: build stopped: subcommand failed.</div><div>| WARNING=
: exit code 1 from a shell command.</div><div>| ERROR: Function failed: do_=
compile (log file is located at /home/joao/poky_imx6/build/tmp-glibc/work/c=
ortexa9t2hf-neon-angstrom-linux-gnueabi/gobject-introspection/1.58.3-r0/tem=
p/log.do_compile.20894)</div><div>ERROR: Task (/home/joao/poky_imx6/poky/me=
ta/recipes-gnome/gobject-introspection/gobject-introspection_1.58.3.bb:do_c=
ompile) failed with exit code &#39;1&#39;</div></div></div></div>

--00000000000060081105825c07da--
