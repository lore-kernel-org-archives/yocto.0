Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web12.14598.1604068494070602085
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Oct 2020 07:34:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cMZwpWKk;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id gr24so45799ejb.9
        for <yocto@lists.yoctoproject.org>; Fri, 30 Oct 2020 07:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kO1lLrTN6Pc1ckFnwLB6HaIamRAA+WafB271xt65ZCg=;
        b=cMZwpWKkX/sYXgVO3kgKor26+yw3RkLaBO9N0jvfSE5c7HdpnpYXzdACsHgrhkfZOS
         d2buOfuFq/QrvXnII7/JgYOOMms08SQcJEAhEddsj4iIu2fN+WXxKImjAIOUcfG498UH
         12UeeZv+3H6BePKUCm37rbDOWyN/M1jSjyFHMHQ5FnIQgWxhOBBCZxeP9xVNOMs2pUpR
         4SfCH3GOjDaqE2+J3dsjzb1Vq1B5P1LtUrMbfiVfpodsNkgl3EHdJABH8eAqbYkLNn27
         3Ykl8OBuEEkwvZitzRa9nEgw73MhW6Rkw90BDNH2n2HHVhuhr4AUWFYgrCbwGXYPusCy
         TNrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kO1lLrTN6Pc1ckFnwLB6HaIamRAA+WafB271xt65ZCg=;
        b=hgLY0nmG8dWL2M7komk0iLOcxcpARL2u0i67CKHEyru1QlYIupv1Tseyh0mBhciKVi
         +h+ytTUVX3HhyWrZgoxEWjRo5hyhP7c+xcRU10kblocrVDS6WsBdyGTrupkaxqJ9uANJ
         ROfV2Scgq5UGStuHlfs7rrRK8LWtxmhuAUxCD+3lHHtZy08tt6cjowMF5CWAy2usm9Y2
         38M7vxvF5EhKVlZkLpfsqB9iz3vSh/GDaDDqdO9Besuq5sPD3rKuHBTNp/CikzyDOZl3
         zeGvIkB5ktkwfTpAQj1OUdi6qwoNV3g4aBuJncT+3B+RBuJJBuV1McpQ8lfkatD+j366
         gHAQ==
X-Gm-Message-State: AOAM533M6nwJAx8ep8t6DwhmHBOi5hfdplRi52WwLmSLFD80KNLEbSgm
	OJTQ9i2rCBRJgD3DrOnjB6GJPrypCoFLqvfKfu0=
X-Google-Smtp-Source: ABdhPJz8qfSCZnHNVLIAwXkB7iRAtjbhRW48vpDamiGgi+Q3r2eEk3808p5Kx7nXrc4olCGIlIFBYT7LCaO03xq0yUc=
X-Received: by 2002:a17:906:ca54:: with SMTP id jx20mr2895998ejb.541.1604068492406;
 Fri, 30 Oct 2020 07:34:52 -0700 (PDT)
MIME-Version: 1.0
References: <i2fG.1604043790197452631.RWTF@lists.yoctoproject.org>
 <CAEt6NwoxfxmB=Qhq+UuVRhfCL1nho61-+n72VrdwQK9Q4qc+xg@mail.gmail.com>
 <CAHWyh-WmhaJ93XXvbPtfkOGgtmrxT5sr6x09N3+M_pS+hfC8xA@mail.gmail.com>
 <CAEt6Nwo+AAXhm8kVudjSC3MKxxtymCtZT1YgPj4VRmQoafyxuw@mail.gmail.com> <CAHWyh-Wy9e6=igVfhFveMY3Rga4u7fkKqgQVqSGSJiJ2hUJaaQ@mail.gmail.com>
