Return-Path: <flowers.joseph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F552E00C12; Mon, 29 Oct 2018 20:24:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAA03E00BC8
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 20:24:16 -0700 (PDT)
Received: by mail-it1-f182.google.com with SMTP id p64-v6so12132148itp.0
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 20:24:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kJcExgNSV+H4f1citBUlpWro2BzQL3YMdK2QuKhnrrY=;
	b=ApLcGCyoVJJY7ynVeSNEjG5Y11NXJOpfDKnVSobWlbw0d3PiJ7RSqXTLbS7eUQ0LqO
	8zUF1hPYB+JLHBikRpaQoQQ9T+xcLOHfhrjf18FpbuwR3PnCXHafGwIcORlSPsMA5W41
	hK6OoyUvlX82UBljTk748NaXks6DzLMjcmvfnsp/EVoV5pCbho/M9yLlqfoDYtjybsYB
	0fTLNozwVt6Pf9XkeCDh6OItzlZA9ph7eoHStRP0AIwYYAGTwWKAqDQQBgD93r4SozT0
	0+dtiF2idYI//APwERNuvrYUCeJjbNdqDUa9WcdH4qNYTlJ/iZkQBgajr9iI2OxfbR0y
	No+Q==
X-Gm-Message-State: AGRZ1gJ98qXIk07kbcwxFbHCI4X3T7XwG7mpYqxxGAppP28mM8xrJKz7
	1aVhE+FuCnjYtqhnFRMeur0tnfn+a7MqOKkw7djggfQ=
X-Google-Smtp-Source: AJdET5c5wPp9s9Rr0FKkift5oY1q0kt77Ux2lx4PaswiCuOTr9blouWM2nynT1VpeJf50r0pENke346dJMc7P86i+c4=
X-Received: by 2002:a24:7f52:: with SMTP id
	r79-v6mr243350itc.100.1540869856062; 
	Mon, 29 Oct 2018 20:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
	<CAJTo0LbZTFEEeaZ1hn-7D5XJnurXBDK6FRMT-79wJ8rMWTNicA@mail.gmail.com>
	<CA+4=ZEMiTA8OZSqibcnfU=_POt8+68hwcx9EGX7Ahy2R6TZOiA@mail.gmail.com>
	<CAJTo0LY+hMQgq4U6caqvChq4HUhj0P9OE+rD1ZGCgCH59oYP4Q@mail.gmail.com>
	<CA+4=ZENGPKV6hQbyQ_o3GEtsmuAnFsGhPFHv20iSRODgba=LLA@mail.gmail.com>
	<CAJTo0LagPTdQ__2OfiKjwtDhe8=4T7aOqY3EjnAuqwKQdftnmw@mail.gmail.com>
	<CA+4=ZEM-=P=17WC9JCqpana8EwCum3cANGuhUo60ryqbP29hYQ@mail.gmail.com>
	<CA+4=ZENpQUTdffak4PxDOvJO2Z4ZfdzrqKR5vVVnryiH_cVybA@mail.gmail.com>
In-Reply-To: <CA+4=ZENpQUTdffak4PxDOvJO2Z4ZfdzrqKR5vVVnryiH_cVybA@mail.gmail.com>
From: Joe Flowers <joe.flowers@nofreewill.com>
Date: Mon, 29 Oct 2018 23:24:04 -0400
Message-ID: <CA+4=ZEN9=ZaRf+t4ezJPBrNhs3GNLb8MwjkoX=DzvT1ftaGhdA@mail.gmail.com>
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
X-List-Received-Date: Tue, 30 Oct 2018 03:24:18 -0000
Content-Type: multipart/alternative; boundary="0000000000006a739c057969b89c"

--0000000000006a739c057969b89c
Content-Type: text/plain; charset="UTF-8"

Contents of gdk-x11-3.0.pc:
---------
prefix=/usr
exec_prefix=${prefix}
libdir=/usr/lib/x86_64-linux-gnu
includedir=${prefix}/include
targets=x11 broadway wayland mir

