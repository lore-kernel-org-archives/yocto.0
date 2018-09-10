Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10442E00A73; Mon, 10 Sep 2018 12:09:18 -0700 (PDT)
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
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3602DE00994
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2018 12:09:16 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id f21-v6so22649088wmc.5
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2018 12:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zVzvvfVE4RRUYXrQz8/Wt1/1I6Q7D3HnX+WvsDTUZto=;
	b=pZl18vJfzMzAFJnSOANtywpRNcpyfwwx805554uByVoH9KNS/LYp3t18/VmUHEQeyv
	GYyVLr3Om2erCIbJhHyKJD4/uRJdKniG3lI5d+kK1f7CFOozPl3dRCWkyHZwAcwV4Cj3
	fe0/pzA8OAbWQGcTC0ZKojELSrQ7uTcjmM5vZ6eQDkaXUhcogezvcW73tS4k2UbMQUMQ
	HmAcoCF8p79+RRWLtKv96/zHdCLSLD4BbrbcH46QxMsfrZeSjbCJBCwzMHk1rUqaDjsS
	mY5sqiF1z/40S/ze3pzcG/SyBzN2SmdeZBuxG/WY/S1Zx7KT1H+nNSIuMuxQ3yVObDBa
	jSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zVzvvfVE4RRUYXrQz8/Wt1/1I6Q7D3HnX+WvsDTUZto=;
	b=dhmsS12xhmzpDFQ7USuqL8zoyaWevCVffGF6cVJnfZgycd3h91wO6HBns6yJ91sDV0
	Cp0Lijn+32ltWUqxWDBZ4S3tSOzoVPcZoqThedwcgD5/6yirSiRAgiJEMpu8+hIeKckr
	dFL/gTh9OCkbiOsyKzaIhNN4nd598PFhpa57e/qQ/9whN9wb0hmqJPWib+Er3FXoOyI6
	EohoAlyeL7rKxX/QiGJRPNfix3EEwzcopdA8E+Wgh8ymx7c1HCpc660siJEptorS2mOT
	+0zNAB6syrXL0VLPnphuexOMgGvDrg/iLuzeruADxWhCDr9bhJ8pNPnRW2a/3lz0rKbK
	ebxw==
X-Gm-Message-State: APzg51AoYEMTDtJSD9YkvYemX27lpAotGoKdUimSCicisC66xa1BDzfR
	a8TufAgc8H9WrE7UwHppbU3mw8helaOKYhXnbfw=
X-Google-Smtp-Source: ANB0VdYCj5D3xqfOoiSz5Itqq0oCXafCruJrLqH3rMtBZXrQ+A+sbeioh1RbAPlcyC5BGL7jTywBAF1z50fU7MbYLf0=
X-Received: by 2002:a1c:e581:: with SMTP id
	c123-v6mr1603062wmh.85.1536606554280; 
	Mon, 10 Sep 2018 12:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
	<CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
	<7F360AF5-A5DC-443C-A847-B7A323AF9D94@gmail.com>
	<CA+chaQcy_VHA7yGhhVULW5=jMVfP2tNEJKWi-KSgS_zwNjZUTg@mail.gmail.com>
	<CA+chaQdK_ciN-unOxb5AXkmwqMUm0y4Z5cjL3wDu0bzDYkPb5A@mail.gmail.com>
	<3C4A4AAD-4CD4-408F-A0BF-0DE592E64D0B@gmail.com>
	<CA+chaQeCBa6wUJuJDF7gTGaBXdU4zE1bEQmSA=9z4dokZtM_XQ@mail.gmail.com>
	<852E6AB4-06E1-4D95-BD2F-7AF00D0B3B94@gmail.com>
