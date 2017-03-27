Return-Path: <vsivanagulu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D05A9E00A2C; Sun, 26 Mar 2017 21:58:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vsivanagulu[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9BE6E009A5
	for <yocto@yoctoproject.org>; Sun, 26 Mar 2017 21:58:55 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id n5so20156384pgh.0
	for <yocto@yoctoproject.org>; Sun, 26 Mar 2017 21:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=GTrM5G4yoN3P5JVXUezLcW0ppPr+aGkEApK8TN7uGFA=;
	b=Cw3JvHvGsbYu1qQswzUfw8hiR1FBTkIfM/yCEdplXcX33ZZy3tdVMs5UcRJMZHBqbd
	1YqYVCC3HsyxCZqdj6t4ohA+36Two9zJdCBrRoTkx6ggjxHkLpAp1jWDj3OJaDrCfeSw
	lCUgaHWNWy+TijYaTS3L1SDyU0gqnNMM4bycUqrUnmqc7M2k1hYyI+iy5alADlhWsreg
	7PIhSTbls3bqvLngdUCVLAPnhpfg0a7XodiPK5i077VlOMIASvEROmfX3j8CooYzuI9V
	9Xf2qGxgtGiAAhyBgB5j580DyRUSHN+X/xlroulZsH2JESL5eAR3ekbf1K9W2ZTqKaxy
	bt5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=GTrM5G4yoN3P5JVXUezLcW0ppPr+aGkEApK8TN7uGFA=;
	b=HVDLUfiYw6zSC4BnGd9MN5Il6atGESVNo5xZB2TFv+ofgAon1ORrDQ+n8k6VrSqQ1L
	c5V5VBhyaBHggBmMDLRmRTqsHhiKkiqOigwMch80R99R8I7/SH1qSUeD9mDABk8cINQh
	t7zICMUitjLDQSbZpVNEH4/8Waw9TExZYjArKleYMYh+95hB4Y4QycGrZjmLEqUmFX8a
	eItqIecLeBsDlsix/kNO1Eh86WJFMXotgTZRKMOmQ2Bo4jkA/Cw5GYEjll/If2wJ2V1y
	GhBtOl7zQLIO/9qPJTM2GpKEDaLzx39nywPa3q8dSj6Q1LWyCx72qvgGHr7C7TSV8HV7
	dbOA==
X-Gm-Message-State: AFeK/H1mJw/1Y9CxDNMIPwHGR8F/t3Mk3Q1gDIxBle9v39WCvkxFZ/pOUU72zq3pyChV9osr07oK0DGzJGgu4A==
X-Received: by 10.84.229.10 with SMTP id b10mr26896019plk.148.1490590735348;
	Sun, 26 Mar 2017 21:58:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.8 with HTTP; Sun, 26 Mar 2017 21:58:54 -0700 (PDT)
In-Reply-To: <CA+S4H=QAE1Skn3wORV20atroWNa-FzOmrGvGo-ZffB3EtLa-Kg@mail.gmail.com>
References: <CA+S4H=RD_i3vLVHBm0dQvVBJsqexvhuL6J8D3NDF0V45awCHow@mail.gmail.com>
	<CAMKF1sq--WQCrPpaJ_h9c9KENxtb6o=73X5YETsgn4tQNAMdiQ@mail.gmail.com>
	<CA+S4H=THx-EsuJ=GU=CHLsY-GEmvsMTj69ysNnHSVa+mrf83Og@mail.gmail.com>
	<CAMKF1srq5_2=9=DWd0H0RA201qcDJ+Hf4+etRmyB4-a6jjZZ6A@mail.gmail.com>
	<CA+S4H=QH2+iBuzcE9Bfnx0PZSbqj=LGpbZPQq4Op05FpEKWXHA@mail.gmail.com>
	<CA+S4H=QAE1Skn3wORV20atroWNa-FzOmrGvGo-ZffB3EtLa-Kg@mail.gmail.com>
From: Vadalasetti Sivanageswararao <vsivanagulu@gmail.com>
Date: Mon, 27 Mar 2017 10:28:54 +0530
Message-ID: <CA+S4H=Rt-2=gPhvZdu-oKsV7eyASvku4m+0whF8sm1fuJM3+iw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 28 Mar 2017 09:26:41 -0700
Subject: how to enable c++11 support in yocto
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
X-List-Received-Date: Mon, 27 Mar 2017 04:58:59 -0000
Content-Type: multipart/alternative; boundary=94eb2c1a2156493b76054baf332d

--94eb2c1a2156493b76054baf332d
Content-Type: text/plain; charset=UTF-8

---------- Forwarded message ----------
From: Vadalasetti Sivanageswararao <vsivanagulu@gmail.com>
Date: Sun, Mar 26, 2017 at 9:26 PM
Subject: Re: how to enable c++11 support in yocto
To: Khem Raj <raj.khem@gmail.com>


Dear Yocto Team,

when i compiling my c++ programs it is giving below error. please give me
the solution for below error.

i have written a simple recipe to compile the c++11 support programmes.

cc1plus: warning: include location "/usr/local/include" is unsafe for
cross-compilation [-Wpoison-system-directories]
| ../SourceFiles/AutomaticShutdown.cpp:12:17: fatal error: cmath: No such
file or directory
|  #include <cmath>
|                  ^
| compilation terminated.
| make: *** [SourceFiles/AutomaticShutdown.o] Error 1
| WARNING: exit code 2 from a shell command.

Presently I am using internal compiler in yocto not SDK.

Thankyou,


> --
>
V.SIVANAGESWARA RAO

--94eb2c1a2156493b76054baf332d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote">---------- Forwarded messag=
e ----------<br>From: <b class=3D"gmail_sendername">Vadalasetti Sivanageswa=
rarao</b> <span dir=3D"ltr">&lt;<a href=3D"mailto:vsivanagulu@gmail.com">vs=
ivanagulu@gmail.com</a>&gt;</span><br>Date: Sun, Mar 26, 2017 at 9:26 PM<br=
>Subject: Re: how to enable c++11 support in yocto<br>To: Khem Raj &lt;<a h=
ref=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;<br><br><br><di=
v dir=3D"ltr">Dear Yocto Team,<div><br></div><div>when i compiling my c++ p=
rograms it is giving below error. please give me the solution for below err=
or.</div><div><div><br></div><div>i have written a simple recipe to compile=
 the c++11 support programmes.</div><div><br></div><div>cc1plus: warning: i=
nclude location &quot;/usr/local/include&quot; is unsafe for cross-compilat=
ion [-Wpoison-system-directories]</div><div>| ../SourceFiles/<wbr>Automatic=
Shutdown.cpp:12:17: fatal error: cmath: No such file or directory</div><div=
>| =C2=A0#include &lt;cmath&gt;</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div>| compilation terminated.</div><=
div>| make: *** [SourceFiles/<wbr>AutomaticShutdown.o] Error 1</div><div>| =
WARNING: exit code 2 from a shell command.</div></div><div><br></div><div>P=
resently I am using internal compiler in yocto not SDK.</div><div><br></div=
><div>Thankyou,</div></div><div class=3D"gmail_extra"><div><div class=3D"h5=
"><div class=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div dir=3D"ltr"><div><span style=3D"color:rgb(34,34,34)">--=C2=A0</span>=
<br></div></div></blockquote></div></div></div></div></div><div class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature">V.SIVANAGESWARA RAO<br></=
div>
</div>

--94eb2c1a2156493b76054baf332d--
