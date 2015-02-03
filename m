Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35AD7E0076F; Tue,  3 Feb 2015 08:08:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4329E005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 08:08:21 -0800 (PST)
Received: by mail-wg0-f50.google.com with SMTP id b13so45311483wgh.9
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 08:08:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
	:content-type;
	bh=NGkOufOwAhoLl9rPbz82afskTFU0BSqAAm5clywMjUo=;
	b=L7mjIxerIaS4Dq9S/YLAbmLHHb686V5k51kMONPr877cWegxpmhxNj6eRA1iiYFvyW
	GR+hATXlbtcmryiQBHekWdCyGLH4LlWbbFkvD5st2Hj5YbUGK9X2Ro/8lQZKLI4Jt8Ab
	771jYmSJT35LUVmJNE0/+yZrQJqNCCT2ad2rFRaukiO4Dd06rjPWTR+BHfrBFtA2XHRo
	fs31We40XQmaPiuEVWs9GhynJTZ2MGX50vSbgtWbyiU8sIx5XpRv+w77x+V2qs6PVv2D
	2PombXqksbHldqVgnRcN9ZbSP4cmiNBCquRn5bpvNj6JGJS1FvT6xqcq5Vw/zQBvXokN
	0Myg==
X-Gm-Message-State: ALoCoQnxvv5Slv4H2J8b/gD5OiphMutWY1dhdIIaRgWITNAgJ/8bARtIzsSGbiib+3OHMyUFDJPT
X-Received: by 10.180.189.240 with SMTP id gl16mr9197049wic.20.1422979700591; 
	Tue, 03 Feb 2015 08:08:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Tue, 3 Feb 2015 08:07:34 -0800 (PST)
X-Originating-IP: [130.226.142.243]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 3 Feb 2015 18:07:34 +0200
Message-ID: <CAK18fxGN0aPVbGLafR7xF57Gxv_Gk_38Bm=LqLEccm1iwrLRfw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Cc: Aurelian Zanoschi <aurelian17@gmail.com>, Florin Sarbu <flocirel@gmail.com>,
	Alexandros Marinos <alexandros@resin.io>,
	Theodor Gherzan <theodor@gherzan.ro>
Subject: [meta-raspberrypi][ANNOUNCEMENT] Official issue tracker
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
X-List-Received-Date: Tue, 03 Feb 2015 16:08:27 -0000
Content-Type: multipart/alternative; boundary=001a11c2281893a218050e3147e6

--001a11c2281893a218050e3147e6
Content-Type: text/plain; charset=UTF-8

Hello rPIans,

Following your feedback, we now have a new tool for tracking the issues
related to meta-raspberrypi BSP yocto layer (
http://redmine.gherzan.ro/projects/meta-raspberrypi). An issue might be a
bug, a feature or a support ticket. This redmine server will replace any
other tools that we used (Trello, github etc) and will be the only official
way to report and trace issues. This tool will NOT replace the discussions
on the mailing list. For more information read the updated README file.

Quick links
===========
Git repository web frontend:
    http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/
Mailing list (yocto mailing list):
    yocto@yoctoproject.org

*Issues management (redmine):*
*    http://redmine.gherzan.ro/projects/meta-raspberrypi
<http://redmine.gherzan.ro/projects/meta-raspberrypi>*
Change review (gerrit):
    https://review.gherzan.ro:8443/#/q/project:meta-raspberrypi


Happy hacking!

-- 
*Andrei Gherzan*

--001a11c2281893a218050e3147e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello rPIans,<div><br></div><div><div>Following your feedb=
ack, we now have a new tool for tracking the issues related to meta-raspber=
rypi BSP yocto layer (<a href=3D"http://redmine.gherzan.ro/projects/meta-ra=
spberrypi">http://redmine.gherzan.ro/projects/meta-raspberrypi</a>). An iss=
ue might be a bug, a feature or a support ticket. This redmine server will =
replace any other tools that we used (Trello, github etc) and will be the o=
nly official way to report and trace issues. This tool will NOT replace the=
 discussions on the mailing list. For more information read the updated REA=
DME file.</div><div><br></div><div><div>Quick links</div><div>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</div><div>Git repository web frontend:<br></div><div>=
=C2=A0 =C2=A0 <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-ras=
pberrypi/">http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/</a><=
br></div><div>Mailing list (yocto mailing list):<br></div><div>=C2=A0 =C2=
=A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
></div><div><b>Issues management (redmine):<br></b></div><div><b>=C2=A0 =C2=
=A0 <a href=3D"http://redmine.gherzan.ro/projects/meta-raspberrypi">http://=
redmine.gherzan.ro/projects/meta-raspberrypi</a></b><br></div><div>Change r=
eview (gerrit):<br></div><div>=C2=A0 =C2=A0 <a href=3D"https://review.gherz=
an.ro:8443/#/q/project:meta-raspberrypi">https://review.gherzan.ro:8443/#/q=
/project:meta-raspberrypi</a><br></div></div><div><br></div><div><div><br><=
/div><div>Happy hacking!</div><div><br></div>-- <br><div class=3D"gmail_sig=
nature"><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=
=3D"text-align:center"><div align=3D"left"><b style=3D"font-family:Arial;fo=
nt-size:small;color:rgb(51,51,51);text-align:center">Andrei Gherzan</b><br>=
</div></div></div></div>
</div></div></div>

--001a11c2281893a218050e3147e6--
