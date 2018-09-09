Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53DA6E006F1; Sun,  9 Sep 2018 11:56:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.221.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1C2AE00460
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2018 11:56:39 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id v16-v6so19598485wro.11
	for <yocto@yoctoproject.org>; Sun, 09 Sep 2018 11:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HbKhcr7kvNuld4KorTWpC9d6C8fzHKr1nyWG3jPWHdU=;
	b=vEuO/6n5+NGOwqPmv1Y7EN4IIDrilolZBv/rC931RxlSCYnzCF8tPyG5WR8xctX2Bp
	n6WhQzzVRyrGDTL8F89RQNzAmlJHd4W5qnVSEQtfdT6kpcJ2XIXaNQUw1fOBETgx7Lbv
	dye8D63PDgSqJ9xrti9CLVcL+QU94vsfTfXTMJUpjBZ7M6AjOicq4cEPlOeXnbhcLAxe
	l9tOTJTGhwC46YUepK7NcrYb5To1Em7qBUcIIX/hnaZxz4EHo5/tYn/sxY2PfbKbMHM2
	GX4Nr6tyW7ZHtQJBqXh7FLR8c7S/IliFM+VvACjfXPp49T2pPkGUjho+VJpMCaijRccT
	4mmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HbKhcr7kvNuld4KorTWpC9d6C8fzHKr1nyWG3jPWHdU=;
	b=oZ81zXHLyZSsq+MAYMbPAinnqh5LLIleKraTuHCyu9Q1KpyXUJP3iVh0zKtBQLy0pG
	iiNFX/4AvtQwZOXANqYZljDfxCM9+hjmwT0VSaoBJN3heYzhRycZywBIgIGBAsgY6lwy
	5fpuAcPXq9oKxOg3oaL2zV/jD2WtQcV1yboLQxN51ksXmN1SghI4nrY6Ps4UBo03HdEL
	O2cmLKglhQWh+IssJ2J4uSR5qjuUsx6OTsoiMs9nRUh2WqAnc3sB9x/ZxtcRM35CDWg0
	omGCNmCDHwi/2rHFL53i4OW4YE3e2ysPej7E4SJ1Or525vsRZ/BFze0s2dN4g8Eu5wlj
	04Dw==
X-Gm-Message-State: APzg51AXuTd9/NsHiqrJlegz9+AguGjnP3Je1cMtTxNTL6wFMkAhOkna
	EEa2hIoVRBIPJZP1x/rmDRw1HtnBjAZSFdyfOEo=
X-Google-Smtp-Source: ANB0VdbwHmQplwbGJxs/Nehjl913xHcEGXNSXqIO+dpc2yYQZURSv+NYFmm+ch4/+tbVp/UkUub8tL7I6QE5Ui9frNQ=
X-Received: by 2002:adf:f28c:: with SMTP id
	k12-v6mr13070913wro.263.1536519398817; 
	Sun, 09 Sep 2018 11:56:38 -0700 (PDT)
MIME-Version: 1.0
References: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
	<CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
	<7F360AF5-A5DC-443C-A847-B7A323AF9D94@gmail.com>
	<CA+chaQcy_VHA7yGhhVULW5=jMVfP2tNEJKWi-KSgS_zwNjZUTg@mail.gmail.com>
	<CA+chaQdK_ciN-unOxb5AXkmwqMUm0y4Z5cjL3wDu0bzDYkPb5A@mail.gmail.com>
	<3C4A4AAD-4CD4-408F-A0BF-0DE592E64D0B@gmail.com>
In-Reply-To: <3C4A4AAD-4CD4-408F-A0BF-0DE592E64D0B@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 9 Sep 2018 20:56:27 +0200
Message-ID: <CA+chaQeCBa6wUJuJDF7gTGaBXdU4zE1bEQmSA=9z4dokZtM_XQ@mail.gmail.com>
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
X-List-Received-Date: Sun, 09 Sep 2018 18:56:41 -0000
Content-Type: multipart/alternative; boundary="000000000000f5065e057574cc6e"

--000000000000f5065e057574cc6e
Content-Type: text/plain; charset="UTF-8"

Does core-image-minimal include both busybox and coreutils? Maybe only -dev
include both.

I'll send fix for attr soon, waiting for some builds to finish testing it.