In-Reply-To: <852E6AB4-06E1-4D95-BD2F-7AF00D0B3B94@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 10 Sep 2018 21:09:02 +0200
Message-ID: <CA+chaQfCMR13hmEgERwX1CKjsb78uxHk=Y2EG4BZ2OkSs6H3LQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 10 Sep 2018 19:09:18 -0000
Content-Type: multipart/alternative; boundary="000000000000d3d81c05758917d9"

--000000000000d3d81c05758917d9
Content-Type: text/plain; charset="UTF-8"

pn-buildlist isn't really useful in this case, building both coreutils and
busybox doesn't imply that both will be actually included in the image..

If you compare installed-package-names.txt in buildhistory you'll see that
only the core-image-minimal-dev has coreutils installed.

docker-shr qemux86-64@ ~/build/oe-core/buildhistory/images/qemux86_64/glibc
$ grep busybox core-image-minimal*/installed-package-names.txt
core-image-minimal-dev/installed-package-names.txt:busybox
core-image-minimal-dev/installed-package-names.txt:busybox-dev
core-image-minimal-dev/installed-package-names.txt:busybox-syslog
core-image-minimal-dev/installed-package-names.txt:busybox-udhcpc
core-image-minimal/installed-package-names.txt:busybox
core-image-minimal/installed-package-names.txt:busybox-syslog
core-image-minimal/installed-package-names.txt:busybox-udhcpc
docker-shr qemux86-64@ ~/build/oe-core/buildhistory/images/qemux86_64/glibc
$ grep coreutils core-image-minimal*/installed-package-names.txt
core-image-minimal-dev/installed-package-names.txt:coreutils
core-image-minimal-dev/installed-package-names.txt:coreutils-dev

That's why the issue is shown only in core-image-minimal-dev.

Do you have custom busybox defconfig which enables nice applet? It's not
enabled in default config:
meta/recipes-core/busybox/busybox/defconfig:# CONFIG_NICE is not set




On Mon, Sep 10, 2018 at 8:15 PM Jens Rehsack <rehsack@gmail.com> wrote:

