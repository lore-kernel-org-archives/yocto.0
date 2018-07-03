Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A273AE013D8; Tue,  3 Jul 2018 11:02:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tdhammer99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CA1AE013BC
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 11:02:37 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id n84-v6so5596429oib.9
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2018 11:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=u0zJys/bf+y3zm/QwK6cfIuWIpa9zTHrGRKqMmQ299I=;
	b=g9HlkVu3fh8j3AsaDFs9iqdUR/peLKhAYDA3miSVklaa5PSbJllVvJP7Ox2rLNk3nQ
	qqgpZmsJIabWL5mmZZqrPFHO2cmA/fsYfY4OXaq84VY4YUUAfA6b822OsMyJqrSsAILl
	CvZxcJGQojz0Z82tmR6cfjNdNDiBF97WXcg/eyCgr/bJLdYzIIW2sTdoLvIxb296OPAy
	n3ti3TYLu1Gf1HP29gwDMdwNzfXJZzSuRAMeL5jinPpgA1o0eCZFnb54HsbX7QpJLJgB
	y7NLjfaKcjF6US8jVxqKsHI028/WPE5HoLVTc5/JxRpa/iD8lin+/N3ec0WfVPUmSDw7
	6R6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=u0zJys/bf+y3zm/QwK6cfIuWIpa9zTHrGRKqMmQ299I=;
	b=Fm2JKz0aQXwBULLjEUt0G7qT2u5WCr2YKyv+jXxetPEkzvNPq4ApHV52Tqc4NZnGi8
	3Pc3VTa/mW/5/1q2CXhKa4H3DB2PvZSBXlZpcZlH1S7oFN9FI4cZh79GOf0pcLBDKQsn
	hFYfpXH3kvTh97YopIZDxbzBc1PlqoiH/AQVNwoIQGMQBjY1Dd9TIJofNZ7yCIS/s5sc
	twxTcJrYCzoUB0Q0tp+l5qR02fgql4Kx2w17QbiYzD2TVJ7wclI+IyHjsMUkGI7z3XD1
	WkD1xoGWWMUGkoevrW4GEp/U2/rNafmoFDTHjnfkq04mIQdAELor95h5/smiOe6pzi/f
	kwmQ==
X-Gm-Message-State: APt69E2HtgGmz6EQ3hdjxfxiGKyjdQPalsNjtA3QM+CpXEC+0qUwrde7
	DsP2BUbD58YNbrel0LsoqSTneZMAh5SFzoUrPx+d1fDo
X-Google-Smtp-Source: AAOMgpcx1Hl2zGCpDXCfTzTImteQSDrRhLt1mdmad3NMHl6casq8QXEUhMfwMuZOzjFFxvfKd1RJ5HITvuNwymMZ8hE=
X-Received: by 2002:aca:fc8e:: with SMTP id
	a136-v6mr17962773oii.123.1530640956666; 
	Tue, 03 Jul 2018 11:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:39a2:0:0:0:0:0 with HTTP;
	Tue, 3 Jul 2018 11:02:36 -0700 (PDT)
From: Tim Hammer <tdhammer99@gmail.com>
Date: Tue, 3 Jul 2018 14:02:36 -0400
Message-ID: <CALh9vaX7aAYi59jJABfr5JXtoHXE6XVupfAwaHvRnVAAA5nDdA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: struggling with initramfs
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
X-List-Received-Date: Tue, 03 Jul 2018 18:02:39 -0000
Content-Type: multipart/alternative; boundary="00000000000080381805701c1e96"

--00000000000080381805701c1e96
Content-Type: text/plain; charset="UTF-8"

Can anyone point me to a step-by-step tutorial or simple how-to on creating
and using an initramfs with my kernel for ARM aarch64?


I have tried creating my own:
 - boot-image.bb file with IMAGE_FSTYPES = "cpio.gz".
 - local.conf has INITRAMFS_IMAGE_BUNDLE = "1"
 - linux.bbappend has INITRAMFS_IMAGE = "boot-image"

This all seems to be "correct" to the extent that bitbake linux tries to do
the right thing.

However, I get a failure in do_bundle_initramfs- "mv: cannot stat
'arch/arm64/boot/Image': No such file or directory".

To the best of my (limited) debugging abilities with Yocto, it seems like
the kernel image backup has already been run when it gets to this point and
the Image file in that directory has already been moved to Image.bak. If I
comment out the mv statement in kernel.bbclass causing the failure, the
process continues, but the initramfs does not seem to get populated or
perhaps installed into my kernel image as I get kernel panics that I have
been unable to get past.


