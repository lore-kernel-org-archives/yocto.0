Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C664AE00D01; Tue, 26 Feb 2019 01:23:27 -0800 (PST)
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
	*      [209.85.221.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B98DAE00CED
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 01:23:26 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id l5so13067260wrw.6
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 01:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=q+1pIJCIqodpk4S/7z9Ra24VU5Lmt4r92l6IoiD/+Iw=;
	b=TypfzqutEJD19d8f4Pd3QZxipWIY/8T/fhEb2qKWkESYh4jU4vYF80Du5fZxy4/NOD
	efEazbREqds9J2Y7C9lDTkQgeELr+ClayraDEqrDYIyUcuIkSBzi/QDYjrOuLPJlq90g
	d3jSkXNT3fjBtzWx2cN3OWNvqA6YsZxEXUoCusetBqGhZaAQnZlL+AAKrQ4B5lmJ5Bd4
	+ujKggwH5m0B3w/r/LrbwbX7L/MFGC0SLaamgd9bBArmLEJ/bv0FKmPlQMCP+02X0PPW
	jCCgd4J1KkOQWOA2apKhFEAO5qJNrpEaSZSLDjoVDcZ2ng4sYPiHFNph9iNBkRBPAOMF
	x3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=q+1pIJCIqodpk4S/7z9Ra24VU5Lmt4r92l6IoiD/+Iw=;
	b=C29p0QYbVcCi0SEwAn4X02u4LPzRoE+DUVX9VuoC5InbdSAqJ6uyN7XCALTdO6T8dS
	lnNX/uoTTrY/X+Cz37P77eSaJj5KBj7Exy+nXiWCm7EMR+b2o8gA0Ub5641R0GFPnLME
	6T1TiKz7Wb7SQZl7ljELBIb+40kVnW28cGrepdgf5eYSsvgomdesm+JfBvfped00sGMC
	0SII3IphYOopnHU1N3qqp7/RAwy2xGoYU2e1YpSKG4pfjhZMl7vD8rjzFMSaPqoPzAXu
	D6MD3sJgMq5KyfQ84xf0iZ2mbnnhGdMvKP1yMeVd/shm3k9q9zaBgupIKy6PbGxBhWbx
	ubmA==
X-Gm-Message-State: AHQUAuYD+6rz6qTnDkCCiH+OLr8qwlXKRLbMhwDPcdl50GcsBn4wmHgn
	clrOkLdtq4TnN7tb/dGSbJaPQ/e4SV4B+vDonb212TCkEA0=
X-Google-Smtp-Source: AHgI3IZaZRxmqq55Kk5eP2Dcz5HSXlzbFSB0UDKvNn2YPnRdu3QESJlr8EINFmrPKMYoOs8CTOHmx4gwQC04u6hwaNE=
X-Received: by 2002:adf:fa51:: with SMTP id y17mr16427295wrr.233.1551173005472;
	Tue, 26 Feb 2019 01:23:25 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv373STP8CnezDswndFVRXZO3tQz5cz3wHcsSKqbSidCTwA@mail.gmail.com>
In-Reply-To: <CAAfyv373STP8CnezDswndFVRXZO3tQz5cz3wHcsSKqbSidCTwA@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 26 Feb 2019 10:23:13 +0100
Message-ID: <CAAfyv36R3WcN_o1rEBWez+gX0LuTFb_QPoHjr+z=opKY9J296w@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-java] Illegal instruction (core dumped) when compiling jaxp1.3-native-1.4.01-r0
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
X-List-Received-Date: Tue, 26 Feb 2019 09:23:27 -0000
Content-Type: multipart/alternative; boundary="000000000000f9f83c0582c89b59"

--000000000000f9f83c0582c89b59
Content-Type: text/plain; charset="UTF-8"

Hi,

looks like when use this proposal [0] it start working (juts need to update
multiple recipes which calls javac in configure phase with -Xnoinlining).
Compiletime disable inlining doesn't work.

It thee some pending fix for that? When use host gcc 5.5 (from ubuntu
16.04) all works good (while not with gcc 7.3).

[0] - https://sourceforge.net/p/jamvm/mailman/message/25051239/

On Mon, Feb 25, 2019 at 9:53 PM Belisko Marek <marek.belisko@gmail.com>
wrote:

