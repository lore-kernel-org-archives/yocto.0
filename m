Return-Path: <mjames2393@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CE6AE00C29; Sat,  5 Mar 2016 06:29:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mjames2393[at]gmail.com)
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
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10AADE00BE2
	for <yocto@yoctoproject.org>; Sat,  5 Mar 2016 06:29:17 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id g203so90517339iof.2
	for <yocto@yoctoproject.org>; Sat, 05 Mar 2016 06:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=znUEFjDHUU2O2FifttvxazZtzp/3MbUhu1kaWnT4YhE=;
	b=aPMpAoRf3XMcJiOczkVhxuNkashchc948xqDNPmzg0bilscgkV12mlG53Q8pGpg31W
	lp0y+h7iLC1Li1wvaEMKlTGYDhI7jzMMdTyVf4LYSPgzhxgasLoIEQzbfLiXJsGQ9FOW
	YHVWmITsYW8dzEse9bdiR2uJsWRnFhbbqQn0TMIotTaQOj/WZpHh0g5gFmvOEq/Wua48
	xKqASoNZtYLHc48TuDgLPh/EN1Rjc9rLUrTQTB0EOoOdSUJeTs+kmb1AeL6+piUF2smP
	TV8V1IsTWoIvwH1Nfp2We0lDmt8s6un61+XYw+FKE1DqAuW2f3CMLCqM6u38UOhTidZk
	0UPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=znUEFjDHUU2O2FifttvxazZtzp/3MbUhu1kaWnT4YhE=;
	b=KjOvRf7+w8Rx05BVh8w89TDCLehWTrARQQ5nMUL46FfGmB7jPNYqM/r5tuNAXMf5AC
	KCiksZ7AumBeXlS5kM8omzKcAS4/6LKv9a3Sv8qx4PZ+5GnG/ueHam6swds+IoXEX7+y
	Y8+YVTjSZyj4mQAW+RerP6te5KHEidcS12AI88ceeqXGwqiA/E5gJ0QeYryym2nvaLXG
	QbqJ1D5esQYcDmfWchFS/JlrcRGYtw26tcN0OOm2VuYwkMTAvU0PodBg+AdN0EgF/wGR
	w58cjvZOFn03S9hBq4fHLlsmX5UzcCwOP0IMHoM9NVJyqiVoGrGpQos/By6d32q9NXKD
	TMRg==
X-Gm-Message-State: AD7BkJK/VDX7SN8pEJ/nytE8MMjVfQxTmxafUFDK0qfuWfJNY1/ts70AsnUvThYc0iYxDnjWjBNM6IwgKeJugQ==
MIME-Version: 1.0
X-Received: by 10.107.150.2 with SMTP id y2mr14157067iod.113.1457188156751;
	Sat, 05 Mar 2016 06:29:16 -0800 (PST)
Received: by 10.107.1.14 with HTTP; Sat, 5 Mar 2016 06:29:16 -0800 (PST)
Date: Sat, 5 Mar 2016 09:29:16 -0500
Message-ID: <CAHFf3Y_A+-qXZhZCtq295gSQUx_y-cA4zD3LoU_vPyF2sq1zQQ@mail.gmail.com>
From: Mauritz Jameson <mjames2393@gmail.com>
To: yocto@yoctoproject.org
Subject: Question - getting started with HIO-EMB-1200 core-board
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
X-List-Received-Date: Sat, 05 Mar 2016 14:29:22 -0000
Content-Type: multipart/alternative; boundary=001a1140ed3a746a2a052d4e0ea4

--001a1140ed3a746a2a052d4e0ea4
Content-Type: text/plain; charset=UTF-8

I have bought an HIO-EMB-1200 core-board with an HIO-IOB-1240 IO module.
I would like to compile, build and deploy executables to the board from
an IDE on my Windows 8.1 machine.

What is the best IDE for debugging the code while it's running on the
board?

I intend to develop a SIP user agent and run it on the board. The SIP
UA will auto-answer inbound calls and can place outbound calls to
a pre-configured number. Outbound calls will be placed on detection
of a signal (user pressing a HW button).

I am wondering if the default image/os/kernel on the board should be
switched
out with another image/os/kernel (not sure which word to use here) ?

I have been told that it's possible to run the Android OS on this board?
If that's true, how do I make the board run Android? I believe that I
would have to write an Android OS image to an SDCARD and let the board
boot from the SDCARD? Is it possible to "flash" the board so that it boots
Android from a persistent storage (not SDCARD) ?

Thanks

--001a1140ed3a746a2a052d4e0ea4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have bought an HIO-EMB-1200 core-board with an HIO-IOB-1=
240 IO module.<br>I would like to compile, build and deploy executables to =
the board from<br>an IDE on my Windows 8.1 machine. <br><br>What is the bes=
t IDE for debugging the code while it&#39;s running on the<br>board?<br><br=
>I intend to develop a SIP user agent and run it on the board. The SIP<br>U=
A will auto-answer inbound calls and can place outbound calls to <br>a pre-=
configured number. Outbound calls will be placed on detection<br>of a signa=
l (user pressing a HW button).<br><br>I am wondering if the default image/o=
s/kernel on the board should be switched<br>out with another image/os/kerne=
l (not sure which word to use here) ?<br><br>I have been told that it&#39;s=
 possible to run the Android OS on this board?<br>If that&#39;s true, how d=
o I make the board run Android? I believe that I<br>would have to write an =
Android OS image to an SDCARD and let the board<br>boot from the SDCARD? Is=
 it possible to &quot;flash&quot; the board so that it boots<br>Android fro=
m a persistent storage (not SDCARD) ?<br><br>Thanks<br><br><br></div>

--001a1140ed3a746a2a052d4e0ea4--
