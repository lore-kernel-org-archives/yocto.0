Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C89C7E00712; Sat, 28 Feb 2015 06:33:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ED15E00321
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 06:33:21 -0800 (PST)
Received: by iecrp18 with SMTP id rp18so37882671iec.1
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 06:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=jo5QMQ6+6v0CE3fjedBi5h7yyHjAUN7FEthCz00FA+U=;
	b=YtRMvn24TiV12ZZ8bWfVHJTCwMw5t78e4CCL96sXgOd9ZiOgaC44cIOdRzUFmcT37K
	SvAnY9caG0SlvpfIJd/QP8MuqF3Oe6Jalt5vQRCbVnFATZF6LkoXu9wxyxu7K0ubSyfq
	zHQGWbvhPNtpi1DG7NqET+SwfQC7lAG4J/EEENwfO0gEW2wjKv+rPPmByDjE2kN+n5Ff
	pkXTV3nclirMrz1WqGksZ3vK149HQ3Sd7Ab0D3GAHr3d8QgBCW/a21GqwL0XJhSkH29U
	Aj8MTjSLComn8DDGTpCFtw6N3Y3V1V1jVUkS4vYWc4d178wSINxtSkGEZDavIbO+miXl
	3qjw==
MIME-Version: 1.0
X-Received: by 10.43.74.201 with SMTP id yx9mr21001053icb.96.1425134001245;
	Sat, 28 Feb 2015 06:33:21 -0800 (PST)
Sender: priyaiitmandi@gmail.com
Received: by 10.107.134.207 with HTTP; Sat, 28 Feb 2015 06:33:21 -0800 (PST)
In-Reply-To: <54F1CB64.8090804@mlbassoc.com>
References: <CALTPfpFg1PjpHq3m3U308yFxaxJfnhM=RHD+3vCVMLe79L5DOA@mail.gmail.com>
	<54F1CB64.8090804@mlbassoc.com>
Date: Sat, 28 Feb 2015 20:03:21 +0530
X-Google-Sender-Auth: g-wePHUhvEVLicgBAnCtAefGP4A
Message-ID: <CALTPfpESUA448g3MyA6pJ+Rk-sGz43ixRvDFw4K54BstnD8d-Q@mail.gmail.com>
From: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error while building my own package
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
X-List-Received-Date: Sat, 28 Feb 2015 14:33:25 -0000
Content-Type: multipart/alternative; boundary=001a11c396cee6d24f051026dd64

--001a11c396cee6d24f051026dd64
Content-Type: text/plain; charset=UTF-8

Oh yes. I forgot 'md5' part in LIC_FILE_CHKSUM. Sorry and thanks.


On Sat, Feb 28, 2015 at 7:36 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-02-28 06:08, Priya Agarwal wrote:
>
>> Hi,
>>
>> I want to add a very simple autotools based package to the kernel image
>> (for freescale's t4240qds board) I built with yocto for testing purposes.
>>
>> Background: I wrote a simple c++ code, autoconf and automake'd it and
>> compressed it as tar.bz2 file. Wrote a simple recipe for it. I have
>> attached both the files.
>>
>> Problem: When I do bitbake <mypackage>, I get 2 errors. Basically
>> do_populate_lic and do_configure fail. Main errors is as follows. I have
>> attached the logfile as well.
>>
>> ERROR: Error executing a python function in /media/NewVolume/yocto/meta-
>> mylayer/recipes-examples/area/area_1.0.bb <http://area_1.0.bb>:
>> ValueError: need more than 1 value to unpack
>>
>>
>> I have less experience with yocto, so please pardon me for silly errors.
>>
>
> Check the logs carefully.  The configure error is
> ERROR:      0051:        bb.fatal("Licensing Error: LIC_FILES_CHKSUM does
> not match, please fix")
>
> This one should be obvious - the checksum in your recipe does not
> match the checksum of the real file in your source package.
>
> The do_populate_lic error is a result of the first.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c396cee6d24f051026dd64
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Oh yes. I forgot &#39;md5&#39; part in LIC_FILE_CHKSUM. So=
rry and thanks.<br><br></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Sat, Feb 28, 2015 at 7:36 PM, Gary Thomas <span dir=3D"ltr">=
&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
On 2015-02-28 06:08, Priya Agarwal wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Hi,<br>
<br>
I want to add a very simple autotools based package to the kernel image (fo=
r freescale&#39;s t4240qds board) I built with yocto for testing purposes.<=
br>
<br>
Background: I wrote a simple c++ code, autoconf and automake&#39;d it and c=
ompressed it as tar.bz2 file. Wrote a simple recipe for it. I have attached=
 both the files.<br>
<br>
Problem: When I do bitbake &lt;mypackage&gt;, I get 2 errors. Basically do_=
populate_lic and do_configure fail. Main errors is as follows. I have attac=
hed the logfile as well.<br>
<br></span>
ERROR: Error executing a python function in /media/NewVolume/yocto/meta-<u>=
</u>mylayer/recipes-examples/area/<a href=3D"http://area_1.0.bb" target=3D"=
_blank"><u></u>area_1.0.bb</a> &lt;<a href=3D"http://area_1.0.bb" target=3D=
"_blank">http://area_1.0.bb</a>&gt;:<span class=3D""><br>
ValueError: need more than 1 value to unpack<br>
<br>
<br>
I have less experience with yocto, so please pardon me for silly errors.<br=
>
</span></blockquote>
<br>
Check the logs carefully.=C2=A0 The configure error is<br>
ERROR:=C2=A0 =C2=A0 =C2=A0 0051:=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.fatal(&quot;=
Licensing Error: LIC_FILES_CHKSUM does not match, please fix&quot;)<br>
<br>
This one should be obvious - the checksum in your recipe does not<br>
match the checksum of the real file in your source package.<br>
<br>
The do_populate_lic error is a result of the first.<span class=3D"HOEnZb"><=
font color=3D"#888888"><br>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------<u></u>------------------------------<br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11c396cee6d24f051026dd64--