In-Reply-To: <CAHWyh-Wy9e6=igVfhFveMY3Rga4u7fkKqgQVqSGSJiJ2hUJaaQ@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Fri, 30 Oct 2020 15:34:41 +0100
Message-ID: <CA+chaQdeOm_w-WP6Qg=VkkrnTAzKxvL4=DegF5U20g2j82cuhQ@mail.gmail.com>
Subject: Re: [yocto] Yocto OS Creation on Linux Ubuntu 16.04 LTS #yocto #yocto
To: Sujan KS <katakam.sujan@gmail.com>
Cc: Josef Holzmayr <jester@theyoctojester.info>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000af74ae05b2e44c47"

--000000000000af74ae05b2e44c47
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This URL also fetches for me without any issues.

If you cannot reach it from your location, you can still put an archive
with it to your premirror or redirect it to some other repo accessible to
you with something like:

[url "git://foo-bar.mirror-in-cn.cn/pub/scm/network/iproute2/iproute2.git"=
]
    insteadOf =3D "git://git.kernel.org/pub/scm/network/iproute2/iproute2.=
git"
in your .gitconfig.

> Please let us know if there is any other alternative to install the Yoct=
o
OS or the Valgrind tool on Yocto OS.

Normal iproute2 recipes are currently fetching tarball
"${KERNELORG_MIRROR}/linux/utils/net/${BPN}/${BP}.tar.xz", the recipe
you're using commes from some meta-intel-tsn layer:
meta-intel-tsn/recipes-connectivity/iproute2/iproute2_git.bb:do_fetch
which isn't even listed in https://layers.openembedded.org/, so first thin=
g
to fix your Yocto OS :) is to get rid of meta-intel-tsn or fix your
networking.


On Fri, Oct 30, 2020 at 3:21 PM Sujan KS <katakam.sujan@gmail.com> wrote:

