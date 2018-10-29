Return-Path: <flowers.joseph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F218E00C12; Mon, 29 Oct 2018 12:33:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5D56E00BC8
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 12:33:57 -0700 (PDT)
Received: by mail-it1-f180.google.com with SMTP id t4-v6so2592392itf.1
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 12:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=I6spG27YylnTJPdZkfrkGtrKat2WYygAFDdMDzLV05Q=;
	b=bc0si797GoKRalk45vgd5xcYEIgngvObA7BYI6AOdb6XIw0RDYZlozr84Ljt7xgZZn
	GZMOy/ps8LvG2c42+cnvbhilHzinziis2LvSfO3Gz9XTDN+x1iFUFwhvd/odeNlt8ZPC
	8VzNAyxjAjMfc/4ZlIo+BeVDrYnPkXylB2YkW+jfJUU33M/ky86FvJwIqwfCrqb22Cm5
	J+2NBqwWnmxZwOw3xRIBStp9Aj9sFAmLpgpm/fAmh3GuP8+uQ0YpRG/wB8mjKNwZlpt4
	c86MEukn4t3IVxEzBQAMEp4Ayw7fvZqI9NyaHf+0y1PnPUVDuatrjBhdVYLgUe7/dbgP
	bsNQ==
X-Gm-Message-State: AGRZ1gJQTt89rSQ3VPX0KMwbx0LpDcC8Mt/la4q9vpnKgH9qMLhQIdO+
	w3XNw944ag/XYbl1smlDbhjgX6pwN3GvjlFmLg==
X-Google-Smtp-Source: AJdET5dhJW6ddPIZU4LLoVKfGek8qOGqWhr8PYB8fTZLkUS2yfNp3IqwR9saq85gUcOUFk80Xk98z0V7oliTpvvZKnc=
X-Received: by 2002:a02:9bac:: with SMTP id
	p41-v6mr10579060jak.1.1540841637003; 
	Mon, 29 Oct 2018 12:33:57 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
	<CAJTo0LbZTFEEeaZ1hn-7D5XJnurXBDK6FRMT-79wJ8rMWTNicA@mail.gmail.com>
	<CA+4=ZEMiTA8OZSqibcnfU=_POt8+68hwcx9EGX7Ahy2R6TZOiA@mail.gmail.com>
	<CAJTo0LY+hMQgq4U6caqvChq4HUhj0P9OE+rD1ZGCgCH59oYP4Q@mail.gmail.com>
In-Reply-To: <CAJTo0LY+hMQgq4U6caqvChq4HUhj0P9OE+rD1ZGCgCH59oYP4Q@mail.gmail.com>
From: Joe Flowers <joe.flowers@nofreewill.com>
Date: Mon, 29 Oct 2018 15:33:47 -0400
Message-ID: <CA+4=ZENGPKV6hQbyQ_o3GEtsmuAnFsGhPFHv20iSRODgba=LLA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Mon, 29 Oct 2018 19:33:58 -0000
Content-Type: multipart/alternative; boundary="0000000000006dc5280579632686"

--0000000000006dc5280579632686
Content-Type: text/plain; charset="UTF-8"

HI Ross,

It still doesn't work.


local.conf
https://pastebin.com/2Ng0wSCi


log.do_configure.27655
https://pastebin.com/4EX9vqmK


config.log
https://pastebin.com/DY2FnM7w


Thanks for trying to help me.

Joe
----------------


On Mon, Oct 29, 2018 at 11:43 AM Burton, Ross <ross.burton@intel.com> wrote:

> x11 is in the default DISTRO_FEATURES for poky, so you don't need to add
> that.
>
> If core-image-x11 works then core-image-sato should build fine.  Try
> deleting your tmp/ and trying again, if that doesn't work then
> pastebin both temp/log.do_configure and config.log from the recipe
> that is failing (matchbox-panel).
>
> Ross
> On Mon, 29 Oct 2018 at 13:21, Joe Flowers <joe.flowers@nofreewill.com>
> wrote:
> >
> > Thanks, Ross.
> >
> > 1.
> > Both of these commands worked:
> >
> > MACHINE=wandboard bitbake core-image-x11
> > MACHINE=wandboard bitbake gtk+3
> >
> > 2.
> > I've attached my local.conf.
> >
> > If the attachment does not go through, then I will copy and paste it
> into my next message.
> >
> > Thanks!
> >
> > Joe
> > -------------------------------
> >
> >
> > On Mon, Oct 29, 2018 at 7:54 AM Burton, Ross <ross.burton@intel.com>
> wrote:
> >>
> >> Can you share your local.conf?  Does bitbake gtk+3 work?
> >>
> >> Ross
> >> On Mon, 29 Oct 2018 at 06:42, Joe Flowers <joe.flowers@nofreewill.com>
> wrote:
> >> >
> >> > Hello everyone,
> >> >
> >> > 1.
> >> > I am trying to build a core-image-sato image for a WandBoard but am
> getting stuck at this error message:
> >> >
> >> > "| No package 'gdk-x11-3.0' found"
> >> >
> >> > See below for more details.
> >> >
> >> >
> >> > 2.
> >> > I have grepped this list's archives and run into someone with the
> same problem, but a solution was never included in the thread.
> >> >
> >> >
> https://lists.yoctoproject.org/pipermail/yocto/2017-December/039149.html
> >> >
> >> >
> >> > Help please.
> >> >
> >> > Joe
> >> >
> >> > ------------------------------
> >> >
> >> > Command
> >> >
> >> > MACHINE=wandboard bitbake core-image-sato
> >> >
> >> > produces this error message:
> >> >
> >> > ...
> >> > ...
> >> > | checking for pkg-config...
> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native/usr/bin/pkg-config
> >> > | configure: WARNING: using cross tools not prefixed with host triplet
> >> > | checking pkg-config is at least version 0.9.0... yes
> >> > | checking for glib-2.0
> >> > |                   gmodule-export-2.0
> >> > |                   x11
> >> > |                   gdk-x11-3.0
> >> > |                   gtk+-3.0... no
> >> > | configure: error: Package requirements (glib-2.0
> >> > |                   gmodule-export-2.0
> >> > |                   x11
> >> > |                   gdk-x11-3.0
> >> > |                   gtk+-3.0) were not met:
> >> > |
> >> > | No package 'gdk-x11-3.0' found
> >> > |
> >> > | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> >> > | installed software in a non-standard prefix.
> >> > |
> >> > | Alternatively, you may set the environment variables
> MATCHBOX_PANEL_CFLAGS
> >> > | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
> >> > | See the pkg-config man page for more details.
> >> > | NOTE: The following config.log files may provide further
> information.
> >> > | NOTE:
> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.log
> >> > | ERROR: configure failed
> >> > | WARNING: exit code 1 from a shell command.
> >> > | ERROR: Function failed: do_configure (log file is located at
> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.40754)
> >> > ERROR: Task
> (/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure)
> failed with exit code '1'
> >> > NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn't need
> to be rerun and 1 failed.
> >> >
> >> > Summary: 1 task failed:
> >> >
>  /opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:
> do_configure
> >> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> >> > joe@ubuntu:/opt/yocto/build$
> >> >
> >> > ------------------------------
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000006dc5280579632686
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">HI Ross,<div><br></div><div>It still does=
n&#39;t work.</div><div><br></div><div><br></div><div><div>local.conf</div>=
<div><a href=3D"https://pastebin.com/2Ng0wSCi">https://pastebin.com/2Ng0wSC=
i</a><br></div><div><br></div><div><br></div><div>log.do_configure.27655</d=
iv><div><a href=3D"https://pastebin.com/4EX9vqmK">https://pastebin.com/4EX9=
vqmK</a><br></div><div><br></div><div><br></div><div>config.log=C2=A0=C2=A0=
<br></div><div><a href=3D"https://pastebin.com/DY2FnM7w">https://pastebin.c=
om/DY2FnM7w</a><br></div><div><br></div></div><div><br></div><div>Thanks fo=
r trying to help me.</div><div><br></div><div>Joe</div><div>---------------=
-</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
>On Mon, Oct 29, 2018 at 11:43 AM Burton, Ross &lt;<a href=3D"mailto:ross.b=
urton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">x11 is in the default DISTRO_FEATURES for poky, so you d=
on&#39;t need to add that.<br>
<br>
If core-image-x11 works then core-image-sato should build fine.=C2=A0 Try<b=
r>
deleting your tmp/ and trying again, if that doesn&#39;t work then<br>
pastebin both temp/log.do_configure and config.log from the recipe<br>
that is failing (matchbox-panel).<br>
<br>
Ross<br>
On Mon, 29 Oct 2018 at 13:21, Joe Flowers &lt;<a href=3D"mailto:joe.flowers=
@nofreewill.com" target=3D"_blank">joe.flowers@nofreewill.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; Thanks, Ross.<br>
&gt;<br>
&gt; 1.<br>
&gt; Both of these commands worked:<br>
&gt;<br>
&gt; MACHINE=3Dwandboard bitbake core-image-x11<br>
&gt; MACHINE=3Dwandboard bitbake gtk+3<br>
&gt;<br>
&gt; 2.<br>
&gt; I&#39;ve attached my local.conf.<br>
&gt;<br>
&gt; If the attachment does not go through, then I will copy and paste it i=
nto my next message.<br>
&gt;<br>
&gt; Thanks!<br>
&gt;<br>
&gt; Joe<br>
&gt; -------------------------------<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Oct 29, 2018 at 7:54 AM Burton, Ross &lt;<a href=3D"mailto:ros=
s.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; Can you share your local.conf?=C2=A0 Does bitbake gtk+3 work?<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt; On Mon, 29 Oct 2018 at 06:42, Joe Flowers &lt;<a href=3D"mailto:jo=
e.flowers@nofreewill.com" target=3D"_blank">joe.flowers@nofreewill.com</a>&=
gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hello everyone,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; 1.<br>
&gt;&gt; &gt; I am trying to build a core-image-sato image for a WandBoard =
but am getting stuck at this error message:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &quot;| No package &#39;gdk-x11-3.0&#39; found&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; See below for more details.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; 2.<br>
&gt;&gt; &gt; I have grepped this list&#39;s archives and run into someone =
with the same problem, but a solution was never included in the thread.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/201=
7-December/039149.html" rel=3D"noreferrer" target=3D"_blank">https://lists.=
yoctoproject.org/pipermail/yocto/2017-December/039149.html</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Help please.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Joe<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ------------------------------<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Command<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; MACHINE=3Dwandboard bitbake core-image-sato<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; produces this error message:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ...<br>
&gt;&gt; &gt; ...<br>
&gt;&gt; &gt; | checking for pkg-config... /opt/yocto/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native=
/usr/bin/pkg-config<br>
&gt;&gt; &gt; | configure: WARNING: using cross tools not prefixed with hos=
t triplet<br>
&gt;&gt; &gt; | checking pkg-config is at least version 0.9.0... yes<br>
&gt;&gt; &gt; | checking for glib-2.0<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0gmodule-export-2.0<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0x11<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0gdk-x11-3.0<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0gtk+-3.0... no<br>
&gt;&gt; &gt; | configure: error: Package requirements (glib-2.0<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0gmodule-export-2.0<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0x11<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0gdk-x11-3.0<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0gtk+-3.0) were not met:<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt; | No package &#39;gdk-x11-3.0&#39; found<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt; | Consider adjusting the PKG_CONFIG_PATH environment variable=
 if you<br>
