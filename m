Return-Path: <wpdster@gmail.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 067C6E00B30
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 05:58:00 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id db12so450438veb.38
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 05:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=nUKkK8s9FbiSWbZlB8bLdtqpVGb0HqT+TSxsMThMP9c=;
	b=vKKIvgffqTDcG1mHfPgsHBxezyIM11m5XAJFvThmi48yXe18gOFql8FLMaPhAYD/S1
	6JCtp6lm05qatf9BDg7GV3RHuQaR40RhhL4Xje1tfUxgK7Oy1wQaImSabGDMW9MQ8IPm
	QXEDbK53ItiqxcNDvPRCu6bv5zfPfm3PedcQ4/xlGuljJyCozVL/UEKEfIESVElhHGIS
	a9cDkVngB49Ck8I2C1DgDWI8nLLNS4Lf/H7K16gFOwQFHe5QzoyWKUNAQU0x9c8U+fuD
	AZCRg+YeH62jaTTuYqa6T+iShmGLuuPrADUNt3ggA66O6s2oMA5iWB5nweCVESERNIFn
	Xiig==
X-Received: by 10.220.250.203 with SMTP id mp11mr27305670vcb.2.1395752279524; 
	Tue, 25 Mar 2014 05:57:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.39.69 with HTTP; Tue, 25 Mar 2014 05:57:39 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 25 Mar 2014 08:57:39 -0400
Message-ID: <CAF_dkJBDA2j8wVTa-JJ9vgKyigmhzC9bjv00o3fum-qqnPi80A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problems building documentation for bitbake 1.17.0
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
X-List-Received-Date: Tue, 25 Mar 2014 12:58:03 -0000
Content-Type: multipart/alternative; boundary=089e013d0502d0cbab04f56de6f7

--089e013d0502d0cbab04f56de6f7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,

I just tried

$ git clone git://git.openembedded.org/bitbake
$ cd bitbake
$ git checkout 1.17.0
$ python setup.py install

and that failed with an infinite (well, I hit ^C before I found out for
real) stream of messages of the form:

http://docbook.sourceforge.net/release/xsl/current/common/en.xml:207:
parser error : Extra content at the end of the document
=C4=9E=C4=9F=C4=A0=C4=A1=C4=A2=C4=A3=C6=93=C9=A0=C7=A4=C7=A5=C7=A6=C7=A7=C7=
=B4=C7=B5=E1=B8=A0=E1=B8=A1Hh=C4=A4=C4=A5=C4=A6=C4=A7=C8=9E=C8=9F=C9=A6=E1=
=B8=A2=E1=B8=A3=E1=B8=A4=E1=B8=A5=E1=B8=A6=E1=B8=A7=E1=B8=A8=E1=B8=A9=E1=B8=
=AA=E1=B8=AB

   ^

I tried this on a Ubuntu 12.04 LTS 64 bit machine.  Am I missing a
particular dependency?  Is this a known problem (with an obvious solution?)
 The Google doesn't tell me anything obvious about "docbook extra content
at end of document"  (I didn't try searching for the string of random
characters that follows that.  Perhaps I should try.)

I get the same error when executing "make DOC=3Duser-manual" on the master
branch (note that setup.py doesn't work right now on master), so I'm
inclined to believe the problem is at my end.  I'm just not sure where to
start looking for a solution.  So I figured I'd ask.

--wpd

--089e013d0502d0cbab04f56de6f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div>I just tried<div><br><=
/div><div>$ git clone=C2=A0git://<a href=3D"http://git.openembedded.org/bit=
bake">git.openembedded.org/bitbake</a></div><div>$ cd bitbake</div><div>$ g=
it checkout 1.17.0</div>

<div>$ python setup.py install</div><div><br></div><div>and that failed wit=
h an infinite (well, I hit ^C before I found out for real) stream of messag=
es of the form:</div><div><br></div><div><div><a href=3D"http://docbook.sou=
rceforge.net/release/xsl/current/common/en.xml:207">http://docbook.sourcefo=
rge.net/release/xsl/current/common/en.xml:207</a>: parser error : Extra con=
tent at the end of the document<br>

</div><div>=C4=9E=C4=9F=C4=A0=C4=A1=C4=A2=C4=A3=C6=93=C9=A0=C7=A4=C7=A5=C7=
=A6=C7=A7=C7=B4=C7=B5=E1=B8=A0=E1=B8=A1Hh=C4=A4=C4=A5=C4=A6=C4=A7=C8=9E=C8=
=9F=C9=A6=E1=B8=A2=E1=B8=A3=E1=B8=A4=E1=B8=A5=E1=B8=A6=E1=B8=A7=E1=B8=A8=E1=
=B8=A9=E1=B8=AA=E1=B8=AB</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0^</div></div><div><br></div><div>I tried this on a Ubun=
tu 12.04 LTS 64 bit machine. =C2=A0Am I missing a particular dependency? =
=C2=A0Is this a known problem (with an obvious solution?) =C2=A0The Google =
doesn&#39;t tell me anything obvious about &quot;docbook extra content at e=
nd of document&quot; =C2=A0(I didn&#39;t try searching for the string of ra=
ndom characters that follows that. =C2=A0Perhaps I should try.)</div>

<div><br></div><div>I get the same error when executing &quot;make DOC=3Dus=
er-manual&quot; on the master branch (note that setup.py doesn&#39;t work r=
ight now on master), so I&#39;m inclined to believe the problem is at my en=
d. =C2=A0I&#39;m just not sure where to start looking for a solution. =C2=
=A0So I figured I&#39;d ask.</div>

<div><br></div><div>--wpd</div><div><br></div></div>

--089e013d0502d0cbab04f56de6f7--