> Hi
>
> Thank you for your response.sorry missed to include yocto group list.
> I tried in two different networks , one is office n/w and other is
> personal n/w.
> Both ways I got the same issue.
>
> We could do it successively for the first time and later, we wanted to d=
o
> it for the second time, because we need to include Valgrind in
> the config files so that we can run the Valgrind tool for our code.
>
> Please let us know if there is any other alternative to install the Yoct=
o
> OS or the Valgrind tool on Yocto OS.
>
> Regards
> Sujan
>
> On Fri, Oct 30, 2020 at 1:50 PM Josef Holzmayr <jester@theyoctojester.in=
fo>
> wrote:
>
>> For one thing, please keep the list on CC.
>>
>> Am Fr., 30. Okt. 2020 um 09:11 Uhr schrieb Sujan KS <
>> katakam.sujan@gmail.com>:
>> >
>> > Hi
>> >
>> > We tried all that. There are no n/w issues.
>> > We found some of the files needed are not available in github.
>> > Actually we use git commands to get the source code, which failed
>> during the build process and resulted in time out issue.
>>
>> Second, I have just verified that the URL
>> git://git.kernel.org/pub/scm/network/iproute2/iproute2.git perfectly
>> clones here. So it might be a problem with your provider or some
>> national firewall - another hint is:
>>
>> git.kernel.org[0: 147.75.46.191]: errno=3DConnection timed out
>> git.kernel.org[1: 2604:1380:4080:c00::1]: errno=3DNetwork is unreachabl=
e
>>
>> But there's really nothing that we can do about it, sorry. It *IS* a
>> network issue somewhere between you and the source repository.
>>
>> Greetz.
>> >
>> > Please let us know how to proceed.
>> >
>> > Regards
>> > Sujan
>> >
>> >
>> > On Fri, Oct 30, 2020 at 1:28 PM Josef Holzmayr <
>> jester@theyoctojester.info> wrote:
>> >>
>> >> Just given the links a quick try here, it seems like your build is
>> >> having connectivity issues. Please check you uplink, or if it is
>> >> somehow filtered/proxied.
>> >>
>> >> Greetz
>> >>
>> >> Am Fr., 30. Okt. 2020 um 08:43 Uhr schrieb <katakam.sujan@gmail.com>=
:
>> >> >
>> >> > We are facing issue in yocto OS creation due to time out issue and
>> unable to create the image.
>> >> >
>> >> > The log for this is as below,
>> >> > WARNING: xf86-video-intel-2_2.99.917-r0 do_fetch: Failed to fetch
>> URL git://
>> anongit.freedesktop.org/xorg/driver/xf86-video-intel;branch=3Dmaster,
>> attempting MIRRORS if available
>> >> > WARNING: xf86-video-ast-2_1.1.5-r0 do_fetch: Failed to fetch URL
>> http://xorg.freedesktop.org/releases/individual/driver/xf86-video-ast-1=
.1.5.tar.bz2,
>> attempting MIRRORS if available
>> >> > WARNING: xinit-1_1.4.1-r0 do_fetch: Failed to fetch URL
>> http://xorg.freedesktop.org/releases/individual/app/xinit-1.4.1.tar.bz2=
,
>> attempting MIRRORS if available
>> >> > WARNING: cwautomacros-native-20110201-r0 do_fetch: Failed to fetch
>> URL
>> https://downloads.sourceforge.net/cwautomacros.berlios/cwautomacros-201=
10201.tar.bz2,
>> attempting MIRRORS if available
>> >> > WARNING: intel-microcode-20190618-r0 do_fetch: Failed to fetch URL
>> git://
>> github.com/intel/Intel-Linux-Processor-Microcode-Data-Files.git;protoco=
l=3Dhttps,
>> attempting MIRRORS if available
>> >> > WARNING: lvm2-2.03.02-r0 do_fetch: Failed to fetch URL
>> ftp://sources.redhat.com/pub/lvm2/releases/LVM2.2.03.02.tgz, attempting
>> MIRRORS if available
>> >> > WARNING: xdpyinfo-1_1.3.2-r0 do_fetch: Failed to fetch URL
>> http://xorg.freedesktop.org/releases/individual/app/xdpyinfo-1.3.2.tar.=
bz2,
>> attempting MIRRORS if available
>> >> > WARNING: xhost-1_1.0.8-r0 do_fetch: Failed to fetch URL
>> http://xorg.freedesktop.org/releases/individual/app/xhost-1.0.8.tar.bz2=
,
>> attempting MIRRORS if available
>> >> > WARNING: linux-firmware-1_0.0+gitAUTOINC+711d3297ba-r0 do_fetch:
>> Failed to fetch URL git://
>> git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git,
>> attempting MIRRORS if available
>> >> > WARNING: dpkg-1.19.4-r0 do_fetch: Failed to fetch URL
>> http://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.4.tar.xz,
>> attempting MIRRORS if available
>> >> > WARNING: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Failed to
>> fetch URL git://git.kernel.org/pub/scm/network/iproute2/iproute2.git,
>> attempting MIRRORS if available
>> >> > ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetcher
>> failure: Fetch command export PSEUDO_DISABLED=3D1; unset
>> _PYTHON_SYSCONFIGDATA_NAME; export
>> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-owimWyNVWV"; expo=
rt
>> SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
>> PATH=3D"/home/user/pdl/yocto_build/scripts:/home/user/pdl/yocto_build/b=
uild/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r=
0/recipe-sysroot-native/usr/bin/x86_64-oe-linux:/home/user/pdl/yocto_build/=
build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-=
r0/recipe-sysroot/usr/bin/crossscripts:/home/user/pdl/yocto_build/build/tmp=
-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe=
-sysroot-native/usr/sbin:/home/user/pdl/yocto_build/build/tmp-glibc/work/co=
rei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-nativ=
e/usr/bin:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linu=
x/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/sbin:/home/us=
er/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-git=
AUTOINC+97864a5af3-r0/recipe-sysroot-native/bin:/home/user/pdl/yocto_build/=
bitbake/bin:/home/user/pdl/yocto_build/build/tmp-glibc/hosttools";
>> export HOME=3D"/home/user"; LANG=3DC git -c core.fsyncobjectfiles=3D0 c=
lone
>> --bare --mirror git://
>> git.kernel.org/pub/scm/network/iproute2/iproute2.git
>> /home/user/pdl/yocto_build/build/downloads/git2/git.kernel.org.pub.scm.=
network.iproute2.iproute2.git
>> --progress failed with exit code 128, output:
>> >> > Cloning into bare repository
>> '/home/user/pdl/yocto_build/build/downloads/git2/git.kernel.org.pub.scm=
.network.iproute2.iproute2.git'...
>> >> > fatal: unable to connect to git.kernel.org:
>> >> > git.kernel.org[0: 147.75.46.191]: errno=3DConnection timed out
>> >> > git.kernel.org[1: 2604:1380:4080:c00::1]: errno=3DNetwork is
>> unreachableERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetch=
er
>> failure for URL: 'git://
>> git.kernel.org/pub/scm/network/iproute2/iproute2.git'. Unable to fetch
>> URL from any source.
>> >> > ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch:
>> >> > ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Function
>> failed: base_do_fetch
>> >> > ERROR: Logfile of failure stored in:
>> /home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/ipro=
ute2/1.0-gitAUTOINC+97864a5af3-r0/temp/log.do_fetch.25170
>> >> > ERROR: Task
>> (/home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectivity/iproute=
2/iproute2_git.bb:do_fetch)
>> failed with exit code '1'
>> >> > NOTE: Tasks Summary: Attempted 3220 tasks of which 0 didn't need t=
o
>> be rerun and 1 failed.Summary: 1 task failed:
>> >> >
>>  /home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectivity/iproute=
2/iproute2_git.bb:
>> do_fetch
>> >> > Summary: There were 38 WARNING messages shown.
>> >> > Summary: There were 4 ERROR messages shown, returning a non-zero
>> exit code.
>> >> >
>> >> > Anyone faced similar issue, please help us resolving this issue.
>> >> >
>> >> >
>> >> >
>>
>
>=20
>
>

