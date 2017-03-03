Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC06AE00AAA; Fri,  3 Mar 2017 08:04:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3801AE00953
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 08:04:21 -0800 (PST)
Received: by mail-io0-f171.google.com with SMTP id f84so76323774ioj.0
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 08:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/IOqnAcaWodXHX4cj+0fCVCReqoJgIej1LUwefxJDoY=;
	b=ietbxOi/QDOpAM5GgsETn2WfIsbb25l80mGuqX0zyag8W63LIN9VlYI4O8MFsxeMxl
	68VImQFUPrCC40BSflu/pQn+VCq+D2jJoGXaY29lbdmLE0n3up9Vh6UW6Glho4sKbdqM
	TUhuq8ECQN+6SDFLJVf/LTTWlzlpgPxI+M1ocinurziQ/Wk0JiVFgJ4YhvpY7rhIcwpO
	L14CdVsC1KMgW0RxeENL+57xzeL09pMqAUAK/c0iPEQJcGRmnkbISmb02tsu75Wsksdy
	PgExi53wPY3PuSH7Lxw3ZfNuc14Wv0CowaBI8RtZrfAyrjGvB5FRidOSje0wmkYBEzGE
	1RvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/IOqnAcaWodXHX4cj+0fCVCReqoJgIej1LUwefxJDoY=;
	b=tdAUL7yekoV+hTu2onRZLQm3xDIw3UA9E1KEO/tPDckCq/4KNv8P972Aq8A9tT8mar
	hiYzDn2huFSeHlSV0qclEOA/WWaqIki5ufoGB6CdeZs7E1+2qstYE3/vdU6VxOblmk0i
	7reKnUzoGwcWzEm+DiAiaHQPtDfLgg8ZDgaYGU+/f05sFWun/Em/p7IaNbtzbc1bkYhr
	eyyxv52xWUfjMOjcTyzIDXcGSKRdYbM4vRyqTN5Hz/FJecSfHdCc4OI1Tp3IB/EZbp5P
	U3YUgJetC6eaq2zOxDmAjfdzaZwxNZlceQdXeo/CYqpR/E6hFHm2zzZJPSUp0mzzFV7h
	JEqg==
X-Gm-Message-State: AMke39kimeajRKt8aFICZGQMAmaYlEKaPlya/LikSj2wMEA6bX2EozHodfCVgSdcxY2zd+AXZRKCyEN/Ng2vFQ==
X-Received: by 10.107.138.14 with SMTP id m14mr3744291iod.235.1488557061106;
	Fri, 03 Mar 2017 08:04:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.158.69 with HTTP; Fri, 3 Mar 2017 08:04:20 -0800 (PST)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Fri, 3 Mar 2017 17:04:20 +0100
Message-ID: <CAFq4t4h_PuOC8JDN2z6NWRZGHZMZWRr7aB+XYDCta1cvJV49CA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Yocto's framebuffer-vncserver
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
X-List-Received-Date: Fri, 03 Mar 2017 16:04:23 -0000
Content-Type: multipart/alternative; boundary=001a113fe8aedb08950549d5b27a

--001a113fe8aedb08950549d5b27a
Content-Type: text/plain; charset=UTF-8

Hello all,

I have a question to Yocto experts here. I have an OpenGL application which
runs on embedded Yotco Linux with framebuffer graphical backend.
I''d like to run and display application remotely on local Desktop. For X11
graphical backend I use x11vnc and now I am looking for a way to do it
similarly for framebuffer backend.

I found only this https://gist.github.com/gkos/9ed87cad62d72c599761
framebuffer-vncserver. Is there any other Yocto recipe for vnc server for
framebuffer backend than this?

I am not successfull to include it into my image, here is a part of a log
build:

| ../git/configure: line 13581: syntax error near unexpected token `GTK,'
| ../git/configure: line 13581: `PKG_CHECK_MODULES(GTK, gtk+-2.0,,:)'
| NOTE: The following config.log files may provide further information.
| WARNING: exit code 1 from a shell command.
| NOTE:
/mnt/work/Linux/build-fb/tmp/work/aarch64-poky-linux/libvncserver/git-r1+gitrAUTOINC+5b322f523f/build/config.log
| ERROR: configure failed
| ERROR: Function failed: do_configure (log file is located at
/mnt/work/Linux//build-fb/tmp/work/aarch64-poky-linux/libvncserver/git-r1+gitrAUTOINC+5b322f523f/temp/log.do_configure.11798)
ERROR: Task 866
(/mnt/work/Linu//sources/meta-openembedded/meta-oe/recipes-graphics/famebuffer-vnc/
libvncserver_git.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5407 tasks of which 5406 didn't need to be
rerun and 1 failed.

Does anybode have idea where problem might be?

Thank you.

Cheers,
Peter

--001a113fe8aedb08950549d5b27a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>I have a question to Yocto e=
xperts here. I have an OpenGL application which runs on embedded Yotco Linu=
x with framebuffer graphical backend.=C2=A0</div><div>I&#39;&#39;d like to =
run and display application remotely on local Desktop. For X11 graphical ba=
ckend I use x11vnc and now I am looking for a way to do it similarly for fr=
amebuffer backend.</div><div><br></div><div>I found only this <a href=3D"ht=
tps://gist.github.com/gkos/9ed87cad62d72c599761">https://gist.github.com/gk=
os/9ed87cad62d72c599761</a> framebuffer-vncserver. Is there any other Yocto=
 recipe for vnc server for framebuffer backend than this?</div><div><br></d=
iv><div>I am not successfull to include it into my image, here is a part of=
 a log build:</div><div><br></div><div>| ../git/configure: line 13581: synt=
ax error near unexpected token `GTK,&#39;</div><div>| ../git/configure: lin=
e 13581: `PKG_CHECK_MODULES(GTK, gtk+-2.0,,:)&#39;</div><div>| NOTE: The fo=
llowing config.log files may provide further information.</div><div>| WARNI=
NG: exit code 1 from a shell command.</div><div>| NOTE: /mnt/work/Linux/bui=
ld-fb/tmp/work/aarch64-poky-linux/libvncserver/git-r1+gitrAUTOINC+5b322f523=
f/build/config.log</div><div>| ERROR: configure failed</div><div>| ERROR: F=
unction failed: do_configure (log file is located at /mnt/work/Linux//build=
-fb/tmp/work/aarch64-poky-linux/libvncserver/git-r1+gitrAUTOINC+5b322f523f/=
temp/log.do_configure.11798)</div><div>ERROR: Task 866 (/mnt/work/Linu//sou=
rces/meta-openembedded/meta-oe/recipes-graphics/famebuffer-vnc/<a href=3D"h=
ttp://libvncserver_git.bb">libvncserver_git.bb</a>, do_configure) failed wi=
th exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 5407 task=
s of which 5406 didn&#39;t need to be rerun and 1 failed.</div><div><br></d=
iv><div>Does anybode have idea where problem might be?</div><div><br></div>=
<div>Thank you.</div><div><br></div><div>Cheers,</div><div>Peter</div><div>=
<br></div><div>=C2=A0</div></div>

--001a113fe8aedb08950549d5b27a--