Name: GDK
Description: GTK+ Drawing Kit
Version: 3.18.9
Requires: pango pangocairo gdk-pixbuf-2.0 >= 2.30.0 cairo >= 1.14.0
cairo-gobject >= 1.14.0
Requires.private: gio-unix-2.0 >= 2.45.8 fontconfig x11 xext xinerama xi
xrandr xcursor xfixes xcomposite xdamage wayland-client >= 1.5.91 xkbcommon
>= 0.2.0 wayland-cursor >= 1.5.91 wayland-egl mirclient >= 0.11.0 mircookie
>= 0.17.0  cairo-xlib cairo cairo cairo epoxy >= 1.0
Libs: -L${libdir} -lgdk-3
Cflags: -I${includedir}/gtk-3.0

---------


On Mon, Oct 29, 2018 at 11:14 PM Joe Flowers <joe.flowers@nofreewill.com>
wrote:

> My bad.
>
> It looks like it is here:
> /usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc
>
>
>
> joe@ubuntu:/opt/yocto$ find / -name *.pc* 1> ~/find5.txt 2>/dev/null
> joe@ubuntu:/opt/yocto$ cat ~/find5.txt | grep gdk | grep x11
> /usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc
> joe@ubuntu:/opt/yocto$ ls -lart
> /usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc
> -rw-r--r-- 1 root root 616 Apr  5  2017
> /usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc
> joe@ubuntu:/opt/yocto$
>
>
>
> On Mon, Oct 29, 2018 at 11:04 PM Joe Flowers <joe.flowers@nofreewill.com>
> wrote:
>
>> Thanks, Ross.
>>
>> Below is the output you requested.  gdk-x11-3.0.pc does not seem to exist.
>>
>> Below, should that be "wandboard" and not "qemux86" ?
>>
>> joe@ubuntu:/opt/yocto/build$
>> joe@ubuntu:/opt/yocto/build$ oe-pkgdata-util find-path '*/gdk-x11-3.0.pc'
>> ERROR: Unable to find pkgdata directory
>> /opt/yocto/build/tmp/pkgdata/qemux86
>> joe@ubuntu:/opt/yocto/build$ cd ..
>> joe@ubuntu:/opt/yocto$ oe-pkgdata-util find-path '*/gdk-x11-3.0.pc'
>> ERROR: Unable to find pkgdata directory
>> /opt/yocto/build/tmp/pkgdata/qemux86
>> joe@ubuntu:/opt/yocto$
>> joe@ubuntu:/opt/yocto$
>> joe@ubuntu:/opt/yocto$ find /opt/yocto -name *.pc* 1> ~/find4.txt
>> 2>/dev/null
>> joe@ubuntu:/opt/yocto$ cat ~/find4.txt | grep gdk | grep x11
>> joe@ubuntu:/opt/yocto$
>>
>>
>> Thank you!
>>
>>
>> On Mon, Oct 29, 2018 at 5:03 PM Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> That is... interesting.
>>>
>>> Can you verify that this file has been built by gtk+3?
>>>
>>> $ oe-pkgdata-util find-path '*/gdk-x11-3.0.pc'
>>> gtk+3-dev: /usr/lib/pkgconfig/gdk-x11-3.0.pc
>>>
>>> If so can you find any gdk-x11-3.0.pc files under
>>>
>>> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot?
>>>  Probably under usr/lib/pkgconfig.
>>>
>>> Ross
>>> On Mon, 29 Oct 2018 at 19:34, Joe Flowers <joe.flowers@nofreewill.com>
>>> wrote:
>>> >
>>> > HI Ross,
>>> >
>>> > It still doesn't work.
>>> >
>>> >
>>> > local.conf
>>> > https://pastebin.com/2Ng0wSCi
>>> >
>>> >
>>> > log.do_configure.27655
>>> > https://pastebin.com/4EX9vqmK
>>> >
>>> >
>>> > config.log
>>> > https://pastebin.com/DY2FnM7w
>>> >
>>> >
>>> > Thanks for trying to help me.
>>> >
>>> > Joe
>>> > ----------------
>>> >
>>> >
>>> > On Mon, Oct 29, 2018 at 11:43 AM Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>> >>
>>> >> x11 is in the default DISTRO_FEATURES for poky, so you don't need to
>>> add that.
>>> >>
>>> >> If core-image-x11 works then core-image-sato should build fine.  Try
>>> >> deleting your tmp/ and trying again, if that doesn't work then
>>> >> pastebin both temp/log.do_configure and config.log from the recipe
>>> >> that is failing (matchbox-panel).
>>> >>
>>> >> Ross
>>> >> On Mon, 29 Oct 2018 at 13:21, Joe Flowers <joe.flowers@nofreewill.com>
>>> wrote:
>>> >> >
>>> >> > Thanks, Ross.
>>> >> >
>>> >> > 1.
>>> >> > Both of these commands worked:
>>> >> >
>>> >> > MACHINE=wandboard bitbake core-image-x11
>>> >> > MACHINE=wandboard bitbake gtk+3
>>> >> >
>>> >> > 2.
>>> >> > I've attached my local.conf.
>>> >> >
>>> >> > If the attachment does not go through, then I will copy and paste
>>> it into my next message.
>>> >> >
>>> >> > Thanks!
>>> >> >
>>> >> > Joe
>>> >> > -------------------------------
>>> >> >
>>> >> >
>>> >> > On Mon, Oct 29, 2018 at 7:54 AM Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>> >> >>
>>> >> >> Can you share your local.conf?  Does bitbake gtk+3 work?
>>> >> >>
>>> >> >> Ross
>>> >> >> On Mon, 29 Oct 2018 at 06:42, Joe Flowers <
>>> joe.flowers@nofreewill.com> wrote:
>>> >> >> >
>>> >> >> > Hello everyone,
>>> >> >> >
>>> >> >> > 1.
>>> >> >> > I am trying to build a core-image-sato image for a WandBoard but
>>> am getting stuck at this error message:
>>> >> >> >
>>> >> >> > "| No package 'gdk-x11-3.0' found"
>>> >> >> >
>>> >> >> > See below for more details.
>>> >> >> >
>>> >> >> >
>>> >> >> > 2.
>>> >> >> > I have grepped this list's archives and run into someone with
>>> the same problem, but a solution was never included in the thread.
>>> >> >> >
>>> >> >> >
>>> https://lists.yoctoproject.org/pipermail/yocto/2017-December/039149.html
>>> >> >> >
>>> >> >> >
>>> >> >> > Help please.
>>> >> >> >
>>> >> >> > Joe
>>> >> >> >
>>> >> >> > ------------------------------
>>> >> >> >
>>> >> >> > Command
>>> >> >> >
>>> >> >> > MACHINE=wandboard bitbake core-image-sato
>>> >> >> >
>>> >> >> > produces this error message:
>>> >> >> >
>>> >> >> > ...
>>> >> >> > ...
>>> >> >> > | checking for pkg-config...
>>> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native/usr/bin/pkg-config
>>> >> >> > | configure: WARNING: using cross tools not prefixed with host
>>> triplet
>>> >> >> > | checking pkg-config is at least version 0.9.0... yes
>>> >> >> > | checking for glib-2.0
>>> >> >> > |                   gmodule-export-2.0
>>> >> >> > |                   x11
>>> >> >> > |                   gdk-x11-3.0
>>> >> >> > |                   gtk+-3.0... no
>>> >> >> > | configure: error: Package requirements (glib-2.0
>>> >> >> > |                   gmodule-export-2.0
>>> >> >> > |                   x11
>>> >> >> > |                   gdk-x11-3.0
>>> >> >> > |                   gtk+-3.0) were not met:
>>> >> >> > |
>>> >> >> > | No package 'gdk-x11-3.0' found
>>> >> >> > |
>>> >> >> > | Consider adjusting the PKG_CONFIG_PATH environment variable if
>>> you
>>> >> >> > | installed software in a non-standard prefix.
>>> >> >> > |
>>> >> >> > | Alternatively, you may set the environment variables
>>> MATCHBOX_PANEL_CFLAGS
>>> >> >> > | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>>> >> >> > | See the pkg-config man page for more details.
>>> >> >> > | NOTE: The following config.log files may provide further
>>> information.
>>> >> >> > | NOTE:
>>> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.log
>>> >> >> > | ERROR: configure failed
>>> >> >> > | WARNING: exit code 1 from a shell command.
>>> >> >> > | ERROR: Function failed: do_configure (log file is located at
>>> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.40754)
>>> >> >> > ERROR: Task
>>> (/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure)
>>> failed with exit code '1'
>>> >> >> > NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn't
>>> need to be rerun and 1 failed.
>>> >> >> >
>>> >> >> > Summary: 1 task failed:
>>> >> >> >
>>>  /opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:
>>> do_configure
>>> >> >> > Summary: There were 2 ERROR messages shown, returning a non-zero
>>> exit code.
>>> >> >> > joe@ubuntu:/opt/yocto/build$
>>> >> >> >
>>> >> >> > ------------------------------
>>> >> >> >
>>> >> >> > --
>>> >> >> > _______________________________________________
>>> >> >> > yocto mailing list
>>> >> >> > yocto@yoctoproject.org
>>> >> >> > https://lists.yoctoproject.org/listinfo/yocto
>>>
>>

