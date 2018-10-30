Return-Path: <flowers.joseph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EC70E00BD0; Mon, 29 Oct 2018 20:14:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7074AE00BC8
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 20:14:29 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id n18-v6so6373574ioa.9
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 20:14:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=vsH/InOshkMyPypnJ1sw3DRHf8MSdnAFJi46GOvdb9Y=;
	b=PViAST8ACkpDQrFYJuLIV2XnaOx9H187PB/fL9/951a0w9XrJNeXT37DNxEjX7R9vE
	JuFI6KjoAFMo+pz5bVVlDg7LreRDkAc3L+dxJkxQ0f1PgiatGLYKsfB7Fq2CenMrbhtI
	y4phreIw6a/deq02CMG6SrruydrqFHhts6lzF2iYxw0M9wxXsbdvQgJ1ECEJMZvUsOY3
	rYHKMuyz1wRatMe5xEdswMtyxyFSo0I0to7oHVMHPkPeGm/LhPbJeKZ0Na8LjQjYT/vA
	AXEsDojTIQzXDgKZfY0tgCNmq9tXcMBXjyeOby0NnlaZ/HLYK6aQWMYjIQg/cI05E62+
	VoUw==
X-Gm-Message-State: AGRZ1gJyEVD9L89s+vhmfdzdvwAKAghM7QXkXnS0Hrxg1HSYbFyo1UuO
	nyrneiXnRaifkciCYJ/xhvGRyz+DhEEBrZgAGJkDEWs=
X-Google-Smtp-Source: AJdET5f9wdjQ1SzOvMjoyB/fbgZpjvWXTGS6N2OVtViHza/JjE+haGQRS+ey5pRni5Or4Ef5GgBlftopb/wCyBgKKM0=
X-Received: by 2002:a6b:e801:: with SMTP id f1-v6mr9957319ioh.19.1540869268723;
	Mon, 29 Oct 2018 20:14:28 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
	<CAJTo0LbZTFEEeaZ1hn-7D5XJnurXBDK6FRMT-79wJ8rMWTNicA@mail.gmail.com>
	<CA+4=ZEMiTA8OZSqibcnfU=_POt8+68hwcx9EGX7Ahy2R6TZOiA@mail.gmail.com>
	<CAJTo0LY+hMQgq4U6caqvChq4HUhj0P9OE+rD1ZGCgCH59oYP4Q@mail.gmail.com>
	<CA+4=ZENGPKV6hQbyQ_o3GEtsmuAnFsGhPFHv20iSRODgba=LLA@mail.gmail.com>
	<CAJTo0LagPTdQ__2OfiKjwtDhe8=4T7aOqY3EjnAuqwKQdftnmw@mail.gmail.com>
	<CA+4=ZEM-=P=17WC9JCqpana8EwCum3cANGuhUo60ryqbP29hYQ@mail.gmail.com>
In-Reply-To: <CA+4=ZEM-=P=17WC9JCqpana8EwCum3cANGuhUo60ryqbP29hYQ@mail.gmail.com>
From: Joe Flowers <joe.flowers@nofreewill.com>
Date: Mon, 29 Oct 2018 23:14:17 -0400
Message-ID: <CA+4=ZENpQUTdffak4PxDOvJO2Z4ZfdzrqKR5vVVnryiH_cVybA@mail.gmail.com>
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
X-List-Received-Date: Tue, 30 Oct 2018 03:14:30 -0000
Content-Type: multipart/alternative; boundary="000000000000685d0a0579699502"

--000000000000685d0a0579699502
Content-Type: text/plain; charset="UTF-8"

My bad.

It looks like it is here:
/usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc



joe@ubuntu:/opt/yocto$ find / -name *.pc* 1> ~/find5.txt 2>/dev/null
joe@ubuntu:/opt/yocto$ cat ~/find5.txt | grep gdk | grep x11
/usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc
joe@ubuntu:/opt/yocto$ ls -lart
/usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc
-rw-r--r-- 1 root root 616 Apr  5  2017
/usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc
joe@ubuntu:/opt/yocto$



On Mon, Oct 29, 2018 at 11:04 PM Joe Flowers <joe.flowers@nofreewill.com>
wrote:

