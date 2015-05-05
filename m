Return-Path: <rob.woolleywr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6D7BE009B4; Tue,  5 May 2015 07:05:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rob.woolleywr[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60D21E00992
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 07:05:14 -0700 (PDT)
Received: by widdi4 with SMTP id di4so147877625wid.0
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 07:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DVIpSU02JJEaNEcpwhB+2H8PS8oc2fmwYeXBSOMrnwI=;
	b=sv8CVqtBWLlYpJPuRTjutXWW13miXjFP8aTokaK5c8grRNvGyd2OhnnOeyXGVkEzax
	MSQA1kcdSw9rAVEq2BkBgzHZfGTzrkKKU7xA6TrsO7hq20GrKILc5zbfeFVNgEudFmWT
	LBOx9rNwM/0xRaaI6fxQfShkx6QfXOxbmtMhFHg3CZAlO5zz20ZsZiNfRE0ABPPASOUR
	i0LgVrhnFmFC2C7zV+UpTooWq5/WlOzqLIWgpuu/s0zMKfzlPo2BVqLMH66d/uhgAse8
	iMwQYiXHx5xH2HvxxsU9KciHx8OWU2VS2c6oXYlM0+5uweLIjmuKVL/Eh56zBpUkiXwU
	2nbQ==
MIME-Version: 1.0
X-Received: by 10.180.93.7 with SMTP id cq7mr4561089wib.24.1430834681126; Tue,
	05 May 2015 07:04:41 -0700 (PDT)
Received: by 10.28.57.68 with HTTP; Tue, 5 May 2015 07:04:41 -0700 (PDT)
In-Reply-To: <CAF_dkJC1jTFSRUADksDt4BzeJ9AoGr15xCvu42f2ov-S_-2E0A@mail.gmail.com>
References: <CAF_dkJBEt-p6_JOvvO7f28ybgPNGNq28qja+EeP2f1yysqH18A@mail.gmail.com>
	<CAJTo0LaSikiMXp9G15QJEG7XebOEKMLkCyk1-=GvphW9wVxONQ@mail.gmail.com>
	<CAF_dkJC1jTFSRUADksDt4BzeJ9AoGr15xCvu42f2ov-S_-2E0A@mail.gmail.com>
Date: Tue, 5 May 2015 10:04:41 -0400
Message-ID: <CAGAhMBy0OESmtFxGhvJBZPaQQ=JPX8rqbr4QOwjURfJVbRmykg@mail.gmail.com>
From: Rob Woolley <rob.woolleywr@gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QEMU support for SD/MMC card
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
X-List-Received-Date: Tue, 05 May 2015 14:05:18 -0000
Content-Type: multipart/alternative; boundary=f46d043892ade6b1120515562898

--f46d043892ade6b1120515562898
Content-Type: text/plain; charset=UTF-8

I was able to do something similar with my Intel Quark builds.  This is the
command line that worked for me:

/usr/local/bin/qemu-system-i386 \
     -kernel $KERNEL_FILE \
     -append "$KERNEL_CMDLINE" \
     -m 320 \
     -smp 2 \
     -net nic,vlan=1,model=e1000 \
     -net user,vlan=1 \
     -boot order=nc \
     -watchdog i6300esb \
     -rtc base=localtime \
     -pidfile $PID_FILE \
     -drive if=sd,file=$DISK_FILE \
     -device sdhci-pci \
     -display none \
     -monitor null \
     -serial stdio \
     -no-reboot

I did however, have to grab QEMU from git in order to use the sdhci-pci
device.  I recall that the changes went in around Jan/Feb 2015.

Regards,
Rob

On Tue, May 5, 2015 at 8:18 AM, Patrick Doyle <wpdster@gmail.com> wrote:

> On Tue, May 5, 2015 at 6:40 AM, Burton, Ross <ross.burton@intel.com>
> wrote:
> > On 3 May 2015 at 22:24, Patrick Doyle <wpdster@gmail.com> wrote:
> >>
> >> Can anybody point me in the direction of running an arm based QEMU
> >> with a (simulated) SD/MMC card?
> >>
> >> From the documentation for QEMU, I see that I can pass a -drive
> >> parameter to QEMU with an if=sd option, which sounds (reads?) an awful
> >> lot like I can simulate an SD/MMC card.
> >>
> >> But looking through the Yocto supplied runqemu script, (actually,
> >> runqemu-internal) it appears that only supports -hda or -virtio disks.
> >
> >
> > I've no experience using if=sd, but at the end of the day runqemu is
> just a
> > helper script, you can pass the right arguments to qemu directly or patch
> > the script locally.
>
> Thanks Ross.  I've been fiddling with that a bit (a very little bit,
> being distracted by other, higher priority tasks), but haven't figured
> out the right incantation yet.  I may have to (gasp) look at the
> source code :-)  Or maybe the monkey in me will eventually press the
> right combination of keys to make it work.  The lazy programmer in me
> was hoping somebody would say "Oh yeah, I do that all the time.  I
> just blah blah blah".
>
> --wpd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d043892ade6b1120515562898
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was able to do something similar with my Intel Quark bui=
lds.=C2=A0 This is the command line that worked for me:<br><br>/usr/local/b=
in/qemu-system-i386 \<br>=C2=A0 =C2=A0 =C2=A0-kernel $KERNEL_FILE \<br>=C2=
=A0 =C2=A0 =C2=A0-append &quot;$KERNEL_CMDLINE&quot; \<br>=C2=A0 =C2=A0 =C2=
=A0-m 320 \<br>=C2=A0 =C2=A0 =C2=A0-smp 2 \<br>=C2=A0 =C2=A0 =C2=A0-net nic=
,vlan=3D1,model=3De1000 \<br>=C2=A0 =C2=A0 =C2=A0-net user,vlan=3D1 \<br>=
=C2=A0 =C2=A0 =C2=A0-boot order=3Dnc \<br>=C2=A0 =C2=A0 =C2=A0-watchdog i63=
00esb \<br>=C2=A0 =C2=A0 =C2=A0-rtc base=3Dlocaltime \<br>=C2=A0 =C2=A0 =C2=
=A0-pidfile $PID_FILE \<br>=C2=A0 =C2=A0 =C2=A0-drive if=3Dsd,file=3D$DISK_=
FILE \<br>=C2=A0 =C2=A0 =C2=A0-device sdhci-pci \<br>=C2=A0 =C2=A0 =C2=A0-d=
isplay none \<br>=C2=A0 =C2=A0 =C2=A0-monitor null \<br>=C2=A0 =C2=A0 =C2=
=A0-serial stdio \<br>=C2=A0 =C2=A0 =C2=A0-no-reboot<br><br>I did however, =
have to grab QEMU from git in order to use the sdhci-pci device.=C2=A0 I re=
call that the changes went in around Jan/Feb 2015.<br><br>Regards,<br>Rob<b=
r></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, M=
ay 5, 2015 at 8:18 AM, Patrick Doyle <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:wpdster@gmail.com" target=3D"_blank">wpdster@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h=
5">On Tue, May 5, 2015 at 6:40 AM, Burton, Ross &lt;<a href=3D"mailto:ross.=
burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt; On 3 May 2015 at 22:24, Patrick Doyle &lt;<a href=3D"mailto:wpdster@gm=
ail.com">wpdster@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Can anybody point me in the direction of running an arm based QEMU=
<br>
&gt;&gt; with a (simulated) SD/MMC card?<br>
&gt;&gt;<br>
&gt;&gt; From the documentation for QEMU, I see that I can pass a -drive<br=
>
&gt;&gt; parameter to QEMU with an if=3Dsd option, which sounds (reads?) an=
 awful<br>
&gt;&gt; lot like I can simulate an SD/MMC card.<br>
&gt;&gt;<br>
&gt;&gt; But looking through the Yocto supplied runqemu script, (actually,<=
br>
&gt;&gt; runqemu-internal) it appears that only supports -hda or -virtio di=
sks.<br>
&gt;<br>
&gt;<br>
&gt; I&#39;ve no experience using if=3Dsd, but at the end of the day runqem=
u is just a<br>
&gt; helper script, you can pass the right arguments to qemu directly or pa=
tch<br>
&gt; the script locally.<br>
<br>
</div></div>Thanks Ross.=C2=A0 I&#39;ve been fiddling with that a bit (a ve=
ry little bit,<br>
being distracted by other, higher priority tasks), but haven&#39;t figured<=
br>
out the right incantation yet.=C2=A0 I may have to (gasp) look at the<br>
source code :-)=C2=A0 Or maybe the monkey in me will eventually press the<b=
r>
right combination of keys to make it work.=C2=A0 The lazy programmer in me<=
br>
was hoping somebody would say &quot;Oh yeah, I do that all the time.=C2=A0 =
I<br>
just blah blah blah&quot;.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--wpd<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--f46d043892ade6b1120515562898--
