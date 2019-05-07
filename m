Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DEE1E00D11; Tue,  7 May 2019 04:28:16 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5511DE00BAA
	for <yocto@yoctoproject.org>; Tue,  7 May 2019 04:28:15 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id z128so7255505qkb.6
	for <yocto@yoctoproject.org>; Tue, 07 May 2019 04:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kNYL6iP/EV+/yLIsRzbqcJaPIl6OWRq6d+FIH5Gzna4=;
	b=E1LHc48DXihi5JS9MLViMEllW21dWE/XYhbK5IwWJUBA40xUj20sbSZbpthfFlpMWG
	AqfNPy91CIBsBb31yNDALiHJ0wAcZ3s5ZlISa5TGvB3M4zjFRvkAlfc38z+XwB2J1spa
	D0Svuy79bd+do6Aoy6TVlEXtK6DkIDvJPdS57LaW1gnqPzCL9Si2rjXhsoxGSC0ZV7xj
	GOU8j54kDGYkWbQO4xX6H7tGNiFcEiUdX0ELQrHFN/N6tw79VGLqcIwxVo55smKvljFM
	jqYD/VibGLmvzn5BRUCW39gf7Td4RM14DwKQSpXP2xnIqGHd68StVm2mDoSys8DLkypB
	6m0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kNYL6iP/EV+/yLIsRzbqcJaPIl6OWRq6d+FIH5Gzna4=;
	b=VoiTe+VikooANxz4EbGFrAZx5kC8YW1NDBFY1XrwByUC+tKDuQ4A59vVgNDmWSwweH
	dPcgJt2a600zt5oJjs4NHSjl3I9NHijZVlHMOs537vNF0wJPRhy9+f3ZbP9rXYJBBp3r
	lBhfJ4lXURKfTZ5kpFU+xx8PaDfpk4FtZt/ISEZFbYcOBc0r4YarbqaM5I4iWcZSrT85
	2BkrgWl4Zzwzc9z9+jxDbFDMeoW0tnypBEiCnHfkMo1TdA3+ImJaUgqBrw3/CrWBjF1z
	Qgsv/FVc1UcYLuHXTofKEBco6BEfhlcgjKjdM8Yjguc0wGbqZllnsHqEIVYgDzkG4uwP
	/raQ==
X-Gm-Message-State: APjAAAXh0/rEUxZZVTprX/BevFF+KX5T6Z/2VEJmsRRQ57fADCPaySGS
	w8JIrqs2bcoC7SXqrNREkWmVUXJQn35cdchcfd0qPWVHRs8=
X-Google-Smtp-Source: APXvYqxx2Msq8ibN1ScvOV354b2j9r1zDC8AWMqWYZs+QHvMW3P1S6WewaJ9bO35p4zes4b28un9qOLnlEp1UYTQJVk=
X-Received: by 2002:ae9:e60b:: with SMTP id z11mr24973641qkf.80.1557228494260; 
	Tue, 07 May 2019 04:28:14 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Tue, 7 May 2019 13:28:02 +0200
Message-ID: <CAKPYHZ75L7oLWfctFTJdK0RF7zWziMwqbmiT3mDUJ_TPiwohYg@mail.gmail.com>
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
X-List-Received-Date: Tue, 07 May 2019 11:28:16 -0000
Content-Type: multipart/alternative; boundary="0000000000003c12f305884a8345"

--0000000000003c12f305884a8345
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

--0000000000003c12f305884a8345
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:georgia,=
serif"><div class=3D"gmail_default">Hello,</div><div class=3D"gmail_default=
"><br></div><div class=3D"gmail_default">I&#39;m trying to evaluate the per=
formance of my builds and following the wiki link=C2=A0<a href=3D"https://w=
iki.yoctoproject.org/wiki/Build_Performance" target=3D"_blank" style=3D"fon=
t-family:Arial,Helvetica,sans-serif">https://wiki.yoctoproject.org/wiki/Bui=
ld_Performance</a>=C2=A0to determine the accurate BB and PM values for my b=
uilds.=C2=A0</div><div class=3D"gmail_default"><br></div><div class=3D"gmai=
l_default">I have set &quot;INHERIT +=3D &quot;buildstats&quot;&quot; in my=
 local.conf and disabled &quot;BB_NUMBER_THREADS&quot; &amp; &quot;PARALLEL=
_MAKE&quot; during the execution of the build and the script.</div><div cla=
ss=3D"gmail_default"><br></div><div class=3D"gmail_default">Executing the s=
cript bb-matrix.sh from the BUILDDIR with the command &quot;. ../poky-sumo-=
19.0.0/scripts/contrib/bb-perf/bb-matrix.sh .&quot; deletes the TMPDIR enti=
rely and then complains &#39;cp: cannot stat =E2=80=98tmp/buildstats=E2=80=
=99: No such file or directory&#39; for each iteration of BB and PM values.=
</div><div class=3D"gmail_default"><br></div><div class=3D"gmail_default">I=
 don&#39;t understand where I am going wrong and how do I go about generati=
ng the dat file and in turn plotting the graph to determine the performance=
 of the build?</div><div class=3D"gmail_default"><br></div><div class=3D"gm=
ail_default">Thanks!</div><div class=3D"gmail_default"><br></div></div><div=
><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><font face=3D"g=
eorgia, serif" color=3D"#666666">Dhanush</font></div></div></div></div></di=
v></div></div>

--0000000000003c12f305884a8345--