> Thanks, Ross.
>
> Below is the output you requested.  gdk-x11-3.0.pc does not seem to exist.
>
> Below, should that be "wandboard" and not "qemux86" ?
>
> joe@ubuntu:/opt/yocto/build$
> joe@ubuntu:/opt/yocto/build$ oe-pkgdata-util find-path '*/gdk-x11-3.0.pc'
> ERROR: Unable to find pkgdata directory
> /opt/yocto/build/tmp/pkgdata/qemux86
> joe@ubuntu:/opt/yocto/build$ cd ..
> joe@ubuntu:/opt/yocto$ oe-pkgdata-util find-path '*/gdk-x11-3.0.pc'
> ERROR: Unable to find pkgdata directory
> /opt/yocto/build/tmp/pkgdata/qemux86
> joe@ubuntu:/opt/yocto$
> joe@ubuntu:/opt/yocto$
> joe@ubuntu:/opt/yocto$ find /opt/yocto -name *.pc* 1> ~/find4.txt
> 2>/dev/null
> joe@ubuntu:/opt/yocto$ cat ~/find4.txt | grep gdk | grep x11
> joe@ubuntu:/opt/yocto$
>
>
> Thank you!
>
>
> On Mon, Oct 29, 2018 at 5:03 PM Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> That is... interesting.
>>
>> Can you verify that this file has been built by gtk+3?
>>
>> $ oe-pkgdata-util find-path '*/gdk-x11-3.0.pc'
>> gtk+3-dev: /usr/lib/pkgconfig/gdk-x11-3.0.pc
>>
>> If so can you find any gdk-x11-3.0.pc files under
>>
>> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot?
>>  Probably under usr/lib/pkgconfig.
>>
>> Ross
>> On Mon, 29 Oct 2018 at 19:34, Joe Flowers <joe.flowers@nofreewill.com>
>> wrote:
>> >
>> > HI Ross,
>> >
>> > It still doesn't work.
>> >
>> >
>> > local.conf
>> > https://pastebin.com/2Ng0wSCi
>> >
>> >
>> > log.do_configure.27655
>> > https://pastebin.com/4EX9vqmK
>> >
>> >
>> > config.log
>> > https://pastebin.com/DY2FnM7w
>> >
>> >
>> > Thanks for trying to help me.
>> >
>> > Joe
>> > ----------------
>> >
>> >
>> > On Mon, Oct 29, 2018 at 11:43 AM Burton, Ross <ross.burton@intel.com>
>> wrote:
>> >>
>> >> x11 is in the default DISTRO_FEATURES for poky, so you don't need to
>> add that.
>> >>
>> >> If core-image-x11 works then core-image-sato should build fine.  Try
>> >> deleting your tmp/ and trying again, if that doesn't work then
>> >> pastebin both temp/log.do_configure and config.log from the recipe
>> >> that is failing (matchbox-panel).
>> >>
>> >> Ross
>> >> On Mon, 29 Oct 2018 at 13:21, Joe Flowers <joe.flowers@nofreewill.com>
>> wrote:
>> >> >
>> >> > Thanks, Ross.
>> >> >
>> >> > 1.
>> >> > Both of these commands worked:
>> >> >
>> >> > MACHINE=wandboard bitbake core-image-x11
>> >> > MACHINE=wandboard bitbake gtk+3
>> >> >
>> >> > 2.
>> >> > I've attached my local.conf.
>> >> >
>> >> > If the attachment does not go through, then I will copy and paste it
>> into my next message.
>> >> >
>> >> > Thanks!
>> >> >
>> >> > Joe
>> >> > -------------------------------
>> >> >
>> >> >
>> >> > On Mon, Oct 29, 2018 at 7:54 AM Burton, Ross <ross.burton@intel.com>
>> wrote:
>> >> >>
>> >> >> Can you share your local.conf?  Does bitbake gtk+3 work?
>> >> >>
>> >> >> Ross
>> >> >> On Mon, 29 Oct 2018 at 06:42, Joe Flowers <
>> joe.flowers@nofreewill.com> wrote:
>> >> >> >
>> >> >> > Hello everyone,
>> >> >> >
>> >> >> > 1.
>> >> >> > I am trying to build a core-image-sato image for a WandBoard but
>> am getting stuck at this error message:
>> >> >> >
>> >> >> > "| No package 'gdk-x11-3.0' found"
>> >> >> >
>> >> >> > See below for more details.
>> >> >> >
>> >> >> >
>> >> >> > 2.
>> >> >> > I have grepped this list's archives and run into someone with the
>> same problem, but a solution was never included in the thread.
>> >> >> >
>> >> >> >
>> https://lists.yoctoproject.org/pipermail/yocto/2017-December/039149.html
>> >> >> >
>> >> >> >
>> >> >> > Help please.
>> >> >> >
>> >> >> > Joe
>> >> >> >
>> >> >> > ------------------------------
>> >> >> >
>> >> >> > Command
>> >> >> >
>> >> >> > MACHINE=wandboard bitbake core-image-sato
>> >> >> >
>> >> >> > produces this error message:
>> >> >> >
>> >> >> > ...
>> >> >> > ...
>> >> >> > | checking for pkg-config...
>> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native/usr/bin/pkg-config
>> >> >> > | configure: WARNING: using cross tools not prefixed with host
>> triplet
>> >> >> > | checking pkg-config is at least version 0.9.0... yes
>> >> >> > | checking for glib-2.0
>> >> >> > |                   gmodule-export-2.0
>> >> >> > |                   x11
>> >> >> > |                   gdk-x11-3.0
>> >> >> > |                   gtk+-3.0... no
>> >> >> > | configure: error: Package requirements (glib-2.0
>> >> >> > |                   gmodule-export-2.0
>> >> >> > |                   x11
>> >> >> > |                   gdk-x11-3.0
>> >> >> > |                   gtk+-3.0) were not met:
>> >> >> > |
>> >> >> > | No package 'gdk-x11-3.0' found
>> >> >> > |
>> >> >> > | Consider adjusting the PKG_CONFIG_PATH environment variable if
>> you
>> >> >> > | installed software in a non-standard prefix.
>> >> >> > |
>> >> >> > | Alternatively, you may set the environment variables
>> MATCHBOX_PANEL_CFLAGS
>> >> >> > | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>> >> >> > | See the pkg-config man page for more details.
>> >> >> > | NOTE: The following config.log files may provide further
>> information.
>> >> >> > | NOTE:
>> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.log
>> >> >> > | ERROR: configure failed
>> >> >> > | WARNING: exit code 1 from a shell command.
>> >> >> > | ERROR: Function failed: do_configure (log file is located at
>> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.40754)
>> >> >> > ERROR: Task
>> (/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure)
>> failed with exit code '1'
>> >> >> > NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn't
>> need to be rerun and 1 failed.
>> >> >> >
>> >> >> > Summary: 1 task failed:
>> >> >> >
>>  /opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:
>> do_configure
>> >> >> > Summary: There were 2 ERROR messages shown, returning a non-zero
>> exit code.
>> >> >> > joe@ubuntu:/opt/yocto/build$
>> >> >> >
>> >> >> > ------------------------------
>> >> >> >
>> >> >> > --
>> >> >> > _______________________________________________
>> >> >> > yocto mailing list
>> >> >> > yocto@yoctoproject.org
>> >> >> > https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000685d0a0579699502
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">My bad.<div><br></div><d=
iv>It looks like it is here:</div><div><div>/usr/lib/x86_64-linux-gnu/pkgco=
nfig/gdk-x11-3.0.pc</div><br class=3D"gmail-Apple-interchange-newline"></di=
v><div><br></div><div><br></div><div><div><div>joe@ubuntu:/opt/yocto$ find =
/ -name *.pc* 1&gt; ~/find5.txt 2&gt;/dev/null</div><div>joe@ubuntu:/opt/yo=
cto$ cat ~/find5.txt | grep gdk | grep x11</div><div>/usr/lib/x86_64-linux-=
gnu/pkgconfig/gdk-x11-3.0.pc</div><div>joe@ubuntu:/opt/yocto$ ls -lart /usr=
/lib/x86_64-linux-gnu/pkgconfig/gdk-x11-3.0.pc</div><div>-rw-r--r-- 1 root =
root 616 Apr=C2=A0 5=C2=A0 2017 /usr/lib/x86_64-linux-gnu/pkgconfig/gdk-x11=
-3.0.pc</div><div>joe@ubuntu:/opt/yocto$</div></div></div><div><br></div><d=
iv><br></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr">On Mon, Oct 29, 2018 at 11:04 PM Joe Flowers &lt;<a href=3D"mailto:joe.=
flowers@nofreewill.com">joe.flowers@nofreewill.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Thanks, Ro=
ss.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Below is the output yo=
u requested.=C2=A0 gdk-x11-3.0.pc does not seem to exist.</div><div dir=3D"=
ltr"><br></div><div dir=3D"ltr">Below, should that be &quot;wandboard&quot;=
 and not &quot;qemux86&quot;=C2=A0?=C2=A0<br><div><br></div><div><div>joe@u=
