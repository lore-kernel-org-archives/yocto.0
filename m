Return-Path: <nilesh.kokane@mindastoneridge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F54AE00572; Sat,  2 Aug 2014 06:28:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00, HTML_IMAGE_ONLY_24, 
	HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C380E004E0
	for <yocto@yoctoproject.org>; Sat,  2 Aug 2014 06:28:30 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id t60so5529836wes.34
	for <yocto@yoctoproject.org>; Sat, 02 Aug 2014 06:28:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=BCLVfElRriv0y0yQeBQQpxiEssDpPNkE+Wb3rFz9Bq0=;
	b=dkcKKmsn3ZPWx4T9yjM0Zi7bWo9okVVo7ToiuBYLWQ8zv1MSXDQd7j4sOzrD5EWZ87
	ETSuhqWKYhkoupwcwRZRod2SsET6OnWAJvVPC8IBtMEc0u5UmzjIInTijycoNvgHk7JE
	zWYVuYRgJltEebSZ1NDFz9QAmzMja+DNhIwYvvJpFlfgNPsikjfvOhmpCWzOZeHCqiCl
	IGVhysxsKSM3RgJuZwLEWavVNxFBwRcY5rmrZVC3KDBvaAnEA4MCtFUGTUYPgjhURTQQ
	SYAXGYB2x1v6TfGo+0yWzVz33Ja4qNIT5wJ91eOn5yB4d4zTmY3Fh8xKlxxEL7rgTYNb
	ECgg==
X-Gm-Message-State: ALoCoQnuYHg/6IeGToLOww5LbT9YrDGGXUaOJPBbG5Hzbb126DatuCpG8V7Vca9NVBrMVeuFhx7dLyS1lfAGIrs5+C0MCxGccAuAhO7FnMOLY3D/r7Dsl4E=
MIME-Version: 1.0
X-Received: by 10.194.157.195 with SMTP id wo3mr17993870wjb.130.1406986109358; 
	Sat, 02 Aug 2014 06:28:29 -0700 (PDT)
Received: by 10.217.38.72 with HTTP; Sat, 2 Aug 2014 06:28:29 -0700 (PDT)
Date: Sat, 2 Aug 2014 18:58:29 +0530
Message-ID: <CAHURY+2SYoAs+i-WK-_vcxghqgXP=jVNgsFJJ+-rLHFQ8HjpKg@mail.gmail.com>
From: Nilesh Kokane <nilesh.kokane@mindastoneridge.com>
To: yocto@yoctoproject.org
Subject: Function failed: do_rootfs -Qt5 using yocto on Wandboard -Error
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
X-List-Received-Date: Sat, 02 Aug 2014 13:28:34 -0000
Content-Type: multipart/alternative; boundary=089e013c664840aee504ffa57b9a

--089e013c664840aee504ffa57b9a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,



Based on the instructions
http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard.


i gave a bitbake core-image-minimal following which it failed at the last
stage with the logs posted on http://pastebin.com/QFu2Rw6G


DISTRO_FEATURES_remove =3D "x11 wayland"  is present in the local config.



why its failing  with Unable to install packages errors.


Can any one suggest

--=20
=E2=80=9CThe contents of this e-mail message and any attachments are confid=
ential=20
and are intended solely for addressee. The information may also be legally=
=20
privileged. This transmission is sent in trust, for the sole purpose of=20
delivery to the intended recipient. If you have received this transmission=
=20
in error, any use, reproduction or dissemination of this transmission is=20
strictly prohibited. If you are not the intended recipient, please=20
immediately notify the sender by reply e-mail or phone and delete this=20
message and its attachments, if any.=E2=80=9D

--089e013c664840aee504ffa57b9a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br></div><div><br><br><br>Based on the instruc=
tions <a href=3D"http://wiki.wandboard.org/index.php/Building_Qt5_using_yoc=
to_on_Wandboard" target=3D"_blank">http://wiki.wandboard.org/index.php/Buil=
ding_Qt5_using_yocto_on_Wandboard</a>.<br>

<br><br></div>i gave a bitbake core-image-minimal following which it failed=
 at the last stage with the logs posted on <a href=3D"http://pastebin.com/Q=
Fu2Rw6G" target=3D"_blank">http://pastebin.com/QFu2Rw6G</a><br><br><span st=
yle=3D"font-family:arial black,sans-serif"><font size=3D"1"><br>
</font></span><pre><span style=3D"font-family:arial black,sans-serif"><font=
><font>DISTRO_FEATURES_remove =3D &quot;x11 wayland&quot;  is present in th=
e local config.<br><br><br><br></font></font></span></pre><pre><span style=
=3D"font-family:arial black,sans-serif"><font><font>why its failing  with U=
nable to install packages errors.<br>

<br><br></font></font></span></pre><pre><span style=3D"font-family:arial bl=
ack,sans-serif"><font><font>Can any one suggest</font></font></span><span c=
lass=3D""><font color=3D"#888888"><br></font></span></pre><div class=3D""><=
div id=3D":24t" class=3D"" tabindex=3D"0">
<img class=3D"" src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/clea=
rdot.gif"></div></div>
</div>

<br>
<span style=3D"color:rgb(31,73,125);font-family:Calibri,sans-serif;font-siz=
e:15px;font-style:normal;font-variant:normal;font-weight:normal;letter-spac=
ing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);display:inline!important;float:none">=E2=80=9CThe contents of thi=
s e-mail message and any attachments are confidential and are intended sole=
ly for addressee. The information may also be legally privileged. This tran=
smission is sent in trust, for the sole purpose of delivery to the intended=
 recipient. If you have received this transmission in error, any use, repro=
duction or dissemination of this transmission is strictly prohibited. If yo=
u are not the intended recipient, please immediately notify the sender by r=
eply e-mail or phone and delete this message and its attachments, if any.=
=E2=80=9D</span>

--089e013c664840aee504ffa57b9a--
