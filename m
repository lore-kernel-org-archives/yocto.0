Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B478DE00BD5; Sun, 20 Jan 2019 22:56:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D887BE00BC6
	for <yocto@yoctoproject.org>; Sun, 20 Jan 2019 22:56:32 -0800 (PST)
Received: by mail-qt1-f176.google.com with SMTP id i7so22457900qtj.10
	for <yocto@yoctoproject.org>; Sun, 20 Jan 2019 22:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=TG9xCotFNytB1UrTddcQQ/H0rGcFmlXSEmUrVCe5ksk=;
	b=PImikzuMB8IHRsQ2sHJ9Oad7ZrCU98Ba2s5xlLCFeQSIpliN1R9KN96JVHMB0xpEVd
	jjKVUltZgkbLncnLFlP+KQAB7hSZjaOxboZL74/qakfwBEJZpvLZcASwZG0ZHKThJgBO
	qNLUjmgDf0dSa87uYnKDnfW3PTVw4kGC+SFSiMO3GMrscijkFj3z8veOsBVztAj0XLEn
	mGDjIDdCk/S9wJRubbnAkDjIrVxqrxNuk/8rtxjhoSBQSrD4Fx4bXoGnnI9DFWXv4zlO
	NU6vLKTGQFXO/30YQCYOU3pPCms/harBP2UKmBathEEBfYLPRHm84x7IQKbhnY99Db2a
	vvyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=TG9xCotFNytB1UrTddcQQ/H0rGcFmlXSEmUrVCe5ksk=;
	b=oRiZPToFlUSZcQzDV/nGz17G6/Oz/KUTKsfnk9nJejl814BMcrEa6e10kOnZVR4f+T
	ghPvMYhhLMRgxrA8uwgBHYHk8cIRsvaOM9zj4avKCvjN0NdjCtBoekGBbKCcu1OnKRVT
	PcXCNnmapJ7+IdKA6iapwIOYIxE9FGT7dNHKilzzwAKjCUoV7eXDy/ehGdrPY2mKnktc
	XrC2qflubvCuIC7iuef5ryHUd52E3S6wLilWzXqmm0hUaxW5Zt/Nz1B25DQ3LxyOLVhf
	MBi+0jKR7q+rjtgSDj0XcKhUQrcbHFn/VZrilfOW6/exUXwo9RsZIKlRg4vYdUZ78qdm
	6jJw==
X-Gm-Message-State: AJcUukePqSjBwZqUutnSRgWf+PW6tfsW6R0i2bJg9LsrVIqtzm/nub2+
	XVdDSomTrOqTIgJCi4rX0K4dLqBUPxu94jxaeffIsMR4
X-Google-Smtp-Source: ALg8bN4eaD2wHD4IN7S5QvrL37esf3ARqpS/KyXRGyOTW+do4Espq0VDmNy05b/zDoQ7BjZSnpI0kw6PDKEWoPsZc0A=
X-Received: by 2002:a0c:895c:: with SMTP id 28mr24743263qvq.121.1548053791453; 
	Sun, 20 Jan 2019 22:56:31 -0800 (PST)
MIME-Version: 1.0
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 21 Jan 2019 07:56:20 +0100
Message-ID: <CAGAf8LzrskfFOqq78ztWRy7eqeE4uWh8=AbkS9X7gkmGx_9A6Q@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Systemd service recipe fails while booting from initramfs
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
X-List-Received-Date: Mon, 21 Jan 2019 06:56:34 -0000
Content-Type: multipart/alternative; boundary="0000000000005536e2057ff25c83"

--0000000000005536e2057ff25c83
Content-Type: text/plain; charset="UTF-8"

Hello to all,

I have added to my local.conf the following lines in order to port systemd
service
in YOCTO (Thud release):






*## Add systemd serviceVIRTUAL-RUNTIME_init_manager =
"systemd"VIRTUAL-RUNTIME_dev_manager =
"systemd"DISTRO_FEATURES_BACKFILL_CONSIDERED =
"sysvinit"VIRTUAL-RUNTIME_initscripts = ""DISTRO_FEATURES_append = " nfs
systemd"*

