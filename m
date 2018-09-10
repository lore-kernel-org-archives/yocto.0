Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E53CE00A73; Mon, 10 Sep 2018 11:15:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40D38E00994
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2018 11:15:37 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id b19-v6so22541264wme.3
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2018 11:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=DCmu1UvZD/b5Rq2VRPH43ZGjFl3mWfx09++dURkUTSk=;
	b=D0MpeBBd1e0wdACRaqvYnB8NAMNSg8JBJ3Iv61nj/kIci0PzZzIZCtwfQD7//56Un2
	XIT/GS02/9eaqmzfFkHpK7OgPwhaWlBL/ax+99ABXT+C/rJgVD4NyA8ahjEnSayK2Cv0
	6WUZyrKtVYEgZuCJwKjxzyjQIJVrfW2h5hV+wd1OOi1wQgUHIXRhXVsI51c+cc4lir91
	pbpTki/VVTj+mjpRCt64TBBKMU+d56nTLT/I/qddwa9RJTnDvWxTzBNOUQVjavhg/l6F
	h0487iRaTGDtaCIqgp9n18v8SX1ExrOOicSi8ZD966J2H37JsHsL/rhhvaQIOvjnBugV
	qNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=DCmu1UvZD/b5Rq2VRPH43ZGjFl3mWfx09++dURkUTSk=;
	b=MndYbkqYN/abR10mb5trzKAJzanbkfA6c9CtHDfV3G6S6SXSMFny2ZUKo2+xVQisWz
	OBN2Au1dOvG/v5ZXUwnj2MNnr3MAdsPWd4ZOyOHbHIQ0jp17r3LOOUL56CXAbeIgwH0Q
	Nhk6PzgT8hH5iww/hatU9T52vfHDudkZBZorNHY4vmwEO1NHbtIa9CPI+rMjRPv2YXuO
	AXa1ym8POA40/pf5+1wtw4dHNHRsGxnn06GI9/5/HPuwe/y5SdNAK+EpX+QvX7vBlIWU
	Ekf98iqH+SBjfXwkiMgImC6ARruKESbWkMIl1F5Si194PH7pvL9sqnxH6zQYM+crLZE8
	mnsg==
X-Gm-Message-State: APzg51CHeirm5WjUAmguXtA4zyugaqtl7lXg0A0IWrHZyficESPLJONc
	c9Id+SUP0QzPFX2taMwvIqI=
X-Google-Smtp-Source: ANB0VdaP0NZmTWaHAfvBC4PQ7alHKQww69uFx5rynGRdzL5MlTurIfn2dGiQKXKyA1QpvfDgfc2vTA==
X-Received: by 2002:a1c:838a:: with SMTP id
	f132-v6mr1503484wmd.127.1536603336283; 
	Mon, 10 Sep 2018 11:15:36 -0700 (PDT)
Received: from ernie.muppets.liwing.de (b2b-78-94-80-58.unitymedia.biz.
	[78.94.80.58]) by smtp.gmail.com with ESMTPSA id
	q135-v6sm27957038wmd.4.2018.09.10.11.15.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Sep 2018 11:15:34 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <852E6AB4-06E1-4D95-BD2F-7AF00D0B3B94@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Mon, 10 Sep 2018 20:15:32 +0200
In-Reply-To: <CA+chaQeCBa6wUJuJDF7gTGaBXdU4zE1bEQmSA=9z4dokZtM_XQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
References: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
	<CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
	<7F360AF5-A5DC-443C-A847-B7A323AF9D94@gmail.com>
	<CA+chaQcy_VHA7yGhhVULW5=jMVfP2tNEJKWi-KSgS_zwNjZUTg@mail.gmail.com>
	<CA+chaQdK_ciN-unOxb5AXkmwqMUm0y4Z5cjL3wDu0bzDYkPb5A@mail.gmail.com>
	<3C4A4AAD-4CD4-408F-A0BF-0DE592E64D0B@gmail.com>
	<CA+chaQeCBa6wUJuJDF7gTGaBXdU4zE1bEQmSA=9z4dokZtM_XQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
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
X-List-Received-Date: Mon, 10 Sep 2018 18:15:39 -0000
X-Groupsio-MsgNum: 42422
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A0CB97E4-1A62-43F6-A9BB-ECD412A80D3B";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_A0CB97E4-1A62-43F6-A9BB-ECD412A80D3B
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_91803C1B-305C-4CCB-BA6E-FD2D904E3CE1"