&gt;&gt; &gt; | installed software in a non-standard prefix.<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt; | Alternatively, you may set the environment variables MATCHB=
OX_PANEL_CFLAGS<br>
&gt;&gt; &gt; | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-confi=
g.<br>
&gt;&gt; &gt; | See the pkg-config man page for more details.<br>
&gt;&gt; &gt; | NOTE: The following config.log files may provide further in=
formation.<br>
&gt;&gt; &gt; | NOTE: /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-=
gnueabi/matchbox-panel-2/2.11-r0/build/config.log<br>
&gt;&gt; &gt; | ERROR: configure failed<br>
&gt;&gt; &gt; | WARNING: exit code 1 from a shell command.<br>
&gt;&gt; &gt; | ERROR: Function failed: do_configure (log file is located a=
t /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-pan=
el-2/2.11-r0/temp/log.do_configure.40754)<br>
&gt;&gt; &gt; ERROR: Task (/opt/yocto/sources/poky/meta/recipes-sato/matchb=
ox-panel-2/matchbox-panel-2_2.11.bb:do_configure) failed with exit code &#3=
9;1&#39;<br>
&gt;&gt; &gt; NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn&=
#39;t need to be rerun and 1 failed.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Summary: 1 task failed:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0/opt/yocto/sources/poky/meta/recipes-sato/matchbo=
x-panel-2/matchbox-panel-2_2.11.bb:do_configure<br>
&gt;&gt; &gt; Summary: There were 2 ERROR messages shown, returning a non-z=
ero exit code.<br>
&gt;&gt; &gt; joe@ubuntu:/opt/yocto/build$<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ------------------------------<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
</blockquote></div></div>

--0000000000006dc5280579632686--
