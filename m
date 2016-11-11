Return-Path: <alain.achkar@triacta.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 327F9E00498; Fri, 11 Nov 2016 09:36:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C4F9E00498
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2016 09:36:24 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id u144so61812499wmu.1
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2016 09:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triacta.com; s=google;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=1BxwNoTI/ylaXJae5xDjEhnogt+lJw2G1gStHEDsSo8=;
	b=PKEX1fUZqz51CPSGtnfwSHjzO0nDg9s49AhKnWMTSIlFIMRCb84IS/WjKWylfJD6c5
	eOG/S5xlrTyI5pxgNstB6KFN2UJgByxsjYsfwO3/BcbyzpEAAa15dKVP+t8/mzRSfzVK
	onUWJYFytz/TUdNN2tYZ+fthA06QZtirucmI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=1BxwNoTI/ylaXJae5xDjEhnogt+lJw2G1gStHEDsSo8=;
	b=U+kyIMHuR53F3A2D0J68aUa42SvZ8Nde1YBq7zxy+24Vi8gkMcvSGmi2I7FKfJOB3S
	i5wl9DI3Lax2LttTkS0KkfoNe2PwLDA5ro5Ikgx4Vt+vHYoPJAoTu5PjTUfCZH/q3d2F
	L6cciSOOL5Jf0w8aM+nYeJDnlUqMYBeT0Vlb/zj8RHou22G1dJ80H9CsJ3Jlz2FzxjcI
	EyvxHFSRvi/Tr33ndKK/NxDrcGID04bEX6Tj1vSZa7Z3B2Lv49SiUgm0eaRw0Vs6janz
	gW3j4RwgZDd9IyB0o89KiFx02o5Dziz6245zm7uj45eTt++u/UBvO4AYdEYdrvJOQk/c
	/9LQ==
X-Gm-Message-State: ABUngvcuOwHD+nLWP4k8IU8BCfXMOS+OCFmBzrbTFrmW4JzAmXsCtoq04uUyw90FjBL4Hrg5R10bnPps61DR7R7t
X-Received: by 10.194.108.10 with SMTP id hg10mr12098743wjb.58.1478885783428; 
	Fri, 11 Nov 2016 09:36:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.61.10 with HTTP; Fri, 11 Nov 2016 09:35:42 -0800 (PST)
From: Alain Achkar <alain.achkar@triacta.com>
Date: Fri, 11 Nov 2016 12:35:42 -0500
Message-ID: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
To: joshua.g.lock@intel.com
X-Mailman-Approved-At: Mon, 14 Nov 2016 08:26:32 -0800
Cc: yocto@yoctoproject.org
Subject: Buildbot / Autobuilder / custom?
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
X-List-Received-Date: Fri, 11 Nov 2016 17:36:26 -0000
Content-Type: multipart/alternative; boundary=089e0102e362c90039054109ed26

--089e0102e362c90039054109ed26
Content-Type: text/plain; charset=UTF-8

Hello Joshua!

We are using Yocto to build for the Variscite DART-6UL SoM which is based
on Freescale/NXP i.MX6UL (
http://variwiki.com/index.php?title=DART-6UL_Yocto_Jethro_R1_build).

Currently, developers run builds manually on their desktops. We are
considering using a continuous integration server. I found out that The
Yocto Project uses Autobuilder which in turn uses BuildBot. I read most of
the introductory documentation.

Would you recommend that we install only BuildBot and configure it to build
what we need?

OR

Would you recommend that we install Autobuilder (and BuildBot) and
configure it to build what we need?

What is the faster path to get up and running?

Thanks!
Alain.

-- 

Alain Achkar, M.Eng. | Software Engineer

*Triacta Power Solutions*

(O) 613.256.2868 (C) 613.406.6520

*www.triacta.com  <http://www.triacta.com/>*

--089e0102e362c90039054109ed26
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Joshua!<div><br></div><div>We are using Yocto to bui=
ld for the Variscite DART-6UL SoM which is based on Freescale/NXP i.MX6UL (=
<a href=3D"http://variwiki.com/index.php?title=3DDART-6UL_Yocto_Jethro_R1_b=
uild">http://variwiki.com/index.php?title=3DDART-6UL_Yocto_Jethro_R1_build<=
/a>).</div><div><br></div><div>Currently, developers run builds manually on=
 their desktops. We are considering using a continuous integration server. =
I found out that The Yocto Project uses Autobuilder which in turn uses Buil=
dBot. I read most of the introductory documentation.</div><div><br></div><d=
iv>Would you recommend that we install only BuildBot and configure it to bu=
ild what we need?</div><div><br></div><div>OR</div><div><br></div><div>Woul=
d you recommend that we install Autobuilder (and BuildBot) and configure it=
 to build what we need?</div><div><br></div><div>What is the faster path to=
 get up and running?</div><div><br></div><div>Thanks!</div><div>Alain.<br c=
lear=3D"all"><div><br></div>-- <br><div class=3D"gmail_signature"><div dir=
=3D"ltr"><p style=3D"color:rgb(136,136,136);font-size:12.8px"><span style=
=3D"color:black;font-family:helvetica,sans-serif;font-size:8.5pt">Alain Ach=
kar, M.Eng. | Software Engineer</span><br></p><p style=3D"color:rgb(136,136=
,136);font-size:12.8px"><b><span style=3D"font-size:8.5pt;font-family:helve=
tica,sans-serif;color:black">Triacta Power Solutions</span></b><span style=
=3D"color:black"></span></p><p style=3D"color:rgb(136,136,136);font-size:12=
.8px"><span style=3D"font-size:8.5pt;font-family:helvetica,sans-serif;color=
:black">(O)=C2=A0<a href=3D"tel:613.256.2868" value=3D"+16132562868" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">613.256.2868</a>=C2=A0(C)=C2=A0=
<a href=3D"tel:613.406.6520" value=3D"+16138782570" style=3D"color:rgb(17,8=
5,204)" target=3D"_blank">613.406.6520</a></span></p><p style=3D"color:rgb(=
136,136,136);font-size:12.8px"></p><p style=3D"color:rgb(136,136,136);font-=
size:12.8px"><u><span style=3D"font-size:8.5pt;font-family:helvetica,sans-s=
erif;color:rgb(71,135,255)"><a href=3D"http://www.triacta.com/" style=3D"co=
lor:rgb(17,85,204)" target=3D"_blank">www.triacta.com=C2=A0</a></span></u><=
span style=3D"color:rgb(31,73,125)">=C2=A0</span></p></div></div>
</div></div>

--089e0102e362c90039054109ed26--