>
>
> Am 09.09.2018 um 20:56 schrieb Martin Jansa <martin.jansa@gmail.com>:
>
> Does core-image-minimal include both busybox and coreutils? Maybe only
> -dev include both.
>
>
> Unfortunately both include coreutils, see attached pn-buildlist (I can
> send you the recipe-depends and the task-depends, either if you need them).
>
> I'll send fix for attr soon, waiting for some builds to finish testing it.
>
>
> Seems similar to my kind of soon :-)
>
> On Sun, Sep 9, 2018 at 8:47 PM Jens Rehsack <rehsack@gmail.com> wrote:
>
>> So far, so good.
>>
>> They way to fix that seems either to check why busybox uses
>> ${base_bindir} nowadays in favor of ${bindir} and fix either busybox or
>> coreutils or attr.
>>
>> What drives me nuts is not only the failure after the busybox update -
>> why does core-image-minimal builds successful while core-image-minimal-dev
>> fails?
>>
>> Cheers,
>> Jens
>>
>> Am 09.09.2018 um 19:27 schrieb Martin Jansa <martin.jansa@gmail.com>:
>>
>> busybox is most likely the one providing it in ${base_bindir}
>>
>> Recent busybox upgrade probably moved this file.
>>
>> There is also conflict on /usr/bin/setfattr between busybox and attr now.
>>
>> On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa <martin.jansa@gmail.com>
>> wrote:
>>
>>> There are 2 packages using u-a for nice, but one is using {bindir} and
>>> 2nd one is using {base_bindir}
>>>
>>> coreutils is using bindir, find what's using ${base_bindir} and change
>>> one of them to use the same u-a link as the other one.
>>>
>>> On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack <rehsack@gmail.com> wrote:
>>>
>>>>
>>>>
>>>> Am 09.09.2018 um 13:15 schrieb Alexander Kanavin <
>>>> alex.kanavin@gmail.com>:
>>>>
>>>> It's right in the message?
>>>>
>>>> ERROR: Logfile of failure stored in:
>>>>
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>>>
>>>> Alex
>>>>
>>>>
>>>>
>>>> It's not much what stands there:
>>>>
>>>> Downloading
>>>> file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.25-r0_core2-64.ipk.
>>>> Installing coreutils-dev (8.30) on root
>>>> [...]
>>>> Configuring update-rc.d-deupdate-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff
>>>> to /usr/bin/diff.diffutils
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp
>>>> to /usr/bin/cmp.diffutils
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/umount
>>>> to /bin/umount.util-linux
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[
>>>> to /usr/bin/lbracket.coreutils
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch
>>>> to /usr/bin/arch.coreutils
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename
>>>> to /usr/bin/basename.coreutils
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon
>>>> to /usr/bin/chcon.coreutils
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum
>>>> to /usr/bin/cksum.coreutils
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm
>>>> to /usr/bin/comm.coreutils
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit
>>>> to /usr/bin/csplit.coreutils
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut
>>>> to /usr/bin/cut.coreutils
>>>> [...]
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo
>>>> to /usr/bin/mkfifo.coreutils
>>>> update-alternatives: renaming nice link from /bin/nice to /usr/bin/nice
>>>> mv: cannot stat '/bin/nice': No such file or directory
>>>> update-alternatives: Linking
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/bash
>>>> to /bin/bash.bash
>>>> [...]
>>>> Configuring libgmp10.
>>>> Configuring coreutils.
>>>> coreutils.postinst returned 1, marking as unpacked only, configuration
>>>> required on target.
>>>> Configuring acl.
>>>> [...]
>>>>
>>>> The postinst file of coreutils contains only a long list of
>>>> update-alternatives, as many other packages do either.
>>>>
>>>> core-image-minimal contains coreutils as well, but it doesn't fail the
>>>> same way.
>>>>
>>>> Any ideas?
>>>>
>>>> 2018-09-09 10:58 GMT+02:00 Jens Rehsack <rehsack@gmail.com>:
>>>>
>>>> Hi,
>>>>
>>>> I got following issue when building an image for live-debugging:
>>>>
>>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall scriptlets
>>>> of ['coreutils'] have failed. If the intention is to defer them to first
>>>> boot,
>>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>>> Deferring to first boot via 'exit 1' is no longer supported.
>>>> Details of the failure are in
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
>>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed:
>>>> do_rootfs
>>>> ERROR: Logfile of failure stored in:
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
>>>> ERROR: Task
>>>> (/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updatable-app-dev-image.bb:do_rootfs)
>>>> failed with exit code '1'
>>>>
>>>> I can reproduce it using core-image-minimal-dev
>>>>
>>>> WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst
>>>> returned 1, marking as unpacked only, configuration required on target.
>>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall scriptlets
>>>> of ['coreutils'] have failed. If the intention is to defer them to first
>>>> boot,
>>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>>> Deferring to first boot via 'exit 1' is no longer supported.
>>>> Details of the failure are in
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
>>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed:
>>>> do_rootfs
>>>> ERROR: Logfile of failure stored in:
>>>> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>>> ERROR: Task
>>>> (/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_rootfs)
>>>> failed with exit code '1'
>>>>
>>>> Any idea where to start debugging?
>>>>
>>>> Best regards
>>>> --
>>>> Jens Rehsack - rehsack@gmail.com
>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>> --
>>>> Jens Rehsack - rehsack@gmail.com
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>> --
>> Jens Rehsack - rehsack@gmail.com
>>
>>
> --
> Jens Rehsack - rehsack@gmail.com
>
>

--000000000000d3d81c05758917d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">pn-buil=
dlist isn&#39;t really useful in this case, building both coreutils and bus=
ybox doesn&#39;t imply that both will be actually included in the image..<d=
iv><br></div><div>If you compare installed-package-names.txt in buildhistor=
y you&#39;ll see that only the=C2=A0core-image-minimal-dev has coreutils in=
stalled.</div><div><br></div><div><div>docker-shr qemux86-64@ ~/build/oe-co=
re/buildhistory/images/qemux86_64/glibc $ grep busybox core-image-minimal*/=
installed-package-names.txt</div><div>core-image-minimal-dev/installed-pack=
age-names.txt:busybox</div><div>core-image-minimal-dev/installed-package-na=
mes.txt:busybox-dev</div><div>core-image-minimal-dev/installed-package-name=
s.txt:busybox-syslog</div><div>core-image-minimal-dev/installed-package-nam=
es.txt:busybox-udhcpc</div><div>core-image-minimal/installed-package-names.=
txt:busybox</div><div>core-image-minimal/installed-package-names.txt:busybo=
x-syslog</div><div>core-image-minimal/installed-package-names.txt:busybox-u=
dhcpc</div><div>docker-shr qemux86-64@ ~/build/oe-core/buildhistory/images/=
qemux86_64/glibc $ grep coreutils core-image-minimal*/installed-package-nam=
es.txt</div><div>core-image-minimal-dev/installed-package-names.txt:coreuti=
ls</div><div>core-image-minimal-dev/installed-package-names.txt:coreutils-d=
ev</div></div><div><br></div><div>That&#39;s why the issue is shown only in=
 core-image-minimal-dev.</div><div><br></div><div>Do you have custom busybo=
x defconfig which enables nice applet? It&#39;s not enabled in default conf=
ig:</div><div>meta/recipes-core/busybox/busybox/defconfig:# CONFIG_NICE is =
not set<br></div><div><br></div><div><br></div><div><br></div></div></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Sep 10, =
2018 at 8:15 PM Jens Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com">rehsa=
ck@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div st=
yle=3D"word-wrap:break-word;line-break:after-white-space"><br><div><br><blo=
ckquote type=3D"cite"><div>Am 09.09.2018 um 20:56 schrieb Martin Jansa &lt;=
<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gm=
ail.com</a>&gt;:</div><br class=3D"m_7046839808965869988Apple-interchange-n=
ewline"><div><div dir=3D"ltr">Does core-image-minimal include both busybox =
and coreutils? Maybe only -dev include both.</div></div></blockquote><div><=
br></div><div>Unfortunately both include coreutils, see attached pn-buildli=
st (I can send you the recipe-depends and the task-depends, either if you n=
eed them).</div><div></div></div></div><div style=3D"word-wrap:break-word;l=
ine-break:after-white-space"><div class=3D"m_7046839808965869988AppleOrigin=
alContents"><div class=3D"m_7046839808965869988AppleOriginalContents"></div=
></div></div><div style=3D"word-wrap:break-word;line-break:after-white-spac=
e"><div><div></div><br><blockquote type=3D"cite"><div><div dir=3D"ltr"><div=
>I&#39;ll send fix for attr soon, waiting for some builds to finish testing=
 it.</div></div></div></blockquote><div><br></div><div>Seems similar to my =
kind of soon :-)</div><br><blockquote type=3D"cite"><div><div class=3D"gmai=
l_quote"><div dir=3D"ltr">On Sun, Sep 9, 2018 at 8:47 PM Jens Rehsack &lt;<=
a href=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap=
:break-word;line-break:after-white-space">So far, so good.<div><br></div><d=
iv>They way to fix that seems either to check why busybox uses ${base_bindi=
r} nowadays in favor of ${bindir} and fix either busybox or coreutils or at=
tr.</div><div><br></div><div>What drives me nuts is not only the failure af=
ter the busybox update - why does core-image-minimal builds successful whil=
e core-image-minimal-dev fails?</div><div><br></div><div>Cheers,</div><div>=
Jens<br><div><br><blockquote type=3D"cite"><div>Am 09.09.2018 um 19:27 schr=
ieb Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_b=
lank">martin.jansa@gmail.com</a>&gt;:</div><br class=3D"m_70468398089658699=
88m_697569895326130484Apple-interchange-newline"><div><div dir=3D"ltr"><div=
 dir=3D"ltr">busybox is most likely the one providing it in ${base_bindir}<=
