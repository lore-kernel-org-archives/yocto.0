Return-Path: <psiva87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BEA7E00C2B; Tue,  2 Feb 2016 21:49:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (psiva87[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41C1DE00C29
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 21:49:23 -0800 (PST)
Received: by mail-lb0-f179.google.com with SMTP id x4so5909811lbm.0
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 21:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2QYiAzZy8AhJKW2dldAbLjRE8j3/5YSu+aJ7umKMO1k=;
	b=lMlg5Hf8wNZUs8y79K25ewX+BFKKsRQKKDilx8e4tEjoxor//ekYhbNTaVrQ5Wwb3n
	PdM1e1PsLvghYNqYsMP8czkLlgjxtDUQdUsuL3Ehe932oUREdu6/lEtPXlFSlcXl0vn9
	p1p22Mn0LYOfgaoCkxBoIF9TNYfI1FYX9MYmCoGh3ivOz3yo0uxaIHAwiujlEb3kMx1W
	bCbP7cmp/YHG8Z9o/o8VG2x0F4sAEtiYKvHr5IEMZIovJ4WheOZLvJoOFgSw9ck63yGI
	tYzMmu529YOIC+URPRxrMNOmGtf2uLsdUoCwaPFB20MyZEd3YOU6GHhrP3OBdMj+J+RH
	GRTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=2QYiAzZy8AhJKW2dldAbLjRE8j3/5YSu+aJ7umKMO1k=;
	b=RADXt7gcdvoMvXbYE/l2OJAdYWIiX+ECkPQ4LujRqjSQScAkcRjWng5/ybtW1XH4Q9
	I8c0u0WCdxezE2dsIrV+ErqZ8y2o9iteR5L3Tzw4N6AIXebXTkrUexXy36eEBR5toiw6
	HzEF1YEK6c+4EsQqGaPjVA8hbZ5UzYl+2pWUeQObsmfHO6SpwwhyTfH1eTQuvv0BAdzF
	8ZcT30whGuykqAPGZR5I5BdUpHwlXt6VPE40cSmRuQ4gbbo0r4enSi33Z9MrB10iGKit
	96eK6b8nrZxx6nKygztJzI6zBzv9Z7xSKBUE+ZxfX4jcjk/9xBvcd/qPiv0IVKf2GobE
	aOpA==
X-Gm-Message-State: AG10YOTBH2wzqfIwGeeFmSIpExxLFVLtzakSD5dT9pgtB2tdtqYCgqKQCOcA20HtyF0x0/3q2Rpb7CLn7/uMyg==
MIME-Version: 1.0
X-Received: by 10.112.198.102 with SMTP id jb6mr12909861lbc.44.1454478561340; 
	Tue, 02 Feb 2016 21:49:21 -0800 (PST)
Received: by 10.112.143.6 with HTTP; Tue, 2 Feb 2016 21:49:21 -0800 (PST)
In-Reply-To: <tencent_20A63B0F0423506A7CA4FA64@qq.com>
References: <tencent_20A63B0F0423506A7CA4FA64@qq.com>
Date: Wed, 3 Feb 2016 11:19:21 +0530
Message-ID: <CAOorjZRWEv7-UuHY_2cj_Ka0m+w1DkihH+agJFA--pW==zsbOQ@mail.gmail.com>
From: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
To: =?UTF-8?B?5byg5YGl?= <jackzhang1992@t.shu.edu.cn>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] errors when I "bitbake" an image for my rpi2 B+ board
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
X-List-Received-Date: Wed, 03 Feb 2016 05:49:29 -0000
Content-Type: multipart/alternative; boundary=001a11c34aa8fb82ca052ad72d88

--001a11c34aa8fb82ca052ad72d88
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jack,
How about wget or curl of those urls, are you able to reach it? Also, see
if explorer redirects this to https or other protocol?

Regards,
Sivasubramanian

On Wed, Feb 3, 2016 at 8:11 AM, =E5=BC=A0=E5=81=A5 <jackzhang1992@t.shu.edu=
.cn> wrote:

> [meta-raspberrypi]
> Hi,every one.
> I'm trying to use meta-raspberrypi layer to build an image for my
> raspberrypi2 B+ board.
>
> After I download poky,I git clone meta-raspberrypi layer as follows: "git
> clone git://git.yoctoproject.org/meta-raspberrypi"
> Then I totally follow the README in the meta-raspberrypi directory as
> follows:
> "
> .........
> How to use it:
>
> 1. source poky/oe-init-build-env rpi-build
> 2. Add needed layer to bblayers.conf:
>     - meta-raspberrypi
> 3  Set MACHINE to "raspberrypi"/"raspberrypi2" in local.conf  (I set
> machine to be "raspberrypi2" here)
> 4. bitbake rpi-hwup-image
> 5. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is
> used)
> 6. Boot your RPI.
> "
>
> but it comes out with several errors after "bitbake", I don't know why, w=
arnings
> and errors are as follows:
> "
> WARNING: Failed to fetch URL
> ftp://invisible-island.net/ncurses/current/ncurses-5.9-20150329.tgz,
> attempting MIRRORS if available
> WARNING: Failed to fetch URL
> http://kernel.org/pub/linux/kernel/v4.x/linux-4.1.tar.xz, attempting
> MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
> wget: unable to resolve host address 'kernel.org'
>
> ERROR: Function failed: Fetcher failure for URL: '
> http://kernel.org/pub/linux/kernel/v4.x/linux-4.1.tar.xz'. Unable to
> fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /home/jackzhang1992/poky/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-li=
nux-gnueabi/linux-libc-headers/4.1-r0/temp/log.do_fetch.8031
> ERROR: Task 961
> (/home/jackzhang1992/poky/meta/recipes-kernel/linux-libc-headers/
> linux-libc-headers_4.1.bb, do_fetch) failed with exit code '1'
> WARNING: Failed to fetch URL
> http://ymorin.is-a-geek.org/download/kconfig-frontends/kconfig-frontends-=
3.12.0.0.tar.xz,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
> wget: unable to resolve host address 'ymorin.is-a-geek.org'
>
> ERROR: Function failed: Fetcher failure for URL: '
> http://ymorin.is-a-geek.org/download/kconfig-frontends/kconfig-frontends-=
3.12.0.0.tar.xz'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /home/jackzhang1992/poky/build/tmp/work/i686-linux/kconfig-frontends-nati=
ve/3.12.0.0-r0/temp/log.do_fetch.8067
> ERROR: Task 728
> (virtual:native:/home/jackzhang1992/poky/meta/recipes-devtools/kconfig-fr=
ontends/
> kconfig-frontends_3.12.0.0.bb, do_fetch) failed with exit code '1'
> WARNING: Failed to fetch URL
> http://dotat.at/prog/unifdef/unifdef-2.10.tar.xz, attempting MIRRORS if
> available
> NOTE: Tasks Summary: Attempted 152 tasks of which 0 didn't need to be
> rerun and 2 failed.
> "
>
> According to the errors, It seams there are many fetcher failures,but whe=
n
> I copy the link such as"
> http://kernel.org/pub/linux/kernel/v4.x/linux-4.1.tar.xz"  to my firefox
> explorer, It could find the files. It is very weird.
>
>
> If you have any idea about it, pls contact with me.
> Thanks
>
>
> Jack
> Shanghai
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c34aa8fb82ca052ad72d88
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Jack,<br></div>How about wget or curl of=
 those urls, are you able to reach it? Also, see if explorer redirects this=
 to https or other protocol?<br><br></div>Regards,<br></div>Sivasubramanian=
