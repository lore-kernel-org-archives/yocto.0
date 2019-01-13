Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 746A1E00C82; Sat, 12 Jan 2019 18:00:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
	[209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21F78E00BF9
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 18:00:36 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id u11so2085196vsp.11
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 18:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fvIXWaqutXQWq5DVuO+A2wBqLKQUnLvJAKgiPNd+W7s=;
	b=JqMWkVLOqIbc9cirAKD708MgJgdwO1Ea1yhF0t5iQkI17qd0Yt0ELdiQ7irN8nHfNo
	rh/9kkZsJYTr3PSQdgbIFowqsA4enjN1nMs/oCJzkGjSp0coN34udcIyk00/2o9o4MTX
	vBOfxCVHiplvYRZratxla3EW6Ldwv+dU0dmKyCugvplBBGY0zVZdjKjdTZVPMH3TTQBc
	nkwpTkifauoA6g1nd8p1wzOASquT6K/TYtmfBzBR5xuS2Y77D+ILsuK3aje2V2gq9g3g
	rLzDjP9MMylpVNpKhmZTN5T5Ku9yqLl7SeWi+o5ubKdCRDNsK5hGz/r1TKZBk985cPK3
	AUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fvIXWaqutXQWq5DVuO+A2wBqLKQUnLvJAKgiPNd+W7s=;
	b=hVX6gwnZBZkl6npVmkXo7t7gPB1jABEVObd9oXv6kcwPBz+FZcrgj4V2qh8XpinyLx
	mn5e8SLZDMa+97q6/4xtQHTRhZDKcMLfGtJeXf9dDma3+26mCUV6RzxnO90eeBxZeBuN
	Yj0E2aiuJUfoCSrbYbBUvnl3quQ299jThwCKm3rvNYq7O5YKFmITohbtM9054h/y0nni
	dRQIj05MOtdvO2rLnusBxrl9Ym04xnVmbo/3r1Hu8VXFi6Ilxs9deD0aoF4Rk9zXST48
	Aj0J+u9/wC5eOcrcTYWf4q6mdDIRSER7KAV6UcpF1Md0iK6VxdLWJeaI8vX0ygV8VRkr
	F5iw==
X-Gm-Message-State: AJcUukeEPpsBCIkhReGFWL9kQ3Mb+pU/XSYD5C8MPswdxyPZGt/OYHtR
	RgnBxvzoduzgRg28JtSomiH68NuJ2Z0gw2u88bg=
X-Google-Smtp-Source: ALg8bN4yGmm7cH60fDlGNFY+Sk7eZxPAlw6OQth5fmBf+5TYufk5Nuz9XADLGV1Cs9qiUmnuMfQkFd6xn8HcH1YfrFU=
X-Received: by 2002:a67:848a:: with SMTP id g132mr8132978vsd.222.1547344836168;
	Sat, 12 Jan 2019 18:00:36 -0800 (PST)
MIME-Version: 1.0
References: <CAKRytNzADpC_185uPi3W+7-fUkKPtOXNp0DLH3_oOf76rPT8fQ@mail.gmail.com>
	<CAMKF1spLith1NqWCBg4eJKRZFUv9-CZo79NpY7NpCGBP9HpABw@mail.gmail.com>
	<CAKRytNzUnf=HJOsCpVNWnBzyqQOU3V-ke=by4WmYzAjA-3z1jQ@mail.gmail.com>
In-Reply-To: <CAKRytNzUnf=HJOsCpVNWnBzyqQOU3V-ke=by4WmYzAjA-3z1jQ@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Sun, 13 Jan 2019 03:00:25 +0100
Message-ID: <CAKRytNxxpQMJaDEKK_5nZYDpO44_vVpR3LSGooDC6BJc0bvwUw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cannot update dhcpcd receipe from v6.11.5 to v7.x.x
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
X-List-Received-Date: Sun, 13 Jan 2019 02:00:38 -0000
Content-Type: multipart/alternative; boundary="0000000000004e121c057f4d4b55"

--0000000000004e121c057f4d4b55
Content-Type: text/plain; charset="UTF-8"

Fixed. After some tests I'll send the new recipe with a patch to update
dhcpcd.

Il gio 10 gen 2019, 00:12 Stefano Cappa <stefano.cappa.ks89@gmail.com> ha
scritto:

> Which should be the right path instead of the hardcoded /usr/include?
> Is there a recommended way to fix it in a yocto recipe?
>
>
> Il giorno mer 9 gen 2019 alle ore 03:41 Khem Raj <raj.khem@gmail.com> ha
> scritto:
>
>> On Tue, Jan 8, 2019 at 3:48 PM Stefano Cappa
>> <stefano.cappa.ks89@gmail.com> wrote:
>> >
>> > Hi!
>> > I'm using Yocto THUD and I'm trying to update dhcpcd
>> (meta-openembedded/meta-networking) from 6.11.5 to 7.0.8 (
>> https://roy.marples.name/downloads/dhcpcd/dhcpcd-7.0.8.tar.xz) only to
>> do some experiments, however I think that it's correct to migrate to the
>> new version.
>> >
>> > I modified the recipe to download version 7.0.8, but when it's building
>> it throws this error:
>> >
>> > ERROR: dhcpcd-7.0.8-r0 do_configure: configure failed
>> > ERROR: dhcpcd-7.0.8-r0 do_configure: Function failed: do_configure (log
>> file is located at
>> /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966)
>> > ERROR: Logfile of failure stored in:
>> /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966
>> > Log data follows:
>> > | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
>> > | DEBUG: Executing shell function autotools_preconfigure
>> > | DEBUG: Shell function autotools_preconfigure finished
>> > | DEBUG: Executing python function autotools_aclocals
>> > | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
>> > | DEBUG: Python function autotools_aclocals finished
>> > | DEBUG: Executing shell function do_configure
>> > | NOTE: Running ./configure  --build=x86_64-linux
>> --host=arm-poky-linux-gnueabi    --target=arm-poky-linux-gnueabi
>> --prefix=/usr    --exec_prefix=/usr    --bindir=/usr/bin
>> --sbindir=/usr/sbin    --libexecdir=/usr/libexec    --datadir=/usr/share
>> --sysconfdir=/etc    --sharedstatedir=/com    --localstatedir=/var
>> --libdir=/usr/lib    --includedir=/usr/include
>> --oldincludedir=/usr/include    --infodir=/usr/share/info
>> --mandir=/usr/share/man    --disable-silent-rules
>> --disable-dependency-tracking
>> --with-libtool-sysroot=/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot
>> --enable-ipv4 --disable-static  --enable-ipv6 --with-udev
>> > | configure args: --build=x86_64-linux --host=arm-poky-linux-gnueabi
>> --target=arm-poky-linux-gnueabi --prefix=/usr --exec_prefix=/usr
>> --bindir=/usr/bin --sbindir=/usr/sbin --libexecdir=/usr/libexec
>> --datadir=/usr/share --sysconfdir=/etc --sharedstatedir=/com
>> --localstatedir=/var --libdir=/usr/lib --includedir=/usr/include
>> --oldincludedir=/usr/include --infodir=/usr/share/info
>> --mandir=/usr/share/man --disable-silent-rules
>> --disable-dependency-tracking
>> --with-libtool-sysroot=/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot
>> --enable-ipv4 --disable-static --enable-ipv6 --with-udev
>> > | ./configure: WARNING: unknown option --exec_prefix
>> > | ./configure: WARNING: unknown option --sharedstatedir
>> > | ./configure: WARNING: unknown option --oldincludedir
>> > | ./configure: WARNING: unknown option --with-libtool-sysroot
>> > | ./configure: WARNING: unknown option --with-udev
>> > | Deriving operating system from ... arm-poky-linux-gnueabi
>> > | Configuring dhcpcd for ... linux
>> > | Enabling INET support
>> > | Enabling ARP support
>> > | Enabling ARPing support
>> > | Enabling IPv4LL support
>> > | Enabling INET6 support
>> > | Enabling DHCPv6 support
>> > | Enabling Authentication
>> > | Using compiler .. arm-poky-linux-gnueabi-gcc  -march=armv7ve -mthumb
>> -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a7
>>  --sysroot=/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot
>> > | arm-poky-linux-gnueabi-gcc  -march=armv7ve -mthumb -mfpu=neon
>> -mfloat-abi=hard -mcpu=cortex-a7
>>  --sysroot=/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot
>> does not create executables
>> > | NOTE: The following config.log files may provide further information.
>> > | NOTE:
>> /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/dhcpcd-7.0.8/config.log
>> > | ERROR: configure failed
>> > | WARNING: exit code 1 from a shell command.
>> > | ERROR: Function failed: do_configure (log file is located at
>> /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966)
>> >
>> > Also, the content of "config.log" is :
>> >        cc1: error: include location "/usr/include" is unsafe for
>> cross-compilation [-Werror=poison-system-directories]
>> >        cc1: all warnings being treated as errors
>> >
>> > I compared configure files of versions 6.11.5 and 7.0.8 and they are
>> quite similar with some additions, in particular "-I|--includedir)
>> INCLUDEDIR="$INCLUDEDIR${INCLUDEDIR:+ }-I$var";;".
>> >
>> > In not an expert of autotools and so on, so I don't know how to fix
>> this.
>> > Do you have suggestions?
>>
>> The error suggests that its poking into build host for headers, so you
>> need
>> to look into that usually this means it has hardcoded paths for
>> headers pointing to /usr/include, or it does not respect sysroot
>> option that compiler is passing.
>>
>> >
>> > I added also Khem Raj, but I'm not sure if it's the maintainer of
>> dhcpcd recipe.
>> >
>> > Thank u.
>>
>

--0000000000004e121c057f4d4b55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Fixed. After some tests I&#39;ll send the new recipe with a patch to update=
 dhcpcd.=C2=A0<br><br><div class=3D"gmail_quote"><div dir=3D"ltr">Il gio 10=
 gen 2019, 00:12 Stefano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks89@gma=
il.com">stefano.cappa.ks89@gmail.com</a>&gt; ha scritto:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">Which should be the right path inste=
ad of the hardcoded /usr/include?<div>Is there a recommended way to fix it =
in a yocto recipe?</div></div><div dir=3D"ltr"><div><br><div><br></div><div=
><div class=3D"gmail_quote"><div dir=3D"ltr">Il giorno mer 9 gen 2019 alle =
ore 03:41 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bla=
nk">raj.khem@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">On Tue, Jan 8, 2019 at 3:48 PM Stefano Cappa<br>
&lt;<a href=3D"mailto:stefano.cappa.ks89@gmail.com" target=3D"_blank">stefa=
no.cappa.ks89@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi!<br>
&gt; I&#39;m using Yocto THUD and I&#39;m trying to update dhcpcd (meta-ope=
nembedded/meta-networking) from 6.11.5 to 7.0.8 (<a href=3D"https://roy.mar=
ples.name/downloads/dhcpcd/dhcpcd-7.0.8.tar.xz" rel=3D"noreferrer" target=
=3D"_blank">https://roy.marples.name/downloads/dhcpcd/dhcpcd-7.0.8.tar.xz</=
a>) only to do some experiments, however I think that it&#39;s correct to m=
igrate to the new version.<br>
&gt;<br>
&gt; I modified the recipe to download version 7.0.8, but when it&#39;s bui=
lding it throws this error:<br>
&gt;<br>
&gt; ERROR: dhcpcd-7.0.8-r0 do_configure: configure failed<br>
&gt; ERROR: dhcpcd-7.0.8-r0 do_configure: Function failed: do_configure (lo=
g file is located at /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-p=
oky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966)<br>
&gt; ERROR: Logfile of failure stored in: /home/ks89/git/poky/build/tmp/wor=
k/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configur=
e.90966<br>
&gt; Log data follows:<br>
&gt; | DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;a=
rm-common&#39;, &#39;arm-32&#39;, &#39;common-linux&#39;, &#39;common-glibc=
&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<=
br>
&gt; | DEBUG: Executing shell function autotools_preconfigure<br>
&gt; | DEBUG: Shell function autotools_preconfigure finished<br>
&gt; | DEBUG: Executing python function autotools_aclocals<br>
&gt; | DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;a=
rm-common&#39;, &#39;arm-32&#39;, &#39;common-linux&#39;, &#39;common-glibc=
&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<=
br>
&gt; | DEBUG: Python function autotools_aclocals finished<br>
&gt; | DEBUG: Executing shell function do_configure<br>
&gt; | NOTE: Running ./configure=C2=A0 --build=3Dx86_64-linux=C2=A0 =C2=A0 =
--host=3Darm-poky-linux-gnueabi=C2=A0 =C2=A0 --target=3Darm-poky-linux-gnue=
abi=C2=A0 =C2=A0 --prefix=3D/usr=C2=A0 =C2=A0 --exec_prefix=3D/usr=C2=A0 =
=C2=A0 --bindir=3D/usr/bin=C2=A0 =C2=A0 --sbindir=3D/usr/sbin=C2=A0 =C2=A0 =
--libexecdir=3D/usr/libexec=C2=A0 =C2=A0 --datadir=3D/usr/share=C2=A0 =C2=
=A0 --sysconfdir=3D/etc=C2=A0 =C2=A0 --sharedstatedir=3D/com=C2=A0 =C2=A0 -=
-localstatedir=3D/var=C2=A0 =C2=A0 --libdir=3D/usr/lib=C2=A0 =C2=A0 --inclu=
dedir=3D/usr/include=C2=A0 =C2=A0 --oldincludedir=3D/usr/include=C2=A0 =C2=
=A0 --infodir=3D/usr/share/info=C2=A0 =C2=A0 --mandir=3D/usr/share/man=C2=
=A0 =C2=A0 --disable-silent-rules=C2=A0 =C2=A0 --disable-dependency-trackin=
g=C2=A0 =C2=A0 --with-libtool-sysroot=3D/home/ks89/git/poky/build/tmp/work/=
cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot --enabl=
e-ipv4 --disable-static=C2=A0 --enable-ipv6 --with-udev<br>
&gt; | configure args: --build=3Dx86_64-linux --host=3Darm-poky-linux-gnuea=
bi --target=3Darm-poky-linux-gnueabi --prefix=3D/usr --exec_prefix=3D/usr -=
-bindir=3D/usr/bin --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec --data=
dir=3D/usr/share --sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedi=
r=3D/var --libdir=3D/usr/lib --includedir=3D/usr/include --oldincludedir=3D=
/usr/include --infodir=3D/usr/share/info --mandir=3D/usr/share/man --disabl=
e-silent-rules --disable-dependency-tracking --with-libtool-sysroot=3D/home=
/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7=
.0.8-r0/recipe-sysroot --enable-ipv4 --disable-static --enable-ipv6 --with-=
udev<br>
&gt; | ./configure: WARNING: unknown option --exec_prefix<br>
&gt; | ./configure: WARNING: unknown option --sharedstatedir<br>
&gt; | ./configure: WARNING: unknown option --oldincludedir<br>
&gt; | ./configure: WARNING: unknown option --with-libtool-sysroot<br>
&gt; | ./configure: WARNING: unknown option --with-udev<br>
&gt; | Deriving operating system from ... arm-poky-linux-gnueabi<br>
&gt; | Configuring dhcpcd for ... linux<br>
&gt; | Enabling INET support<br>
&gt; | Enabling ARP support<br>
&gt; | Enabling ARPing support<br>
&gt; | Enabling IPv4LL support<br>
&gt; | Enabling INET6 support<br>
&gt; | Enabling DHCPv6 support<br>
&gt; | Enabling Authentication<br>
&gt; | Using compiler .. arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve =
-mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=C2=A0 =C2=A0--sys=
root=3D/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnue=
abi/dhcpcd/7.0.8-r0/recipe-sysroot<br>
&gt; | arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -mthumb -mfpu=3Dne=
on -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=C2=A0 =C2=A0--sysroot=3D/home/ks89/=
git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r=
0/recipe-sysroot does not create executables<br>
&gt; | NOTE: The following config.log files may provide further information=
.<br>
&gt; | NOTE: /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linu=
x-gnueabi/dhcpcd/7.0.8-r0/dhcpcd-7.0.8/config.log<br>
&gt; | ERROR: configure failed<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_configure (log file is located at /home/k=
s89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0=
.8-r0/temp/log.do_configure.90966)<br>
&gt;<br>
&gt; Also, the content of &quot;config.log&quot; is :<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 cc1: error: include location &quot;/usr/inc=
lude&quot; is unsafe for cross-compilation [-Werror=3Dpoison-system-directo=
ries]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 cc1: all warnings being treated as errors<b=
r>
&gt;<br>
&gt; I compared configure files of versions 6.11.5 and 7.0.8 and they are q=
uite similar with some additions, in particular &quot;-I|--includedir) INCL=
UDEDIR=3D&quot;$INCLUDEDIR${INCLUDEDIR:+ }-I$var&quot;;;&quot;.<br>
&gt;<br>
&gt; In not an expert of autotools and so on, so I don&#39;t know how to fi=
x this.<br>
&gt; Do you have suggestions?<br>
<br>
The error suggests that its poking into build host for headers, so you need=
<br>
to look into that usually this means it has hardcoded paths for<br>
headers pointing to /usr/include, or it does not respect sysroot<br>
option that compiler is passing.<br>
<br>
&gt;<br>
&gt; I added also Khem Raj, but I&#39;m not sure if it&#39;s the maintainer=
 of dhcpcd recipe.<br>
&gt;<br>
&gt; Thank u.<br>
</blockquote></div></div></div></div>
</blockquote></div>

--0000000000004e121c057f4d4b55--
