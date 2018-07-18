Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A8D5E01272; Wed, 18 Jul 2018 07:04:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 794D6E008F5
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 07:04:42 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id s12-v6so4226920ljj.0
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 07:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7KiNNuPJlPx6lsQdoFTLsCsvKiQXiHSSNyvljvCBgmk=;
	b=qKH0Z6BTNoXvNWSB1EjUzISRPzqx+SaADv8+2S7TbRgPPnC5sBN9igK3jb3WCKvDjX
	uuO5SAijYkR0e9doj1VMDS+eDMwAMZZ7BOIS+UgXcIXd1T8t2grAVmeK0tG5BM86fgvR
	tx8NCqiH5Bh+9BhWaa74Ya03Y9eao4qsJT0qsWT/tO5QiumdyAZ59j5mBPobDMXfHcbe
	4iQAKA/X1ztNBgdXYveGex/cdI2QEQLlL20imJrmhq1dantXg73L7xRGuSf/8C6ekYg5
	JsUE9S9mp4QfcmDTLjONjrVFjI9BIccAuB2AvmVUgpReO3Lx0LoiOWxDStaObgPyJNc5
	jCcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7KiNNuPJlPx6lsQdoFTLsCsvKiQXiHSSNyvljvCBgmk=;
	b=f5ahrSHKh+WWDM4NBauDCbKnjW1CzcLSJVvTwtiaSTkvPc0AXixNUP2eKVOKPsuG5r
	wmj+g+iA6hxyz8KzzQc/CGiwud+tsQAPH91r7snHMY46kyvWuQIuP2XBVf8OoQXPBxgv
	xPRLRPptx8Mz6rSA5boMmRbjvOPaxiXdGbUagILip2DtfylxwAPwhLDjIV1CVsnotiFb
	VpxxXrYutyw6yPL0WQvhJ7ISndLrI6qIsisoolbVHxqKlsWuYMJXobI3rhlLl51Ri3/B
	36rVsjGj+fs/Fsr7DKgRplWLeL+lnwJsPX6Ks8E9VDEVhXdc8dFu9/59ej9Sij+reH5p
	xnLA==
X-Gm-Message-State: AOUpUlFzhyGsDG3qUhTJfNMCJJckBC/G9mCWyskgafixgXYGOfl9iXA2
	7XZhGQ9Snckjv4NBtx0YQpe/qN9qwcedmohto5w=
X-Google-Smtp-Source: AAOMgpecEF9fL14CKI+yw5QsnPlHxEtDr8J2fcMUtO+6cbq5s6ZfYi194hZ15DaWKDZdsX4XytV0NRZ4tG/uD28J9AI=
X-Received: by 2002:a2e:944:: with SMTP id 65-v6mr4751098ljj.30.1531922681578; 
	Wed, 18 Jul 2018 07:04:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Wed, 18 Jul 2018 07:04:40
	-0700 (PDT)
In-Reply-To: <CANNYZj_aBuEMf1=_xVDQTtqtzxhka5XgLyNVREZvFiFHS7pWZw@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CANNYZj_aBuEMf1=_xVDQTtqtzxhka5XgLyNVREZvFiFHS7pWZw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 18 Jul 2018 16:04:40 +0200
Message-ID: <CAGAf8LwUEFNu4icxvk0HivK93Yfx7f6-i5gjKa7CpT4NUUHiKQ@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Chicken and Egg problem] Defining RDEPENDS of the package itself!
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
X-List-Received-Date: Wed, 18 Jul 2018 14:04:43 -0000
Content-Type: multipart/alternative; boundary="00000000000042483b0571468bbd"

--00000000000042483b0571468bbd
Content-Type: text/plain; charset="UTF-8"