buntu:/opt/yocto/build$</div><div>joe@ubuntu:/opt/yocto/build$ oe-pkgdata-u=
til find-path &#39;*/gdk-x11-3.0.pc&#39;</div><div>ERROR: Unable to find pk=
gdata directory /opt/yocto/build/tmp/pkgdata/qemux86</div><div>joe@ubuntu:/=
opt/yocto/build$ cd ..</div><div>joe@ubuntu:/opt/yocto$ oe-pkgdata-util fin=
d-path &#39;*/gdk-x11-3.0.pc&#39;</div><div>ERROR: Unable to find pkgdata d=
irectory /opt/yocto/build/tmp/pkgdata/qemux86</div><div>joe@ubuntu:/opt/yoc=
to$</div><div>joe@ubuntu:/opt/yocto$</div><div>joe@ubuntu:/opt/yocto$ find =
/opt/yocto -name *.pc* 1&gt; ~/find4.txt 2&gt;/dev/null</div><div>joe@ubunt=
u:/opt/yocto$ cat ~/find4.txt | grep gdk | grep x11</div><div>joe@ubuntu:/o=
pt/yocto$</div></div><div><br></div><div><br></div><div>Thank you!</div><di=
v><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On =
Mon, Oct 29, 2018 at 5:03 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton=
@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">That is... interesting.<br>
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

--000000000000685d0a0579699502--
