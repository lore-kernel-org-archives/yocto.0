Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55747E00BE8; Thu, 14 Feb 2019 02:26:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B68BE00B92
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 02:26:35 -0800 (PST)
Received: by mail-ed1-f46.google.com with SMTP id h58so4560192edb.5
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 02:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=q+bbhSbdmYtuW5S4SvA44o8fiz/3z5QWQ92QtHoQdFU=;
	b=TjTEmfmRj52WljQo6bn8eciQrjgcuO2OKFsr4Dy59t63p6P8CdHNHzsTl7wXT/Dwqn
	CrJ3eNvsiigJbPNC67AdASeJYW6x88K/qnyAKPFUfFyW1GfTNgwrAQwzA1WvtkwFAnSz
	i4eXQNe6mLP48keLGd9tGiVk9OlC106+NIZOs4iJDLZnRUUCG9gACqgPz9NY0JogFocx
	DR4kTo9EJkUqKvSdb0WwGqIMJTdLELFSEWpslA5GE1ib1MctdxLOLOthJ8p52U5KP5Ds
	+ms8qTTi4GJoYj323ao099Z+VR6+C3m//wX3DijSe0o5ZYwpVS4/iMK8pK2yJvFJb9gg
	/ytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=q+bbhSbdmYtuW5S4SvA44o8fiz/3z5QWQ92QtHoQdFU=;
	b=SOuqPpOdubLjip0e17RlLsRCbOiNOK8NFHkgC4hmllRFLDK8HW4jHgD7dntkIkukrD
	ybixZuO0kXIro2lzh/V5ksJXAZ/wFpu/+7pbVD1Nkp+7Gun8OQcpzgxeQxVSDk5sBGoo
	bD2aL44YJwRBfmlMZ61JXSgWRNfAtjDm76pdiv68Zbr2HF9fFjs8cXJEPinOY2fooSQB
	D/ocbFA6vDKwAQ9TfpPzQnX36W6S8H890vQMHvq+C0ivILjjsJXn7lg+kVSFpc2A3+Ko
	KQ3efvyRFB1UQR4faPzvAjuovdzfvrIKwm/jlegNHs/KameNu/q7Uu7aP90qLN1ZFYND
	y6YA==
X-Gm-Message-State: AHQUAubzweVewHS62U/QXAEAwSxM4nSLQBedBCkgQjnhDkETjWMSVeLq
	pCAPkFg10t+I1TjrrgtymUifko0N33QqBv+xc2f8MnP3
X-Google-Smtp-Source: AHgI3IYcnR2MJp+kJ9F517uXcEu8XMXUdvJK6dqthiV0iZsC4dipXIFV3JpO8ZkBTfk1ouUR3NX0rnMEvZrxsf8CsBo=
X-Received: by 2002:a17:906:2ad2:: with SMTP id
	m18mr2243405eje.89.1550139994931; 
	Thu, 14 Feb 2019 02:26:34 -0800 (PST)
MIME-Version: 1.0
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Thu, 14 Feb 2019 11:26:24 +0100
Message-ID: <CAKpuFdft3u6-H2BwRe3PJSvhOem9Twc2KZ0OEwTys4-rPDodaA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: npm recipe bad task order
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
X-List-Received-Date: Thu, 14 Feb 2019 10:26:37 -0000
Content-Type: multipart/alternative; boundary="000000000000c0052a0581d817b6"

--000000000000c0052a0581d817b6
Content-Type: text/plain; charset="UTF-8"

Hi,

I have some recipes created from npm packages with devtool.

do_populate_lic with: WARNING: Could not copy license file
and LIC_FILES_CHKSUM points to an invalid file.

In my understanding the problem is that do_populate_lic task is running
before do_compile:

log.task_order
_______________________________________________________________
do_cleansstate (20550): log.do_cleansstate.20550
do_cleanall (20551): log.do_cleanall.20551
do_fetch (20653): log.do_fetch.20653
do_unpack (22861): log.do_unpack.22861
do_prepare_recipe_sysroot (22862): log.do_prepare_recipe_sysroot.22862
do_patch (23281): log.do_patch.23281
do_configure (23283): log.do_configure.23283
do_populate_lic (23284): log.do_populate_lic.23284
do_compile (23289): log.do_compile.23289
_______________________________________________________________

The recipes npm created with devtool reference license to S
(${WORKDIR}/npmpkg):
______________________________________________________________________________
LIC_FILES_CHKSUM = "file://LICENSE;md5=75dbbb2f49d90bfc476532dc5861fd26 \

file://node_modules/inherits/LICENSE;md5=5b2ef2247af6d355ae9d9f988092d470 \

file://node_modules/psl/LICENSE;md5=2425d288296fae32e27553694ff40294 \

file://node_modules/rc/LICENSE.MIT;md5=e0f70a42adf526e6f5e605a94d98a420"
______________________________________________________________________________

But as npm_do_compile is the task that populates workdir there is no
license files available when do_populate_lic runs.

I have tried both sumo and thud but with the same result, is the order
something that have change?

Best regards
Jonas

--000000000000c0052a0581d817b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I have some recipes creat=
ed from npm packages with devtool.</div><div><br></div><div>do_populate_lic=
 with:=C2=A0WARNING: Could not copy license file and=C2=A0LIC_FILES_CHKSUM =
points to an invalid file.</div><div><br></div><div>In my understanding the=
 problem is that do_populate_lic task is running before do_compile:</div><d=
iv><br></div><div>log.task_order</div><div>________________________________=
_______________________________</div><div><div>do_cleansstate (20550): log.=
do_cleansstate.20550</div><div>do_cleanall (20551): log.do_cleanall.20551</=
div><div>do_fetch (20653): log.do_fetch.20653</div><div>do_unpack (22861): =
log.do_unpack.22861</div><div>do_prepare_recipe_sysroot (22862): log.do_pre=
pare_recipe_sysroot.22862</div><div>do_patch (23281): log.do_patch.23281</d=
iv><div>do_configure (23283): log.do_configure.23283</div><div>do_populate_=
lic (23284): log.do_populate_lic.23284</div><div>do_compile (23289): log.do=
_compile.23289</div></div><div>____________________________________________=
___________________</div><div><br></div><div>The recipes npm created with d=
evtool reference license to S (${WORKDIR}/npmpkg):</div><div>______________=
________________________________________________________________<br></div><=
div><div>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D75dbbb2f49d90bfc47=
6532dc5861fd26 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 file://node_modules/inherits/LICENSE;md5=3D5b2ef2247a=
f6d355ae9d9f988092d470 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://node_modules/psl/LICENSE;md5=3D2425d=
288296fae32e27553694ff40294 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://node_modules/rc/LICENSE.MIT;md5=
=3De0f70a42adf526e6f5e605a94d98a420&quot;</div></div><div>_________________=
_____________________________________________________________</div><div><br=
></div><div>But as npm_do_compile is the task that populates workdir there =
is no license files available when do_populate_lic runs.</div><div><br></di=
v><div>I have tried both sumo and thud but with the same result, is the ord=
er something that have change?=C2=A0</div><div><br></div><div>Best regards<=
/div><div>Jonas</div><div><br></div></div></div></div></div></div></div>

--000000000000c0052a0581d817b6--
