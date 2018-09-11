Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C27E8E0090A; Tue, 11 Sep 2018 08:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.222.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
	[209.85.222.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 424A7E0053F
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 08:46:48 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id f4-v6so21033963uao.10
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 08:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Q8nnB7YLQD8kOK+cd0LdPdrmu+52OpjvJJmwk4qlMYg=;
	b=LclddG/1J2t6k6wyXwSSgLLKU5UzxZaXBZ49vtyEA9i/vBTFIAonDVycrANO5cvSQO
	MYzC+G2lAt1A8JRBtfOVuZXk7nYscG8ni2DJlTGi0myLAoh6gBrd53BpogmsuiedPY+w
	03ZARq2eFwSllPv+TLM0VlYVBq3uh4xRTLnfGN0P0u36a4RgQsuf8p4PEdbN4L424nEG
	8FzOtSQ0Jb8t2AxP4nITwa2bpvzZjeXk1yjW+L+Y9X6XEsgErVkWC98SijWqPTlHWpP3
	2IL/ye2OJbK5X6EaI1Cx9hXvpWwShdyZNg/6Dy5jst6LrvLKBK7PsrfQj649ftXHi20n
	VDNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Q8nnB7YLQD8kOK+cd0LdPdrmu+52OpjvJJmwk4qlMYg=;
	b=azIzBUJIpyUEMboj0BR5N7nwsUQwtjoyO+f9xKDuQ1o1heDz4JeKHqOXAbnCTjhTCZ
	/yHCI+8mtjXMQcwkVmJIQ7glL3zNvwLXU3CSdF6UMaAk8TyafFDV/OEeqnZ5Nqkia0ZJ
	q6bGXy2PQsIG9SkfOr0jNXoVztVe6TAXVEXl28S4ghSJ3dlRO944ncCWMW84jTFRnqRb
	td7VFlscEZIFFGnmJeiMLlg1wPDwRXwrOA7Df0d6pQlqvVPo/Te5Q+YxC+stsTlLUFIi
	80/l9FbTiA27wGv8Ze933/+q5xkisqdy/bdWom5eI3yzbbrKSd4KJYghoLT2817JDrCn
	hngg==
X-Gm-Message-State: APzg51CfVqDTR69zUFS6hMo4YdL+xE/bknzJarBE6bg4Fwl11C/cioqp
	NHjJeI8X4E/ZaKiZE/KBC6MXu14IMp7LDqk22hyB6Q==
X-Google-Smtp-Source: ANB0Vdbgnyh3Mk1DWj2mSYXa85MXMq2JV7i2yB6CVy0Hfz5B6A8mVfXrAh/0MRFm2XzRexfmTYqJfyJgISDW0wJuRNs=
X-Received: by 2002:ab0:19c2:: with SMTP id r2-v6mr8472963uai.75.1536680807975;
	Tue, 11 Sep 2018 08:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>
In-Reply-To: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 11 Sep 2018 16:45:41 +0100
Message-ID: <CAK18fxF2pNuP1Jx_F9QBJFTO3WvJp2m6AHEJDcHCnhSDRqEEtQ@mail.gmail.com>
To: idealsim@laposte.net
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberry]rpi-config
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
X-List-Received-Date: Tue, 11 Sep 2018 15:46:49 -0000
Content-Type: multipart/alternative; boundary="000000000000b167a205759a614c"

--000000000000b167a205759a614c
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 11, 2018 at 4:41 PM idealsim <idealsim@laposte.net> wrote:

> Hi i'm trying to build an image for a raspberry-pi 3 on branch sumo but i
> have an error when i try to include rpi-config. See the issue under :
>
> ERROR: Task do_populate_sdk in
>
> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-xxx/recipes-xxxx/images/
> console-image-xxxx.bb
> rdepends upon non-existent task do_package_write_rpm in
>
> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-raspberrypi/recipes-bsp/bootfiles/
> rpi-config_git.bb
> ERROR: Command execution failed: 1
>

Is your image installing rpi-config?
--
Andrei Gherzan

--000000000000b167a205759a614c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue=
, Sep 11, 2018 at 4:41 PM idealsim &lt;<a href=3D"mailto:idealsim@laposte.n=
et">idealsim@laposte.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Hi i&#39;m trying to build an image for a raspberry-pi 3 on branch sum=
o but i=C2=A0 <br>
have an error when i try to include rpi-config. See the issue under :<br>
<br>
ERROR: Task do_populate_sdk in=C2=A0 <br>
/media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-xxx/recipes-x=
xxx/images/<a href=3D"http://console-image-xxxx.bb" rel=3D"noreferrer" targ=
et=3D"_blank">console-image-xxxx.bb</a>=C2=A0 <br>
rdepends upon non-existent task do_package_write_rpm in=C2=A0 <br>
/media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-raspberrypi/r=
ecipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"noreferrer=
" target=3D"_blank">rpi-config_git.bb</a><br>
ERROR: Command execution failed: 1<br></blockquote><div><br></div>Is your i=
mage installing=C2=A0<span class=3D"gmail-gr_ gmail-gr_24 gmail-gr-alert gm=
ail-gr_spell gmail-gr_inline_cards gmail-gr_run_anim gmail-ContextualSpelli=
ng gmail-ins-del gmail-multiReplace" id=3D"gmail-24" style=3D"display:inlin=
e;border-bottom:2px solid transparent;background-repeat:no-repeat">rpi</spa=
n>-config?<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</div>Andrei Gherzan=C2=A0</=
div></div></div></div></div></div></div>

--000000000000b167a205759a614c--
