Return-Path: <bnousilal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62627E00C3E; Sun, 17 Jul 2016 22:58:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bnousilal[at]gmail.com)
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
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE86E00ABE
	for <yocto@yoctoproject.org>; Sun, 17 Jul 2016 22:58:51 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id l65so152678616oib.1
	for <yocto@yoctoproject.org>; Sun, 17 Jul 2016 22:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=M38TGC91iHzkrE2weW6Wxi0bJL7RYSc/qoPrGCEL330=;
	b=R3yovYJ9g2Q5OkNtlWgDM4rOh94likweFFfYNgxsnYVT2ZTsWNqUky2OxfNPErv+i2
	4gG/tieVRvHIFFO7k/8u0TUFAapCsjTbKdDxzJIY1vLAyENPTjevK0qNdhalo10a0KQt
	O5rkjD6+X43vci3tf5sd92JlJ/OeITiEOwhaQK4p/bbMZIIZEaM/dJnbedNiPCr2F+E8
	clFeBlL+0buRBPCAxeDw3QnmvH0Ud5x8SS70oEJp2GA/vcxTd0cfJPyfUSMOe7Tz0aDW
	3TvaOb6cSu0IN//EnbI6EoAGfbJ/Ng3Hib4i+usQJJhuiqJTtnRwILlz0tULp9nFytNd
	XniA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=M38TGC91iHzkrE2weW6Wxi0bJL7RYSc/qoPrGCEL330=;
	b=d5yeyaVT6uA4EL4OpNpO29MzzFGZ02PxpcvhYyyq8G+709mD1Anck0YMWxmK7UWeYd
	s2SKaihwpiFt8Okg1TbYalgUMZawaVA4S6YHicD9vpazFfNAAD8dP9EBawXRtxeYPMjS
	FOCjn3MBRHPXQp6Q0Kak7DODCOTvOWpNpsAgbXN+S1r8dtlWqU+gwTtX/wQc4rlTU8kB
	rysPKJy8VTaQRsqFtz2rIU9/oq5SVs5sUabsjw90ECDUb9EFtGPqHgHcHurWaY9TRtOs
	zVm8yaqABS45CxWkWUItAuXiLu0UxhozMQRdM2X67JjLjhzqCQG4R55itDe0wK5MlUUB
	pXEQ==
X-Gm-Message-State: ALyK8tKTDUIOfTdNA7nRl96CrMGYT9mBqveIeBhCjFFxvHB7E2+rEse2BoMZN6+9Pho5r5VwvnNv2tQpIEwFKg==
X-Received: by 10.202.253.149 with SMTP id b143mr15178086oii.34.1468821530341; 
	Sun, 17 Jul 2016 22:58:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.42.168 with HTTP; Sun, 17 Jul 2016 22:58:49 -0700 (PDT)
From: nousi <bnousilal@gmail.com>
Date: Mon, 18 Jul 2016 11:28:49 +0530
Message-ID: <CAJ5vXcQDkjNh5KmoNnO_P2WsB-em-cinPj+YQ4KS-j=HB1sz=A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: kernel-source: No such file or directory. Stop
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
X-List-Received-Date: Mon, 18 Jul 2016 05:58:55 -0000
Content-Type: multipart/alternative; boundary=001a113de8d28df81f0537e2a906

--001a113de8d28df81f0537e2a906
Content-Type: text/plain; charset=UTF-8

Hi,

Please, can somebody help me in compiling the yocto build.
Error as below.

ERROR: Function failed: do_make_scripts (log file is located at
/nousilal/nousi1/poky/build/tmp/work/nousi1234-poky-linux/nn-nitro-mod/gitAUTOINC+3a1ebe158d-r0/temp/log.do_make_scripts.4818)
ERROR: Logfile of failure stored
in:/nousilal/nousi1/poky/build/tmp/work/nousi1234-poky-linux/brcm-nitro-mod/gitAUTOINC+3a1ebe158d-r0/temp/log.do_make_scripts.4818
Log data follows:
| DEBUG: Executing shell function do_make_scripts
| make:
*** /nousilal/nousi1/poky/build/tmp/work-shared/nousi1234/kernel-source: No
such file or directory.  Stop.
|
WARNING: /nousilal/nousi1/poky/build/tmp/work/nousi1234-poky-linux/nn-nitro-mod/gitAUTOINC+3a1ebe158d-r0/temp/run.do_make_scripts.4818:1
exit 2 from
|   make CC="aarch64-linux-gnu-gcc " LD="aarch64-linux-gnu-ld.bfd "
AR="aarch64-linux-gnu-ar "
-C /nousilal/nousi1/poky/build/tmp/work-shared/nousi1234/kernel-source
O=/nousilal/nousi1/poky/build/tmp/work-shared/nousi1234/kernel-build-artifacts
scripts
| ERROR: Function failed: do_make_scripts (log file is located
at /nousilal/nousi1/poky/build/tmp/work/nousi1234-poky-linux/nn-nitro-mod/gitAUTOINC+3a1ebe158d-r0/temp/log.do_make_scripts.4818)

Thanks,
Nousi.

--001a113de8d28df81f0537e2a906
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Please, can somebody help me in com=
piling=C2=A0the yocto build.=C2=A0<br></div><div>Error as below.</div><div>=
<br></div><div>ERROR: Function failed: do_make_scripts (log file is located=
 at /nousilal/nousi1/poky/build/tmp/work/nousi1234-poky-linux/nn-nitro-mod/=
gitAUTOINC+3a1ebe158d-r0/temp/log.do_make_scripts.4818)<br></div><div><div>=
ERROR: Logfile of failure stored in:/nousilal/nousi1/poky/build/tmp/work/no=
usi1234-poky-linux/brcm-nitro-mod/gitAUTOINC+3a1ebe158d-r0/temp/log.do_make=
_scripts.4818</div><div>Log data follows:</div><div>| DEBUG: Executing shel=
l function do_make_scripts</div><div>| make: ***=C2=A0/nousilal/nousi1/poky=
/build/tmp/work-shared/nousi1234/kernel-source: No such file or directory.=
=C2=A0 Stop.</div><div>| WARNING:=C2=A0/nousilal/nousi1/poky/build/tmp/work=
/nousi1234-poky-linux/nn-nitro-mod/gitAUTOINC+3a1ebe158d-r0/temp/run.do_mak=
e_scripts.4818:1 exit 2 from</div><div>| =C2=A0 make CC=3D&quot;aarch64-lin=
ux-gnu-gcc &quot; LD=3D&quot;aarch64-linux-gnu-ld.bfd &quot; AR=3D&quot;aar=
ch64-linux-gnu-ar &quot; -C=C2=A0/nousilal/nousi1/poky/build/tmp/work-share=
d/nousi1234/kernel-source O=3D/nousilal/nousi1/poky/build/tmp/work-shared/n=
ousi1234/kernel-build-artifacts scripts</div><div>| ERROR: Function failed:=
 do_make_scripts (log file is located at=C2=A0/nousilal/nousi1/poky/build/t=
mp/work/nousi1234-poky-linux/nn-nitro-mod/gitAUTOINC+3a1ebe158d-r0/temp/log=
.do_make_scripts.4818)</div><div><br></div><div>Thanks,</div><div>Nousi.</d=
iv>
</div></div>

--001a113de8d28df81f0537e2a906--
