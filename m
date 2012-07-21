Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DE9BE013DB
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 12:19:00 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so5650980ggn.35
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 12:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=xGXxQIvX1l2XaCJ+3E/thuBiEm2gPm5SHpk4eSw7sf8=;
	b=tIjGwIKKHngkWVA5KsY7RbndKxM9JwZSNhZTzbnvJPO8yU3QOvR++FXCu2j0TFQ6d1
	n6xXOzqWE27c/xyULD/BMTxO0bxuUd6J2PVPQS++wgCCJzvRJRgYs1lwIZnuWxwLWwe3
	PDj/qmepWyrIaFkn0T2/n62fcuvaZ7XbO9sMwIuiLb4DkCuYjpDwk+dfu/JAF3MoflNu
	ATJosodrbs0ZPHs4iCHCuYJXVe9w3jltwUAD9LSwFi5tS54DRrqM/6zh8ihlsNm3VHK0
	tNzqKXrswsUr9pfkbu8RTYE1iRakAZVsfe2uOnkcs+jIv1VwK/JQ0m8SbpoQKWmi2A1P
	flxw==
Received: by 10.236.109.225 with SMTP id s61mr9818924yhg.5.1342898339506;
	Sat, 21 Jul 2012 12:18:59 -0700 (PDT)
Received: from ?IPv6:2002:5ecd:6ca2::15b5:3bcf:853:b711?
	([2002:5ecd:6ca2:0:15b5:3bcf:853:b711])
	by mx.google.com with ESMTPS id x3sm4719524yhd.9.2012.07.21.12.18.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 21 Jul 2012 12:18:58 -0700 (PDT)
References: <CDD20590-77F2-4644-9FD5-E9A58494A86E@gmail.com>
	<BFE7DC64-D5FD-4E82-9495-2BE230C4FD3F@gmail.com>
	<CAEsOVNesi=gbZ4vF4uaxJR=xOXmNzX5fUMOB+a+9Mm5E88MQsg@mail.gmail.com>
In-Reply-To: <CAEsOVNesi=gbZ4vF4uaxJR=xOXmNzX5fUMOB+a+9Mm5E88MQsg@mail.gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <6728D90B-84E9-4FFD-BA26-463D144B8BD0@gmail.com>
X-Mailer: iPhone Mail (9B206)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 21 Jul 2012 23:14:49 +0400
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: poky git pull merge failures
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 21 Jul 2012 19:19:00 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I fully wiped out my entire poky repo and repeated the process.=20

Elvis
On Jul 21, 2012, at 23:14, McClintock Matthew-B29882 <B29882@freescale.com=
> wrote:

> On Sat, Jul 21, 2012 at 2:01 PM, Elvis Dowson <elvis.dowson@gmail.com> w=
rote:
>> Hi,
>>       I just deleted my entire poky folder, cloned again, and I still f=
ind a whole bunch of errors, while trying to build core-image-sato.
>>=20
>> Someone is just messing up the whole yocto repository, to the point tha=
t it's starting to become unreliable just like OpenEmbedded was. When I fir=
st started using Yocto for the first few months, updates were reliable, and=
 things would build. But recently, someone's been messing things up so badl=
y. I just hope it isn't the same guy that's been messing up OpenEmbedded, a=
nd decided to join the Yocto bandwagon, and continue messing up this build =
system as well.
>>=20
>> ERROR: ParseError at /tool/yocto/meta-openembedded/meta-oe/recipes-conn=
ectivity/networkmanager/networkmanager_0.9.2.0.bb:60: unparsed line: '<<<<<=
<< HEAD'
>=20
> You clearly has some remaining merge conflicts in your tree. Try a
> 'git clean -qxfd' to clean out your tree.
>=20
> -M
>=20
>=20
>> ERROR: No recipes available for:
>>  /tool/yocto/poky/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
>>  /tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbapp=
end
>>  /tool/yocto/poky/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbap=
pend
>>  /tool/yocto/poky/meta-yocto/recipes-core/netbase/netbase_5.0.bbappend
>>  /tool/yocto/poky/meta-yocto/recipes-graphics/mesa/mesa-dri_7.11.bbappe=
nd
>>  /tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bb=
append
>>  /tool/yocto/poky/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.8.1.bbappend
>>  /tool/yocto/meta-openembedded/meta-oe/recipes-qt/qt4/qt4-x11-free_4.8.=
1.bbappend
>>  /tool/yocto/poky/meta-yocto/recipes-bsp/alsa-state/alsa-state.bbappend
>>  /tool/yocto/poky/meta-yocto/recipes-core/psplash/psplash_git.bbappend
>>  /tool/yocto/poky/meta-yocto/recipes-gnome/tasks/task-core-sdk-gmae.bba=
ppend
>>  /tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbapp=
end
>>  /tool/yocto/meta-openembedded/meta-oe/recipes-qt/tasks/task-qte-toolch=
ain-target.bbappend
>>  /tool/yocto/meta-openembedded/meta-oe/recipes-qt/qt4/qt4-embedded_4.8.=
1.bbappend
>>  /tool/yocto/meta-openembedded/meta-oe/recipes-multimedia/gstreamer/gst=
-ffmpeg_0.10.13.bbappend
>>  /tool/yocto/poky/meta-yocto/recipes-core/tasks/task-core-tools-profile=
.bbappend
>>  /tool/yocto/poky/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86=
-config_0.1.bbappend
>>  /tool/yocto/meta-xilinx/recipes-core/initscripts/initscripts_1.0.bbapp=
end
>>  /tool/yocto/meta-openembedded/meta-oe/recipes-extended/polkit/polkit_0=
.104.bbappend
>>  /tool/yocto/meta-openembedded/meta-oe/recipes-graphics/xorg-lib/pixman=
_0.26.2.bbappend
>>  /tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbapp=
end
>>  /tool/yocto/poky/meta-yocto/recipes-gnome/tasks/task-core-standalone-g=
mae-sdk-target.bbappend
>>  /tool/yocto/meta-xilinx/recipes-core/util-linux/util-linux_2.21.2.bbap=
pend
>>  /tool/yocto/poky/meta-yocto/recipes-graphics/mesa/mesa-dri_git.bbappen=
d
>>  /tool/yocto/poky/meta-yocto/recipes-core/busybox/busybox_1.19.4.bbappe=
nd
>>  /tool/yocto/meta-openembedded/meta-oe/recipes-core/busybox/busybox_1.1=
9.4.bbappend
>>  /tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/wpa-supplic=
ant/wpa-supplicant_1.0.bbappend
>> ERROR: Command execution failed: Exited with 1
>>=20
>> Summary: There were 3 ERROR messages shown, returning a non-zero exit c=
ode.
>>=20
>>=20
>> Elvis Dowson
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