--0000000000006a739c057969b89c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Contents of gdk-x11-3.0.pc:</div><di=
v>---------</div><div>prefix=3D/usr</div><div>exec_prefix=3D${prefix}</div>=
<div>libdir=3D/usr/lib/x86_64-linux-gnu</div><div>includedir=3D${prefix}/in=
clude</div><div>targets=3Dx11 broadway wayland mir</div><div><br></div><div=
>Name: GDK</div><div>Description: GTK+ Drawing Kit</div><div>Version: 3.18.=
9</div><div>Requires: pango pangocairo gdk-pixbuf-2.0 &gt;=3D 2.30.0 cairo =
&gt;=3D 1.14.0 cairo-gobject &gt;=3D 1.14.0</div><div>Requires.private: gio=
-unix-2.0 &gt;=3D 2.45.8 fontconfig x11 xext xinerama xi xrandr xcursor xfi=
xes xcomposite xdamage wayland-client &gt;=3D 1.5.91 xkbcommon &gt;=3D 0.2.=
0 wayland-cursor &gt;=3D 1.5.91 wayland-egl mirclient &gt;=3D 0.11.0 mircoo=
kie &gt;=3D 0.17.0=C2=A0 cairo-xlib cairo cairo cairo epoxy &gt;=3D 1.0</di=
v><div>Libs: -L${libdir} -lgdk-3=C2=A0</div><div>Cflags: -I${includedir}/gt=
k-3.0=C2=A0</div><div><br></div><div>---------</div><div><br></div></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Oct 29, 2018 at=
 11:14 PM Joe Flowers &lt;<a href=3D"mailto:joe.flowers@nofreewill.com">joe=