--000000000000af74ae05b2e44c47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This URL also fetches for me without any issues.<div><br><=
/div><div>If you cannot reach it from your location, you can still put an a=
rchive with it to your premirror or redirect it to some other repo accessib=
le to you with something like:</div><div><br></div><div>[url &quot;git://<a=
 href=3D"http://foo-bar.mirror-in-cn.cn/pub/scm/network/iproute2/iproute2.g=
it">foo-bar.mirror-in-cn.cn/pub/scm/network/iproute2/iproute2.git</a>&quot;=
]</div><div>=C2=A0 =C2=A0 insteadOf =3D &quot;git://<a href=3D"http://git.k=
ernel.org/pub/scm/network/iproute2/iproute2.git" rel=3D"noreferrer" target=
=3D"_blank">git.kernel.org/pub/scm/network/iproute2/iproute2.git</a>&quot;=
</div><div>in your .gitconfig.</div><div><br></div><div>&gt; Please let us =
know if there is any other alternative to install the Yocto OS or the Valgr=
ind tool on Yocto OS.</div><div><br></div><div>Normal iproute2 recipes are =
currently fetching tarball &quot;${KERNELORG_MIRROR}/linux/utils/net/${BPN}=
/${BP}.tar.xz&quot;, the recipe you&#39;re using commes from some meta-inte=
l-tsn layer:</div><div>meta-intel-tsn/recipes-connectivity/iproute2/iproute=
2_git.bb:do_fetch</div><div>which isn&#39;t even listed in=C2=A0<a href=3D"=
https://layers.openembedded.org/">https://layers.openembedded.org/</a>, so =
first thing to fix your Yocto OS :) is to get rid of meta-intel-tsn or fix =
your networking.<br><br></div></div><br><div class=3D"gmail_quote"><div dir=
=
=3D"ltr" class=3D"gmail_attr">On Fri, Oct 30, 2020 at 3:21 PM Sujan KS &lt=
;<a href=3D"mailto:katakam.sujan@gmail.com">katakam.sujan@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=
=3D"ltr"><div dir=3D"ltr"><div>Hi</div><div><br></div><div>Thank you for y=
our response.sorry missed to include yocto group list.<br>I tried in two di=
fferent networks , one is office n/w and other is personal n/w.<br>Both way=
s I got the same issue.</div><div><br></div><div>We could do it successivel=
y=C2=A0for the first time and later, we wanted to do it for the second time=
, because we need to include Valgrind in</div><div>the config files so that=
 we can run the Valgrind tool for our code.</div><div><br></div><div>Please=
 let us know if there is any other alternative to install the Yocto OS or t=
