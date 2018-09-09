Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FD3EE006F1; Sun,  9 Sep 2018 10:27:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82C27E00460
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2018 10:27:47 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id v16-v6so19468704wro.11
	for <yocto@yoctoproject.org>; Sun, 09 Sep 2018 10:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VLFcdPYCPkxkuOiLTCowW0/WbitqJwgy4yQU7GPZwOk=;
	b=uXiZq3Nf6xo+GRhiUU/rk+/9/LKP4fTmgWXVT3De0fqiXUZfWcZyNRBA2GZxf4vZTJ
	pa/mhXa6XTgJPQzdjUq/EhgfySp7OTW38JlLHFl/dKLcFW/0ubzTS2VHClkpkD2P82yx
	Nky4hT+lYzB2VS2vwFJCCtpWufHYu3KevHNwbuMcQpRVpx45AzEuYyhZqf6NRHhuqnWo
	yT8Jp51EPZZnt+ooIFO+FPvf+1pu7wJaN16lfnyfEusvwTmNnGse/R8O5DBhv/O4Bw4J
	e+MwKgSD4e2sFHCm5AaY6Id6QqmZwSrKbm/k5SrwTy9yrjA7/XlE/tXBAB6FbugJ65ih
	22qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VLFcdPYCPkxkuOiLTCowW0/WbitqJwgy4yQU7GPZwOk=;
	b=LoVNOH23/j9YBNoVUbo+zgW9BFVVGnoeuD5Jhjs7jddqGMlW1Y0wXGPvI8B1MbyerO
	7Wk7y1leAyljX1EHb7LcDXKi5A+d5sroWDQ/clU7r3VMnLmtwSOUTRpg9MhDQmP8Tnv3
	hfbyQM1vMuRYjLYw0+/EmRMLgjw04Yp9sq39lSbddCPCJtEHUtogH1CqbSXrj0ZZXLJS
	lPwphWLkImOSL2ZiokQNByuyI0q8utQkN4KKDVpKy9w3sXHzWH0VkBnmJ5MqPLjots20
	aY3IY85tukC/t5RtcRKIUMdeZUuo05H8VVqu6OB480F1q1xseGBvj7CgXkU56CY+UgmQ
	M4xw==
X-Gm-Message-State: APzg51BQxGidX36kmpc2j87ZwIwH0b7+k9EUTUN+BwnARla3jLV9RzhX
	Y5aj8+xKYkOhQznCHUQDqs0Ewd3TuPIIyrun6f8=
X-Google-Smtp-Source: ANB0Vda+/dG0wEsZiyYtuyEnciRVDihWQ0NR4y1f0W3W31woR03sDP0qklYNHh5igxC5MyNRchSUPCS/6mSRjTR1Xyc=
X-Received: by 2002:adf:8567:: with SMTP id
	94-v6mr12974265wrh.223.1536514066718; 
	Sun, 09 Sep 2018 10:27:46 -0700 (PDT)
MIME-Version: 1.0
References: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
	<CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
	<7F360AF5-A5DC-443C-A847-B7A323AF9D94@gmail.com>
	<CA+chaQcy_VHA7yGhhVULW5=jMVfP2tNEJKWi-KSgS_zwNjZUTg@mail.gmail.com>
In-Reply-To: <CA+chaQcy_VHA7yGhhVULW5=jMVfP2tNEJKWi-KSgS_zwNjZUTg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 9 Sep 2018 19:27:35 +0200
Message-ID: <CA+chaQdK_ciN-unOxb5AXkmwqMUm0y4Z5cjL3wDu0bzDYkPb5A@mail.gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Postinstall scriptlets of ['coreutils'] have failed
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
X-List-Received-Date: Sun, 09 Sep 2018 17:27:48 -0000
Content-Type: multipart/alternative; boundary="00000000000023a4050575738ffc"

--00000000000023a4050575738ffc
Content-Type: text/plain; charset="UTF-8"

busybox is most likely the one providing it in ${base_bindir}

Recent busybox upgrade probably moved this file.

There is also conflict on /usr/bin/setfattr between busybox and attr now.

On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa <martin.jansa@gmail.com> wrote:

> There are 2 packages using u-a for nice, but one is using {bindir} and 2nd
> one is using {base_bindir}
>
> coreutils is using bindir, find what's using ${base_bindir} and change one
> of them to use the same u-a link as the other one.
>
> On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack <rehsack@gmail.com> wrote:
>
>>
>>
>> Am 09.09.2018 um 13:15 schrieb Alexander Kanavin <alex.kanavin@gmail.com
>> >:
>>
>> It's right in the message?
>>
>> ERROR: Logfile of failure stored in:
>>
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>
>> Alex
>>
>>
>>
>> It's not much what stands there:
>>
>> Downloading
>> file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.25-r0_core2-64.ipk.
>> Installing coreutils-dev (8.30) on root
>> [...]
>> Configuring update-rc.d-deupdate-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff
>> to /usr/bin/diff.diffutils
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp
>> to /usr/bin/cmp.diffutils
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/umount
>> to /bin/umount.util-linux
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[
>> to /usr/bin/lbracket.coreutils
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch
>> to /usr/bin/arch.coreutils
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename
>> to /usr/bin/basename.coreutils
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon
>> to /usr/bin/chcon.coreutils
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum
>> to /usr/bin/cksum.coreutils
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm
>> to /usr/bin/comm.coreutils
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit
>> to /usr/bin/csplit.coreutils
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut
>> to /usr/bin/cut.coreutils
>> [...]
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo
>> to /usr/bin/mkfifo.coreutils
>> update-alternatives: renaming nice link from /bin/nice to /usr/bin/nice
>> mv: cannot stat '/bin/nice': No such file or directory
>> update-alternatives: Linking
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/bash
>> to /bin/bash.bash
>> [...]
>> Configuring libgmp10.
>> Configuring coreutils.
>> coreutils.postinst returned 1, marking as unpacked only, configuration
>> required on target.
>> Configuring acl.
>> [...]
>>
>> The postinst file of coreutils contains only a long list of
>> update-alternatives, as many other packages do either.
>>
>> core-image-minimal contains coreutils as well, but it doesn't fail the
>> same way.
>>
>> Any ideas?
>>
>> 2018-09-09 10:58 GMT+02:00 Jens Rehsack <rehsack@gmail.com>:
>>
>> Hi,
>>
>> I got following issue when building an image for live-debugging:
>>
>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall scriptlets
>> of ['coreutils'] have failed. If the intention is to defer them to first
>> boot,
>> then please place them into pkg_postinst_ontarget_${PN} ().
>> Deferring to first boot via 'exit 1' is no longer supported.
>> Details of the failure are in
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed:
>> do_rootfs
>> ERROR: Logfile of failure stored in:
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
>> ERROR: Task
>> (/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updatable-app-dev-image.bb:do_rootfs)
>> failed with exit code '1'
>>
>> I can reproduce it using core-image-minimal-dev
>>
>> WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst
>> returned 1, marking as unpacked only, configuration required on target.
>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall scriptlets of
>> ['coreutils'] have failed. If the intention is to defer them to first boot,
>> then please place them into pkg_postinst_ontarget_${PN} ().
>> Deferring to first boot via 'exit 1' is no longer supported.
>> Details of the failure are in
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: do_rootfs
>> ERROR: Logfile of failure stored in:
>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>> ERROR: Task
>> (/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_rootfs)
>> failed with exit code '1'
>>
>> Any idea where to start debugging?
>>
>> Best regards
>> --
>> Jens Rehsack - rehsack@gmail.com
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>> Jens Rehsack - rehsack@gmail.com
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--00000000000023a4050575738ffc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">busybox is most likely the one providing =
it in ${base_bindir}<div><br></div><div>Recent busybox upgrade probably mov=
ed this file.</div><div><br></div><div>There is also conflict on=C2=A0/usr/=
bin/setfattr between busybox and attr now.</div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Sun, Sep 9, 2018 at 7:22 PM Martin Jan=
sa &lt;<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">There =
are 2 packages using u-a for nice, but one is using {bindir} and 2nd one is=
 using {base_bindir}<div><br></div><div>coreutils is using bindir, find wha=
t&#39;s using ${base_bindir} and change one of them to use the same u-a lin=
k as the other one.</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr">On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack &lt;<a href=3D"mailto:rehsa=
ck@gmail.com" target=3D"_blank">rehsack@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word;line-break=
:after-white-space"><br><div><br><blockquote type=3D"cite"><div>Am 09.09.20=
18 um 13:15 schrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gm=
ail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;:</div><br class=
=3D"m_7760255497084367731m_-7610403655000841370Apple-interchange-newline"><=
div><div>It&#39;s right in the message?<br><br>ERROR: Logfile of failure st=
ored in:<br>/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fische=
r-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br><br>=
Alex<br></div></div></blockquote><div><br></div><div><br></div><div>It&#39;=
s not much what stands there:</div><div><br></div><div><div>Downloading fil=
e:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-lin=
ux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.25-r0=
_core2-64.ipk.</div><div>Installing coreutils-dev (8.30) on root</div><div>=
[...]</div><div><div>Configuring update-rc.d-deupdate-alternatives: Linking=
 /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff to /usr/bin/diff.diffut=
ils</div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mops=
-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/r=
ootfs/usr/bin/cmp to /usr/bin/cmp.diffutils</div><div>update-alternatives: =
Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-po=
ky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/umount to /bin/umount.uti=
l-linux</div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/=
mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-=
r0/rootfs/usr/bin/[ to /usr/bin/lbracket.coreutils</div><div>update-alterna=
tives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fis=
cher-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to /usr/b=
in/arch.coreutils</div><div>update-alternatives: Linking /home/sno/gpw-comm=
unity-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minima=
l-dev/1.0-r0/rootfs/usr/bin/basename to /usr/bin/basename.coreutils</div><d=
iv>update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-plat=
form/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/b=
in/chcon to /usr/bin/chcon.coreutils</div><div>update-alternatives: Linking=
 /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to /usr/bin/cksum.core=
utils</div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mo=
ps-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0=
/rootfs/usr/bin/comm to /usr/bin/comm.coreutils</div><div>update-alternativ=
es: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fische=
r-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to /usr/bi=
n/csplit.coreutils</div><div>update-alternatives: Linking /home/sno/gpw-com=
munity-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minim=
al-dev/1.0-r0/rootfs/usr/bin/cut to /usr/bin/cut.coreutils</div><div>[...]<=
/div></div></div><div><div>update-alternatives: Linking /home/sno/gpw-commu=
nity-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal=
-dev/1.0-r0/rootfs/usr/bin/mkfifo to /usr/bin/mkfifo.coreutils</div><div>up=
date-alternatives: renaming nice link from /bin/nice to /usr/bin/nice</div>=
<div>mv: cannot stat &#39;/bin/nice&#39;: No such file or directory</div><d=
iv>update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-plat=
form/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/b=
ash to /bin/bash.bash</div><div>[...]</div></div><div><div>Configuring libg=
mp10.</div><div>Configuring coreutils.</div><div>coreutils.postinst returne=
d 1, marking as unpacked only, configuration required on target.</div><div>=
Configuring acl.</div><div>[...]</div><div><br></div><div>The postinst file=
 of coreutils contains only a long list of update-alternatives, as many oth=
er packages do either.</div><div><br></div><div>core-image-minimal contains=
 coreutils as well, but it doesn&#39;t fail the same way.</div><div><br></d=
iv><div>Any ideas?</div></div><br><blockquote type=3D"cite"><div><div>2018-=
09-09 10:58 GMT+02:00 Jens Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com"=
 target=3D"_blank">rehsack@gmail.com</a>&gt;:<br><blockquote type=3D"cite">=
Hi,<br><br>I got following issue when building an image for live-debugging:=
<br><br>ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall script=
lets of [&#39;coreutils&#39;] have failed. If the intention is to defer the=
m to first boot,<br>then please place them into pkg_postinst_ontarget_${PN}=
 ().<br>Deferring to first boot via &#39;exit 1&#39; is no longer supported=
.<br>Details of the failure are in /home/sno/gpw-community-bsp/mops-yocto-p=
latform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log=
.do_rootfs.<br>ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function fa=
iled: do_rootfs<br>ERROR: Logfile of failure stored in: /home/sno/gpw-commu=
nity-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-=
image/1.0-r0/temp/log.do_rootfs.14358<br>ERROR: Task (/home/sno/gpw-communi=
ty-bsp/sources/meta-jens/recipes-images/images/updatable-app-dev-image.bb:d=
o_rootfs) failed with exit code &#39;1&#39;<br><br>I can reproduce it using=
 core-image-minimal-dev<br><br>WARNING: core-image-minimal-dev-1.0-r0 do_ro=
otfs: coreutils.postinst returned 1, marking as unpacked only, configuratio=
n required on target.<br>ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Po=
stinstall scriptlets of [&#39;coreutils&#39;] have failed. If the intention=
 is to defer them to first boot,<br>then please place them into pkg_postins=
t_ontarget_${PN} ().<br>Deferring to first boot via &#39;exit 1&#39; is no =
longer supported.<br>Details of the failure are in /home/sno/gpw-community-=
bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/=
1.0-r0/temp/log.do_rootfs.<br>ERROR: core-image-minimal-dev-1.0-r0 do_rootf=
s: Function failed: do_rootfs<br>ERROR: Logfile of failure stored in: /home=
/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core=
-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br>ERROR: Task (/home/sn=
o/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-image-minima=
l-dev.bb:do_rootfs) failed with exit code &#39;1&#39;<br><br>Any idea where=
 to start debugging?<br><br>Best regards<br>--<br>Jens Rehsack - <a href=3D=
"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a><br><br><=
br>--<br>_______________________________________________<br>yocto mailing l=
ist<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yo=
ctoproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yo=
cto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br=
><br></blockquote></div></div></blockquote></div><br><div>
<div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;word-wra=
p:break-word"><div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;word-wrap:break-word"><div>--=C2=A0</div><div>Jens Rehsack - <a href=
=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a></div>=
</div></div>
</div>
<br></div>-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</blockquote></div>

--00000000000023a4050575738ffc--