.flowers@nofreewill.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">My bad.<div><br></di=
v><div>It looks like it is here:</div><div><div>/usr/lib/x86_64-linux-gnu/p=
kgconfig/gdk-x11-3.0.pc</div><br class=3D"m_-3259737103488081962gmail-Apple=
-interchange-newline"></div><div><br></div><div><br></div><div><div><div>jo=
e@ubuntu:/opt/yocto$ find / -name *.pc* 1&gt; ~/find5.txt 2&gt;/dev/null</d=
iv><div>joe@ubuntu:/opt/yocto$ cat ~/find5.txt | grep gdk | grep x11</div><=
div>/usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc</div><div>joe@ubuntu=
:/opt/yocto$ ls -lart /usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc</d=
iv><div>-rw-r--r-- 1 root root 616 Apr=C2=A0 5=C2=A0 2017 /usr/lib/x86_64-l=
inux-gnu/pkgconfig/gdk-x11-3.0.pc</div><div>joe@ubuntu:/opt/yocto$</div></d=
iv></div><div><br></div><div><br></div></div></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr">On Mon, Oct 29, 2018 at 11:04 PM Joe Flowers =
&lt;<a href=3D"mailto:joe.flowers@nofreewill.com" target=3D"_blank">joe.flo=
wers@nofreewill.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div dir=3D"ltr">Thanks, Ross.</div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">Below is the output you requested.=C2=A0 gdk-x11-3.0.=
pc does not seem to exist.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"=
>Below, should that be &quot;wandboard&quot; and not &quot;qemux86&quot;=C2=
=A0?=C2=A0<br><div><br></div><div><div>joe@ubuntu:/opt/yocto/build$</div><d=
iv>joe@ubuntu:/opt/yocto/build$ oe-pkgdata-util find-path &#39;*/gdk-x11-3.=
0.pc&#39;</div><div>ERROR: Unable to find pkgdata directory /opt/yocto/buil=
d/tmp/pkgdata/qemux86</div><div>joe@ubuntu:/opt/yocto/build$ cd ..</div><di=
v>joe@ubuntu:/opt/yocto$ oe-pkgdata-util find-path &#39;*/gdk-x11-3.0.pc&#3=
9;</div><div>ERROR: Unable to find pkgdata directory /opt/yocto/build/tmp/p=
kgdata/qemux86</div><div>joe@ubuntu:/opt/yocto$</div><div>joe@ubuntu:/opt/y=
octo$</div><div>joe@ubuntu:/opt/yocto$ find /opt/yocto -name *.pc* 1&gt; ~/=
find4.txt 2&gt;/dev/null</div><div>joe@ubuntu:/opt/yocto$ cat ~/find4.txt |=
 grep gdk | grep x11</div><div>joe@ubuntu:/opt/yocto$</div></div><div><br><=
