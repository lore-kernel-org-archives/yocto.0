Return-Path: <vsivanagulu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42FB4E00A9A; Sun, 26 Mar 2017 22:04:17 -0700 (PDT)
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
	*      [74.125.83.53 listed in list.dnswl.org]
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 102DDE009AA
	for <yocto@yoctoproject.org>; Sun, 26 Mar 2017 22:04:13 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id 21so27963069pgg.1
	for <yocto@yoctoproject.org>; Sun, 26 Mar 2017 22:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=asC20OEsrHZU4vZVdEabmQhgVb8duKjduTPpEE5PZwE=;
	b=c4TugbqduyTDrFFlAMHJPn2uoQPT4MOhog08eKENvM3n+vRCAn7ldxdrRSQXVOsg9i
	g/sU9tB12zbSPyfL1AGYvZihL2WicMTlAHCr86eY8p2RwkiUPY4aWSZlh9rLwKEcp2tR
	6fke2MnEc+KL783gwDk5zMFZd5vew44LPBgoavFXXpEzPVImeTe5t0Mya0UkuV6VgM4u
	9vsnMPl1E8wpzhK/SfeKTu52kWyHSJroKfxOYoQK4vXVnp78HFHUbeVRrYC2sabMKk4O
	lK8JNu6GdwM438V8bPOPQnOjwn5RgIdTbFg1wHfAGCNSbmytYEwY4FguZ/vN5GZM6QK5
	WJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=asC20OEsrHZU4vZVdEabmQhgVb8duKjduTPpEE5PZwE=;
	b=ckOrWxU3S962hyEuvMQJljE1EiZbNpEkx8JBCGsO6pGiIbKpQRiE4oE6R7WSxSHIK0
	zge4aUpTCUexV6DltKA14tfPZLpTfavRmq6B7wDeEu/VLX+xB0GSdQq2iyip/lTs2V9Z
	XQIRqidN2TtRjKs3xRss/Maqg8ALE2AiQGU48PwgMjvxilJE5dfGMdNa7AcEHPOCi6Xj
	/b8VR3l+T47kxt8Q/XlMABq3YcEDcQTUv91vKC/5IvViilN0o9aGq35M9bOiVlER91F8
	g2nCZzQmr/4pGpRC6g6/MYTeesNGHmgyLYej62wUMlX9IJYo80rWVADSqnOn/Y0CFFF/
	wadA==
X-Gm-Message-State: AFeK/H06/MkF8T78d/c8PYVEHX8cka6bUWgzXhI5F+d1IFE8H5Mp3JILBku8PMPg9TIIhgJkGW9xRF8d7zmEhA==
X-Received: by 10.99.117.11 with SMTP id q11mr22648957pgc.9.1490591052668;
	Sun, 26 Mar 2017 22:04:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.8 with HTTP; Sun, 26 Mar 2017 22:04:12 -0700 (PDT)
In-Reply-To: <CA+S4H=Rt-2=gPhvZdu-oKsV7eyASvku4m+0whF8sm1fuJM3+iw@mail.gmail.com>
References: <CA+S4H=RD_i3vLVHBm0dQvVBJsqexvhuL6J8D3NDF0V45awCHow@mail.gmail.com>
	<CAMKF1sq--WQCrPpaJ_h9c9KENxtb6o=73X5YETsgn4tQNAMdiQ@mail.gmail.com>
	<CA+S4H=THx-EsuJ=GU=CHLsY-GEmvsMTj69ysNnHSVa+mrf83Og@mail.gmail.com>
	<CAMKF1srq5_2=9=DWd0H0RA201qcDJ+Hf4+etRmyB4-a6jjZZ6A@mail.gmail.com>
	<CA+S4H=QH2+iBuzcE9Bfnx0PZSbqj=LGpbZPQq4Op05FpEKWXHA@mail.gmail.com>
	<CA+S4H=QAE1Skn3wORV20atroWNa-FzOmrGvGo-ZffB3EtLa-Kg@mail.gmail.com>
	<CA+S4H=Rt-2=gPhvZdu-oKsV7eyASvku4m+0whF8sm1fuJM3+iw@mail.gmail.com>
From: Vadalasetti Sivanageswararao <vsivanagulu@gmail.com>
Date: Mon, 27 Mar 2017 10:34:12 +0530
Message-ID: <CA+S4H=SPv6NHZLHA0vQEkNJAOtLxyeMtCPHB+yCCxtPpfk0jEA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 28 Mar 2017 09:26:41 -0700
Subject: Re: how to enable c++11 support in yocto
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
X-List-Received-Date: Mon, 27 Mar 2017 05:04:17 -0000
Content-Type: multipart/alternative; boundary=f403045cd1a833257d054baf4699