<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed,=
 Feb 3, 2016 at 8:11 AM, =E5=BC=A0=E5=81=A5 <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jackzhang1992@t.shu.edu.cn" target=3D"_blank">jackzhang1992@t.sh=
u.edu.cn</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>[me=
ta-raspberrypi]</div><div>Hi,every one.=C2=A0</div><div>I&#39;m trying to u=
se meta-raspberrypi layer to build an image for my raspberrypi2 B+ board.=
=C2=A0</div><div><div><br></div><div>After I download poky,I git clone meta=
-raspberrypi layer as follows:=C2=A0<span style=3D"line-height:1.5">&quot;g=
it clone git://<a href=3D"http://git.yoctoproject.org/meta-raspberrypi" tar=
get=3D"_blank">git.yoctoproject.org/meta-raspberrypi</a>&quot;</span></div>=
</div><div>Then I totally follow the README in the meta-raspberrypi directo=
ry as follows:</div><div>&quot;</div><div><div>.........</div><div>How to u=
se it:</div><div><br></div><div>1. source poky/oe-init-build-env rpi-build<=
/div><div>2. Add needed layer to bblayers.conf:</div><div>=C2=A0 =C2=A0 - m=
eta-raspberrypi</div><div>3 =C2=A0Set MACHINE to &quot;raspberrypi&quot;/&q=
uot;raspberrypi2&quot; in local.conf =C2=A0(I set machine to be &quot;raspb=
errypi2&quot; here)</div><div>4. bitbake rpi-hwup-image</div><div>5. dd to =
a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is used)</div=
><div>6. Boot your RPI.</div></div><div><span style=3D"line-height:1.5">&qu=
ot;</span></div><div><span style=3D"line-height:1.5"><br></span></div><div>=
but it comes out with several errors after &quot;bitbake&quot;, I don&#39;t=
 know why,=C2=A0<span style=3D"line-height:1.5">warnings and errors are as =