--Apple-Mail=_91803C1B-305C-4CCB-BA6E-FD2D904E3CE1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> Am 09.09.2018 um 20:56 schrieb Martin Jansa <martin.jansa@gmail.com>:
>=20
> Does core-image-minimal include both busybox and coreutils? Maybe only =
-dev include both.

Unfortunately both include coreutils, see attached pn-buildlist (I can =
send you the recipe-depends and the task-depends, either if you need =
them).

> I'll send fix for attr soon, waiting for some builds to finish testing =
it.

Seems similar to my kind of soon :-)

> On Sun, Sep 9, 2018 at 8:47 PM Jens Rehsack <rehsack@gmail.com =
<mailto:rehsack@gmail.com>> wrote:
> So far, so good.
>=20
> They way to fix that seems either to check why busybox uses =
${base_bindir} nowadays in favor of ${bindir} and fix either busybox or =
coreutils or attr.
>=20
> What drives me nuts is not only the failure after the busybox update - =
why does core-image-minimal builds successful while =
core-image-minimal-dev fails?
>=20
> Cheers,
> Jens
>=20
>> Am 09.09.2018 um 19:27 schrieb Martin Jansa <martin.jansa@gmail.com =
<mailto:martin.jansa@gmail.com>>:
>>=20
>> busybox is most likely the one providing it in ${base_bindir}
>>=20
>> Recent busybox upgrade probably moved this file.
>>=20
>> There is also conflict on /usr/bin/setfattr between busybox and attr =
now.
>>=20
>> On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa <martin.jansa@gmail.com =
<mailto:martin.jansa@gmail.com>> wrote:
>> There are 2 packages using u-a for nice, but one is using {bindir} =
and 2nd one is using {base_bindir}
>>=20
>> coreutils is using bindir, find what's using ${base_bindir} and =
change one of them to use the same u-a link as the other one.
>>=20
>> On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack <rehsack@gmail.com =
<mailto:rehsack@gmail.com>> wrote:
>>=20
>>=20
>>> Am 09.09.2018 um 13:15 schrieb Alexander Kanavin =
<alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>:
>>>=20
>>> It's right in the message?
>>>=20
>>> ERROR: Logfile of failure stored in:
>>> =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>>=20
>>> Alex
>>=20
>>=20
>> It's not much what stands there:
>>=20
>> Downloading =
file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky=
-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.=
25-r0_core2-64.ipk.
>> Installing coreutils-dev (8.30) on root
>> [...]
>> Configuring update-rc.d-deupdate-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff to =
/usr/bin/diff.diffutils
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp to =
/usr/bin/cmp.diffutils
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/umount to =
/bin/umount.util-linux
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[ to =
/usr/bin/lbracket.coreutils
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to =
/usr/bin/arch.coreutils
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename to =
/usr/bin/basename.coreutils
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to =
/usr/bin/chcon.coreutils
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to =
/usr/bin/cksum.coreutils
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm to =
/usr/bin/comm.coreutils
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to =
/usr/bin/csplit.coreutils
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut to =
/usr/bin/cut.coreutils
>> [...]
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo to =
/usr/bin/mkfifo.coreutils
>> update-alternatives: renaming nice link from /bin/nice to =
/usr/bin/nice
>> mv: cannot stat '/bin/nice': No such file or directory
>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to /bin/bash.bash
>> [...]
>> Configuring libgmp10.
>> Configuring coreutils.
>> coreutils.postinst returned 1, marking as unpacked only, =
configuration required on target.
>> Configuring acl.
>> [...]
>>=20
>> The postinst file of coreutils contains only a long list of =
update-alternatives, as many other packages do either.
>>=20
>> core-image-minimal contains coreutils as well, but it doesn't fail =
the same way.
>>=20
>> Any ideas?
>>=20
>>> 2018-09-09 10:58 GMT+02:00 Jens Rehsack <rehsack@gmail.com =
<mailto:rehsack@gmail.com>>:
>>>> Hi,
>>>>=20
>>>> I got following issue when building an image for live-debugging:
>>>>=20
>>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,
>>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>>> Deferring to first boot via 'exit 1' is no longer supported.
>>>> Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
>>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: =
do_rootfs
>>>> ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
>>>> ERROR: Task =
(/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updat=
able-app-dev-image.bb:do_rootfs) failed with exit code '1'
>>>>=20
>>>> I can reproduce it using core-image-minimal-dev
>>>>=20
>>>> WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: =
coreutils.postinst returned 1, marking as unpacked only, configuration =
required on target.
>>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,
>>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>>> Deferring to first boot via 'exit 1' is no longer supported.
>>>> Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
>>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: =
do_rootfs
>>>> ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>>> ERROR: Task =
(/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-im=
age-minimal-dev.bb:do_rootfs) failed with exit code '1'
>>>>=20
>>>> Any idea where to start debugging?
>>>>=20
>>>> Best regards
>>>> --
>>>> Jens Rehsack - rehsack@gmail.com <mailto:rehsack@gmail.com>
>>>>=20
>>>>=20
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>>>>=20
>>=20
>> --
>> Jens Rehsack - rehsack@gmail.com <mailto:rehsack@gmail.com>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>=20
> --
> Jens Rehsack - rehsack@gmail.com <mailto:rehsack@gmail.com>

--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_91803C1B-305C-4CCB-BA6E-FD2D904E3CE1
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_540A60F3-87AC-4BA8-BC01-6DFEAEE2B813"

--Apple-Mail=_540A60F3-87AC-4BA8-BC01-6DFEAEE2B813
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv="Content-Type" content="text/html; charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" class=""><br class=""><div><br class=""><blockquote type="cite" class=""><div class="">Am 09.09.2018 um 20:56 schrieb Martin Jansa &lt;<a href="mailto:martin.jansa@gmail.com" class="">martin.jansa@gmail.com</a>&gt;:</div><br class="Apple-interchange-newline"><div class=""><div dir="ltr" class="">Does core-image-minimal include both busybox and coreutils? Maybe only -dev include both.</div></div></blockquote><div><br class=""></div><div>Unfortunately both include coreutils, see attached pn-buildlist (I can send you the recipe-depends and the task-depends, either if you need them).</div><div></div></div></body></html><html><body style="word-wrap: break-word; -webkit-nbsp-mode: space; line-break: after-white-space;"><head><meta http-equiv="Content-Type" content="text/html; charset=us-ascii"></head><div class="AppleOriginalContents"><div class="AppleOriginalContents"></div></div></body></html><html><head><meta http-equiv="Content-Type" content="text/html; charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" class=""><div><div></div><br class=""><blockquote type="cite" class=""><div class=""><div dir="ltr" class=""><div class="">I'll send fix for attr soon, waiting for some builds to finish testing it.</div></div></div></blockquote><div><br class=""></div><div>Seems similar to my kind of soon :-)</div><br class=""><blockquote type="cite" class=""><div class=""><div class="gmail_quote"><div dir="ltr" class="">On Sun, Sep 9, 2018 at 8:47 PM Jens Rehsack &lt;<a href="mailto:rehsack@gmail.com" class="">rehsack@gmail.com</a>&gt; wrote:<br class=""></div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style="word-wrap:break-word;line-break:after-white-space" class="">So far, so good.<div class=""><br class=""></div><div class="">They way to fix that seems either to check why busybox uses ${base_bindir} nowadays in favor of ${bindir} and fix either busybox or coreutils or attr.</div><div class=""><br class=""></div><div class="">What drives me nuts is not only the failure after the busybox update - why does core-image-minimal builds successful while core-image-minimal-dev fails?</div><div class=""><br class=""></div><div class="">Cheers,</div><div class="">Jens<br class=""><div class=""><br class=""><blockquote type="cite" class=""><div class="">Am 09.09.2018 um 19:27 schrieb Martin Jansa &lt;<a href="mailto:martin.jansa@gmail.com" target="_blank" class="">martin.jansa@gmail.com</a>&gt;:</div><br class="m_697569895326130484Apple-interchange-newline"><div class=""><div dir="ltr" class=""><div dir="ltr" class="">busybox is most likely the one providing it in ${base_bindir}<div class=""><br class=""></div><div class="">Recent busybox upgrade probably moved this file.</div><div class=""><br class=""></div><div class="">There is also conflict on&nbsp;/usr/bin/setfattr between busybox and attr now.</div></div></div><br class=""><div class="gmail_quote"><div dir="ltr" class="">On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa &lt;<a href="mailto:martin.jansa@gmail.com" target="_blank" class="">martin.jansa@gmail.com</a>&gt; wrote:<br class=""></div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir="ltr" class="">There are 2 packages using u-a for nice, but one is using {bindir} and 2nd one is using {base_bindir}<div class=""><br class=""></div><div class="">coreutils is using bindir, find what's using ${base_bindir} and change one of them to use the same u-a link as the other one.</div></div><br class=""><div class="gmail_quote"><div dir="ltr" class="">On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack &lt;<a href="mailto:rehsack@gmail.com" target="_blank" class="">rehsack@gmail.com</a>&gt; wrote:<br class=""></div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style="word-wrap:break-word;line-break:after-white-space" class=""><br class=""><div class=""><br class=""><blockquote type="cite" class=""><div class="">Am 09.09.2018 um 13:15 schrieb Alexander Kanavin &lt;<a href="mailto:alex.kanavin@gmail.com" target="_blank" class="">alex.kanavin@gmail.com</a>&gt;:</div><br class="m_697569895326130484m_7760255497084367731m_-7610403655000841370Apple-interchange-newline"><div class=""><div class="">It's right in the message?<br class=""><br class="">ERROR: Logfile of failure stored in:<br class="">/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br class=""><br class="">Alex<br class=""></div></div></blockquote><div class=""><br class=""></div><div class=""><br class=""></div><div class="">It's not much what stands there:</div><div class=""><br class=""></div><div class=""><div class="">Downloading file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.25-r0_core2-64.ipk.</div><div class="">Installing coreutils-dev (8.30) on root</div><div class="">[...]</div><div class=""><div class="">Configuring update-rc.d-deupdate-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff to /usr/bin/diff.diffutils</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp to /usr/bin/cmp.diffutils</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/umount to /bin/umount.util-linux</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[ to /usr/bin/lbracket.coreutils</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to /usr/bin/arch.coreutils</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename to /usr/bin/basename.coreutils</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to /usr/bin/chcon.coreutils</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to /usr/bin/cksum.coreutils</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm to /usr/bin/comm.coreutils</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to /usr/bin/csplit.coreutils</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut to /usr/bin/cut.coreutils</div><div class="">[...]</div></div></div><div class=""><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo to /usr/bin/mkfifo.coreutils</div><div class="">update-alternatives: renaming nice link from /bin/nice to /usr/bin/nice</div><div class="">mv: cannot stat '/bin/nice': No such file or directory</div><div class="">update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to /bin/bash.bash</div><div class="">[...]</div></div><div class=""><div class="">Configuring libgmp10.</div><div class="">Configuring coreutils.</div><div class="">coreutils.postinst returned 1, marking as unpacked only, configuration required on target.</div><div class="">Configuring acl.</div><div class="">[...]</div><div class=""><br class=""></div><div class="">The postinst file of coreutils contains only a long list of update-alternatives, as many other packages do either.</div><div class=""><br class=""></div><div class="">core-image-minimal contains coreutils as well, but it doesn't fail the same way.</div><div class=""><br class=""></div><div class="">Any ideas?</div></div><br class=""><blockquote type="cite" class=""><div class=""><div class="">2018-09-09 10:58 GMT+02:00 Jens Rehsack &lt;<a href="mailto:rehsack@gmail.com" target="_blank" class="">rehsack@gmail.com</a>&gt;:<br class=""><blockquote type="cite" class="">Hi,<br class=""><br class="">I got following issue when building an image for live-debugging:<br class=""><br class="">ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall scriptlets of ['coreutils'] have failed. If the intention is to defer them to first boot,<br class="">then please place them into pkg_postinst_ontarget_${PN} ().<br class="">Deferring to first boot via 'exit 1' is no longer supported.<br class="">Details of the failure are in /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.<br class="">ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br class="">ERROR: Logfile of failure stored in: /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358<br class="">ERROR: Task (/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updatable-app-dev-image.bb:do_rootfs) failed with exit code '1'<br class=""><br class="">I can reproduce it using core-image-minimal-dev<br class=""><br class="">WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst returned 1, marking as unpacked only, configuration required on target.<br class="">ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall scriptlets of ['coreutils'] have failed. If the intention is to defer them to first boot,<br class="">then please place them into pkg_postinst_ontarget_${PN} ().<br class="">Deferring to first boot via 'exit 1' is no longer supported.<br class="">Details of the failure are in /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.<br class="">ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: do_rootfs<br class="">ERROR: Logfile of failure stored in: /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br class="">ERROR: Task (/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_rootfs) failed with exit code '1'<br class=""><br class="">Any idea where to start debugging?<br class=""><br class="">Best regards<br class="">--<br class="">Jens Rehsack - <a href="mailto:rehsack@gmail.com" target="_blank" class="">rehsack@gmail.com</a><br class=""><br class=""><br class="">--<br class="">_______________________________________________<br class="">yocto mailing list<br class=""><a href="mailto:yocto@yoctoproject.org" target="_blank" class="">yocto@yoctoproject.org</a><br class=""><a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank" class="">https://lists.yoctoproject.org/listinfo/yocto</a><br class=""><br class=""></blockquote></div></div></blockquote></div><br class=""><div class="">
<div style="letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;word-wrap:break-word" class=""><div style="letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;word-wrap:break-word" class=""><div class="">--&nbsp;</div><div class="">Jens Rehsack - <a href="mailto:rehsack@gmail.com" target="_blank" class="">rehsack@gmail.com</a></div></div></div>
</div>
<br class=""></div>-- <br class="">
_______________________________________________<br class="">
yocto mailing list<br class="">
<a href="mailto:yocto@yoctoproject.org" target="_blank" class="">yocto@yoctoproject.org</a><br class="">
<a href="https://lists.yoctoproject.org/listinfo/yocto" rel="noreferrer" target="_blank" class="">https://lists.yoctoproject.org/listinfo/yocto</a><br class="">
</blockquote></div>
</blockquote></div>
</div></blockquote></div><br class=""><div class="">
<div style="letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; word-wrap: break-word;" class=""><div style="letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; word-wrap: break-word;" class=""><div class="">--&nbsp;</div><div class="">Jens Rehsack - <a href="mailto:rehsack@gmail.com" target="_blank" class="">rehsack@gmail.com</a></div></div></div>
</div>
<br class=""></div></div></blockquote></div>
</div></blockquote></div><br class=""><div class="">
<div style="color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=""><div style="color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=""><div class="">--&nbsp;</div><div class="">Jens Rehsack - <a href="mailto:rehsack@gmail.com" class="">rehsack@gmail.com</a></div></div></div>
</div>
<br class=""></body></html>

--Apple-Mail=_540A60F3-87AC-4BA8-BC01-6DFEAEE2B813
Content-Disposition: attachment;
	filename=core-image-minimal-dev-pn-buildlist
Content-Type: application/octet-stream;
	x-unix-mode=0664;
	name="core-image-minimal-dev-pn-buildlist"
Content-Transfer-Encoding: 7bit

core-image-minimal-dev
quilt-native
pseudo-native
linux-intel
opkg-native
opkg-utils-native
xz-native
cross-localedef-native
qemuwrapper-cross
mklibs-native
prelink-native
makedevs-native
ldconfig-native
update-rc.d-native
bmap-tools-native
pbzip2-native
pigz-native
qemu-native
qemu-helper-native
ovmf
parted-native
gptfdisk-native
dosfstools-native
mtools-native
squashfs-tools-native
syslinux-native
btrfs-tools-native
depmodwrapper-cross
syslinux
e2fsprogs-native
grub-efi
intel-microcode
cdrtools-native
systemd-boot
packagegroup-core-boot
run-postinsts
util-linux-native
python3-native
python3-setuptools-native
mtools
e2fsprogs
perl
grub-bootconf
diffutils
grub
freetype
systemd-bootconf
attr-native
sqlite3-native
binutils-cross-x86_64
rpm-native
dwarfsrcfiles-native
kmod-native
ncurses-native
kern-tools-native
gcc-cross-x86_64
bc-native
bison-native
openssl-native
elfutils-native
lzop-native
pkgconfig-native
autoconf-native
libarchive-native
libsolv-native
automake-native
libtool-native
gnu-config-native
gettext-minimal-native
binutils-native
bzip2-native
zlib-native
glib-2.0-native
dtc-native
pixman-native
alsa-lib-native
glibc
nasm-native
ovmf-native
gcc-runtime
texinfo-dummy-native
readline-native
popt-native
lzo-native
lz4-native
acl-native
util-linux
grub-efi-native
libtool-cross
gettext-native
flex-native
iucode-tool-native
ninja-native
intltool-native
gperf-native
gnu-efi
libcap
meson-native
update-rc.d
initscripts
ncurses
zlib
make-native
gdbm-native
libffi-native
unzip-native
python3
perl-native
attr
opkg-utils
db
libxcrypt
gdbm
libgcc
glibc-locale
thermald
modutils-initscripts
init-ifupdown
netbase
keymaps
sysvinit
busybox
eudev
base-passwd
base-files
bash
procps
coreutils
ptest-runner
sed
make
m4-native
shared-mime-info-native
grep
bash-completion
libpam
btrfs-tools
which
libxml-parser-perl-native
openssl
file-native
nss-native
dbus-native
db-native
gtk-doc-native
gcc-source-8.2.0
linux-libc-headers
libmpc-native
mpfr-native
gmp-native
cmake-native
expat-native
libpcre-native
util-macros-native
libpng-native
glibc-initial
gcc-cross-initial-x86_64
libgcc-initial
groff-native
acpica-native
re2c-native
unifdef-native
libffi
libtirpc
sqlite3
bzip2
readline
libnsl2
xz
dbus-glib-native
libxml2
dbus-glib
dbus
glib-2.0
kmod
libxslt-native
virtual-fstab-usb
shadow-native
gmp
acl
libxml2-native
libpcre
flex
cracklib
lzo
cwautomacros-native
kbd
sysvinit-inittab
daemontools-encore
python
dbus-test
gnome-desktop-testing
shared-mime-info
tzdata
shadow
gawk
m4
nspr-native
autoconf-archive-native
curl-native
expat
shadow-sysroot
autoconf-archive
libsm
libx11
cracklib-native
libcheck
python-native
tzcode-native
shadow-securetty
xtrans
libice
xorgproto
util-macros
xorgproto-native
libxcb
libxdmcp
libpthread-stubs
libxau
xcb-proto

--Apple-Mail=_540A60F3-87AC-4BA8-BC01-6DFEAEE2B813
Content-Disposition: attachment;
	filename=core-image-minimal-pn-buildlist
Content-Type: application/octet-stream;
	x-unix-mode=0664;
	name="core-image-minimal-pn-buildlist"
Content-Transfer-Encoding: 7bit

core-image-minimal
quilt-native
pseudo-native
linux-intel
opkg-native
opkg-utils-native
xz-native
cross-localedef-native
qemuwrapper-cross
mklibs-native
prelink-native
makedevs-native
ldconfig-native
update-rc.d-native
bmap-tools-native
pbzip2-native
pigz-native
qemu-native
qemu-helper-native
ovmf
parted-native
gptfdisk-native
dosfstools-native
mtools-native
squashfs-tools-native
systemd-boot
btrfs-tools-native
grub-efi
depmodwrapper-cross
syslinux-native
cdrtools-native
syslinux
intel-microcode
e2fsprogs-native
packagegroup-core-boot
run-postinsts
util-linux-native
python3-native
python3-setuptools-native
systemd-bootconf
grub-bootconf
diffutils
grub
freetype
mtools
perl
e2fsprogs
attr-native
sqlite3-native
binutils-cross-x86_64
rpm-native
dwarfsrcfiles-native
kmod-native
ncurses-native
kern-tools-native
gcc-cross-x86_64
bc-native
bison-native
openssl-native
elfutils-native
lzop-native
pkgconfig-native
libarchive-native
automake-native
gnu-config-native
libsolv-native
autoconf-native
libtool-native
gettext-minimal-native
binutils-native
bzip2-native
zlib-native
pixman-native
glib-2.0-native
alsa-lib-native
dtc-native
nasm-native
ovmf-native
gcc-runtime
glibc
texinfo-dummy-native
readline-native
popt-native
lzo-native
lz4-native
util-linux
gettext-native
meson-native
gnu-efi
gperf-native
intltool-native
ninja-native
libcap
acl-native
flex-native
grub-efi-native
libtool-cross
iucode-tool-native
update-rc.d
initscripts
ncurses
zlib
make-native
libffi-native
gdbm-native
unzip-native
python3
perl-native
opkg-utils
db
gdbm
libxcrypt
attr
glibc-locale
libgcc
netbase
init-ifupdown
busybox
sysvinit
eudev
base-files
keymaps
base-passwd
modutils-initscripts
thermald
ptest-runner
make
sed
bash
procps
coreutils
m4-native
shared-mime-info-native
grep
btrfs-tools
which
libpam
bash-completion
libxml-parser-perl-native
openssl
nss-native
dbus-native
file-native
db-native
gtk-doc-native
gcc-source-8.2.0
gmp-native
libmpc-native
mpfr-native
linux-libc-headers
expat-native
cmake-native
util-macros-native
libpng-native
libpcre-native
groff-native
acpica-native
gcc-cross-initial-x86_64
glibc-initial
libgcc-initial
re2c-native
unifdef-native
readline
bzip2
libtirpc
libnsl2
sqlite3
libffi
xz
glib-2.0
kmod
libxslt-native
virtual-fstab-usb
libxml2
dbus-glib
dbus
dbus-glib-native
shadow-native
acl
gmp
libxml2-native
libpcre
lzo
cwautomacros-native
cracklib
flex
daemontools-encore
sysvinit-inittab
kbd
python
shared-mime-info
tzdata
gnome-desktop-testing
dbus-test
shadow
gawk
m4
nspr-native
autoconf-archive-native
curl-native
expat
shadow-sysroot
autoconf-archive
libsm
libx11
cracklib-native
libcheck
python-native
tzcode-native
shadow-securetty
util-macros
libice
xtrans
xorgproto
libxcb
xorgproto-native
xcb-proto
libpthread-stubs
libxdmcp
libxau

--Apple-Mail=_540A60F3-87AC-4BA8-BC01-6DFEAEE2B813--

--Apple-Mail=_91803C1B-305C-4CCB-BA6E-FD2D904E3CE1--

--Apple-Mail=_A0CB97E4-1A62-43F6-A9BB-ECD412A80D3B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEGutaqWUYV+tvC/mCRJmWrtzlCp0FAluWtMUACgkQRJmWrtzl
Cp3M5hAApBUk0bfdpPXT0+xKawVYauoLri7/NLNLcsXcssMyutIjSHygGJz/Ofsg
RY3Y7tSf/I+gy0L4y4DuI0cj91/hIrEZ9a/ekWALGD2hVwfvgX+y+1BN6asI3xK/
0wZMT9a+HbASKIwLkJzeZGO89dTqgURBoYEdXurx8J27RIoNADCN9x0syVJuhUXu
IcbumAlXF/3Fi66IBXzhawHCdl6G755ntM8KI7KAKE0n8oorzwUqZz3APhj1ZG/5
T0/tJc/dZorKrVA6NIoho/iR1hvZ7pDVnO1Qr16VBz9rMckiZQO2P5RtZtfovU/z
Z1jj7ey/DG8g1ZGXRc+55/OSseuhH85Ohh8+mOkkHLa6UCjuFzd0B1CJFLhb1oTr
8qJcQNiji5izeu3in8itlbeT1UjLbIn0BrsbgHbU4qWZG7HOGNORc/a3wAYQXqO7
wKA6xnBSsv+piWwJYaNL2QxQLH9CwPtTwhAksz+e/7qVxEwz1IfSZMdTXMnfg+k4
dk54a5o+JUfBlSUmGOTKB32EyXKdssYLuCj9gShkCGSv9VRq7dScx+6xeTLSm9Tt
BChi4Rqb9IIj4D86v7knFN+W32m6kY95+BPUshzUrxNJjoCy5c+lyLsGnhDvQvx2
RjigM6vcD1rLhvIhCY+w/egzASXMZFKyb+qh2ZoU5XiEB2vqvdI=
=7yf3
-----END PGP SIGNATURE-----

--Apple-Mail=_A0CB97E4-1A62-43F6-A9BB-ECD412A80D3B--