/div><div><br></div><div>Thank you!</div><div><br></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Oct 29, 2018 at 5:03 PM Bu=
rton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">r=
oss.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>That is... interesting.<br>
<br>
Can you verify that this file has been built by gtk+3?<br>
<br>
$ oe-pkgdata-util find-path &#39;*/gdk-x11-3.0.pc&#39;<br>
gtk+3-dev: /usr/lib/pkgconfig/gdk-x11-3.0.pc<br>
<br>
If so can you find any gdk-x11-3.0.pc files under<br>
/opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel=
-2/2.11-r0/recipe-sysroot?<br>
=C2=A0Probably under usr/lib/pkgconfig.<br>
<br>
Ross<br>
On Mon, 29 Oct 2018 at 19:34, Joe Flowers &lt;<a href=3D"mailto:joe.flowers=
@nofreewill.com" target=3D"_blank">joe.flowers@nofreewill.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; HI Ross,<br>
&gt;<br>
&gt; It still doesn&#39;t work.<br>
&gt;<br>
&gt;<br>
&gt; local.conf<br>
&gt; <a href=3D"https://pastebin.com/2Ng0wSCi" rel=3D"noreferrer" target=3D=
"_blank">https://pastebin.com/2Ng0wSCi</a><br>
&gt;<br>
&gt;<br>
&gt; log.do_configure.27655<br>
&gt; <a href=3D"https://pastebin.com/4EX9vqmK" rel=3D"noreferrer" target=3D=
"_blank">https://pastebin.com/4EX9vqmK</a><br>
&gt;<br>
&gt;<br>
&gt; config.log<br>
&gt; <a href=3D"https://pastebin.com/DY2FnM7w" rel=3D"noreferrer" target=3D=
"_blank">https://pastebin.com/DY2FnM7w</a><br>
&gt;<br>
&gt;<br>
&gt; Thanks for trying to help me.<br>
&gt;<br>
&gt; Joe<br>
&gt; ----------------<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Oct 29, 2018 at 11:43 AM Burton, Ross &lt;<a href=3D"mailto:ro=
ss.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:=
<br>
&gt;&gt;<br>
&gt;&gt; x11 is in the default DISTRO_FEATURES for poky, so you don&#39;t n=
eed to add that.<br>
&gt;&gt;<br>
&gt;&gt; If core-image-x11 works then core-image-sato should build fine.=C2=
=A0 Try<br>
&gt;&gt; deleting your tmp/ and trying again, if that doesn&#39;t work then=
<br>
&gt;&gt; pastebin both temp/log.do_configure and config.log from the recipe=
<br>
&gt;&gt; that is failing (matchbox-panel).<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt; On Mon, 29 Oct 2018 at 13:21, Joe Flowers &lt;<a href=3D"mailto:jo=
e.flowers@nofreewill.com" target=3D"_blank">joe.flowers@nofreewill.com</a>&=
gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks, Ross.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; 1.<br>
&gt;&gt; &gt; Both of these commands worked:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; MACHINE=3Dwandboard bitbake core-image-x11<br>
&gt;&gt; &gt; MACHINE=3Dwandboard bitbake gtk+3<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; 2.<br>
&gt;&gt; &gt; I&#39;ve attached my local.conf.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; If the attachment does not go through, then I will copy and p=
aste it into my next message.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks!<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Joe<br>
&gt;&gt; &gt; -------------------------------<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Mon, Oct 29, 2018 at 7:54 AM Burton, Ross &lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Can you share your local.conf?=C2=A0 Does bitbake gtk+3 w=
ork?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Ross<br>
&gt;&gt; &gt;&gt; On Mon, 29 Oct 2018 at 06:42, Joe Flowers &lt;<a href=3D"=
mailto:joe.flowers@nofreewill.com" target=3D"_blank">joe.flowers@nofreewill=
.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Hello everyone,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; 1.<br>
&gt;&gt; &gt;&gt; &gt; I am trying to build a core-image-sato image for a W=
andBoard but am getting stuck at this error message:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &quot;| No package &#39;gdk-x11-3.0&#39; found&quot;=
<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; See below for more details.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; 2.<br>
&gt;&gt; &gt;&gt; &gt; I have grepped this list&#39;s archives and run into=
 someone with the same problem, but a solution was never included in the th=