div><br></div><div>Recent busybox upgrade probably moved this file.</div><d=
iv><br></div><div>There is also conflict on=C2=A0/usr/bin/setfattr between =
busybox and attr now.</div></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr">On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa &lt;<a href=3D"mail=
to:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">There are =
2 packages using u-a for nice, but one is using {bindir} and 2nd one is usi=
ng {base_bindir}<div><br></div><div>coreutils is using bindir, find what&#3=
9;s using ${base_bindir} and change one of them to use the same u-a link as=
 the other one.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack &lt;<a href=3D"mailto:rehsack@g=
mail.com" target=3D"_blank">rehsack@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div style=3D"word-wrap:break-word;line-break:aft=
er-white-space"><br><div><br><blockquote type=3D"cite"><div>Am 09.09.2018 u=
m 13:15 schrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.=
com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;:</div><br class=3D"m_=
7046839808965869988m_697569895326130484m_7760255497084367731m_-761040365500=
0841370Apple-interchange-newline"><div><div>It&#39;s right in the message?<=
br><br>ERROR: Logfile of failure stored in:<br>/home/sno/gpw-community-bsp/=
mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-=
r0/temp/log.do_rootfs.27709<br><br>Alex<br></div></div></blockquote><div><b=
r></div><div><br></div><div>It&#39;s not much what stands there:</div><div>=
<br></div><div><div>Downloading file:/home/sno/gpw-community-bsp/mops-yocto=
-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/oe-root=
fs-repo/core2-64/libcap-dev_2.25-r0_core2-64.ipk.</div><div>Installing core=
utils-dev (8.30) on root</div><div>[...]</div><div><div>Configuring update-=
rc.d-deupdate-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-=
platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/u=
sr/bin/diff to /usr/bin/diff.diffutils</div><div>update-alternatives: Linki=
ng /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-li=
nux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp to /usr/bin/cmp.diffut=
ils</div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mops=
-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/r=
ootfs/bin/umount to /bin/umount.util-linux</div><div>update-alternatives: L=
inking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-pok=
y-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[ to /usr/bin/lbracket=
.coreutils</div><div>update-alternatives: Linking /home/sno/gpw-community-b=
sp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1=
.0-r0/rootfs/usr/bin/arch to /usr/bin/arch.coreutils</div><div>update-alter=
natives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/f=
ischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename to =
/usr/bin/basename.coreutils</div><div>update-alternatives: Linking /home/sn=
o/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-im=
age-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to /usr/bin/chcon.coreutils</di=
v><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-=
platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/u=
sr/bin/cksum to /usr/bin/cksum.coreutils</div><div>update-alternatives: Lin=
king /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-=
linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm to /usr/bin/comm.co=
reutils</div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/=
mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-=
r0/rootfs/usr/bin/csplit to /usr/bin/csplit.coreutils</div><div>update-alte=
rnatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/=
fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut to /usr=
/bin/cut.coreutils</div><div>[...]</div></div></div><div><div>update-altern=
atives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fi=
scher-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo to /us=
r/bin/mkfifo.coreutils</div><div>update-alternatives: renaming nice link fr=
om /bin/nice to /usr/bin/nice</div><div>mv: cannot stat &#39;/bin/nice&#39;=
: No such file or directory</div><div>update-alternatives: Linking /home/sn=
o/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-im=
age-minimal-dev/1.0-r0/rootfs/bin/bash to /bin/bash.bash</div><div>[...]</d=
iv></div><div><div>Configuring libgmp10.</div><div>Configuring coreutils.</=
div><div>coreutils.postinst returned 1, marking as unpacked only, configura=
tion required on target.</div><div>Configuring acl.</div><div>[...]</div><d=
iv><br></div><div>The postinst file of coreutils contains only a long list =
of update-alternatives, as many other packages do either.</div><div><br></d=
iv><div>core-image-minimal contains coreutils as well, but it doesn&#39;t f=
ail the same way.</div><div><br></div><div>Any ideas?</div></div><br><block=
quote type=3D"cite"><div><div>2018-09-09 10:58 GMT+02:00 Jens Rehsack &lt;<=
a href=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a>=
&gt;:<br><blockquote type=3D"cite">Hi,<br><br>I got following issue when bu=
ilding an image for live-debugging:<br><br>ERROR: updatable-app-dev-image-1=
.0-r0 do_rootfs: Postinstall scriptlets of [&#39;coreutils&#39;] have faile=
d. If the intention is to defer them to first boot,<br>then please place th=
em into pkg_postinst_ontarget_${PN} ().<br>Deferring to first boot via &#39=
;exit 1&#39; is no longer supported.<br>Details of the failure are in /home=
/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/upda=
table-app-dev-image/1.0-r0/temp/log.do_rootfs.<br>ERROR: updatable-app-dev-=
image-1.0-r0 do_rootfs: Function failed: do_rootfs<br>ERROR: Logfile of fai=
lure stored in: /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fi=
scher-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358<br=
>ERROR: Task (/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/=
images/updatable-app-dev-image.bb:do_rootfs) failed with exit code &#39;1&#=
39;<br><br>I can reproduce it using core-image-minimal-dev<br><br>WARNING: =
core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst returned 1, mar=
king as unpacked only, configuration required on target.<br>ERROR: core-ima=
ge-minimal-dev-1.0-r0 do_rootfs: Postinstall scriptlets of [&#39;coreutils&=
#39;] have failed. If the intention is to defer them to first boot,<br>then=
 please place them into pkg_postinst_ontarget_${PN} ().<br>Deferring to fir=
st boot via &#39;exit 1&#39; is no longer supported.<br>Details of the fail=
ure are in /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer=
-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.<br>ERROR: cor=
e-image-minimal-dev-1.0-r0 do_rootfs: Function failed: do_rootfs<br>ERROR: =
Logfile of failure stored in: /home/sno/gpw-community-bsp/mops-yocto-platfo=
rm/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_ro=
otfs.27709<br>ERROR: Task (/home/sno/gpw-community-bsp/sources/poky/meta/re=
cipes-core/images/core-image-minimal-dev.bb:do_rootfs) failed with exit cod=
e &#39;1&#39;<br><br>Any idea where to start debugging?<br><br>Best regards=
<br>--<br>Jens Rehsack - <a href=3D"mailto:rehsack@gmail.com" target=3D"_bl=
ank">rehsack@gmail.com</a><br><br><br>--<br>_______________________________=
________________<br>yocto mailing list<br><a href=3D"mailto:yocto@yoctoproj=
ect.org" target=3D"_blank">yocto@yoctoproject.org</a><br><a href=3D"https:/=
/lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoc=
toproject.org/listinfo/yocto</a><br><br></blockquote></div></div></blockquo=
te></div><br><div>
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
<div style=3D"letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;word-wrap:break-word"><di=
v style=3D"letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;word-wrap:break-word"><div>-=
-=C2=A0</div><div>Jens Rehsack - <a href=3D"mailto:rehsack@gmail.com" targe=
t=3D"_blank">rehsack@gmail.com</a></div></div></div>
</div>
<br></div></div></blockquote></div>
</div></blockquote></div><br><div>
<div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;word-wra=
p:break-word"><div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;word-wrap:break-word"><div>--=C2=A0</div><div>Jens Rehsack - <a href=
=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a></div>=
</div></div>
</div>
<br></div></blockquote></div>

--000000000000d3d81c05758917d9--
