Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 014E8E0071C; Tue, 20 Oct 2015 02:08:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
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
	*      [209.85.213.54 listed in list.dnswl.org]
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4638E006F1
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 02:08:37 -0700 (PDT)
Received: by vkfw189 with SMTP id w189so6162866vkf.2
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 02:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wVpedyySu/VYolKUOJ05G9t1afufXQQpVUoOZNPMM8s=;
	b=a1I4XeR07oqHCmolfFsNqGmseLHlUMxsE+MCgRGve9bk/5C3xQSb9qFkC+EIcnZ/YX
	o2I2d2tDJYcFTmcGl0pJwi+93YbEE4tSW0JxFd0R5Or2wVY7S6I89pQpQ9AJ4DgNT7zD
	ZSELJmasJvh00LhA9btTcGTqBPWM7SfcpMn3bOXJ9cEcFP7kPvN5IiZBtcbYzguwfRqF
	D377e6UBPA0NNkUhsWt/D8oYk5f3tABzDdfNHrAki+tzIniVZGDUC5K4fi6fYRQUDPM/
	YfCEAFUzrBpvfUmzhhcV4WAJb9l5IjhxticsQ1OmLQ63oNENbTtA5aNcmDE4mz8wVrm6
	ICAw==
MIME-Version: 1.0
X-Received: by 10.31.56.140 with SMTP id f134mr1324716vka.108.1445332116363;
	Tue, 20 Oct 2015 02:08:36 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Tue, 20 Oct 2015 02:08:36 -0700 (PDT)
Date: Tue, 20 Oct 2015 14:38:36 +0530
Message-ID: <CALLyC8QStDgKandfU3yPpkVfxtG5MVd0jTBt0Ceq1gYEOkkwBw@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: How can i install shutil.py in rootfs
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
X-List-Received-Date: Tue, 20 Oct 2015 09:08:41 -0000
Content-Type: multipart/alternative; boundary=001a1143f0cc60e28b0522859b4f

--001a1143f0cc60e28b0522859b4f
Content-Type: text/plain; charset=UTF-8

hi,
     How can i install shutil.py in roofs.  I need this file for
audit2allow. In rootfs remaining .py files are including
/usr/share/python-support/
but not shutil.py. i want to include this file in rootfs how can i install
this?


regards
vivek

--001a1143f0cc60e28b0522859b4f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<div>=C2=A0 =C2=A0 =C2=A0How can i install shutil.py in=
 roofs.=C2=A0 I need this file for audit2allow. In rootfs remaining .py fil=
es are including =C2=A0<span style=3D"color:rgb(31,73,125);font-family:Cali=
bri,sans-serif;font-size:11pt">/usr/share/python-support/ but not shutil.py=
. i want to include this file in rootfs how can i install this?</span></div=
><div><span style=3D"color:rgb(31,73,125);font-family:Calibri,sans-serif;fo=
nt-size:11pt"><br></span></div><div><span style=3D"color:rgb(31,73,125);fon=
t-family:Calibri,sans-serif;font-size:11pt"><br></span></div><div><span sty=
le=3D"color:rgb(31,73,125);font-family:Calibri,sans-serif;font-size:11pt">r=
egards</span></div><div><span style=3D"color:rgb(31,73,125);font-family:Cal=
ibri,sans-serif;font-size:11pt">vivek</span></div></div>

--001a1143f0cc60e28b0522859b4f--