he Valgrind tool on Yocto OS.</div><div><br></div><div>Regards</div><div>Su=
jan</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, Oct 30, 2020 at 1:50 PM Josef Holzmayr &lt;<a href=3D"mail=
to:jester@theyoctojester.info" target=3D"_blank">jester@theyoctojester.info=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
For one thing, please keep the list on CC.<br>
<br>
Am Fr., 30. Okt. 2020 um 09:11 Uhr schrieb Sujan KS &lt;<a href=3D"mailto:=
katakam.sujan@gmail.com" target=3D"_blank">katakam.sujan@gmail.com</a>&gt;:=
<br>
&gt;<br>
&gt; Hi<br>
&gt;<br>
&gt; We tried all that. There are no n/w issues.<br>
&gt; We found some of the files needed are not available in github.<br>
&gt; Actually we use git commands to get the source code, which failed dur=
ing the build process and resulted in time out issue.<br>
<br>
Second, I have just verified that the URL<br>
git://<a href=3D"http://git.kernel.org/pub/scm/network/iproute2/iproute2.g=
it" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub/scm/network/ipr=
oute2/iproute2.git</a> perfectly<br>
clones here. So it might be a problem with your provider or some<br>
national firewall - another hint is:<br>
<br>
<a href=3D"http://git.kernel.org" rel=3D"noreferrer" target=3D"_blank">git=
.kernel.org</a>[0: 147.75.46.191]: errno=3DConnection timed out<br>
<a href=3D"http://git.kernel.org" rel=3D"noreferrer" target=3D"_blank">git=
.kernel.org</a>[1: 2604:1380:4080:c00::1]: errno=3DNetwork is unreachable<b=
r>
<br>
But there&#39;s really nothing that we can do about it, sorry. It *IS* a<b=
r>
network issue somewhere between you and the source repository.<br>
<br>
Greetz.<br>
&gt;<br>
&gt; Please let us know how to proceed.<br>
&gt;<br>
&gt; Regards<br>
&gt; Sujan<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Oct 30, 2020 at 1:28 PM Josef Holzmayr &lt;<a href=3D"mailto:=
jester@theyoctojester.info" target=3D"_blank">jester@theyoctojester.info</a=
>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Just given the links a quick try here, it seems like your build i=
s<br>
&gt;&gt; having connectivity issues. Please check you uplink, or if it is<=
br>
&gt;&gt; somehow filtered/proxied.<br>
&gt;&gt;<br>
&gt;&gt; Greetz<br>
&gt;&gt;<br>
&gt;&gt; Am Fr., 30. Okt. 2020 um 08:43 Uhr schrieb &lt;<a href=3D"mailto:=
katakam.sujan@gmail.com" target=3D"_blank">katakam.sujan@gmail.com</a>&gt;:=
<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; We are facing issue in yocto OS creation due to time out iss=
ue and unable to create the image.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The log for this is as below,<br>
&gt;&gt; &gt; WARNING: xf86-video-intel-2_2.99.917-r0 do_fetch: Failed to =
fetch URL git://<a href=3D"http://anongit.freedesktop.org/xorg/driver/xf86-=
video-intel;branch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">anongit.f=
reedesktop.org/xorg/driver/xf86-video-intel;branch=3Dmaster</a>, attempting=
 MIRRORS if available<br>