read.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/pipermail/=
yocto/2017-December/039149.html" rel=3D"noreferrer" target=3D"_blank">https=
://lists.yoctoproject.org/pipermail/yocto/2017-December/039149.html</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Help please.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Joe<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; ------------------------------<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Command<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; MACHINE=3Dwandboard bitbake core-image-sato<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; produces this error message:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; ...<br>
&gt;&gt; &gt;&gt; &gt; ...<br>
&gt;&gt; &gt;&gt; &gt; | checking for pkg-config... /opt/yocto/build/tmp/wo=
rk/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysro=
ot-native/usr/bin/pkg-config<br>
&gt;&gt; &gt;&gt; &gt; | configure: WARNING: using cross tools not prefixed=
 with host triplet<br>
&gt;&gt; &gt;&gt; &gt; | checking pkg-config is at least version 0.9.0... y=
es<br>
&gt;&gt; &gt;&gt; &gt; | checking for glib-2.0<br>
&gt;&gt; &gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0gmodule-export-2.0<br>
&gt;&gt; &gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0x11<br>
&gt;&gt; &gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0gdk-x11-3.0<br>
&gt;&gt; &gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0gtk+-3.0... no<br>
&gt;&gt; &gt;&gt; &gt; | configure: error: Package requirements (glib-2.0<b=
r>
&gt;&gt; &gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0gmodule-export-2.0<br>
&gt;&gt; &gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0x11<br>
&gt;&gt; &gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0gdk-x11-3.0<br>
&gt;&gt; &gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0gtk+-3.0) were not met:<br>
&gt;&gt; &gt;&gt; &gt; |<br>
&gt;&gt; &gt;&gt; &gt; | No package &#39;gdk-x11-3.0&#39; found<br>
&gt;&gt; &gt;&gt; &gt; |<br>
&gt;&gt; &gt;&gt; &gt; | Consider adjusting the PKG_CONFIG_PATH environment=
 variable if you<br>
&gt;&gt; &gt;&gt; &gt; | installed software in a non-standard prefix.<br>
&gt;&gt; &gt;&gt; &gt; |<br>
&gt;&gt; &gt;&gt; &gt; | Alternatively, you may set the environment variabl=
es MATCHBOX_PANEL_CFLAGS<br>
&gt;&gt; &gt;&gt; &gt; | and MATCHBOX_PANEL_LIBS to avoid the need to call =
pkg-config.<br>
&gt;&gt; &gt;&gt; &gt; | See the pkg-config man page for more details.<br>
&gt;&gt; &gt;&gt; &gt; | NOTE: The following config.log files may provide f=
urther information.<br>
&gt;&gt; &gt;&gt; &gt; | NOTE: /opt/yocto/build/tmp/work/cortexa9hf-neon-po=
ky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.log<br>
&gt;&gt; &gt;&gt; &gt; | ERROR: configure failed<br>
&gt;&gt; &gt;&gt; &gt; | WARNING: exit code 1 from a shell command.<br>
&gt;&gt; &gt;&gt; &gt; | ERROR: Function failed: do_configure (log file is =
located at /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/mat=
chbox-panel-2/2.11-r0/temp/log.do_configure.40754)<br>
&gt;&gt; &gt;&gt; &gt; ERROR: Task (/opt/yocto/sources/poky/meta/recipes-sa=
to/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure) failed with exit=
 code &#39;1&#39;<br>
&gt;&gt; &gt;&gt; &gt; NOTE: Tasks Summary: Attempted 3024 tasks of which 2=
828 didn&#39;t need to be rerun and 1 failed.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Summary: 1 task failed:<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0/opt/yocto/sources/poky/meta/recipes-sat=
o/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure<br>
&gt;&gt; &gt;&gt; &gt; Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<br>
&gt;&gt; &gt;&gt; &gt; joe@ubuntu:/opt/yocto/build$<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; ------------------------------<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/l=
istinfo/yocto</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000006a739c057969b89c--