I decided to take a different approach and try using the
core-image-minimal-initramfs recipe as INITRAMFS_IMAGE. By commenting out
the COMPATIBLE_HOST entry I am able to build a kernel for ARM aarch64. I
can even seem to boot into this initramfs- it counts down waiting for
removable media; seems to find my primary rootfs on sda3, but there is no
rootfs.img file there so says it is dropping to a shell (although I never
get a prompt...).

Thinking I could start with that recipe and work to get rid of the live
stuff and just get to a busybox prompt before trying to run my unique init
commands, I copied  core-image-minimal-initramfs.bb to my-
core-image-minimal-initramfs.bb in my layer and changed INITRAMFS_IMAGE to
"my- core-image-minimal-initramfs".
However, I obviously missed something in the configuration as I get an
error in go_bundle_initramfs again:
     kernel-source/scripts/gen_initramfs_list.sh:
                 Cannot open
'/.../linux-qoriq/4.14-r0/build/usr/my-core-image-minimal-initramfs-{machine}.cpio'

Any help would be greatly appreciated.
Thank you!
-- 

.Tim

--00000000000080381805701c1e96
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Can anyone point me to a step-by-step =
tutorial or simple how-to on creating and using an initramfs with my kernel=
 for ARM aarch64?</div><div><br></div><div><br></div><div>I have tried crea=
ting my own:</div><div>=C2=A0- <a href=3D"http://boot-image.bb">boot-image.=
bb</a> file with IMAGE_FSTYPES =3D &quot;cpio.gz&quot;.</div><div>=C2=A0- l=
ocal.conf has INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;</div><div>=C2=A0- li=
nux.bbappend has INITRAMFS_IMAGE =3D &quot;boot-image&quot;</div><div><br><=
/div><div>This all seems to be &quot;correct&quot; to the extent that bitba=
ke linux tries to do the right thing.</div><div><br></div><div>However, I g=
et a failure in do_bundle_initramfs- &quot;mv: cannot stat &#39;arch/arm64/=
boot/Image&#39;: No such file or directory&quot;.</div><div><br></div><div>=
To the best of my (limited) debugging abilities with Yocto, it seems like t=
he kernel image backup has already been run when it gets to this point and =
the Image file in that directory has already been moved to Image.bak. If I =
comment out the mv statement in kernel.bbclass causing the failure, the pro=
cess continues, but the initramfs does not seem to get populated or perhaps=
 installed into my kernel image as I get kernel panics that I have been una=
ble to get past.</div><div><br></div><div><br></div><div>I decided to take =
a different approach and try using the core-image-minimal-initramfs recipe =
as INITRAMFS_IMAGE. By commenting out the COMPATIBLE_HOST entry I am able t=
o build a kernel for ARM aarch64. I can even seem to boot into this initram=
fs- it counts down waiting for removable media; seems to find my primary ro=
otfs on sda3, but there is no rootfs.img file there so says it is dropping =
to a shell (although I never get a prompt...).</div><div><br></div><div>Thi=
nking I could start with that recipe and work to get rid of the live stuff =
and just get to a busybox prompt before trying to run my unique init comman=
ds, I copied=C2=A0

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><a href=3D"http://core-image-minimal-initramfs.bb">core-image-minimal-ini=
tramfs.bb</a> to my-

<span style=3D"text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline"><a href=3D"http://core-image-minimal-initramfs.b=
b">core-image-minimal-initramfs.bb</a> in my layer and changed INITRAMFS_IM=
AGE to &quot;my-

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">core-image-minimal-initramfs&quot;.</span></span></span></div><div><span =
style=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline"><spa=
n style=3D"text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline"><span style=3D"font-size:small;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">However, I obviously missed something in the confi=
guration as I get an error in go_bundle_initramfs again:</span></span></spa=
n></div><div><span style=3D"background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline"><=
span style=3D"text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline"><span style=3D"background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">=C2=A0 =C2=A0 =C2=A0kernel-source/scripts/gen_initramfs_list.sh=
:=C2=A0</span></span></span></div><div><span style=3D"background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline"><span style=3D"text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline"><span style=3D"backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial;float:none;display:inline">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0Cannot open &#39;/.../linux-qoriq/4.14-r0/build/=
usr/my-core-image-minimal-initramfs-{machine}.cpio&#39;<br></span></span></=
span></div><div><span style=3D"font-size:small;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline"><span style=3D"text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline"><span style=3D"font-size:small=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline"><br></span></span></span></d=
iv><div><span style=3D"font-size:small;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline"><span style=3D"text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline"><span style=3D"font-size:small;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline">Any help would be greatly appreciate=
d.</span></span></span></div><div>Thank you!</div>-- <br><div class=3D"gmai=
l_signature"><div dir=3D"ltr"><br><span style=3D"font-family:&quot;arial na=
rrow&quot;,sans-serif">.Tim</span><br></div></div>
</div>

--00000000000080381805701c1e96--