&gt;&gt; &gt; WARNING: xf86-video-ast-2_1.1.5-r0 do_fetch: Failed to fetch=
 URL <a href=3D"http://xorg.freedesktop.org/releases/individual/driver/xf86=
-video-ast-1.1.5.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://xorg.=
freedesktop.org/releases/individual/driver/xf86-video-ast-1.1.5.tar.bz2</a>=
, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: xinit-1_1.4.1-r0 do_fetch: Failed to fetch URL <a h=
ref=3D"http://xorg.freedesktop.org/releases/individual/app/xinit-1.4.1.tar.=
bz2" rel=3D"noreferrer" target=3D"_blank">http://xorg.freedesktop.org/relea=
ses/individual/app/xinit-1.4.1.tar.bz2</a>, attempting MIRRORS if available=
<br>
&gt;&gt; &gt; WARNING: cwautomacros-native-20110201-r0 do_fetch: Failed to=
 fetch URL <a href=3D"https://downloads.sourceforge.net/cwautomacros.berlio=
s/cwautomacros-20110201.tar.bz2" rel=3D"noreferrer" target=3D"_blank">https=
://downloads.sourceforge.net/cwautomacros.berlios/cwautomacros-20110201.tar=
.bz2</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: intel-microcode-20190618-r0 do_fetch: Failed to fet=
ch URL git://<a href=3D"http://github.com/intel/Intel-Linux-Processor-Micro=
code-Data-Files.git;protocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">=
github.com/intel/Intel-Linux-Processor-Microcode-Data-Files.git;protocol=3D=
https</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: lvm2-2.03.02-r0 do_fetch: Failed to fetch URL <a hr=
ef=3D"ftp://sources.redhat.com/pub/lvm2/releases/LVM2.2.03.02.tgz" rel=3D"n=
oreferrer" target=3D"_blank">ftp://sources.redhat.com/pub/lvm2/releases/LVM=
2.2.03.02.tgz</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: xdpyinfo-1_1.3.2-r0 do_fetch: Failed to fetch URL <=
a href=3D"http://xorg.freedesktop.org/releases/individual/app/xdpyinfo-1.3.=
2.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://xorg.freedesktop.org=
/releases/individual/app/xdpyinfo-1.3.2.tar.bz2</a>, attempting MIRRORS if =
available<br>
&gt;&gt; &gt; WARNING: xhost-1_1.0.8-r0 do_fetch: Failed to fetch URL <a h=
ref=3D"http://xorg.freedesktop.org/releases/individual/app/xhost-1.0.8.tar.=
bz2" rel=3D"noreferrer" target=3D"_blank">http://xorg.freedesktop.org/relea=
ses/individual/app/xhost-1.0.8.tar.bz2</a>, attempting MIRRORS if available=
<br>
&gt;&gt; &gt; WARNING: linux-firmware-1_0.0+gitAUTOINC+711d3297ba-r0 do_fe=
tch: Failed to fetch URL git://<a href=3D"http://git.kernel.org/pub/scm/lin=
ux/kernel/git/firmware/linux-firmware.git" rel=3D"noreferrer" target=3D"_bl=
ank">git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git</a=
>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: dpkg-1.19.4-r0 do_fetch: Failed to fetch URL <a hre=
f=3D"http://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.4.tar.xz" rel=
=3D"noreferrer" target=3D"_blank">http://ftp.debian.org/debian/pool/main/d=
/dpkg/dpkg_1.19.4.tar.xz</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fai=
led to fetch URL git://<a href=3D"http://git.kernel.org/pub/scm/network/ipr=
oute2/iproute2.git" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub=
/scm/network/iproute2/iproute2.git</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetch=
er failure: Fetch command export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONF=
IGDATA_NAME; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp/d=
bus-owimWyNVWV&quot;; export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring/s=
sh&quot;; export PATH=3D&quot;/home/user/pdl/yocto_build/scripts:/home/user=
/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAU=
TOINC+97864a5af3-r0/recipe-sysroot-native/usr/bin/x86_64-oe-linux:/home/use=
r/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitA=
UTOINC+97864a5af3-r0/recipe-sysroot/usr/bin/crossscripts:/home/user/pdl/yoc=
to_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97=
864a5af3-r0/recipe-sysroot-native/usr/sbin:/home/user/pdl/yocto_build/build=
/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/re=
cipe-sysroot-native/usr/bin:/home/user/pdl/yocto_build/build/tmp-glibc/work=
/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-na=
tive/sbin:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linu=
x/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/bin:/home/use=
r/pdl/yocto_build/bitbake/bin:/home/user/pdl/yocto_build/build/tmp-glibc/ho=
sttools&quot;; export HOME=3D&quot;/home/user&quot;; LANG=3DC git -c core.f=
syncobjectfiles=3D0 clone --bare --mirror git://<a href=3D"http://git.kerne=
l.org/pub/scm/network/iproute2/iproute2.git" rel=3D"noreferrer" target=3D"_=
blank">git.kernel.org/pub/scm/network/iproute2/iproute2.git</a> /home/user/=
pdl/yocto_build/build/downloads/git2/git.kernel.org.pub.scm.network.iproute=
2.iproute2.git --progress failed with exit code 128, output:<br>
&gt;&gt; &gt; Cloning into bare repository &#39;/home/user/pdl/yocto_build=
/build/downloads/git2/git.kernel.org.pub.scm.network.iproute2.iproute2.git&=
#39;...<br>
&gt;&gt; &gt; fatal: unable to connect to <a href=3D"http://git.kernel.org=
" rel=3D"noreferrer" target=3D"_blank">git.kernel.org</a>:<br>
&gt;&gt; &gt; <a href=3D"http://git.kernel.org" rel=3D"noreferrer" target=
=3D"_blank">git.kernel.org</a>[0: 147.75.46.191]: errno=3DConnection timed=
 out<br>
