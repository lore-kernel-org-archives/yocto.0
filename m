Return-Path: <pcjegan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41DCFE004EB; Tue, 29 Apr 2014 22:56:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pcjegan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C931E003C7
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 22:55:57 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id sa20so1544019veb.8
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 22:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=cdhqauTK7+jMMYE0NtXLNOUJFbrJiGmwRwBglS0CHvY=;
	b=NQYsoW+EfRLFQHYzXZayiu6m4WE7MRfgvWHUiWzbLD6io9zrXnZ3GMykFwecumBf3O
	pWjrdqTIA1I3wWbn1HS1zwYVbBnOLatoHegbuYpSuM9bBy4xi9ZFncz9QA/jatOO8mTV
	nGg6RHgtKwBCpnGetwiC3icCClZMGYyGTunE9qK2lnGmyqV3rfaOpqeFy0LJnx03hKqo
	nYqDsPOTrP1dvItx+Oy4XJQ1Xna1ZMCeuZRb9CYeMTmjUm85EcVxD6fIUGVya+7hO+bl
	sfmZ9Ky1OHIyV/PtUBDILCEp7ETX9lLh73HJTsAsUFWlEUYXNx3Tcg0l9L5kvD1tYnwO
	jEKA==
X-Received: by 10.52.123.39 with SMTP id lx7mr1819114vdb.22.1398837356262;
	Tue, 29 Apr 2014 22:55:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.172.65 with HTTP; Tue, 29 Apr 2014 22:55:36 -0700 (PDT)
In-Reply-To: <CAPTvksAGZxgRtN0V=GPUVe3thxfQsm5Sox5ghZce5yDYf5dciw@mail.gmail.com>
References: <CAPTvksAGZxgRtN0V=GPUVe3thxfQsm5Sox5ghZce5yDYf5dciw@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Wed, 30 Apr 2014 11:25:36 +0530
Message-ID: <CAAA4K6KaYrX5AgNpr9oV3zJuSX0-mJbp1Dex2m6rcmcj-MgeWg@mail.gmail.com>
To: Rich Wilson <richaw@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: mount.nfs missing
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
X-List-Received-Date: Wed, 30 Apr 2014 05:56:02 -0000
Content-Type: multipart/alternative; boundary=bcaec51dd2abb7fc2e04f83c33a9

--bcaec51dd2abb7fc2e04f83c33a9
Content-Type: text/plain; charset=UTF-8

Hi,

Could you please try adding nfs-utils-client??