follows:</span></div><div><div>&quot;</div><div>WARNING: Failed to fetch UR=
L <a href=3D"ftp://invisible-island.net/ncurses/current/ncurses-5.9-2015032=
9.tgz" target=3D"_blank">ftp://invisible-island.net/ncurses/current/ncurses=
-5.9-20150329.tgz</a>, attempting MIRRORS if available</div><div>WARNING: F=
ailed to fetch URL <a href=3D"http://kernel.org/pub/linux/kernel/v4.x/linux=
-4.1.tar.xz" target=3D"_blank">http://kernel.org/pub/linux/kernel/v4.x/linu=
x-4.1.tar.xz</a>, attempting MIRRORS if available</div><div>ERROR: Fetcher =
failure: Fetch command failed with exit code 4, output:</div><div>wget: una=
ble to resolve host address &#39;<a href=3D"http://kernel.org" target=3D"_b=
lank">kernel.org</a>&#39;</div><div><br></div><div>ERROR: Function failed: =
Fetcher failure for URL: &#39;<a href=3D"http://kernel.org/pub/linux/kernel=
/v4.x/linux-4.1.tar.xz" target=3D"_blank">http://kernel.org/pub/linux/kerne=
l/v4.x/linux-4.1.tar.xz</a>&#39;. Unable to fetch URL from any source.</div=
><div>ERROR: Logfile of failure stored in: /home/jackzhang1992/poky/build/t=
mp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/linux-libc-headers/4.1=
-r0/temp/log.do_fetch.8031</div><div>ERROR: Task 961 (/home/jackzhang1992/p=
oky/meta/recipes-kernel/linux-libc-headers/<a href=3D"http://linux-libc-hea=
ders_4.1.bb" target=3D"_blank">linux-libc-headers_4.1.bb</a>, do_fetch) fai=
led with exit code &#39;1&#39;</div><div>WARNING: Failed to fetch URL <a hr=
ef=3D"http://ymorin.is-a-geek.org/download/kconfig-frontends/kconfig-fronte=
nds-3.12.0.0.tar.xz" target=3D"_blank">http://ymorin.is-a-geek.org/download=
/kconfig-frontends/kconfig-frontends-3.12.0.0.tar.xz</a>, attempting MIRROR=
S if available</div><div>ERROR: Fetcher failure: Fetch command failed with =
exit code 4, output:</div><div>wget: unable to resolve host address &#39;<a=
 href=3D"http://ymorin.is-a-geek.org" target=3D"_blank">ymorin.is-a-geek.or=
g</a>&#39;</div><div><br></div><div>ERROR: Function failed: Fetcher failure=
 for URL: &#39;<a href=3D"http://ymorin.is-a-geek.org/download/kconfig-fron=
tends/kconfig-frontends-3.12.0.0.tar.xz" target=3D"_blank">http://ymorin.is=
-a-geek.org/download/kconfig-frontends/kconfig-frontends-3.12.0.0.tar.xz</a=
>&#39;. Unable to fetch URL from any source.</div><div>ERROR: Logfile of fa=
ilure stored in: /home/jackzhang1992/poky/build/tmp/work/i686-linux/kconfig=
-frontends-native/3.12.0.0-r0/temp/log.do_fetch.8067</div><div>ERROR: Task =
728 (virtual:native:/home/jackzhang1992/poky/meta/recipes-devtools/kconfig-=
frontends/<a href=3D"http://kconfig-frontends_3.12.0.0.bb" target=3D"_blank=
">kconfig-frontends_3.12.0.0.bb</a>, do_fetch) failed with exit code &#39;1=
&#39;</div><div>WARNING: Failed to fetch URL <a href=3D"http://dotat.at/pro=
g/unifdef/unifdef-2.10.tar.xz" target=3D"_blank">http://dotat.at/prog/unifd=
ef/unifdef-2.10.tar.xz</a>, attempting MIRRORS if available</div><div>NOTE:=
 Tasks Summary: Attempted 152 tasks of which 0 didn&#39;t need to be rerun =
and 2 failed.</div></div><div>&quot;</div><div><br></div><div>According to =
the errors, It seams there are many fetcher failures,but when I copy the li=
nk such as&quot;<span style=3D"line-height:1.5"><a href=3D"http://kernel.or=
g/pub/linux/kernel/v4.x/linux-4.1.tar.xz" target=3D"_blank">http://kernel.o=
rg/pub/linux/kernel/v4.x/linux-4.1.tar.xz</a></span><span style=3D"line-hei=
ght:1.5">&quot; =C2=A0to my firefox explorer, It could find the files. It i=
s very weird.</span></div><div><span style=3D"line-height:1.5"><br></span><=
/div><div><span style=3D"line-height:1.5"><br></span></div><div><span style=
=3D"line-height:1.5">If you have any idea about it, pls contact with me.</s=
pan></div><div><span style=3D"line-height:1.5">Thanks</span></div><div><spa=
n style=3D"line-height:1.5"><br></span></div><div><span style=3D"line-heigh=
t:1.5"><br></span></div><div><span style=3D"line-height:1.5">Jack</span></d=
iv><div><span style=3D"line-height:1.5">Shanghai</span></div><div><span sty=
le=3D"line-height:1.5"><br></span></div><div><u></u><u></u></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c34aa8fb82ca052ad72d88--
