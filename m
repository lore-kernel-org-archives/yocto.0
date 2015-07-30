Return-Path: <robin@deltastrike.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D7E1E00A96; Wed, 29 Jul 2015 20:59:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31A10E00A7E
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 20:59:55 -0700 (PDT)
Received: by vkca124 with SMTP id a124so6319209vkc.1
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 20:59:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=muiZxLfkyyWST/8lWCNqxQCJTPQ9X2W3DLRwec4D6I0=;
	b=loTJXrtG1rHTRSjokkJzjYEN4POQso+eza14zYjfaZrEN8DjBiOZO4LR6KtOgnrUF/
	IW2CLt1GaXDlvv9IO+jJlACVDVSG9fPhcE4u51ycEJakQNTSnkaE4tsyV8W8G+EAYUWw
	L0zRsD2FLCIUtGF+O0wg/+rjVZYe7dlqBdjDwAsSW47iH8JdKkADl1lsM3kBZLw+JT+m
	tMX77XXTI5YAnk/gHbBdG1Elnita3Lt7JXyhWdpho88BA0kTYsSEHas6AtRt5khZyu8u
	qkxQr0O9qXbcITowPHhVIEwsSDkNZde/51lTA1zbUQ4bWYMk7XLXZBH7vStEMJeUc/CC
	3ZBQ==
X-Gm-Message-State: ALoCoQlMy2CHhOth55lhDiMy6ATdpuCzj1fwDiD8rrWyH7XmS0dVAVeCs1v1ASxDfdleF365uzJW
MIME-Version: 1.0
X-Received: by 10.52.179.40 with SMTP id dd8mr31839304vdc.60.1438228795236;
	Wed, 29 Jul 2015 20:59:55 -0700 (PDT)
Received: by 10.31.3.92 with HTTP; Wed, 29 Jul 2015 20:59:55 -0700 (PDT)
Date: Thu, 30 Jul 2015 15:59:55 +1200
Message-ID: <CAHG6DmfYuJF1RZnch2VFnF=XTtHYh6kjuGmRU1EN2jh2ztm5BQ@mail.gmail.com>
From: Robin Gilks <robin@deltastrike.com>
To: yocto@yoctoproject.org
Subject: Build with 'Hob' results in blank target column in 'Toaster'
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
X-List-Received-Date: Thu, 30 Jul 2015 03:59:59 -0000
Content-Type: multipart/alternative; boundary=bcaec50e60d1723b2c051c0fbc64

--bcaec50e60d1723b2c051c0fbc64
Content-Type: text/plain; charset=UTF-8

Having just discovered hob and toaster, in 1.7 Dizzy. I've been trying them
out - but I'm missing something!!

Set environment, start toaster, run hob and select a machine. After all the
parsing has completed I select my target and 'build image'.

When the build has completed successfully, I use toaster to check it out
and the machine column is correctly filled in but the 'target' column is
blank. This means that I have nothing to select to look at the recipes or
packages (they are both 0).

Help!!

-- 
*Robin Gilks*
Development

Delta Strike
Success through Delta Strike
phone:    +64 3 982 9892
skype:     robindeltastrike
web:       www.deltastrike.com

--bcaec50e60d1723b2c051c0fbc64
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Having just discovered hob and toaster, in 1.7 Dizzy. I&#3=
9;ve been trying them out - but I&#39;m missing something!!<div><br></div><=
div>Set environment, start toaster, run hob and select a machine. After all=
 the parsing has completed I select my target and &#39;build image&#39;.</d=
iv><div><br></div><div>When the build has completed successfully, I use toa=
ster to check it out and the machine column is correctly filled in but the =
&#39;target&#39; column is blank. This means that I have nothing to select =
to look at the recipes or packages (they are both 0).</div><div><br></div><=
div>Help!!<br clear=3D"all"><div><br></div>-- <br><div class=3D"gmail_signa=
ture"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"font-size:12.800=
0001907349px"><font color=3D"#444444"><b>Robin Gilks</b></font></div><div s=
tyle=3D"font-size:12.8000001907349px"><div><font color=3D"#444444"><font fa=
ce=3D"verdana, arial, helvetica, sans-serif">Development<br><br></font></fo=
nt></div><div style=3D"font-family:verdana,arial,helvetica,sans-serif"><spa=
n style=3D"font-weight:bold;font-size:large;font-family:arial,sans-serif;co=
lor:rgb(255,69,0)">Delta=C2=A0</span><span style=3D"font-weight:bold;font-s=
ize:large;font-family:arial,sans-serif;color:rgb(68,68,68)">Strike</span></=
div><div style=3D"font-family:verdana,arial,helvetica,sans-serif"><span sty=
le=3D"color:rgb(68,68,68)"><span style=3D"font-size:small;font-family:Verda=
na,Arial,Helvetica,sans-serif;font-weight:bold">Success=C2=A0</span><span s=
tyle=3D"font-size:small;font-family:Verdana,Arial,Helvetica,sans-serif;font=
-weight:bold;font-style:italic"><span style=3D"color:rgb(255,0,0)"></span><=
/span></span><span style=3D"color:rgb(68,68,68)"><span style=3D"font-size:s=
mall;font-family:Verdana,Arial,Helvetica,sans-serif;font-weight:bold;font-s=
tyle:italic"><span style=3D"color:rgb(255,0,0)"><span style=3D"font-family:=
arial,sans-serif;color:rgb(255,69,0)">through</span></span>=C2=A0</span><sp=
an style=3D"font-size:small;font-family:Verdana,Arial,Helvetica,sans-serif;=
font-weight:bold">Delta Strike</span></span><span style=3D"font-weight:bold=
;font-size:large;font-family:arial,sans-serif;color:rgb(68,68,68)"><br></sp=
an></div><font color=3D"#444444">phone: =C2=A0=C2=A0=C2=A0</font><a value=
=3D"+6439829892">+64 3 982 9892</a><br><font color=3D"#444444">skype: =C2=
=A0 =C2=A0 robindeltastrike</font></div><div style=3D"font-size:12.80000019=
07349px">web: =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://www.deltastrike.c=
om/" style=3D"color:rgb(17,85,204)" target=3D"_blank">www.deltastrike.com</=
a></div></div></div></div></div>
</div></div>

--bcaec50e60d1723b2c051c0fbc64--