By executing bitbake -k core-image-minimal command, all went good (although
it rebuilt
almost the whole build - circa 80% of it), which is understandable.

While downloading initramfs on the target system, while bringing kernel up,
the following
happened (actual log):
[    0.000000] Kernel command line: console=ttyO0,115200n8 root=/dev/ram0
ip=dhcp
... [snap]...
[  114.064032] Sending DHCP requests ...... timed out!
[  190.652571] IP-Config: Auto-configuration of network failed
[  190.663158] Freeing unused kernel memory: 1024K
[  190.668661] Run /init as init process
System time before build time, advancing clock.


*Failed to mount tmpfs at /sys/fs/cgroup: No such file or directoryFailed
to mount cgroup at /sys/fs/cgroup/systemd: No such file or
directory[!!!!!!] *Failed to mount API filesystems, freezing.
*Freezing execution.*
[  192.984442] random: crng init done

I have two questions (please, could you provide to me some help here):
[1] How to fix this run-time bug (what I should do in the configuration)?
     I found some interesting explanation about possible solution
*(PACKAGECONFIG)*:

https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.html
[2] I would like also to include networkctl service (should I do something
specific to
     enable it, or this is done by default enabling systemd)?

Thank you,
Zoran

--0000000000005536e2057ff25c83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>Hello to all,</div><div><br></div><div>I have added to my lo=
cal.conf the following lines in order to port systemd service</div><div>in =
YOCTO (Thud release):</div><div><br></div><div><u><i>## Add systemd service=
<br>VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>VIRTUAL-RUNTIME=
_dev_manager =3D &quot;systemd&quot;<br>DISTRO_FEATURES_BACKFILL_CONSIDERED=
 =3D &quot;sysvinit&quot;<br>VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;<b=
r>DISTRO_FEATURES_append =3D &quot; nfs systemd&quot;</i></u></div><div><br=
></div><div>By executing bitbake -k core-image-minimal command, all went go=
od (although it rebuilt</div><div>almost the whole build - circa 80% of it)=
, which is understandable.</div><div><br></div><div>While downloading initr=
amfs on the target system, while bringing kernel up, the following</div><di=
v>happened (actual log):</div><div>[=C2=A0=C2=A0=C2=A0 0.000000] Kernel com=
mand line: console=3DttyO0,115200n8 root=3D/dev/ram0 ip=3Ddhcp</div><div>..=
. [snap]...</div><div>[=C2=A0 114.064032] Sending DHCP requests ...... time=
d out!<br>[=C2=A0 190.652571] IP-Config: Auto-configuration of network fail=
ed<br>[=C2=A0 190.663158] Freeing unused kernel memory: 1024K<br>[=C2=A0 19=
0.668661] Run /init as init process<br>System time before build time, advan=
cing clock.<br><span style=3D"color:rgb(255,0,0)"><i><b>Failed to mount tmp=
fs at /sys/fs/cgroup: No such file or directory<br>Failed to mount cgroup a=
t /sys/fs/cgroup/systemd: No such file or directory<br>[!!!!!!] </b></i></s=
pan>Failed to mount API filesystems, freezing.<br><span style=3D"color:rgb(=
255,0,0)"><i><b>Freezing execution.</b></i></span><br>[=C2=A0 192.984442] r=
andom: crng init done<br><br></div><div>I have two questions (please, could=
 you provide to me some help here):</div><div>[1] How to fix this run-time =
bug (what I should do in the configuration)?</div><div>=C2=A0=C2=A0=C2=A0=
=C2=A0 I found some interesting explanation about possible solution <i>(PAC=
KAGECONFIG)</i>:</div><div>=C2=A0=C2=A0=C2=A0=C2=A0 <a href=3D"https://list=
s.yoctoproject.org/pipermail/yocto/2013-November/016965.html" target=3D"_bl=
ank">https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.ht=
ml</a><br></div><div>[2] I would like also to include networkctl service (s=
hould I do something specific to</div><div>=C2=A0=C2=A0=C2=A0=C2=A0 enable =
it, or this is done by default enabling systemd)?</div><div><br></div><div>=
Thank you,</div><div>Zoran</div><div><br></div></div></div></div></div></di=
v>

--0000000000005536e2057ff25c83--
