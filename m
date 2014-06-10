Return-Path: <steve.strobel3@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ECE9E00BAE; Tue, 10 Jun 2014 10:51:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AADCAE00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 10:51:24 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id q58so4284538wes.16
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 10:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:reply-to:sender:from:date:message-id:subject:to
	:content-type; bh=qTkdLBc+05CQvtTXRT/DEGUBi97kyn2aDIiS5Kzitp0=;
	b=ovp/ZvS2V/va7FYQB1E0uCzRWoiNJdOctGb4Db65c+QiyIOKqHDOvdYXn8Tg0D52Ra
	tC8ucRHexXUbpPIwcuJnQM5O2Mr1nZP6d640hvzVk78E6IwjtSzgu83BOSIIWDReiLM5
	CtvEimrYSrCLRet5dQqavltQ+hPACnHxkjdyO/+ZTAQWoEY8gUj/M8X/s1CNm3JZ5ITv
	e2fuslxcFWR//06NFWieKa+u+g+WTrgxUCw+zj1K+kfQ7cIA4t0MRRnpcn+jtGIMwd8I
	uDdj69P7llIaJoToMqt8/SyI9rmbB9UmcJgKkjOyooCG8K8N1Uv/EDWHNC/O2kpcgvtC
	MdnQ==
X-Received: by 10.180.14.40 with SMTP id m8mr40651797wic.50.1402422683177;
	Tue, 10 Jun 2014 10:51:23 -0700 (PDT)
MIME-Version: 1.0
Sender: steve.strobel3@gmail.com
Received: by 10.194.246.69 with HTTP; Tue, 10 Jun 2014 10:51:08 -0700 (PDT)
From: Steve Strobel <steve.strobel@link-comm.com>
Date: Tue, 10 Jun 2014 11:51:08 -0600
X-Google-Sender-Auth: 4xxW_hYtbPglCmm9pbWxQOaIQd4
Message-ID: <CAGrmWbw1TPogQ=7x0MN3PAEc9S3XFrz0hR0Nsaixs2VRku4uNw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto support for TX28 module from Karo Electronics?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: steve.strobel@link-comm.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jun 2014 17:51:31 -0000
Content-Type: multipart/alternative; boundary=f46d04138cbfdb1a6304fb7ef983

--f46d04138cbfdb1a6304fb7ef983
Content-Type: text/plain; charset=UTF-8

My company is considering incorporating the TX28 module (Freescale i.MX287)
[1] into a new project.  I would like to use Yocto with it, and wondered if
there was a BSP already set up for it.  I didn't find one here [2], but I
did find a reference to it here [3] and here [4].  Does that just indicate
that someone set up Yocto for it on their own, but that support has not
been incorporated into the standard release?

Thanks for any pointers,
Steve

[1] - <http://www.karo-electronics.com/tx28.html>
[2] - <https://www.yoctoproject.org/downloads/bsp>
[3] - <
http://stash.imko.de/projects/GLOBLOG/repos/meta-tx28/commits/04e94025c9af14f6ecc1f13959b33f038230b3ce#conf/machine/tx28.conf
>
[4] - <https://bitbucket.org/imko/meta-tx28>

-- 
Steve Strobel
Link Communications, Inc.
1035 Cerise Rd
Billings, MT 59101-7378
(406) 245-5002 ext 102
(406) 245-4889 (fax)
WWW: http://www.link-comm.com
MailTo:steve.strobel@link-comm.com

--f46d04138cbfdb1a6304fb7ef983
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My company is considering incorporating the TX28 module (F=
reescale i.MX287) [1] into a new project. =C2=A0I would like to use Yocto w=
ith it, and wondered if there was a BSP already set up for it. =C2=A0I didn=
&#39;t find one here [2], but I did find a reference to it here [3] and her=
e [4]. =C2=A0Does that just indicate that someone set up Yocto for it on th=
eir own, but that support has not been incorporated into the standard relea=
se? =C2=A0<div>

<br></div><div>Thanks for any pointers,</div><div>Steve<div><br></div><div>=
[1] - &lt;<a href=3D"http://www.karo-electronics.com/tx28.html">http://www.=
karo-electronics.com/tx28.html</a>&gt;</div><div>[2] - &lt;<a href=3D"https=
://www.yoctoproject.org/downloads/bsp">https://www.yoctoproject.org/downloa=
ds/bsp</a>&gt;</div>

<div>[3] - &lt;<a href=3D"http://stash.imko.de/projects/GLOBLOG/repos/meta-=
tx28/commits/04e94025c9af14f6ecc1f13959b33f038230b3ce#conf/machine/tx28.con=
f">http://stash.imko.de/projects/GLOBLOG/repos/meta-tx28/commits/04e94025c9=
af14f6ecc1f13959b33f038230b3ce#conf/machine/tx28.conf</a>&gt;</div>

<div>[4] - &lt;<a href=3D"https://bitbucket.org/imko/meta-tx28">https://bit=
bucket.org/imko/meta-tx28</a>&gt;<br clear=3D"all"><div><br></div>-- <br>St=
eve Strobel<br>Link Communications, Inc.<br>1035 Cerise Rd<br>Billings, MT =
59101-7378<br>

(406) 245-5002 ext 102<br>(406) 245-4889 (fax)<br>WWW: <a href=3D"http://ww=
w.link-comm.com" target=3D"_blank">http://www.link-comm.com</a><br>MailTo:<=
a href=3D"mailto:steve.strobel@link-comm.com" target=3D"_blank">steve.strob=
el@link-comm.com</a><br>


</div></div></div>

--f46d04138cbfdb1a6304fb7ef983--