> Hi,
>
> I'm using meta-java sumo branch and on ubuntu 18.04 I have this issue
> (building for beaglebone-yocto machine):
> ERROR: jaxp1.3-native-1.4.01-r0 do_compile: Function failed: do_compile
> (log file is located at
> /home/jenkins/my_build/tmp/work/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390)
> ERROR: Logfile of failure stored in:
> /home/jenkins/my_build/tmp/work/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | Illegal instruction (core dumped)
> | WARNING: exit code 132 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/jenkins/my_build/tmp/work/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390)
> ERROR: Task
> (virtual:native:/home/jenkins/meta-java/recipes-core/xml-commons/jaxp1.3_1.4.01.bb:do_compile)
> failed with exit code '1'
> ERROR: gnujaf-native-1.1.1-r1 do_compile: Function failed: do_compile (log
> file is located at
> /home/jenkins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log.do_compile.15475)
> ERROR: Logfile of failure stored in:
> /home/jenkins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log.do_compile.15475
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | Illegal instruction (core dumped)
> | WARNING: exit code 132 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/jenkins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log.do_compile.15475)
>
> Looks like javac is failing (when run devshell and call java it will print
> help though). I tried same setup on ubuntu 16.04 and here it works
> perfectly fine. Any ides what can cause this - different toolchain or?
> Thanks.
>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>

BR,

marek

--000000000000f9f83c0582c89b59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi=
,</div><div><br></div><div>looks like when use this proposal [0] it start w=
orking (juts need to update multiple recipes which calls javac in configure=
 phase with -Xnoinlining). Compiletime disable inlining doesn&#39;t work.</=
div><div><br></div><div>It thee some pending fix for that? When use host gc=
c 5.5 (from ubuntu 16.04) all works good (while not with gcc 7.3).</div><di=
v><br></div><div>[0] -=C2=A0<a href=3D"https://sourceforge.net/p/jamvm/mail=
man/message/25051239/">https://sourceforge.net/p/jamvm/mailman/message/2505=
1239/</a><br></div><div><br></div><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon, Feb 25, 2019 at 9:53 PM Belisko Marek &lt;<=
a href=3D"mailto:marek.belisko@gmail.com">marek.belisko@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m using meta-java su=
mo branch and on ubuntu 18.04 I have this issue (building for beaglebone-yo=
cto machine):</div><div><div>ERROR: jaxp1.3-native-1.4.01-r0 do_compile: Fu=
nction failed: do_compile (log file is located at /home/jenkins/my_build/tm=
p/work/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390)</di=
v><div>ERROR: Logfile of failure stored in: /home/jenkins/my_build/tmp/work=
/x86_64-linux/jaxp1.3-native/1.4.01-r0/temp/log.do_compile.15390</div><div>=
Log data follows:</div><div>| DEBUG: Executing shell function do_compile</d=
iv><div>| Illegal instruction (core dumped)</div><div>| WARNING: exit code =
132 from a shell command.</div><div>| ERROR: Function failed: do_compile (l=
og file is located at /home/jenkins/my_build/tmp/work/x86_64-linux/jaxp1.3-=
native/1.4.01-r0/temp/log.do_compile.15390)</div><div>ERROR: Task (virtual:=
native:/home/jenkins/meta-java/recipes-core/xml-commons/jaxp1.3_1.4.01.bb:d=
o_compile) failed with exit code &#39;1&#39;</div><div>ERROR: gnujaf-native=
-1.1.1-r1 do_compile: Function failed: do_compile (log file is located at /=
home/jenkins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log=
.do_compile.15475)</div><div>ERROR: Logfile of failure stored in: /home/jen=
kins/my_build/tmp/work/x86_64-linux/gnujaf-native/1.1.1-r1/temp/log.do_comp=
ile.15475</div><div>Log data follows:</div><div>| DEBUG: Executing shell fu=
nction do_compile</div><div>| Illegal instruction (core dumped)</div><div>|=
 WARNING: exit code 132 from a shell command.</div><div>| ERROR: Function f=
ailed: do_compile (log file is located at /home/jenkins/my_build/tmp/work/x=
86_64-linux/gnujaf-native/1.1.1-r1/temp/log.do_compile.15475)</div><div><br=
></div><div>Looks like javac is failing (when run devshell and call java it=
 will print help though). I tried same setup on ubuntu 16.04 and here it wo=
rks perfectly fine. Any ides what can cause this - different toolchain or? =
Thanks.</div><div><br></div><div>BR,</div><div><br></div><div>marek</div><d=
iv><br></div>-- <br><div dir=3D"ltr" class=3D"gmail-m_6471405310500905206gm=
ail_signature">as simple and primitive as possible<br>---------------------=
----------------------------<br>Marek Belisko - OPEN-NANDRA<br>Freelance De=
veloper<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +=
421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<br>web: <a hre=
f=3D"http://open-nandra.com" target=3D"_blank">http://open-nandra.com</a></=
div></div></div></div>
</blockquote></div><br clear=3D"all"><div>BR,</div><div><br></div><div>mare=
k</div><br></div></div></div></div>

--000000000000f9f83c0582c89b59--
