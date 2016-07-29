Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45786E0073D; Fri, 29 Jul 2016 02:24:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE12FE0045D
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:24:24 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id y34so9274079ioi.3
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Zj/MDzidjFsMxS1/Mo4o4zTaqaCv4TVY8K1AyQ1ckWA=;
	b=0YpcrNt7VRV6f2ClUO0chSPbPCX08QfEvY1gbXmRK8M3z0rfRo1eXBANLnR/ZOVAwJ
	H3D1Kd+Sm47OVgKSzzqJTyg+Ma+FOoUP0Z/pnQ9JRggO7lRnq+aeY0Oe7eohultZAbks
	g2VRHxb8rTjjyMLPt7aY1MXRYe+JO4dj1zQaSwcmyupP9qwq62OHsqJAx6tKocDKjbXz
	LJbiyBLbz9hGveZ7Ouubnb+9jE+KUY2AqonFFIrMt3Acd+gC44loHVU4ZR3/QArM4zXT
	TnKgkNFDzs0PyIGVjF+KxI9lqplnpM9LRNXVffQSa8g8E/lH9IFtJm5G/4+GfvTTUeCA
	QHkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Zj/MDzidjFsMxS1/Mo4o4zTaqaCv4TVY8K1AyQ1ckWA=;
	b=muSzn8lxFmfMRETiXkzfqe6jpBz642rgOF2HSa+W4qIkotUGhQcLmv7YvD+zVyJopy
	RwAwwkaH6uWo2Mk/r/hLao73Xv+VOI7cu36d5P/kKKAfhgafQiEtrWsQNneo52RFJdOX
	GHRVhYWr9LB2Nvv1mXVcIAKJFCRHbKHDBDXCwroD+2uurle0LLcKhcEZNc7hmrqmud+Y
	n/s9Ix43HjAwnIgXFcXWZpsMemU6ehnSlTns186/6Nqyh+G4vHy4VdgzsdaT5uvhFtWn
	S4wkOfC/8S2/YHm5/se7CeZN3LtpBYzdLLWocC4X54Io057CnF112OzHVDIJvTEZ5Z6k
	j8zQ==
X-Gm-Message-State: AEkoouuxD+pywG9V3uaZcf6V72gBYFsSAXqcicxEOo1+TAKNkGOT7/KR+gMcl9KeLVTwQkmL8W68G+ih2jOBDQ==
X-Received: by 10.107.184.70 with SMTP id i67mr41673791iof.26.1469784263666;
	Fri, 29 Jul 2016 02:24:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.51.75 with HTTP; Fri, 29 Jul 2016 02:24:23 -0700 (PDT)
In-Reply-To: <CALwQErovo9JQV7apy+-Qnk9Dv5SDArmS+793GuwWoznF-gWAcQ@mail.gmail.com>
References: <CALwQErovo9JQV7apy+-Qnk9Dv5SDArmS+793GuwWoznF-gWAcQ@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
Date: Fri, 29 Jul 2016 14:54:23 +0530
Message-ID: <CALwQEroevj9bs_adtYoSFWoPCOtpAw1t4Xi6LP-dDyT-zP3reg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-selinux] Regarding "systemd" support with refpolicy-minimum v20151208
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
X-List-Received-Date: Fri, 29 Jul 2016 09:24:28 -0000
Content-Type: multipart/alternative; boundary=94eb2c06d362eed7f40538c2d028

--94eb2c06d362eed7f40538c2d028
Content-Type: text/plain; charset=UTF-8

Hi,


Request for comment set from:
https://lists.yoctoproject.org/pipermail/yocto/2016-July/031362.html to
https://lists.yoctoproject.org/pipermail/yocto/2016-July/031369.html

checked on below build config. with refpolicy-minimum using systemd as init
manager.

These are comparative boot logs.
refpolicy-minimum without RFC set: http://paste.ubuntu.com/21383917/

refpolicy-minimum with RFC set: http://paste.ubuntu.com/21383939/



Build Configuration:
BB_VERSION        = "1.31.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky-selinux"
DISTRO_VERSION    = "2.1+snapshot-20160729"
TUNE_FEATURES     = "arm armv5 thumb dsp"
TARGET_FPU        = "soft"
meta
meta-poky
meta-yocto-bsp    = "master:039f47ad197a9a53109c9f3deadd9c35e62c056d"
meta-selinux      = "master:d0f889259b610c3365962775c6e96a7cba407177"



Please advice, It will be a great help !


Thanks
Shrikant


On Fri, Jul 1, 2016 at 7:13 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
wrote:

> Hi,
>
> Using refpolicy-minimum v20151208 with systemd as init manager,
>
> I am facing few issues during enforcing mode,
> 1. systemd service status check, start & stop
> 2. auditd logfile error, so it is mixing with the boot log.
> 3. also other avc denials related to tmpfs & other types etc..
>
>
> setup details:poky and meta-selinux: both at master head & systemd enabled.
> with these SELinux booleans enabled: i.systemd_tmpfiles_manage_all
> ii.allow_mount_anyfile
>
> captured the avc denial to fix the systemd execution well, attached
> SELinux-Modules.txt :- the allow rules generated using audit tools.
> I am trying to merge these module into actual refpolicy modules, so we get
> the out of box experience for smooth systemd execution.
> Observed policy store seems corrupted some time, when start inserting the
> prepared policy modules allow rules into actual refpolicy modules..
>
> Does anyone also faced similar issues?
>
> Any pointers or references will be a great help.
>
>
> Thanks
> Shrikant
>
>

--94eb2c06d362eed7f40538c2d028
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br><br></div>Request for comment se=
t from: <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2016-July=
/031362.html">https://lists.yoctoproject.org/pipermail/yocto/2016-July/0313=
62.html</a> to <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/20=
16-July/031369.html">https://lists.yoctoproject.org/pipermail/yocto/2016-Ju=
ly/031369.html</a><br><br></div><div>checked on below build config. with re=
fpolicy-minimum using systemd as init manager.<br><br></div><div>These are =
comparative boot logs.<br></div><div>refpolicy-minimum without RFC set: <a =
href=3D"http://paste.ubuntu.com/21383917/">http://paste.ubuntu.com/21383917=
/</a> <br></div><div><br></div><div>refpolicy-minimum with RFC set: <a href=
=3D"http://paste.ubuntu.com/21383939/">http://paste.ubuntu.com/21383939/</a=
> <br></div><div><br><br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.31.0&quot;<br>BUILD_SYS=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NAT=
IVELSBSTRING=C2=A0=C2=A0 =3D &quot;universal&quot;<br>TARGET_SYS=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br=
>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &q=
uot;qemuarm&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;poky-selinux&quot;<br>DISTRO_VERSION=C2=A0=C2=
=A0=C2=A0 =3D &quot;2.1+snapshot-20160729&quot;<br>TUNE_FEATURES=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;arm armv5 thumb dsp&quot;<br>TARGET_FPU=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;soft&quot;<br>meta=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta=
-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto-bsp=C2=
=A0=C2=A0=C2=A0 =3D &quot;master:039f47ad197a9a53109c9f3deadd9c35e62c056d&q=
uot;<br>meta-selinux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:d0f8892=
59b610c3365962775c6e96a7cba407177&quot;<br><br><br><br></div><div>Please ad=
vice, It will be a great help !<br><br></div><div><br></div>Thanks<br></div=
>Shrikant<br><div><div><div><br></div></div></div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Fri, Jul 1, 2016 at 7:13 PM, Shri=
kant Bobade <span dir=3D"ltr">&lt;<a href=3D"mailto:bobadeshrikant@gmail.co=
m" target=3D"_blank">bobadeshrikant@gmail.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>Hi,<br><br></div>Usin=
g refpolicy-minimum v20151208 with systemd as init manager, <br><br>I am fa=
cing few issues during enforcing mode, <br>1. systemd service status check,=
 start &amp; stop<br>
2. auditd logfile error, so it is mixing with the boot log. <br>3. also oth=
er avc denials related to tmpfs &amp; other types etc..<br><br><br>setup de=
tails:poky and meta-selinux: both at master head &amp; systemd enabled.<br>=
with these SELinux booleans enabled: i.systemd_tmpfiles_manage_all ii.allow=
_mount_anyfile <br><br>captured the avc denial to fix the systemd execution=
 well, attached SELinux-Modules.txt :- the allow rules generated using audi=
t tools.<br></div><div>I am trying to merge these module into actual refpol=
icy modules, so we get the out of box experience for smooth systemd executi=
on.<br></div><div>Observed policy store seems corrupted some time, when sta=
rt inserting the prepared policy modules allow rules into actual refpolicy =
modules..<br><br></div><div>Does anyone also faced similar issues? <br><br>=
</div><div>Any pointers or references will be a great help.<br></div><div><=
br><br></div><div>Thanks<span class=3D"HOEnZb"><font color=3D"#888888"><br>=
</font></span></div><span class=3D"HOEnZb"><font color=3D"#888888"><div>Shr=
ikant<br></div><div></div><br></font></span></div>
</blockquote></div><br></div>

--94eb2c06d362eed7f40538c2d028--