Yep. Did it. Some symlink is missing (I guess, symlink to
/usr/local/lib/libcannelloni-common.so???

Initialising tasks: 100%
|#############################################################################################################################################################|
Time: 0:00:00
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks

*ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: cannelloni rdepends on
cannelloni-dev [dev-deps]ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue:
-dev package contains non-symlink .so: cannelloni-dev path
'/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni-dev/usr/lib/libcannelloni-common.so'
[dev-elf]*
ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. Please
consider fixing them.
ERROR: cannelloni-1.0-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package_qa.7896
ERROR: Task
(/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-canapp/cannelloni/cannelloni.bb:do_package_qa)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 539 tasks of which 532 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-canapp/cannelloni/cannelloni.bb:
do_package_qa
Summary: There were 2 WARNING messages shown.
Summary: There were 4 ERROR messages shown, returning a non-zero exit code.

How I can add this symlink (!) to this recipe?

Thank you,
Zoran

On Wed, Jul 18, 2018 at 1:49 PM, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> 2018-07-18 13:37 GMT+02:00 Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com>:
> > do_install() {
> >     install -d ${D}${bindir}
> >     install -m 0755 cannelloni ${D}${bindir}
> > }
>
> You are installing only the executable binary here, but not the
> corresponding library. Just remove the do_install function altogether,
> and cmake class should take care of the installation properly.
>
> Alex
>

--00000000000042483b0571468bbd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yep. Did it. Some symlink is missing (I guess, symlin=
k to /usr/local/lib/libcannelloni-common.so???<br><br>Initialising tasks: 1=
00% |######################################################################=
###########################################################################=
############| Time: 0:00:00<br>NOTE: Executing SetScene Tasks<br>NOTE: Exec=
uting RunQueue Tasks<br><span style=3D"color:rgb(255,0,0)"><i><b>ERROR: can=
nelloni-1.0-r0 do_package_qa: QA Issue: cannelloni rdepends on cannelloni-d=
ev [dev-deps]<br>ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: -dev pac=
kage contains non-symlink .so: cannelloni-dev path &#39;/work/cortexa8hf-ne=
on-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni-dev/usr/l=
ib/libcannelloni-common.so&#39; [dev-elf]</b></i></span><br>ERROR: cannello=
ni-1.0-r0 do_package_qa: QA run found fatal errors. Please consider fixing =
them.<br>ERROR: cannelloni-1.0-r0 do_package_qa: Function failed: do_packag=
e_qa<br>ERROR: Logfile of failure stored in: /home/netmodule.intranet/stojs=
avljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8=
hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package_qa.7896<br=
>ERROR: Task (/home/netmodule.intranet/stojsavljevic/projects/beaglebone-bl=
ack/yocto-rocko/poky/meta-test-layer/recipes-canapp/cannelloni/cannelloni.b=
b:do_package_qa) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: =
Attempted 539 tasks of which 532 didn&#39;t need to be rerun and 1 failed.<=
br><br>Summary: 1 task failed:<br>=C2=A0 /home/netmodule.intranet/stojsavlj=
evic/projects/beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-can=
app/cannelloni/cannelloni.bb:do_package_qa<br>Summary: There were 2 WARNING=
 messages shown.<br>Summary: There were 4 ERROR messages shown, returning a=
 non-zero exit code.<br><br></div>How I can add this symlink (!) to this re=
cipe?<br><div><br>Thank you,<br>Zoran<br></div></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Wed, Jul 18, 2018 at 1:49 PM, Alexan=
der Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alex.kanavin@gmail.com"=
 target=3D"_blank">alex.kanavin@gmail.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><span class=3D"">2018-07-18 13:37 GMT+02:00 Zoran St=
ojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stoj=
savljevic@gmail.com</a><wbr>&gt;:<br>
&gt; do_install() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${bindir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0755 cannelloni ${D}${bindir}<br>
&gt; }<br>
<br>
</span>You are installing only the executable binary here, but not the<br>
corresponding library. Just remove the do_install function altogether,<br>
and cmake class should take care of the installation properly.<br>
<br>
Alex<br>
</blockquote></div><br></div>

--00000000000042483b0571468bbd--
