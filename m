Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B16ABE00CE8; Thu, 25 Apr 2019 07:07:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dhanush.ks[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D249E00CDF
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 07:07:44 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id c190so9302225qke.9
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 07:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=PjHVld6cU3SlqiveDGv/ry4dKlAd57ouJBxHgGvn5c4=;
	b=q2cTl524Y57xsYT8NnFTwMAsrCk+mhqMfrfQeSBNbbPCEzOInA9r1pd/8GDQ6jK0Gh
	fC5na8BrKg1/0KAnr1zjvdYPD/uUwKY1FfwKlvUij2A3QPewEEWYt5hIYGLfEZyVM27Z
	+/QE50UihC82/Zu/lZYoYFeEDYDD2kjhnfAV2cwwDzXPoUyiUt4HihjtFbOaCtlQ8x+Y
	lX8F9gmot/zZbG9nw6GstpCDU8qZfnkOg/TCL3e77MnldgzsWEfYYzVJJgywwaNxxF0u
	qisBqnctBDhxnaZf1XrYosdJOgMMKx0ojevjz+bguJo76xARaO+zPyyKIRJbq7k6eL8f
	ahdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=PjHVld6cU3SlqiveDGv/ry4dKlAd57ouJBxHgGvn5c4=;
	b=qLM9n3gN3ziUFFBa9cx7/p542uNSbXDDy1zjvlrQbXdjYoiTguSKn5A7a9VxF/Gk39
	dnj5dMVEKpX90HNQrTMCAncdId1kJ7sqVlc4lkVY+vXxoN99jai2Icz0LQTBtrcYW+5+
	4+ijlR2TIsvf0G/x28pzNJzKHCsxy30YNhzDduBe1Wx9wzVuX+vzrWzd17ZU3OkaLyso
	c5pXqTvYzeOhoMWQZe7luLEDzM/QkYlTMv6X8N/eynIqx2SO6WaQdb9UT5s9HZAbq8b4
	tl7UWuKiPNP6q1T9NRym7oNQjooidKfnVZ/2vlEr00N7bz+dY74Iyen7otEFLvYq8wM+
	VirA==
X-Gm-Message-State: APjAAAXurvbISGYsUCdQBQdG/fnMa9OL6WfksmZW04sOrZfTRETBkMLp
	awSJHcbO+SN6S4du00FbTZ7/8eyfwQvdLCv3QRG60Nii
X-Google-Smtp-Source: APXvYqyGxe/Q8gfsKp2dzLB1ItnVOie4h197G779gzDopw+9bHXVOGpqaXxmdP4VD8ZKQgd/ioxwgg+g6xS1B3JwGaI=
X-Received: by 2002:a37:7e45:: with SMTP id z66mr15030828qkc.118.1556201263394;
	Thu, 25 Apr 2019 07:07:43 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Thu, 25 Apr 2019 16:07:30 +0200
Message-ID: <CAKPYHZ564WhK_FOCvkU3MCH1AJiAHr=RRSCK=qFCmAU26PGZWg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: bb-matrix.sh Script not working as expected
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
X-List-Received-Date: Thu, 25 Apr 2019 14:07:45 -0000
Content-Type: multipart/alternative; boundary="00000000000080f4a905875b573f"

--00000000000080f4a905875b573f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to evaluate the performance of my builds and following the wiki
link https://wiki.yoctoproject.org/wiki/Build_Performance to determine the
accurate BB and PM values for my builds.

I have set "INHERIT +=3D "buildstats"" in my local.conf and disabled
"BB_NUMBER_THREADS" & "PARALLEL_MAKE" during the execution of the build and
the script.

Executing the script bb-matrix.sh from the BUILDDIR with the command ".
../poky-sumo-19.0.0/scripts/contrib/bb-perf/bb-matrix.sh ." deletes the
TMPDIR entirely and then complains 'cp: cannot stat =E2=80=98tmp/buildstats=
=E2=80=99: No
such file or directory' for each iteration of BB and PM values.

I don't understand where I am going wrong and how do I go about generating
the dat file and in turn plotting the graph to determine the performance of
the build?

Thanks!

Dhanush

--00000000000080f4a905875b573f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:georgia,serif">Hello,</div><div class=3D"gmail_default" style=3D"f=
ont-family:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:georgia,serif">I&#39;m trying to evaluate the performance of my =
builds and following the wiki link=C2=A0<a href=3D"https://wiki.yoctoprojec=
t.org/wiki/Build_Performance" style=3D"font-family:Arial,Helvetica,sans-ser=
if">https://wiki.yoctoproject.org/wiki/Build_Performance</a>=C2=A0to determ=
ine the accurate BB and PM values for my builds.=C2=A0</div><div class=3D"g=
mail_default" style=3D"font-family:georgia,serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:georgia,serif">I have set &quot;INHERIT =
+=3D &quot;buildstats&quot;&quot; in my local.conf and disabled &quot;BB_NU=
MBER_THREADS&quot; &amp; &quot;PARALLEL_MAKE&quot; during the execution of =
the build and the script.</div><div class=3D"gmail_default" style=3D"font-f=
amily:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:georgia,serif">Executing the script bb-matrix.sh from the BUILDDIR wi=
th the command &quot;. ../poky-sumo-19.0.0/scripts/contrib/bb-perf/bb-matri=
x.sh .&quot; deletes the TMPDIR entirely and then complains &#39;cp: cannot=
 stat =E2=80=98tmp/buildstats=E2=80=99: No such file or directory&#39; for =
each iteration of BB and PM values.</div><div class=3D"gmail_default" style=
=3D"font-family:georgia,serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:georgia,serif">I don&#39;t understand where I am going wron=
g and how do I go about generating the dat file and in turn plotting the gr=
aph to determine the performance of the build?</div><div class=3D"gmail_def=
ault" style=3D"font-family:georgia,serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:georgia,serif">Thanks!</div><div class=3D"gmail_=
default" style=3D"font-family:georgia,serif"><br></div><div><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div><font face=3D"georgia, serif" color=3D"#666666"><span cl=
ass=3D"gmail_default" style=3D"font-family:georgia,serif">Dhanush<br></span=
></font></div></div></div></div></div></div></div></div></div></div>

--00000000000080f4a905875b573f--
