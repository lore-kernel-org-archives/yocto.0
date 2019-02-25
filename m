Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 210DDE00BAF; Mon, 25 Feb 2019 12:53:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BB41E009EB
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 12:53:49 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id q1so11503769wrp.7
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 12:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=X+cLiqHbz3REWMduxc69SGWmA/3gfeO3U2kdeRf9OcU=;
	b=UbukE9EXKVqUGD6qDHKEc/+JzJ/DhOgRuVxI8k5M2X3gSH5kW7tlX+Kd87IwWCUF8P
	EtiQC4ffR4mToDDYwYtLQdz2cmhJBaeKq5g7WHOVN7UYHFAmHI+BX1MXjcsG36WaQ3HN
	oIkpr/PG2zcRArscL9PExcrTEr9MfqjDG3c67mv2GEv6J32lrRTHaN+rocHO10dlzChc
	+XceqLBzEvdkKCYeXthz6b5neu5J0TYUqrKoe+KNppnZmGxPJRE71Z7SJnGDNxwntS2/
	7cq04VvpOjOw+wsEyrzNsskzWZbzZCst2twpa4xzauvtF1hfkL4djE7XPyEjuyg3Zscl
	HEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=X+cLiqHbz3REWMduxc69SGWmA/3gfeO3U2kdeRf9OcU=;
	b=a7Mak5TCd80xiaEdQR3RKT89OvBvziDAzUOdOEeTKSpfqVDtw/qS1KGfs4zjDG+rxg
	PhOg0+ToyMZpD5FadLklIfZCqYupnI6jdzeeL9bnZkJNAkw7zv+7682NZrezosBpAsqk
	zpjtU8bBKwd7smpQReduhhLCl6oeWaHRDSE1FF0rE9avyURu+M7HqdqmNVUDgKp/QdCF
	hV8gSzdB6em1bBmhTr09t4IBTuC5tzGueRQpg6ki3v08rLgGXGfyTXblsS0nu94+VIWj
	WWVVC1X8ZpuRGQ55W8w5vaqRqn0orY+LFwUwnmeoaOVcF/tg7QV69Tlv8koMAKWgeuP0
	loQw==
X-Gm-Message-State: AHQUAuaiHYBBdbF2uhV1fc8zxUB0JSGMM8xtu7OKei/3yTD/xarRdlJx
	xI3yNYgYpmkbn5GVhvXczhQ65936wo0RWN3rqpMgi8KiQuU=
X-Google-Smtp-Source: AHgI3Ibr6Z7s2nqlMFacqjm/R0Et1ZT8hyydS54XRatG3/oX4/Cv6PRXo8+/oCH7C3i3Oxm+kwFLPFodkoqWb1psuj4=
X-Received: by 2002:a5d:5111:: with SMTP id s17mr13669532wrt.183.1551128027764;
	Mon, 25 Feb 2019 12:53:47 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 25 Feb 2019 21:53:36 +0100
Message-ID: <CAAfyv373STP8CnezDswndFVRXZO3tQz5cz3wHcsSKqbSidCTwA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: [meta-java] Illegal instruction (core dumped) when compiling jaxp1.3-native-1.4.01-r0
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
X-List-Received-Date: Mon, 25 Feb 2019 20:53:51 -0000
Content-Type: multipart/alternative; boundary="000000000000189dcd0582be23b6"

--000000000000189dcd0582be23b6
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using meta-java sumo branch and on ubuntu 18.04 I have this issue
(building for beaglebone-yocto machine):
ERROR: jaxp1.3-native-1.4.01-r0 do_compile: Function failed: do_compile
(log file is located at
/home/jenkins/my_build/tmp/work/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390)
ERROR: Logfile of failure stored in:
/home/jenkins/my_build/tmp/work/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390
Log data follows:
| DEBUG: Executing shell function do_compile
| Illegal instruction (core dumped)
| WARNING: exit code 132 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/jenkins/my_build/tmp/work/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390)
ERROR: Task
(virtual:native:/home/jenkins/meta-java/recipes-core/xml-commons/jaxp1.3_1.4.01.bb:do_compile)
failed with exit code '1'
ERROR: gnujaf-native-1.1.1-r1 do_compile: Function failed: do_compile (log
file is located at
/home/jenkins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log.do_compile.15475)
ERROR: Logfile of failure stored in:
/home/jenkins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log.do_compile.15475
Log data follows:
| DEBUG: Executing shell function do_compile
| Illegal instruction (core dumped)
| WARNING: exit code 132 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/jenkins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log.do_compile.15475)

Looks like javac is failing (when run devshell and call java it will print
help though). I tried same setup on ubuntu 16.04 and here it works
perfectly fine. Any ides what can cause this - different toolchain or?
Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000189dcd0582be23b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m using meta=
-java sumo branch and on ubuntu 18.04 I have this issue (building for beagl=
ebone-yocto machine):</div><div><div>ERROR: jaxp1.3-native-1.4.01-r0 do_com=
pile: Function failed: do_compile (log file is located at /home/jenkins/my_=
build/tmp/work/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15=
390)</div><div>ERROR: Logfile of failure stored in: /home/jenkins/my_build/=
tmp/work/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390</d=
iv><div>Log data follows:</div><div>| DEBUG: Executing shell function do_co=
mpile</div><div>| Illegal instruction (core dumped)</div><div>| WARNING: ex=
it code 132 from a shell command.</div><div>| ERROR: Function failed: do_co=
mpile (log file is located at /home/jenkins/my_build/tmp/work/x86_64-linux/=
jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390)</div><div>ERROR: Task (=
virtual:native:/home/jenkins/meta-java/recipes-core/xml-commons/jaxp1.3_1.4=
.01.bb:do_compile) failed with exit code &#39;1&#39;</div><div>ERROR: gnuja=
f-native-1.1.1-r1 do_compile: Function failed: do_compile (log file is loca=
ted at /home/jenkins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/=
temp/log.do_compile.15475)</div><div>ERROR: Logfile of failure stored in: /=
home/jenkins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log=
.do_compile.15475</div><div>Log data follows:</div><div>| DEBUG: Executing =
shell function do_compile</div><div>| Illegal instruction (core dumped)</di=
v><div>| WARNING: exit code 132 from a shell command.</div><div>| ERROR: Fu=
nction failed: do_compile (log file is located at /home/jenkins/my_build/tm=
p/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log.do_compile.15475)</div>=
<div><br></div><div>Looks like javac is failing (when run devshell and call=
 java it will print help though). I tried same setup on ubuntu 16.04 and he=
re it works perfectly fine. Any ides what can cause this - different toolch=
ain or? Thanks.</div><div><br></div><div>BR,</div><div><br></div><div>marek=
</div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature">as s=
imple and primitive as possible<br>----------------------------------------=
---------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Rusk=
a Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>=
skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-na=
ndra.com" target=3D"_blank">http://open-nandra.com</a></div></div></div></d=
iv>

--000000000000189dcd0582be23b6--