&gt;&gt; &gt; <a href=3D"http://git.kernel.org" rel=3D"noreferrer" target=
=3D"_blank">git.kernel.org</a>[1: 2604:1380:4080:c00::1]: errno=3DNetwork =
is unreachableERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetche=
r failure for URL: &#39;git://<a href=3D"http://git.kernel.org/pub/scm/netw=
ork/iproute2/iproute2.git" rel=3D"noreferrer" target=3D"_blank">git.kernel.=
org/pub/scm/network/iproute2/iproute2.git</a>&#39;. Unable to fetch URL fro=
m any source.<br>
&gt;&gt; &gt; ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch:<br>
&gt;&gt; &gt; ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Funct=
ion failed: base_do_fetch<br>
&gt;&gt; &gt; ERROR: Logfile of failure stored in: /home/user/pdl/yocto_bu=
ild/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5=
af3-r0/temp/log.do_fetch.25170<br>
&gt;&gt; &gt; ERROR: Task (/home/user/pdl/yocto_build/meta-intel-tsn/recip=
es-connectivity/iproute2/iproute2_git.bb:do_fetch) failed with exit code &#=
39;1&#39;<br>
&gt;&gt; &gt; NOTE: Tasks Summary: Attempted 3220 tasks of which 0 didn&#3=
9;t need to be rerun and 1 failed.Summary: 1 task failed:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0/home/user/pdl/yocto_build/meta-intel-tsn/recipe=
s-connectivity/iproute2/iproute2_git.bb:do_fetch<br>
&gt;&gt; &gt; Summary: There were 38 WARNING messages shown.<br>
&gt;&gt; &gt; Summary: There were 4 ERROR messages shown, returning a non-=
zero exit code.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Anyone faced similar issue, please help us resolving this is=
sue.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <br>
&gt;&gt; &gt;<br>
</blockquote></div></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000af74ae05b2e44c47--
