Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAF78E00D00; Tue,  7 May 2019 04:30:00 -0700 (PDT)
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
	*      [209.85.222.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 219CDE00BAA
	for <yocto@yoctoproject.org>; Tue,  7 May 2019 04:29:59 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id w25so812599qkj.11
	for <yocto@yoctoproject.org>; Tue, 07 May 2019 04:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=lwNKm45cKXbWNROPxyER7caQXp2hEd6RRJoClAjHiTE=;
	b=oLi10SjE0SdTgIEMwT7eN2vos3/HMlP9cwQ+U9/DohSmGF085nUVQbBu1ILJGx2fna
	LI+bjhJA18bmt6SuosFM7s18DYxRH/ILdMYGMl7DCakLFYCvsB3jJTycNA0/lw0KDMCy
	C6qPS0ZKMbwTLmB1vKblgntlOrWASaHEvQTOqIeX3GralyAjJHSL43MXNuJHBfCEXWCY
	NmLr5KPwWmMoAAPmnkYhFz0HhGc0UIJlSm4VggxblkEfe852tshyXgrgHn7rOBeu/KjN
	vdt9Ik+YO7eCCoUNaeTGSvx/qvq/ubXgTocXh15lP69F5yPeAh5k+h7B6lx5lZQyu6I+
	w52A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=lwNKm45cKXbWNROPxyER7caQXp2hEd6RRJoClAjHiTE=;
	b=HWjo2dBEOSgg3o/fwe8Jaazxl/lKRzm0DokNMoa0uGMZrNWtav+GOan2W3e0I2lJHd
	Z0Nla1GglSPYEYgNzQFmM4XoTX6TLchT8hbOU1zcuQORvP8chl/d6pEUBzQXC8vvrOUd
	5fF3Eo//rzGo9XO9p3/qMTFE6nV3BoE4xipdQh0zVU80r0gzCPHkMwgs+5Ywfv2zczvS
	N/W1mCMByMnv1QVNT5sLp4bzbI2/91ZR0doqH8FhDoAXss1DylhRXCeJG/T1+Vw79vtK
	p+8Fm61DprymrJOepRI7rR/4snSqZsh7+jzSCyKfQ0nGJcC65aAhbK2Keh/4KQGtvfes
	0GdQ==
X-Gm-Message-State: APjAAAV7Fmoi845Mq4Qt530VwyG3HGvxlTE/cikbKdHxMcSoMWSHsdhw
	Og20jo0e6YLfndokY23eNTDIuQN37FV2SQjTK1nFWgx7X08=
X-Google-Smtp-Source: APXvYqzyRDRxMS8Y8Ob8r6KzDjYH94sII9X0WLAC0gbfSGBWJIu6iP4TDAwXIW65Ud/c6OPG+qiI0qNdZivvQMwzu1M=
X-Received: by 2002:a37:2c06:: with SMTP id s6mr23625183qkh.142.1557228599079; 
	Tue, 07 May 2019 04:29:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAKPYHZ75L7oLWfctFTJdK0RF7zWziMwqbmiT3mDUJ_TPiwohYg@mail.gmail.com>
In-Reply-To: <CAKPYHZ75L7oLWfctFTJdK0RF7zWziMwqbmiT3mDUJ_TPiwohYg@mail.gmail.com>
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Tue, 7 May 2019 13:29:47 +0200
Message-ID: <CAKPYHZ7bTNGSkNJuHwnzQ8asn_LG5GT4CHGhTrFqBw5ik6k0Pg@mail.gmail.com>
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
X-List-Received-Date: Tue, 07 May 2019 11:30:00 -0000
Content-Type: multipart/alternative; boundary="0000000000007b7af405884a894c"

--0000000000007b7af405884a894c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush Keshava Reddy Soppahalli
Mob: +4915216144064


---------- Forwarded message ---------
From: Dhanush K.S <dhanush.ks@gmail.com>
Date: Tue, 7 May 2019 at 13:28
Subject: bb-matrix.sh Script not working as expected
To: Yocto discussion list <yocto@yoctoproject.org>


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

--0000000000007b7af405884a894c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:georgia,=
serif">=C2=A0<br clear=3D"all"></div><div><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><font face=3D"georgia, serif" color=3D"=
#666666">Mit=C2=A0freundlichen=C2=A0Gr=C3=BC=C3=9Fen / Best Regards,</font>=
<div><font face=3D"georgia, serif" color=3D"#666666">Dhanush Keshava Reddy =
Soppahalli</font></div><div><font face=3D"georgia, serif" color=3D"#cc0000"=
>Mob: +4915216144064</font></div></div></div></div></div></div></div></div>=
</div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">---------- Forwarded message ---------<br>From: <strong class=3D"gmail_=
sendername" dir=3D"auto">Dhanush K.S</strong> <span dir=3D"ltr">&lt;<a href=
=3D"mailto:dhanush.ks@gmail.com">dhanush.ks@gmail.com</a>&gt;</span><br>Dat=
e: Tue, 7 May 2019 at 13:28<br>Subject: bb-matrix.sh Script not working as =
expected<br>To: Yocto discussion list &lt;<a href=3D"mailto:yocto@yoctoproj=
ect.org">yocto@yoctoproject.org</a>&gt;<br></div><br><br><div dir=3D"ltr"><=
div style=3D"font-family:georgia,serif"><div>Hello,</div><div><br></div><di=
v>I&#39;m trying to evaluate the performance of my builds and following the=
 wiki link=C2=A0<a href=3D"https://wiki.yoctoproject.org/wiki/Build_Perform=
ance" style=3D"font-family:Arial,Helvetica,sans-serif" target=3D"_blank">ht=
tps://wiki.yoctoproject.org/wiki/Build_Performance</a>=C2=A0to determine th=
e accurate BB and PM values for my builds.=C2=A0</div><div><br></div><div>I=
 have set &quot;INHERIT +=3D &quot;buildstats&quot;&quot; in my local.conf =
and disabled &quot;BB_NUMBER_THREADS&quot; &amp; &quot;PARALLEL_MAKE&quot; =
during the execution of the build and the script.</div><div><br></div><div>=
Executing the script bb-matrix.sh from the BUILDDIR with the command &quot;=
. ../poky-sumo-19.0.0/scripts/contrib/bb-perf/bb-matrix.sh .&quot; deletes =
the TMPDIR entirely and then complains &#39;cp: cannot stat =E2=80=98tmp/bu=
ildstats=E2=80=99: No such file or directory&#39; for each iteration of BB =
and PM values.</div><div><br></div><div>I don&#39;t understand where I am g=
oing wrong and how do I go about generating the dat file and in turn plotti=
ng the graph to determine the performance of the build?</div><div><br></div=
><div>Thanks!</div><div><br></div></div><div><div dir=3D"ltr" class=3D"m_68=
10139979455515988gmail_signature" data-smartmail=3D"gmail_signature"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><font face=3D"georgia, se=
rif" color=3D"#666666">Dhanush</font></div></div></div></div></div></div></=
div>
</div></div>

--0000000000007b7af405884a894c--