On Sun, Sep 9, 2018 at 8:47 PM Jens Rehsack <rehsack@gmail.com> wrote:

> So far, so good.
>
> They way to fix that seems either to check why busybox uses ${base_bindir}
> nowadays in favor of ${bindir} and fix either busybox or coreutils or attr.
>
> What drives me nuts is not only the failure after the busybox update - why
> does core-image-minimal builds successful while core-image-minimal-dev
> fails?
>
> Cheers,
> Jens
>
> Am 09.09.2018 um 19:27 schrieb Martin Jansa <martin.jansa@gmail.com>:
>
> busybox is most likely the one providing it in ${base_bindir}
>
> Recent busybox upgrade probably moved this file.
>
> There is also conflict on /usr/bin/setfattr between busybox and attr now.
>
> On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa <martin.jansa@gmail.com>
> wrote:
>
>> There are 2 packages using u-a for nice, but one is using {bindir} and
>> 2nd one is using {base_bindir}
>>
>> coreutils is using bindir, find what's using ${base_bindir} and change
>> one of them to use the same u-a link as the other one.
>>
>> On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack <rehsack@gmail.com> wrote:
>>
>>>
>>>
>>> Am 09.09.2018 um 13:15 schrieb Alexander Kanavin <alex.kanavin@gmail.com
>>> >:
>>>
>>> It's right in the message?
>>>
>>> ERROR: Logfile of failure stored in:
>>>
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>>
>>> Alex
>>>
>>>
>>>
>>> It's not much what stands there:
>>>
>>> Downloading
>>> file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.25-r0_core2-64.ipk.
>>> Installing coreutils-dev (8.30) on root
>>> [...]
>>> Configuring update-rc.d-deupdate-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff
>>> to /usr/bin/diff.diffutils
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp
>>> to /usr/bin/cmp.diffutils
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/umount
>>> to /bin/umount.util-linux
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[
>>> to /usr/bin/lbracket.coreutils
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch
>>> to /usr/bin/arch.coreutils
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename
>>> to /usr/bin/basename.coreutils
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon
>>> to /usr/bin/chcon.coreutils
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum
>>> to /usr/bin/cksum.coreutils
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm
>>> to /usr/bin/comm.coreutils
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit
>>> to /usr/bin/csplit.coreutils
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut
>>> to /usr/bin/cut.coreutils
>>> [...]
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo
>>> to /usr/bin/mkfifo.coreutils
>>> update-alternatives: renaming nice link from /bin/nice to /usr/bin/nice
>>> mv: cannot stat '/bin/nice': No such file or directory
>>> update-alternatives: Linking
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/bash
>>> to /bin/bash.bash
>>> [...]
>>> Configuring libgmp10.
>>> Configuring coreutils.
>>> coreutils.postinst returned 1, marking as unpacked only, configuration
>>> required on target.
>>> Configuring acl.
>>> [...]
>>>
>>> The postinst file of coreutils contains only a long list of
>>> update-alternatives, as many other packages do either.
>>>
>>> core-image-minimal contains coreutils as well, but it doesn't fail the
>>> same way.
>>>
>>> Any ideas?
>>>
>>> 2018-09-09 10:58 GMT+02:00 Jens Rehsack <rehsack@gmail.com>:
>>>
>>> Hi,
>>>
>>> I got following issue when building an image for live-debugging:
>>>
>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall scriptlets
>>> of ['coreutils'] have failed. If the intention is to defer them to first
>>> boot,
>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>> Deferring to first boot via 'exit 1' is no longer supported.
>>> Details of the failure are in
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed:
>>> do_rootfs
>>> ERROR: Logfile of failure stored in:
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
>>> ERROR: Task
>>> (/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updatable-app-dev-image.bb:do_rootfs)
>>> failed with exit code '1'
>>>
>>> I can reproduce it using core-image-minimal-dev
>>>
>>> WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst
>>> returned 1, marking as unpacked only, configuration required on target.
>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall scriptlets
>>> of ['coreutils'] have failed. If the intention is to defer them to first
>>> boot,
>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>> Deferring to first boot via 'exit 1' is no longer supported.
>>> Details of the failure are in
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed:
>>> do_rootfs
>>> ERROR: Logfile of failure stored in:
>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>> ERROR: Task
>>> (/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_rootfs)
>>> failed with exit code '1'
>>>
>>> Any idea where to start debugging?
>>>
>>> Best regards
>>> --
>>> Jens Rehsack - rehsack@gmail.com
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>> --
>>> Jens Rehsack - rehsack@gmail.com
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
> --
> Jens Rehsack - rehsack@gmail.com
>
>

--000000000000f5065e057574cc6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does core-image-minimal include both busybox and coreutils=
? Maybe only -dev include both.<div><br></div><div>I&#39;ll send fix for at=
tr soon, waiting for some builds to finish testing it.</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr">On Sun, Sep 9, 2018 at 8:47 PM Jens =
Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com">rehsack@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:brea=
k-word;line-break:after-white-space">So far, so good.<div><br></div><div>Th=
ey way to fix that seems either to check why busybox uses ${base_bindir} no=
wadays in favor of ${bindir} and fix either busybox or coreutils or attr.</=
div><div><br></div><div>What drives me nuts is not only the failure after t=
he busybox update - why does core-image-minimal builds successful while cor=
e-image-minimal-dev fails?</div><div><br></div><div>Cheers,</div><div>Jens<=
br><div><br><blockquote type=3D"cite"><div>Am 09.09.2018 um 19:27 schrieb M=
artin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank"=
>martin.jansa@gmail.com</a>&gt;:</div><br class=3D"m_697569895326130484Appl=
e-interchange-newline"><div><div dir=3D"ltr"><div dir=3D"ltr">busybox is mo=
st likely the one providing it in ${base_bindir}<div><br></div><div>Recent =
busybox upgrade probably moved this file.</div><div><br></div><div>There is=
 also conflict on=C2=A0/usr/bin/setfattr between busybox and attr now.</div=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, Sep 9,=
 2018 at 7:22 PM Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com"=
 target=3D"_blank">martin.jansa@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">There are 2 packages using u-a for n=
ice, but one is using {bindir} and 2nd one is using {base_bindir}<div><br><=
/div><div>coreutils is using bindir, find what&#39;s using ${base_bindir} a=
nd change one of them to use the same u-a link as the other one.</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, Sep 9, 2018 at 5:5=
9 PM Jens Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com" target=3D"_blank=
">rehsack@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div style=3D"word-wrap:break-word;line-break:after-white-space"><br><div><=
br><blockquote type=3D"cite"><div>Am 09.09.2018 um 13:15 schrieb Alexander =
Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">ale=
x.kanavin@gmail.com</a>&gt;:</div><br class=3D"m_697569895326130484m_776025=
5497084367731m_-7610403655000841370Apple-interchange-newline"><div><div>It&=
#39;s right in the message?<br><br>ERROR: Logfile of failure stored in:<br>=
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux=
/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br><br>Alex<br></di=
v></div></blockquote><div><br></div><div><br></div><div>It&#39;s not much w=
hat stands there:</div><div><br></div><div><div>Downloading file:/home/sno/=
gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-imag=
e-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.25-r0_core2-64.ip=
k.</div><div>Installing coreutils-dev (8.30) on root</div><div>[...]</div><=
div><div>Configuring update-rc.d-deupdate-alternatives: Linking /home/sno/g=
pw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image=
-minimal-dev/1.0-r0/rootfs/usr/bin/diff to /usr/bin/diff.diffutils</div><di=
v>update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platf=
orm/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bi=
n/cmp to /usr/bin/cmp.diffutils</div><div>update-alternatives: Linking /hom=
e/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/cor=
e-image-minimal-dev/1.0-r0/rootfs/bin/umount to /bin/umount.util-linux</div=
><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-p=
latform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/us=
r/bin/[ to /usr/bin/lbracket.coreutils</div><div>update-alternatives: Linki=
ng /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-li=
nux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to /usr/bin/arch.core=
utils</div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mo=
ps-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0=
/rootfs/usr/bin/basename to /usr/bin/basename.coreutils</div><div>update-al=
ternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/wor=
k/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to =
/usr/bin/chcon.coreutils</div><div>update-alternatives: Linking /home/sno/g=
pw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image=
-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to /usr/bin/cksum.coreutils</div><=
div>update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-pla=
tform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/=
bin/comm to /usr/bin/comm.coreutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux=
/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to /usr/bin/csplit.cor=
eutils</div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/m=
ops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r=
0/rootfs/usr/bin/cut to /usr/bin/cut.coreutils</div><div>[...]</div></div><=
/div><div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mop=
s-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/=
rootfs/usr/bin/mkfifo to /usr/bin/mkfifo.coreutils</div><div>update-alterna=
tives: renaming nice link from /bin/nice to /usr/bin/nice</div><div>mv: can=
not stat &#39;/bin/nice&#39;: No such file or directory</div><div>update-al=
ternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/wor=
k/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to /bin/=
bash.bash</div><div>[...]</div></div><div><div>Configuring libgmp10.</div><=
div>Configuring coreutils.</div><div>coreutils.postinst returned 1, marking=
 as unpacked only, configuration required on target.</div><div>Configuring =
acl.</div><div>[...]</div><div><br></div><div>The postinst file of coreutil=
s contains only a long list of update-alternatives, as many other packages =
do either.</div><div><br></div><div>core-image-minimal contains coreutils a=
s well, but it doesn&#39;t fail the same way.</div><div><br></div><div>Any =
ideas?</div></div><br><blockquote type=3D"cite"><div><div>2018-09-09 10:58 =
GMT+02:00 Jens Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com" target=3D"_=
blank">rehsack@gmail.com</a>&gt;:<br><blockquote type=3D"cite">Hi,<br><br>I=
 got following issue when building an image for live-debugging:<br><br>ERRO=
R: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall scriptlets of [&#3=
9;coreutils&#39;] have failed. If the intention is to defer them to first b=
oot,<br>then please place them into pkg_postinst_ontarget_${PN} ().<br>Defe=
rring to first boot via &#39;exit 1&#39; is no longer supported.<br>Details=
 of the failure are in /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/=
work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.<=
br>ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: do_roo=
tfs<br>ERROR: Logfile of failure stored in: /home/sno/gpw-community-bsp/mop=
s-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0=
/temp/log.do_rootfs.14358<br>ERROR: Task (/home/sno/gpw-community-bsp/sourc=
es/meta-jens/recipes-images/images/updatable-app-dev-image.bb:do_rootfs) fa=
iled with exit code &#39;1&#39;<br><br>I can reproduce it using core-image-=
minimal-dev<br><br>WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreut=
ils.postinst returned 1, marking as unpacked only, configuration required o=
n target.<br>ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall sc=
riptlets of [&#39;coreutils&#39;] have failed. If the intention is to defer=
 them to first boot,<br>then please place them into pkg_postinst_ontarget_$=
{PN} ().<br>Deferring to first boot via &#39;exit 1&#39; is no longer suppo=
rted.<br>Details of the failure are in /home/sno/gpw-community-bsp/mops-yoc=
to-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/=
log.do_rootfs.<br>ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function =
failed: do_rootfs<br>ERROR: Logfile of failure stored in: /home/sno/gpw-com=
munity-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minim=
al-dev/1.0-r0/temp/log.do_rootfs.27709<br>ERROR: Task (/home/sno/gpw-commun=
ity-bsp/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_=
rootfs) failed with exit code &#39;1&#39;<br><br>Any idea where to start de=
bugging?<br><br>Best regards<br>--<br>Jens Rehsack - <a href=3D"mailto:rehs=
ack@gmail.com" target=3D"_blank">rehsack@gmail.com</a><br><br><br>--<br>___=
____________________________________________<br>yocto mailing list<br><a hr=
ef=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.o=
rg</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br></bloc=
kquote></div></div></blockquote></div><br><div>
<div style=3D"letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;word-wrap:break-word"><di=
v style=3D"letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;word-wrap:break-word"><div>-=
-=C2=A0</div><div>Jens Rehsack - <a href=3D"mailto:rehsack@gmail.com" targe=
t=3D"_blank">rehsack@gmail.com</a></div></div></div>
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
</div></blockquote></div><br><div>
<div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;word-wra=
p:break-word"><div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;word-wrap:break-word"><div>--=C2=A0</div><div>Jens Rehsack - <a href=
=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a></div>=
</div></div>
</div>
<br></div></div></blockquote></div>

--000000000000f5065e057574cc6e--
