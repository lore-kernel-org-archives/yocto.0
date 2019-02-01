Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B74A3E00D39; Fri,  1 Feb 2019 13:59:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (edwingate8[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FA57E00D36
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 13:59:39 -0800 (PST)
Received: by mail-it1-f170.google.com with SMTP id c9so12158953itj.1
	for <yocto@yoctoproject.org>; Fri, 01 Feb 2019 13:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZoFmyibvtLqpxWxbZk8KVeYLRthBwmz8E5vW+qlsdfw=;
	b=g9LhmRaVLOK+UM+7Fx5qWV9oHo0igYLgi/JIZDN7UJBjvTXdhxZ8cOc4bW7OfPXoBM
	ea8BCft48sohPkHzOBDxN4al2Qi26urWSDSU6rjR+toNJb8Q6YBhmHaLK4Xd2+TBv/dS
	r6Yy9C97Dtdig9SHdizWw/ki1smvPVpJxOTMs5Yj6NpLYfhQz9llvghP3o15FtdE+9/b
	8udVEtwveUnqWZVjNTEFHgRlv+Cu4WQNEYwrO+WyJaBinlZuqiIOoHmxc1uVeB9/X76P
	wCpwl9ZXXrJA1FzVmahcMGCMbY1j/lu/fi2WBOW5Y+c1En5GWqP6e1Lk1ItEXkIkfOE4
	KjBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZoFmyibvtLqpxWxbZk8KVeYLRthBwmz8E5vW+qlsdfw=;
	b=VtA5srd/+eacWKm0srq9b28k5gImK5v6Il4rn5MCvA6ilt65S1oJ+xOmJvPo7WvfMF
	spTXs6GKMGoUKS5KwMMZ4jqQ+w8FeA+XcKgLXGlmgT5E3ZJtyee8EiTH/SMh/N8BU88W
	yut9cJVT/BuacrNBYQs07TfrDEOmd8+Y4y4RFF6pXkEBcXjwCgbevxH/k6DJHKEuHER8
	uaQWx8eLYBUaoWJtVTluCU7zvAg/WpLDz8X94inGCLWuoaXdQCWNeX9zs8S9q7BIWAk5
	UQ200F5SmsDPvwNHlfXWW8663noWSyM9ckUR9GN+T1jXEQ3uPLJeYMyhwrjZXpF70zT0
	cA7g==
X-Gm-Message-State: AHQUAuYNoKvWGlZUwhu3OaXhRfTYRN4KAKwBWP58Aaw2q/I+u3sQce3h
	sNtxtDypi5r6L+nOpWlkZa0P/Pz0V7ej6yf+ol/4C7Vu
X-Google-Smtp-Source: AHgI3IYIhLr2eazoep8EW7v0Z4tK6qM3Px99pk0WOigzvxxIGuuNtB9cxA6wSr41NUSCU2evH4XgwCFpWziWb5bnrN0=
X-Received: by 2002:a24:1f0d:: with SMTP id d13mr2669269itd.140.1549058379394; 
	Fri, 01 Feb 2019 13:59:39 -0800 (PST)
MIME-Version: 1.0
References: <CAGMdoF=M6dQkoveH9=P7gXSWJDWDqaO97DBDGi-Ru5tg9OZ1TA@mail.gmail.com>
	<CAA984JUDNsCw=kJHxJrwi5vh8Day=jJJ1A7+=hFHkqh44UHhgg@mail.gmail.com>
In-Reply-To: <CAA984JUDNsCw=kJHxJrwi5vh8Day=jJJ1A7+=hFHkqh44UHhgg@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Fri, 1 Feb 2019 13:59:27 -0800
Message-ID: <CAGMdoF=NHkZO8g2uGWJ8r04f+w46o8UuvYbLsDt62JSxLj924A@mail.gmail.com>
To: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Cc: yocto@yoctoproject.org
Subject: Re: Help with cleaning/rebuidling
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
X-List-Received-Date: Fri, 01 Feb 2019 21:59:42 -0000
Content-Type: multipart/alternative; boundary="00000000000070b01d0580dc42ad"

--00000000000070b01d0580dc42ad
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 1, 2019 at 7:57 AM Yann CARDAILLAC <yann.cardaillac@smile.fr>
wrote:

> Hi Ed,
>
> I don't want to state the obvious but firstly did you check that you have
> the stuff asked :
>
>
> *CMake Error: The source directory "/mnt/drive/yocto/poky/build/t*
> *mp/work/cortexa9-vfp-neon-poky**-linux-gnueabi/mosquitto/1.5.*
> *5-r0/mosquitto-1.5.5" does not exist.*
>
> If
> /mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.5.5-r0/mosquitto-1.5.5
> is not reachable then that's the issue.
>
>
That directory does not exist.  I believe the cleanall removed that
directory.  The question is why doesn't bitbake make the directory and
untar into it, like it did the very first time I bitbaked mosquitto?  To
work around this, I have to manually untar the mosquitto tarball from my
DL_DIR into that directory, and then mosquitto will build properly.




> Regards,
>
> On Mon, Jan 28, 2019 at 6:19 PM Edward Wingate <edwingate8@gmail.com>
> wrote:
>
>> The first time I did a build, my mosquitto recipe worked.  Then I did
>> a 'bitbake -ccleanall mosquitto', and now when I do 'bitbake
>> mosquitto', I get this error:
>>
>> DEBUG: Executing python function sysroot_cleansstate
>> DEBUG: Python function sysroot_cleansstate finished
>> DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
>> 'common']
>> DEBUG: Executing shell function autotools_preconfigure
>> DEBUG: Shell function autotools_preconfigure finished
>> DEBUG: Executing python function autotools_copy_aclocals
>> DEBUG: Python function autotools_copy_aclocals finished
>> DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
>> 'common']
>> DEBUG: Executing shell function do_configure
>> CMake Error: The source directory
>>
>> "/mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.5.5-r0/mosquitto-1.5.5"
>> does not exist.
>> Specify --help for usage, or press the help button on the CMake GUI.
>> WARNING: exit code 1 from a shell command.
>> ERROR: Function failed: do_configure (log file is located at
>>
>> /mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.5.5-r0/temp/log.do_configure.37839)
>>
>> It seems like it doesn't fetch/unpack the source before do_configure.
>> I tried to do 'bitbake -c fetch mosquitto' and 'bitbake -c unpack
>> mosquitto', and they both say all tasks didn't need to be rerun. I
>> forced it by adding '-f', but that didn't help either.
>>
>> I'm still using jethro and my mosquitto_1.5.5.bb recipe is this:
>>
>> === BEGIN RECIPE ===
>> SUMMARY = "MQTT 3.1 compliant library"
>> HOMEPAGE = "https://mosquitto.org"
>> MAINTAINER = "Robert Lehmann <robert.lehmann@sitec-systems.de>"
>>
>> LICENSE = "EPL-1.0"
>> LIC_FILES_CHKSUM =
>> "file://LICENSE.txt;md5=62ddc846179e908dc0c8efec4a42ef20"
>>
>> SRC_URI = "https://mosquitto.org/files/source/mosquitto-${PV}.tar.gz"
>> SRC_URI[md5sum] = "a17dffc6f63b2a4ab2eb5c51139e60e9"
>> SRC_URI[sha256sum] =
>> "fcdb47e340864c545146681af7253399cc292e41775afd76400fda5b0d23d668"
>>
>> DEPENDS = "openssl"
>> RDEPENDS_${PN} = "util-linux"
>>
>> inherit cmake
>>
>> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
>> EXTRA_OECMAKE = " -DCMAKE_SKIP_RPATH=ON "
>> === END RECIPE ===
>>
>> Can anyone help with this?
>>
>> Thanks,
>> Ed
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--00000000000070b01d0580dc42ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 1, 2019 at 7:57 AM Yann C=
ARDAILLAC &lt;<a href=3D"mailto:yann.cardaillac@smile.fr">yann.cardaillac@s=
mile.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hi Ed, <br></div><div><br></div><div>I don&#39=
;t want to state the obvious but firstly did you check that you have the st=
uff asked :</div><div><i><br></i></div><div><i>CMake Error: The source dire=
ctory<br>
&quot;<b>/mnt/drive/yocto/poky/build/t</b></i><b><i>mp/work/cortexa9-vfp-ne=
on-poky</i></b><b><i>-linux-gnueabi/mosquitto/1.5.</i></b><i><b>5-r0/mosqui=
tto-1.5.5</b>&quot;<br>
does not exist.</i></div><div><i><br></i></div><div>If /mnt/drive/yocto/pok=
y/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.5.5-r0/mo=
squitto-1.5.5 is not reachable then that&#39;s the issue.</div><div><br></d=
iv></div></blockquote><div><br></div><div>That directory does not exist.=C2=
=A0=20
I believe the cleanall removed that directory.=C2=A0