--f403045cd1a833257d054baf4699
Content-Type: text/plain; charset=UTF-8

Ok  i will send mail to those people ,
Thankyou for your Help, and
Please send me some text or docs Regarding your development of  poky
toolchain.

On Mon, Mar 27, 2017 at 10:28 AM, Vadalasetti Sivanageswararao <
vsivanagulu@gmail.com> wrote:

>
> ---------- Forwarded message ----------
> From: Vadalasetti Sivanageswararao <vsivanagulu@gmail.com>
> Date: Sun, Mar 26, 2017 at 9:26 PM
> Subject: Re: how to enable c++11 support in yocto
> To: Khem Raj <raj.khem@gmail.com>
>
>
> Dear Yocto Team,
>
> when i compiling my c++ programs it is giving below error. please give me
> the solution for below error.
>
> i have written a simple recipe to compile the c++11 support programmes.
>
> cc1plus: warning: include location "/usr/local/include" is unsafe for
> cross-compilation [-Wpoison-system-directories]
> | ../SourceFiles/AutomaticShutdown.cpp:12:17: fatal error: cmath: No such
> file or directory
> |  #include <cmath>
> |                  ^
> | compilation terminated.
> | make: *** [SourceFiles/AutomaticShutdown.o] Error 1
> | WARNING: exit code 2 from a shell command.
>
> Presently I am using internal compiler in yocto not SDK.
>
> Thankyou,
>
>
>> --
>>
> V.SIVANAGESWARA RAO
>



-- 
V.SIVANAGESWARA RAO

--f403045cd1a833257d054baf4699
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok =C2=A0i will send mail to those people ,<div>Thankyou f=
or your Help, and</div><div>Please send me some text or docs Regarding your=
 development of =C2=A0poky toolchain.=C2=A0</div></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Mon, Mar 27, 2017 at 10:28 AM, Vad=
alasetti Sivanageswararao <span dir=3D"ltr">&lt;<a href=3D"mailto:vsivanagu=
lu@gmail.com" target=3D"_blank">vsivanagulu@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail=
_quote">---------- Forwarded message ----------<br>From: <b class=3D"gmail_=
sendername">Vadalasetti Sivanageswararao</b> <span dir=3D"ltr">&lt;<a href=
=3D"mailto:vsivanagulu@gmail.com" target=3D"_blank">vsivanagulu@gmail.com</=
a>&gt;</span><br>Date: Sun, Mar 26, 2017 at 9:26 PM<br>Subject: Re: how to =
enable c++11 support in yocto<br>To: Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;<br><br><br><div d=
ir=3D"ltr">Dear Yocto Team,<span class=3D""><div><br></div><div>when i comp=
iling my c++ programs it is giving below error. please give me the solution=
 for below error.</div></span><div><div><br></div><div>i have written a sim=
ple recipe to compile the c++11 support programmes.</div><span class=3D""><=
div><br></div><div>cc1plus: warning: include location &quot;/usr/local/incl=
ude&quot; is unsafe for cross-compilation [-Wpoison-system-directories]</di=
v><div>| ../SourceFiles/AutomaticShutdo<wbr>wn.cpp:12:17: fatal error: cmat=
h: No such file or directory</div><div>| =C2=A0#include &lt;cmath&gt;</div>=
<div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div=
><div>| compilation terminated.</div><div>| make: *** [SourceFiles/Automati=
cShutdown<wbr>.o] Error 1</div><div>| WARNING: exit code 2 from a shell com=
mand.</div></span></div><div><br></div><div>Presently I am using internal c=
ompiler in yocto not SDK.</div><div><br></div><div>Thankyou,</div></div><di=
v class=3D"gmail_extra"><div><div class=3D"m_3206821478682287655h5"><div cl=
ass=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr"><div><span style=3D"color:rgb(34,34,34)">--=C2=A0</span><br></div=
></div></blockquote></div></div></div></div></div><div class=3D"m_320682147=
8682287655gmail_signature" data-smartmail=3D"gmail_signature">V.SIVANAGESWA=
RA RAO<br></div>
</div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">V.SIVANAGESWARA RAO=
<br></div>
</div>

--f403045cd1a833257d054baf4699--