I see this in nfs-utils recipe,
{{{
FILES_${PN}-client = "${base_sbindir}/*mount.nfs* ${sbindir}/*statd \
}}}

-JC



On Tue, Apr 29, 2014 at 8:31 PM, Rich Wilson <richaw@gmail.com> wrote:

> I have a working target hardware, except that /sbin/mount.nfs
> is missing from my root fs. I was able to get nfs to work by
> manually copying mount.nfs (and brethren) from my development
> system to the SD card, but it would be nice to hot have to do this!
>
> In local.conf, I have added the following:
>
> MACHINE ?= "zedboard-zynq7"
> DISTRO_FEATURES_append = " nfs"
> CORE_IMAGE_EXTRA_INSTALL += " nfs-utils"
>
> and built using
>
> rw@linux-cyy8:~/Downloads/poky-dora-10.0.1/build> bitbake core-image-basic
> Loading cache: 100%
> |#########################################################################################|
> ETA:  00:00:00
> Loaded 1194 entries from dependency cache.
> Parsing recipes: 100%
> |#######################################################################################|
> Time: 00:00:00
> Parsing of 862 .bb files complete (861 cached, 1 parsed). 1194 targets, 54
> skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.20.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "openSUSE-project-12.3"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "zedboard-zynq7"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.5.1"
> TUNE_FEATURES     = " armv7a vfp neon zynq"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "<unknown>:<unknown>"
> meta-xilinx       = "dora:aa7d677515ab7d45bbd3bdd6c5383f4143147c6d"
>
> NOTE: Preparing runqueue
> <snip>
>
> mount.nfs is missing from the output:
>
> rw@linux-cyy8:~/Downloads/poky-dora-10.0.1/build/tmp/deploy/images/zedboard-zynq7>
> tar -tzf core-image-minimal-zedboard-zynq7.tar.gz | grep nfs
> ./etc/init.d/nfsserver
> ./etc/init.d/umountnfs.sh
> ./etc/init.d/mountnfs.sh
> ./etc/rc0.d/K20nfsserver
> ./etc/rc0.d/S31umountnfs.sh
> ./etc/nfs-utils.conf
> ./etc/rc5.d/S20nfsserver
> ./etc/rc2.d/S20nfsserver
> ./etc/rc4.d/S20nfsserver
> ./etc/rc6.d/K20nfsserver
> ./etc/rc6.d/S31umountnfs.sh
> ./etc/network/if-pre-up.d/nfsroot
> ./etc/rcS.d/S45mountnfs.sh
> ./etc/rc1.d/K20nfsserver
> ./etc/rc3.d/S20nfsserver
> ./usr/sbin/rpc.nfsd
> ./usr/sbin/nfsstat
> ./usr/lib/libnfsidmap.so.0.3.0
> ./usr/lib/libnfsidmap.so.0
> ./usr/lib/libnfsidmap/
> ./usr/lib/libnfsidmap/static.so
> ./usr/lib/libnfsidmap/nsswitch.so
> ./var/lib/nfs/
> ./var/lib/nfs/rmtab
> ./var/lib/nfs/sm/
> ./var/lib/nfs/xtab
> ./var/lib/nfs/etab
> ./var/lib/nfs/state
> ./var/lib/nfs/v4recovery/
> ./var/lib/nfs/statd/
> ./var/lib/nfs/sm.bak/
> rw@linux-cyy8
> :~/Downloads/poky-dora-10.0.1/build/tmp/deploy/images/zedboard-zynq7>
>
> I get the same result if I try core-image-basic.
>
> --
> Rich Wilson
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
JCP

--bcaec51dd2abb7fc2e04f83c33a9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"f=
ont-family:&#39;trebuchet ms&#39;,sans-serif"><br></div><div class=3D"gmail=
_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">

Could you please try adding=C2=A0nfs-utils-client??</div><div class=3D"gmai=
l_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif"><br></di=
v><div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,=
sans-serif">

I see this in nfs-utils recipe,</div><div class=3D"gmail_default" style=3D"=
font-family:&#39;trebuchet ms&#39;,sans-serif">{{{</div><div class=3D"gmail=
_default" style><font face=3D"trebuchet ms, sans-serif">FILES_${PN}-client =
=3D &quot;${base_sbindir}/*mount.nfs* ${sbindir}/*statd \</font><br>

</div><div class=3D"gmail_default" style><font face=3D"trebuchet ms, sans-s=
erif">}}}</font></div><div class=3D"gmail_default" style><font face=3D"treb=
uchet ms, sans-serif"><br></font></div><div class=3D"gmail_default" style><=
font face=3D"trebuchet ms, sans-serif">-JC</font></div>

<div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sa=
ns-serif"><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"=
gmail_quote">On Tue, Apr 29, 2014 at 8:31 PM, Rich Wilson <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:richaw@gmail.com" target=3D"_blank">richaw@gmail.com=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I have a working target har=
dware, except that /sbin/mount.nfs<div>is missing from my root fs. I was ab=
le to get nfs to work by</div>

<div>manually copying mount.nfs (and brethren) from my development</div><di=
v>
system to the SD card, but it would be nice to hot have to do this!</div><d=
iv><br></div><div>In local.conf, I have added the following:</div><div><br>=
</div><div><div>MACHINE ?=3D &quot;zedboard-zynq7&quot;</div><div><div>DIST=
RO_FEATURES_append =3D &quot; nfs&quot;<br>


</div><div>CORE_IMAGE_EXTRA_INSTALL +=3D &quot; nfs-utils&quot;</div><div><=
br></div></div><div>and built using</div><div><br></div><div><div>rw@linux-=
cyy8:~/Downloads/poky-dora-10.0.1/build&gt; bitbake core-image-basic</div>


<div>Loading cache: 100% |#################################################=
########################################| ETA: =C2=A000:00:00</div><div>Loa=
ded 1194 entries from dependency cache.</div><div>Parsing recipes: 100% |##=
###########################################################################=
##########| Time: 00:00:00</div>


<div>Parsing of 862 .bb files complete (861 cached, 1 parsed). 1194 targets=
, 54 skipped, 0 masked, 0 errors.</div><div>NOTE: Resolving any missing tas=
k queue dependencies</div><div><br></div><div>Build Configuration:</div>


<div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.20.0&quot;</div><div=
>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><d=
iv>NATIVELSBSTRING =C2=A0 =3D &quot;openSUSE-project-12.3&quot;</div><div>T=
ARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;=
</div>


<div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;zedboard-zynq7&qu=
ot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;pok=
y&quot;</div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.5.1&quot;</div><d=
iv>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot; armv7a vfp neon zynq&quot;</div><=
div>


TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp-neon&quot;</div><div>me=
ta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto =
=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot=
;&lt;unknown&gt;:&lt;unknown&gt;&quot;</div><div>meta-xilinx =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;dora:aa7d677515ab7d45bbd3bdd6c5383f4143147c6d&quot;</div>


<div><br></div><div>NOTE: Preparing runqueue</div><div>&lt;snip&gt;</div></=
div><div><br></div><div>mount.nfs is missing from the output:</div><div><br=
></div><div><div>rw@linux-cyy8:~/Downloads/poky-dora-10.0.1/build/tmp/deplo=
y/images/zedboard-zynq7&gt; tar -tzf core-image-minimal-zedboard-zynq7.tar.=
gz | grep nfs</div>


<div>./etc/init.d/nfsserver</div><div>./etc/init.d/umountnfs.sh</div><div>.=
/etc/init.d/mountnfs.sh</div><div>./etc/rc0.d/K20nfsserver</div><div>./etc/=
rc0.d/S31umountnfs.sh</div><div>./etc/nfs-utils.conf</div><div>./etc/rc5.d/=
S20nfsserver</div>


<div>./etc/rc2.d/S20nfsserver</div><div>./etc/rc4.d/S20nfsserver</div><div>=
./etc/rc6.d/K20nfsserver</div><div>./etc/rc6.d/S31umountnfs.sh</div><div>./=
etc/network/if-pre-up.d/nfsroot</div><div>./etc/rcS.d/S45mountnfs.sh</div>


<div>./etc/rc1.d/K20nfsserver</div><div>./etc/rc3.d/S20nfsserver</div><div>=
./usr/sbin/rpc.nfsd</div><div>./usr/sbin/nfsstat</div><div>./usr/lib/libnfs=
idmap.so.0.3.0</div><div>./usr/lib/libnfsidmap.so.0</div><div>./usr/lib/lib=
nfsidmap/</div>


<div>./usr/lib/libnfsidmap/static.so</div><div>./usr/lib/libnfsidmap/nsswit=
ch.so</div><div>./var/lib/nfs/</div><div>./var/lib/nfs/rmtab</div><div>./va=
r/lib/nfs/sm/</div><div>./var/lib/nfs/xtab</div><div>./var/lib/nfs/etab</di=
v>


<div>./var/lib/nfs/state</div><div>./var/lib/nfs/v4recovery/</div><div>./va=
r/lib/nfs/statd/</div><div>./var/lib/nfs/sm.bak/</div><div>rw@linux-cyy8:~/=
Downloads/poky-dora-10.0.1/build/tmp/deploy/images/zedboard-zynq7&gt;</div>


</div><div><br></div><div>I get the same result if I try core-image-basic.<=
/div><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div>-- <br>R=
ich Wilson<div><br></div>
</font></span></div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--bcaec51dd2abb7fc2e04f83c33a9--
