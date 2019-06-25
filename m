Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB963E00D35; Tue, 25 Jun 2019 00:01:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 641D6E00D2C
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 00:01:01 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id k8so1374721iot.1
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 00:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=h+qtO1RmcTW+kwgf/1irgVuVUoN0xH7kRdJSDp0hyx0=;
	b=RVBgop7hAKWt4dUO7Sbeva8YcyTq8KtrOcN7jdyEnN0pta1BEGw69Q1/HcNOrFfHQM
	/0oKspqzGFYs5LIwTeZpcqwHEkNQzJYGBV+1/p75yc47eO6jueAR8YUm1wcKGXlcm+Sb
	cHnIESd/fcQ0OfQy0mGJQToDtyXaX8ULFczc6CeCTic0tuuCQGdrXVVvIHDcmXm4XuhG
	3FOClAehctgBekua25OUNVs+8OW81AVF68JNis6PPD8FKhtAchLQHYL5skK3HL4Fm9nX
	gyf79QUcf3MmQZhmcTFaaob5jN1Jl5SP6NmGmtZnR07JnR1jlhXqi5MpMnde3S+IesS6
	tGBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=h+qtO1RmcTW+kwgf/1irgVuVUoN0xH7kRdJSDp0hyx0=;
	b=ahevH2FTvqyRzWupeSzyHnx3mdeUJd2fwyYVlPKKP8yqhzJRCGzCIljEySe+XoxqEn
	a9rDi4xNG4Dnl9MEzNTILIAGtwcsmGROHENV4Trdg62w4eWAUArKF8xaXkJsml9AzpfJ
	Nsplcgai9vw5gnLWmpEVH6ul6E+mLQUQyrPxPD/gLkq5PEPexwmSnlfrnunbmj3iFC1A
	I+LkWCjygP6yFZQB/C+z0ymcZMhCuib4sovJQPH/sd3LpbT/48EsrPRVKAZh85F4eyWv
	qNiUY4GFlqnIIT+ZZgigwMqATjyzSa0q+01TvM73dlps3V7OiJ0RR5bJU7jgZf2x61/g
	enMw==
X-Gm-Message-State: APjAAAWL8lO15YSPgALcK7jkqGmg5hpaOee6zLZvTCMtam52Uq/2iPTx
	gK7UwyuNfWXYcsYZLsHPtTX9V/6vQekBprJmivH6rrGLfbY=
X-Google-Smtp-Source: APXvYqy67pBgGL32/WRAiqmxL3X4drgva73o9mIv+t37XZBX6FmbuBbS2LwC1e9o3T8zJOqi3ypkHF5pAiLX4J4Nb1I=
X-Received: by 2002:a02:aa0d:: with SMTP id r13mr29383842jam.129.1561446060608;
	Tue, 25 Jun 2019 00:01:00 -0700 (PDT)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Tue, 25 Jun 2019 09:00:49 +0200
Message-ID: <CAFq4t4houL31Cf=gDwGx6JsVXRdrAeL-7ORkBOO4pa=otz6BDw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Mon, 08 Jul 2019 02:27:29 -0700
Subject: Issue on do_sdk_depends: The file ... is installed by both.
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
X-List-Received-Date: Tue, 25 Jun 2019 07:01:01 -0000
Content-Type: multipart/alternative; boundary="000000000000c750ba058c207dad"

--000000000000c750ba058c207dad
Content-Type: text/plain; charset="UTF-8"

Hello guys

I'm trying to generate extended SDK under and generating extended SDK I am
getting the erros such as

ERROR: image-qt5-1.0-r0 do_sdk_depends: The file
/usr/include/tensorflow/contrib/lite/string_util.h is installed by both
tensorflow and tensorflow-lite, aborting
ERROR: image-qt5-1.0-r0 do_sdk_depends:
ERROR: image-qt5-1.0-r0 do_sdk_depends: Function failed:
extend_recipe_sysroot

can you help me identify an issue on this fail?

Thanks.

--000000000000c750ba058c207dad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello guys</div><div><br></div><div>I&#39;m trying to=
 generate extended SDK under and generating extended SDK I am getting the e=
rros such as=C2=A0<br></div><div><br></div><div>ERROR: image-qt5-1.0-r0 do_=
sdk_depends: The file /usr/include/tensorflow/contrib/lite/string_util.h is=
 installed by both tensorflow and tensorflow-lite, aborting<br>ERROR: image=
-qt5-1.0-r0 do_sdk_depends:=C2=A0<br>ERROR: image-qt5-1.0-r0 do_sdk_depends=
: Function failed: extend_recipe_sysroot</div><div><br></div><div>can you h=
elp me identify an issue on this fail?=C2=A0<br></div><div><br></div><div>T=
hanks.</div></div>

--000000000000c750ba058c207dad--
