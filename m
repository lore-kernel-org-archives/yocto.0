Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17862E0076A
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 04:22:49 -0800 (PST)
Received: by mail-ie0-f182.google.com with SMTP id as1so8470366iec.27
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 04:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=dLJRRjAg/DxTP72Ha0/gVQQT1fpN9r9R7XK7K4Lphvw=;
	b=UBvcTTcnyNj3uq8EamEhg1Sxjy19bOzMLfvOdSwzRaBXpt0xDKCOwREtvc4FVmEo6J
	jj742wG0dO2gtXwaR66nRfFb1VtW/TLI0AkA9Yf34uzAIomUToz9lxBJiae2zKf9UG8E
	JuXNpHI3hZU50qT92gZ8IGgjR2128/YIws0UysIqSQzmcPEco+iL+mnSR10auncW2Uhz
	qZ5UKDkQYn40JhV7yI+msJccK3ct0uD2gKsweo5ook4qCCpu9KJNlvEhY1Ib2UGAY9kh
	/IjISUclI3HSZBHoVWyCx5H30SZ35cbdYbDuJuIGa78TMm/K3J5ldP2Z2pFfx54xrnUG
	gtjg==
X-Received: by 10.50.87.33 with SMTP id u1mr19548680igz.42.1386678169015; Tue,
	10 Dec 2013 04:22:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Tue, 10 Dec 2013 04:22:28 -0800 (PST)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 10 Dec 2013 10:22:28 -0200
Message-ID: <CAMCfZKHWGAQJ95K=T-0xpQRoO+RKvgvx9AWKMP9SUPMjAnTUDQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: busybox 1.21 ash bug?
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
X-List-Received-Date: Tue, 10 Dec 2013 12:22:50 -0000
Content-Type: multipart/alternative; boundary=089e0111b33aaea11104ed2d2b67

--089e0111b33aaea11104ed2d2b67
Content-Type: text/plain; charset=ISO-8859-1

Folks,

Recently I switched to dora branch which builds busybox 1.21.
I was using dylan branch with busybox 1.20 and the some shell scripts
stopped working.
There is a problem related with "for" statements.

For example, on script below, it runs nice on busybox 1.20 but on 1.21
fails with the output:"./script.sh: line 3: syntax error: bad for loop
variable".

#!/bin/sh

for (( i=1; i <= 5; i++ ))
do
 echo "Random number $i: $RANDOM"
done


I've searched on busybox bug tracking but did not found nothing related
with this.

Maybe I'm missing something, I really don't know.

I appreciate any help with this, and I'm sorry if this is not the
appropriate list to discuss this kind of subject.



Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--089e0111b33aaea11104ed2d2b67
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div style>Folks,</div><div style><br></div><div styl=
e>Recently I switched to dora branch which builds busybox 1.21.<br></div><d=
iv style>I was using dylan branch with busybox 1.20 and the some shell scri=
pts stopped working.</div>

<div style>There is a problem related with &quot;for&quot; statements.</div=
><div style><br></div><div style>For example, on script below, it runs nice=
 on busybox 1.20 but on 1.21 fails with the output:&quot;./script.sh: line =
3: syntax error: bad for loop variable&quot;.</div>

<div style><br></div></div><blockquote style=3D"margin:0px 0px 0px 40px;bor=
der:none;padding:0px"><div style><div style><div style>#!/bin/sh</div></div=
></div><div style><div style><div style><br></div></div></div><div style>

<div style><div style>for (( i=3D1; i &lt;=3D 5; i++ ))</div></div></div><d=
iv style><div style><div style>do =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0</div></div></div><div style><div style><div style>=A0echo &quot;Ran=
dom number $i: $RANDOM&quot;</div>

</div></div><div style><div style><div style>done</div></div></div></blockq=
uote><div><div style><br></div><div style>I&#39;ve searched on busybox bug =
tracking but did not found nothing related with this.<br></div><div style>

<br></div><div style>Maybe I&#39;m missing something, I really don&#39;t kn=
ow.<br></div><div style><br></div><div style>I appreciate any help with thi=
s, and I&#39;m sorry if this is not the appropriate list to discuss this ki=
nd of subject.</div>

<div style><br></div><div style><br></div><div dir=3D"ltr"><br></div><div d=
ir=3D"ltr">Regards,<br><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*lo=
ng live rock &#39;n roll*/</div></div>
</div>

--089e0111b33aaea11104ed2d2b67--
