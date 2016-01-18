Return-Path: <dsonone@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF67FE00B8B; Mon, 18 Jan 2016 04:13:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dsonone[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6323CE00AB9
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 04:13:33 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id b66so17172591qkf.3
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 04:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SygtQ/XQYxMm51rCoFyqDzFhTL1e4CSJeNpYhpiAVCs=;
	b=zi7YuZDLczyaGKStNfZqlkRqo1MdV0VlYDNtUYlOv2fUSCrHGymFoeT4XBb47Ed8QK
	+9nu52REnyuUZHU4sDtvO0O1sFLycVzZjpN4fSUepqPyWwPmarfp6aui9xdLOvS7a6o7
	Fv9HPG4CsVpzXdefkX5Imbx8jnSkUyTSjRR4PfUfqIurcqGV67bfSEgqTFXeGPwRna2P
	LuNkP67ijFLQ9Pve3jVGJfWt1xiQ8y+uCixTukYjw/ajn9WsDWptUuAdmfhAx3x4b8lv
	E65RvvvnT9NUErDz1acki/T/MhyjfEwIqr+hDKkqdShjBvgs3rPvMJ545lt5xSsgXIoN
	EHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=SygtQ/XQYxMm51rCoFyqDzFhTL1e4CSJeNpYhpiAVCs=;
	b=nMv6YN4b0uX/0pOuxkW47IvgX4BVYUXfEjLS6ZfS4/dCWGmH5YaVRCsfe0xHiyuyZa
	9wPnUgWsUBiuc4H+17kYlUXcs01XUUnEgTqLFQxz2LHWjZtcIs2tNErN0h/RdyPmG04m
	iNj+nQMo7fSJ3Q3MBw7FbuIyoDhoJwEKNZj6si10tAjwFMNQ4DeXsuhROscYg/e+elwc
	20HqYdffvE2AT/H0D4ozRZIwQtT4QRG2H7A6+acWHbiYOqT80DoHIgqJ13rGgMEtYLpa
	lNHwLWilK44W1Q5mYr3rWzm+AhStiAhN1B4bpjbPeofss7rltPR19yqAGY3zv1Puo2gO
	Losw==
X-Gm-Message-State: ALoCoQlElfKnqPT80HruK7STvgjp53H7f26L7HI4UIWW4ObavFOxu+6v4baufz392M8v/iyq2EEcW0f5/CzOmT4W+ZwkDvXEqA==
MIME-Version: 1.0
X-Received: by 10.55.42.10 with SMTP id q10mr29224191qkh.99.1453119212407;
	Mon, 18 Jan 2016 04:13:32 -0800 (PST)
Received: by 10.55.92.199 with HTTP; Mon, 18 Jan 2016 04:13:32 -0800 (PST)
Date: Mon, 18 Jan 2016 17:43:32 +0530
Message-ID: <CALNP6VsQQVU58v0qBwnQjZi-jkg44XHk81kV5Ppmh33qzD9_cQ@mail.gmail.com>
From: Damodar Sonone <dsonone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: ERROR: QA Issue: FILES in ptest-runner-dbg
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
X-List-Received-Date: Mon, 18 Jan 2016 12:13:34 -0000
Content-Type: multipart/alternative; boundary=001a11474c9e78cfaa05299aae7b

--001a11474c9e78cfaa05299aae7b
Content-Type: text/plain; charset=UTF-8

Hello,

I am trying to build the custom SDK using Yocto Project Jethro 2.0
<https://www.yoctoproject.org/downloads/core/jethro20>. I added the recipe
and layer files to support the my SDK.

$ bitbake meta-toolchain

The build fails with following error:

ERROR: QA Issue: FILES in ptest-runner-dbg recipe should not contain the
${D} variable as it references the local build directory not the target
filesystem, best solution is to remove the ${D} reference [expanded-d]
ERROR: QA Issue: FILES in ptest-runner-dbg recipe should not contain the
${D} variable as it references the local build directory not the target
filesystem, best solution is to remove the ${D} reference [expanded-d]
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/ptest-runner/1.0-r0/temp/log.do_package_qa.18936

Any pointers on this will be really helpfull.

Thanks,

--001a11474c9e78cfaa05299aae7b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br></div><br>I am trying to build th=
e custom SDK using Yocto Project <a href=3D"https://www.yoctoproject.org/do=
wnloads/core/jethro20">Jethro 2.0</a>. I added the recipe and layer files t=
o support the my SDK.<br><br>$ bitbake meta-toolchain<br><br>The build fail=
s with following error:<br><br></div><div>ERROR: QA Issue: FILES in ptest-r=
unner-dbg recipe should not contain the ${D} variable as it references the =
local build directory not the target filesystem, best solution is to remove=
 the ${D} reference [expanded-d]<br>ERROR: QA Issue: FILES in ptest-runner-=
dbg recipe should not contain the ${D} variable as it references the local =
build directory not the target filesystem, best solution is to remove the $=
{D} reference [expanded-d]<br>ERROR: QA run found fatal errors. Please cons=
ider fixing them.<br>ERROR: Function failed: do_package_qa<br>ERROR: Logfil=
e of failure stored in: /ptest-runner/1.0-r0/temp/log.do_package_qa.18936<b=
r><br></div>Any pointers on this will be really helpfull.<br><br></div>Than=
ks,<br><br></div>

--001a11474c9e78cfaa05299aae7b--
