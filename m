Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73A4DE00CBD; Thu,  3 Sep 2015 08:32:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm28-vm0.bullet.mail.ne1.yahoo.com
	(nm28-vm0.bullet.mail.ne1.yahoo.com [98.138.91.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 200D9E009B3
	for <yocto@yoctoproject.org>; Thu,  3 Sep 2015 08:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1441294326; bh=5j3RX1AFQp9blGHa4iBy5xv8JTxh/PfUnt6nWYUJQ4o=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=cANoDLsJZeZdTjRemN8n9o11D/XhQvAfm4/wiKG7XX0wVkeWI8QrSjvyXm3TpG0F9yIShAceha0NC7A5cKWi8d2KZw+KZbAfJYgMCjxzQvNDz1a8DcRtydKj1ZqUitb4lK2o2uQMWPA8ZY9eLubLDc85FkgBY6yc6dsKmM4t8/O5FFHUHF/yoqYBQbugvts9weswohWR6AmI7e/legNTWTtnOxD1f99aT+W5rXGd4wnZzoDKSUGRJsLA+sy84t/1yXtmIrvFBvgsN1tIGwO7BzvBkvXMrQtSDXQLdcXpErJRCxPl6KM7lC0ZAweTQBf+38P+0+VqDCwV1BOW/UCR9Q==
Received: from [98.138.100.113] by nm28.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Sep 2015 15:32:06 -0000
Received: from [98.138.89.198] by tm104.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Sep 2015 15:32:06 -0000
Received: from [127.0.0.1] by omp1056.mail.ne1.yahoo.com with NNFMP;
	03 Sep 2015 15:32:06 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 489132.57323.bm@omp1056.mail.ne1.yahoo.com
X-YMail-OSG: s53R8tcVM1lxRbN2lzTNMjB_65EtMaqsa_0v8MD7ABODVo0S3bxwU5af_pR0jqW
	LL0zshDMSWttH3F6__wehE0xzhlGRZS.La54cv59CSFXjn_hnGArFZbRi4_AJyu5HbuAWEfmw4dw
	XjstsdQ.MqNmS2fyQ5JBQ_rk_41XMNFu.lJi_LoLWCk.YvfuKbpDXKvGaI2LpJCumaS3yqHICG8Q
	aW.cn4MnzRSskzLISLdZv_GVIeNSZAvq9YRd6MMqYHaZovrWBMux.LZ4feEFiEHGeKo4n0ZflBA4
	uhQax_VJW2J.Wy07wj_b_etY7I_X2t0.c.qYEDE.wCl6dqbC30HpHgceHLaaxL2pdZbTqnEA5nY1
	wlJT1tiGvz0Fampyx0r5l4hZXN1cmlQT7M9GYLvM6H_kLI8kupzv.MUi8dmXRtcD9WlIWcfzCr4g
	j2ZTK9XXbgN2oJqF7CPWZtLEnBnYWbLvAU7IWbxisJYZhDEK1VfUkUjcHWohiZNvEqJR6nMi9rMQ
	J66RCrzDVRlCfDUpWG8AitzKSddy6hSNhJLS_HSbgktOw47v.SEPCy39tvQdCZA--
Received: by 98.138.105.244; Thu, 03 Sep 2015 15:32:05 +0000 
Date: Thu, 3 Sep 2015 15:27:45 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1950824736.1081760.1441294065347.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: missing certificates
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Sep 2015 15:32:10 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1081759_930545228.1441294065343"

------=_Part_1081759_930545228.1441294065343
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,In July 2015, several messages were posted with regard to missing=
 certificatesfrom Gary Thomas, Christopher Larson, and An=C3=ADbal Lim=C3=
=B3n.I am working with a Raspberry Pi 2 B and having a problem with fetchin=
g a bitbucket repository using HG (Mercurial)=C2=A0 which is certificate is=
sue.=C2=A0=C2=A0Is this a python or O/S issue.=C2=A0 I have been checking t=
he site mentioned by=20
An=C3=ADbal Lim=C3=B3n https://www.python.org/dev/peps/pep-0476/
I noticed that very bottom there is a link https://hg.python.org/peps/file/=
tip/pep-0476.txt date Wed, 02 Sep 2015 15:00:42 -0400 (20 hours ago).After =
reading this several times I am still not sure how to proceed.This problem =
occurs when I am trying to install "yosys"=C2=A0 which during the build pro=
cess tries=C2=A0 "hg clone https://bitbucket.org/alanmi/abc abc"
How best to get this working on my core-image-sato.Thanks in advance.

=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_1081759_930545228.1441294065343
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1441292713189_2531"><span id=3D"yui_3=
_16_0_1_1441292713189_3128">Hello All,</span></div><div id=3D"yui_3_16_0_1_=
1441292713189_3117"><span id=3D"yui_3_16_0_1_1441292713189_3116">In July 20=
15, several messages were posted with regard to missing certificates</span>=
</div><div id=3D"yui_3_16_0_1_1441292713189_2749" dir=3D"ltr"><span id=3D"y=
ui_3_16_0_1_1441292713189_2748" class=3D"">from Gary Thomas,</span><i class=
=3D""> Christopher Larson, and </i><i id=3D"yui_3_16_0_1_1441292713189_2913=
" class=3D"">An=C3=ADbal Lim=C3=B3n.</i></div><div id=3D"yui_3_16_0_1_14412=
92713189_2825" dir=3D"ltr"><i id=3D"yui_3_16_0_1_1441292713189_3151" class=
=3D"">I am working with a Raspberry Pi 2 B and having a problem with fetchi=
ng a bitbucket repository using HG (Mercurial)&nbsp; which is certificate i=
ssue.&nbsp;&nbsp;</i></div><div id=3D"yui_3_16_0_1_1441292713189_2914" dir=
=3D"ltr"><i id=3D"yui_3_16_0_1_1441292713189_2955" class=3D"">Is this a pyt=
hon or O/S issue.&nbsp; I have been checking the site mentioned by </i><br =
id=3D"yui_3_16_0_1_1441292713189_2954"><i id=3D"yui_3_16_0_1_1441292713189_=
2913" class=3D"">An=C3=ADbal Lim=C3=B3n <a id=3D"yui_3_16_0_1_1441292713189=
_2948" href=3D"https://www.python.org/dev/peps/pep-0476/">https://www.pytho=
n.org/dev/peps/pep-0476/</a><br></i></div><div dir=3D"ltr" id=3D"yui_3_16_0=
_1_1441292713189_2914">I noticed that very bottom there is a link <a id=3D"=
yui_3_16_0_1_1441292713189_3015" href=3D"https://hg.python.org/peps/file/ti=
p/pep-0476.txt">https://hg.python.org/peps/file/tip/pep-0476.txt</a> date
 Wed, 02 Sep 2015 15:00:42 -0400 (20 hours ago).</div><div id=3D"yui_3_16_0=
_1_1441292713189_3217" dir=3D"ltr">After reading this several times I am st=
ill not sure how to proceed.</div><div id=3D"yui_3_16_0_1_1441292713189_323=
5" dir=3D"ltr">This problem occurs when I am trying to install "yosys"&nbsp=
; which during the build process tries&nbsp; "hg clone https://bitbucket.or=
g/alanmi/abc abc"<br></div><div dir=3D"ltr">How best to get this working on=
 my core-image-sato.</div><div dir=3D"ltr">Thanks in advance.<br></div><div=
 id=3D"yui_3_16_0_1_1441292713189_2914"><br></div><div>&nbsp;</div><div cla=
ss=3D"signature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-161=
3</div></div></body></html>

------=_Part_1081759_930545228.1441294065343--
