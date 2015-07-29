Return-Path: <robin@deltastrike.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 921D5E00A53; Wed, 29 Jul 2015 15:06:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC278E009B3
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 15:06:00 -0700 (PDT)
Received: by vkhg129 with SMTP id g129so4299302vkh.2
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 15:05:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=b4sxeO3AFqsuWrD9bmYwWDTicdSWACva5PUUI0BoUcU=;
	b=bpyptg2L3gkNmgkeCSPTphu8Ct8e/uTjUl8zYNj/F9J5VfpkTFMLrmqYbva8MrpyM5
	U2eYOQNSpxVqk0djuymWl9S+Cz3N6X2tH4guq7DfWF2B/osFhiHmDrmgpwGxhmcYj9yc
	9yfGimaus312g7WIi+fWBxPVLyIEqJgR+vwZYvHhzxd+/z0JIN6OJbAFh61/UtEm6TC9
	9yukyOIj6Gi1vBdn/XbJVTrH9sE/ehFzcrXKGcakjR4ZrperDADeziHLoMDqf3O8nk3/
	4XTTpHeXUbNNRDb2kVACatvVmphjlDfX38kqoDY1kg4WsCxQ02vIswH8yAAQ+A0ZlDgD
	E3Gw==
X-Gm-Message-State: ALoCoQkuVBwlPhJnDb1IX7lInelnr0uIF3WhUlozRPbRprqzwNSorzrB4okyeuewHLQVhuEKf3a1
MIME-Version: 1.0
X-Received: by 10.52.64.204 with SMTP id q12mr57930634vds.89.1438207559164;
	Wed, 29 Jul 2015 15:05:59 -0700 (PDT)
Received: by 10.31.3.92 with HTTP; Wed, 29 Jul 2015 15:05:59 -0700 (PDT)
Date: Thu, 30 Jul 2015 10:05:59 +1200
Message-ID: <CAHG6DmcCiSTdgppgWHrC-vqnR03o6PkC8dt+3VUjy2CnCe++NQ@mail.gmail.com>
From: Robin Gilks <robin@deltastrike.com>
To: yocto@yoctoproject.org
Subject: Can I use latest (1.8?) Toaster on Dizzy (1.7)
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
X-List-Received-Date: Wed, 29 Jul 2015 22:06:01 -0000
Content-Type: multipart/alternative; boundary=20cf307ac7abad7aa5051c0aca8e

--20cf307ac7abad7aa5051c0aca8e
Content-Type: text/plain; charset=UTF-8

Subject says it all really. The manufacturer of the hardware I'm using has
a layer for Dizzy but the version of Toaster in Dizzy is quite limited.

Is there a way to use the later (latest?) version or is Toaster totally
integrated into the whole?

Cheers

-- 
*Robin Gilks*
Development

Delta Strike
Success through Delta Strike
phone:    +64 3 982 9892
skype:     robindeltastrike
web:       www.deltastrike.com

--20cf307ac7abad7aa5051c0aca8e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Subject says it all really. The manufacturer of the hardwa=
re I&#39;m using has a layer for Dizzy but the version of Toaster in Dizzy =
is quite limited.<div><br></div><div>Is there a way to use the later (lates=
t?) version or is Toaster totally integrated into the whole?</div><div><br>=
</div><div>Cheers<br clear=3D"all"><div><br></div>-- <br><div class=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"font-size=
:12.8000001907349px"><font color=3D"#444444"><b>Robin Gilks</b></font></div=
><div style=3D"font-size:12.8000001907349px"><div><font color=3D"#444444"><=
font face=3D"verdana, arial, helvetica, sans-serif">Development<br><br></fo=
nt></font></div><div style=3D"font-family:verdana,arial,helvetica,sans-seri=
f"><span style=3D"font-weight:bold;font-size:large;font-family:arial,sans-s=
erif;color:rgb(255,69,0)">Delta=C2=A0</span><span style=3D"font-weight:bold=
;font-size:large;font-family:arial,sans-serif;color:rgb(68,68,68)">Strike</=
span></div><div style=3D"font-family:verdana,arial,helvetica,sans-serif"><s=
pan style=3D"color:rgb(68,68,68)"><span style=3D"font-size:small;font-famil=
y:Verdana,Arial,Helvetica,sans-serif;font-weight:bold">Success=C2=A0</span>=
<span style=3D"font-size:small;font-family:Verdana,Arial,Helvetica,sans-ser=
if;font-weight:bold;font-style:italic"><span style=3D"color:rgb(255,0,0)"><=
/span></span></span><span style=3D"color:rgb(68,68,68)"><span style=3D"font=
-size:small;font-family:Verdana,Arial,Helvetica,sans-serif;font-weight:bold=
;font-style:italic"><span style=3D"color:rgb(255,0,0)"><span style=3D"font-=
family:arial,sans-serif;color:rgb(255,69,0)">through</span></span>=C2=A0</s=
pan><span style=3D"font-size:small;font-family:Verdana,Arial,Helvetica,sans=
-serif;font-weight:bold">Delta Strike</span></span><span style=3D"font-weig=
ht:bold;font-size:large;font-family:arial,sans-serif;color:rgb(68,68,68)"><=
br></span></div><font color=3D"#444444">phone: =C2=A0=C2=A0=C2=A0</font><a =
value=3D"+6439829892">+64 3 982 9892</a><br><font color=3D"#444444">skype: =
=C2=A0 =C2=A0 robindeltastrike</font></div><div style=3D"font-size:12.80000=
01907349px">web: =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://www.deltastrik=
e.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank">www.deltastrike.co=
m</a></div></div></div></div></div>
</div></div>

--20cf307ac7abad7aa5051c0aca8e--
