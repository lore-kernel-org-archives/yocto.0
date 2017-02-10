Return-Path: <whulxh@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F053EE009AA; Fri, 10 Feb 2017 15:06:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (whulxh[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF35E00961
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 15:06:01 -0800 (PST)
Received: by mail-qt0-f174.google.com with SMTP id v23so49240961qtb.0
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 15:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YuTAufaIoRbOb28K1hq3TF+LsPbR4adO2gM0BiNdUxc=;
	b=UckHvXJikntN+f5lSkXFwCoLt+EGeQ14u8WuVmmwJ2JYTT7vfnQZtz33sU0dweU+Jj
	i8TDRfUwm6maxkX5jRlLhS9snTRyrkWP4zvxo1sc01kmRRe9WvHfjqKrHsBE47pR8VBV
	DpEgXMBBohJ4AMXebSIczI809fAL+5l0XsyGnOwhtjcBWQDrtcFlb/NA27+vsxqdBDOn
	yRU0crna3pdi+RvksdH08PJmifPiBNrHECmQidlxVyVOzETxPjDGhQow2ZXDbv4ft3By
	MT0PA+ttrPf9eTYOdqPkKnTUBvA6XQtSzhHpYqbJpiEqEcEVHqg7v4xYg1j8s3QlXf6H
	LkAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YuTAufaIoRbOb28K1hq3TF+LsPbR4adO2gM0BiNdUxc=;
	b=U3+yAP06j+0VR/Ht6EGxcpaxgUntUodUyFlW0fvDHpsr3l+nBWKB9TSXz5/jY3yuSX
	xNMTJjkepLSf988lY+b0lebWmRTUaNFrs9H7hZGYWyOmYvlrAbv7v+Inpoo4iZaLsRhU
	zD1EI7LXniTiWutXj5u2POcx1t54w7V3RICCf4agvhGk/MQlR1WJc0nwkQ3MtBBvARBh
	8chJvlqgwPGkmGYTZRhKLaoWDzVImZCOl5NRjg9J3VXFddo0OxaHKsBe/kniw3ihHUp8
	mUIAXrSICO1p0h6FbW3oVHrVYo9CPk6pD4iOk9NmXYuxF97CIZqsXYtEKTaCJ8cL0yv7
	geIA==
X-Gm-Message-State: AMke39nuQX0jLpCDrRw1t05JOVPcuF4Z/W5UKV+aFCYavv5x3SXNFZnyMSqbFGET2BDPn2hcMokZSgIN1YFljg==
X-Received: by 10.200.53.150 with SMTP id k22mr11302248qtb.19.1486767960014;
	Fri, 10 Feb 2017 15:06:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.43.98 with HTTP; Fri, 10 Feb 2017 15:05:59 -0800 (PST)
From: Xiaohui Liu <whulxh@gmail.com>
Date: Fri, 10 Feb 2017 15:05:59 -0800
Message-ID: <CAFxSfziYaKn98sUWbUuPbYiXVWXXpqu4vRdbR=BNP8QV2t+yrQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to gracefully disable a setscene task?
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
X-List-Received-Date: Fri, 10 Feb 2017 23:06:04 -0000
Content-Type: multipart/alternative; boundary=001a113e2c0c1ec7bc05483524a7

--001a113e2c0c1ec7bc05483524a7
Content-Type: text/plain; charset=UTF-8

Hi everyone,

I tried to disable a setscene task as below:

*do_populate_lic_setscene () {*
*   exit 1*
*}*

It works but shows a warning:

*WARNING: Logfile for failed setscene task is
/data/users/xhliu/poky/build-arm/tmp/work/armada39x-poky-linux-gnueabi/linux-terragraph/4.4.8-r0/temp/log.do_populate_lic_setscene.2825388*
*WARNING: Setscene task 1
(/data/users/xhliu/poky/meta-terragraph/recipes-kernel/linux/linux-terragraph_4.4.8.bb
<http://linux-terragraph_4.4.8.bb>, do_populate_lic_setscene) failed with
exit code '1' - real task will be run instead*

Any way to disable it without the warning? Thanks in advance.

Best,
Xiaohui

--001a113e2c0c1ec7bc05483524a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I tried to disable a setsc=
ene task as below:=C2=A0</div><div><br></div><div><div><i><font color=3D"#0=
000ff">do_populate_lic_setscene () {</font></i></div><div><i><font color=3D=
"#0000ff">=C2=A0 =C2=A0exit 1</font></i></div><div><i><font color=3D"#0000f=
f">}</font></i></div></div><div><br></div><div>It works but shows a warning=
:</div><div><br></div><div><div><font color=3D"#0000ff"><i>WARNING: Logfile=
 for failed setscene task is /data/users/xhliu/poky/build-arm/tmp/work/arma=
da39x-poky-linux-gnueabi/linux-terragraph/4.4.8-r0/temp/log.do_populate_lic=
_setscene.2825388</i></font></div><div><font color=3D"#0000ff"><i>WARNING: =
Setscene task 1 (/data/users/xhliu/poky/meta-terragraph/recipes-kernel/linu=
x/<a href=3D"http://linux-terragraph_4.4.8.bb">linux-terragraph_4.4.8.bb</a=
>, do_populate_lic_setscene) failed with exit code &#39;1&#39; - real task =
will be run instead</i></font></div></div><div><font color=3D"#0000ff"><i><=
br></i></font></div>Any way to disable it without the warning? Thanks in ad=
vance.<div><br></div><div>Best,</div><div>Xiaohui</div></div>

--001a113e2c0c1ec7bc05483524a7--
