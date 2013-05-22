Return-Path: <varun292006@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 321B0E013E3
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 09:45:56 -0700 (PDT)
Received: by mail-pb0-f51.google.com with SMTP id jt11so1888807pbb.24
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 09:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4we76s2BhyGdDPdcuOeRGND1/LBHGVX6sGVRf9XJhDU=;
	b=BSPd+MjoVBLkytLW1tyQBg/sdc0KqkeNj2Cles/uDTGMSvEJnAVUtXOIYSt9dWaUQj
	zHwQ5TOYiqhPLUa2xL5crH+9sns8TuN2PP7p6zqM5Di9JPugHr27MElOYydoRqiRy50K
	4tgVe9XEhSCDt7Hl8zVBovop2wApLk5uyfnPN6cN090IC1HzVeNW84dGtx51l32AZrr8
	YqHOG2uSL5f128wQbBuIekGyYNze0XRz41cvN3cRPpAktvr/XU76/QlNEdRepRz322LE
	KskE0rXAs4lSBIv2Jgr5omxIbIw6ighZ5Vgb8/Aqt5KWdB/1Gm5rhKMF8UolkOi3XX+Y
	cj5g==
MIME-Version: 1.0
X-Received: by 10.66.150.106 with SMTP id uh10mr9307269pab.118.1369241155911; 
	Wed, 22 May 2013 09:45:55 -0700 (PDT)
Received: by 10.68.5.230 with HTTP; Wed, 22 May 2013 09:45:55 -0700 (PDT)
Date: Wed, 22 May 2013 22:15:55 +0530
Message-ID: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Wed, 22 May 2013 16:45:56 -0000
Content-Type: multipart/alternative; boundary=047d7b6d8030b5c62a04dd514c22

--047d7b6d8030b5c62a04dd514c22
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have successfully created a PowerPC image using* bitbake -k
core-image-minimal*.
When I am trying to boot it using *runqemu qemuppc* I am getting a message
saying* vnc server running on ::1:5900.*

I searched on internet and it was written that to resolve this error *SDL *and
*SDL-devel* package should be installed.

I have installed these packages but it did not work. Still I am getting the
same message.
Can anyone help me out with this. Below is the screenshot of message.

--047d7b6d8030b5c62a04dd514c22
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>I have successfully created a=
 PowerPC image using<b> bitbake -k core-image-minimal</b>.</div><div style>=
When I am trying to boot it using <b>runqemu qemuppc</b> I am getting a mes=
sage saying<b> vnc server running on ::1:5900.</b></div>
<div style><br></div><div style>I searched on internet and it was written t=
hat to resolve this error <b>SDL </b>and <b>SDL-devel</b> package should be=
 installed.</div><div style><br></div><div style>I have installed these pac=
kages but it did not work. Still I am getting the same message.</div>
<div style>Can anyone help me out with this. Below is the screenshot of mes=
sage.</div><div style><br></div><div style><img src=3D"https://mail-attachm=
ent.googleusercontent.com/attachment/?ui=3D2&amp;ik=3D8ca516c835&amp;view=
=3Datt&amp;th=3D13ec7255d053065d&amp;attid=3D0.1&amp;disp=3Dinline&amp;safe=
=3D1&amp;zw&amp;saduie=3DAG9B_P-o_s2kO6my2WIysqYmUoVv&amp;sadet=3D136924079=
7081&amp;sads=3DlD2C6M_zmH0nRX8SkvoEXEA1HeM&amp;sadssc=3D1"><br>
</div></div>

--047d7b6d8030b5c62a04dd514c22--