The question is why doesn&#39;t bitbake make the directory and untar into i=
t, like it did the very first time I bitbaked mosquitto?=C2=A0=20
To work around this, I have to manually untar the mosquitto tarball from
 my DL_DIR into that directory, and then mosquitto will build properly. <br=
></div><div><br></div><div><br></div><div>=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><div>Regards,<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Jan 28, 2019 at 6:19 PM Edward Wingate &lt;<a href=3D"mailto:e=
dwingate8@gmail.com" target=3D"_blank">edwingate8@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">The first time I=
 did a build, my mosquitto recipe worked.=C2=A0 Then I did<br>
a &#39;bitbake -ccleanall mosquitto&#39;, and now when I do &#39;bitbake<br=
>
mosquitto&#39;, I get this error:<br>
<br>
DEBUG: Executing python function sysroot_cleansstate<br>
DEBUG: Python function sysroot_cleansstate finished<br>
DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-comm=
on&#39;, &#39;arm-32&#39;,<br>
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,<br>
&#39;common&#39;]<br>
DEBUG: Executing shell function autotools_preconfigure<br>
DEBUG: Shell function autotools_preconfigure finished<br>
DEBUG: Executing python function autotools_copy_aclocals<br>
DEBUG: Python function autotools_copy_aclocals finished<br>
DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-comm=
on&#39;, &#39;arm-32&#39;,<br>
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,<br>
&#39;common&#39;]<br>
DEBUG: Executing shell function do_configure<br>
CMake Error: The source directory<br>
&quot;/mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnu=
eabi/mosquitto/1.5.5-r0/mosquitto-1.5.5&quot;<br>
does not exist.<br>
Specify --help for usage, or press the help button on the CMake GUI.<br>
WARNING: exit code 1 from a shell command.<br>
ERROR: Function failed: do_configure (log file is located at<br>
/mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/m=
osquitto/1.5.5-r0/temp/log.do_configure.37839)<br>
<br>
It seems like it doesn&#39;t fetch/unpack the source before do_configure.<b=
r>
I tried to do &#39;bitbake -c fetch mosquitto&#39; and &#39;bitbake -c unpa=
ck<br>
mosquitto&#39;, and they both say all tasks didn&#39;t need to be rerun. I<=
br>
forced it by adding &#39;-f&#39;, but that didn&#39;t help either.<br>
<br>
I&#39;m still using jethro and my <a href=3D"http://mosquitto_1.5.5.bb" rel=
=3D"noreferrer" target=3D"_blank">mosquitto_1.5.5.bb</a> recipe is this:<br=
>
<br>
=3D=3D=3D BEGIN RECIPE =3D=3D=3D<br>
SUMMARY =3D &quot;MQTT 3.1 compliant library&quot;<br>
HOMEPAGE =3D &quot;<a href=3D"https://mosquitto.org" rel=3D"noreferrer" tar=
get=3D"_blank">https://mosquitto.org</a>&quot;<br>
MAINTAINER =3D &quot;Robert Lehmann &lt;<a href=3D"mailto:robert.lehmann@si=
tec-systems.de" target=3D"_blank">robert.lehmann@sitec-systems.de</a>&gt;&q=
uot;<br>
<br>
LICENSE =3D &quot;EPL-1.0&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3D62ddc846179e908dc0c8efe=
c4a42ef20&quot;<br>
<br>
SRC_URI =3D &quot;<a href=3D"https://mosquitto.org/files/source/mosquitto-$=
%7BPV%7D.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://mosquitto.org=
/files/source/mosquitto-${PV}.tar.gz</a>&quot;<br>
SRC_URI[md5sum] =3D &quot;a17dffc6f63b2a4ab2eb5c51139e60e9&quot;<br>
SRC_URI[sha256sum] =3D<br>
&quot;fcdb47e340864c545146681af7253399cc292e41775afd76400fda5b0d23d668&quot=
;<br>
<br>
DEPENDS =3D &quot;openssl&quot;<br>
RDEPENDS_${PN} =3D &quot;util-linux&quot;<br>
<br>
inherit cmake<br>
<br>
# Specify any options you want to pass to cmake using EXTRA_OECMAKE:<br>
EXTRA_OECMAKE =3D &quot; -DCMAKE_SKIP_RPATH=3DON &quot;<br>
=3D=3D=3D END RECIPE =3D=3D=3D<br>
<br>
Can anyone help with this?<br>
<br>
Thanks,<br>
Ed<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></blockquote></div></div>

--00000000000070b01d0580dc42ad--
