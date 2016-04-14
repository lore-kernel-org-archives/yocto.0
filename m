Return-Path: <charles.krinke@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ECF2E00E64; Thu, 14 Apr 2016 10:44:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (charles.krinke[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1C6AE00D7D
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:44:33 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id e185so11526426vkb.2
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VCPHz09sR9b4NaZsBOIRNGi2DPc3hd5kJj44Lt3ECrs=;
	b=YTTu7S9LiPdrrt0856ibhULc+JNMWJdLlCJOmQR3txM6x+a13BOYq+3Lh8TqRuS5fl
	vznd5XsG2hqVLnYG3Jr25OsJitr3R4StI666eJdFaje2osUvhpXArVzs5ID8qIklo2CO
	PjnZnM6aA2o4zQzmADzK1bo3Cbs5riNeEYIuzVXFsShXAS+UieGoX/8rbLZ27Dr0fpuF
	zKI9JOIPutXn4t3BwDm8r+h3a+LE4QJl5uO7X5R7wluS7w4AQTrOaE9ib4X9v5ykQOaz
	grMNw/GtcnLYPa0t8cP3yCvIwnuJeFqJgFgwFtMnrfEOQGYLROdgoMSWH0eirQGOo+2S
	bqEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VCPHz09sR9b4NaZsBOIRNGi2DPc3hd5kJj44Lt3ECrs=;
	b=aiYzmAkVEg1wNAmXUgfpBUwGxUJL1MCUxLpn+Ld1ZTjygA//kGYm80DX6nbT30Z387
	GgpenivLqOTMcwpwSGxX/Uk5zlBPgGIb6TI2bMX+ge9tqKJroBsFFJB3W45tp3TdST4G
	iGspJ2PNBrvt/sUJHErksO/X6Xm0P+cauFOImnqRSPq+mMriuuDqxhDZUZAFl9doB8Kz
	c6/xokpFiG9q0e1Wvaaf64XEO4ii/+W5oGqq2g1p64LaVnf8jFYH4CpS3XK+GfK4Miue
	dKvSj/dp9OQuHxTWkxGNHXXBHLwlpAvG1U5dwIW2nYRScO8qTZUr9Cosvu3DhJ1889yx
	F2rw==
X-Gm-Message-State: AOPr4FWRMofgrwV7c6lQ9w3toNoFRsriKYx0lKzfvwRgcqujTDH/Bd2G7mRl/rHCLkOSrKlbsV7qpDeKPOp/uA==
X-Received: by 10.176.2.236 with SMTP id 99mr8383591uah.5.1460655873029; Thu,
	14 Apr 2016 10:44:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.180.80 with HTTP; Thu, 14 Apr 2016 10:44:13 -0700 (PDT)
In-Reply-To: <009201d19673$710b33a0$53219ae0$@softtools.com>
References: <009201d19673$710b33a0$53219ae0$@softtools.com>
From: Charles Krinke <charles.krinke@gmail.com>
Date: Thu, 14 Apr 2016 10:44:13 -0700
Message-ID: <CALo-6+gPhQ=gqZku=CqOFphBnLt43AX7j0gBD=4fAQX9zLNcFA@mail.gmail.com>
To: Sid Price <sidprice@softtools.com>
Cc: yocto@yoctoproject.org
Subject: Re: environment setup script
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
X-List-Received-Date: Thu, 14 Apr 2016 17:44:35 -0000
Content-Type: multipart/alternative; boundary=001a113d19a8737f09053075728c

--001a113d19a8737f09053075728c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Maybe I can help with this one, Sid.

First step is to install "sudo". So, ... with your package manager see if
"sudo" is a listed package. Barring that, try "su -", enter your root
password and do "apt-get sudo". At this point, you will need to use the
command "visudo" to add your user to the sudoers list. Google this for more
complete instructions. Finish by exit from the root bash prompt to exit
from root.

Then you should be able to use "sudo apt-get install <something>".

Charles

On Thu, Apr 14, 2016 at 10:31 AM, Sid Price <sidprice@softtools.com> wrote:

> Hello, I am new to Yocto and relatively new to Linux. I am working my way
> through the =E2=80=9CGetting Started=E2=80=9D guide and I have met a prob=
lem. I am trying
> to run the =E2=80=9Cenvironment-setup =E2=80=A6=E2=80=9D script for the a=
rm platform. First I
> notice that when I list the folder /opt/poky/2.0.1 I see the scripts but
> they are not shown as executable. Is this correct? When I try the followi=
ng
> command I am told =E2=80=9CPermission denied=E2=80=9D:
>
>
>
> /opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi
>
>
>
> If I use sudo I see =E2=80=9Ccommand not found=E2=80=9D
>
>
>
> Any pointers would be very much appreciated,
>
> Sid
>
>
>
> *Sid Price*
>
> *Desktop Application and Embedded System Design*
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
Charles Krinke

--001a113d19a8737f09053075728c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Maybe I can help with this one, Sid.</div><div><br></=
div><div>First step is to install &quot;sudo&quot;. So, ... with your packa=
ge manager see if &quot;sudo&quot; is a listed package. Barring that, try &=
quot;su -&quot;, enter your root password and do &quot;apt-get sudo&quot;. =
At this point, you will need to use the command &quot;visudo&quot; to add y=
our user to the sudoers list. Google this for more complete instructions. F=
inish by exit from the root bash prompt to=C2=A0exit from root.</div><div><=
br></div><div>Then you should be able to use &quot;sudo apt-get install &lt=
;something&gt;&quot;.</div><div><br></div><div>Charles</div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Apr 14, 2016 at 10=
:31 AM, Sid Price <span dir=3D"ltr">&lt;<a href=3D"mailto:sidprice@softtool=
s.com" target=3D"_blank">sidprice@softtools.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div lang=3D"EN-US" vlink=3D"#954F72" link=3D"=
#0563C1"><div><p class=3D"MsoNormal">Hello, I am new to Yocto and relativel=
y new to Linux. I am working my way through the =E2=80=9CGetting Started=E2=
=80=9D guide and I have met a problem. I am trying to run the =E2=80=9Cenvi=
ronment-setup =E2=80=A6=E2=80=9D script for the arm platform. First I notic=
e that when I list the folder /opt/poky/2.0.1 I see the scripts but they ar=
e not shown as executable. Is this correct? When I try the following comman=
d I am told =E2=80=9CPermission denied=E2=80=9D:<u></u><u></u></p><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">/opt/poky/2.0=
.1/environment-setup-armv5e-poky-linux-gnueabi<u></u><u></u></p><p class=3D=
"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">If I use sudo I =
see =E2=80=9Ccommand not found=E2=80=9D<u></u><u></u></p><p class=3D"MsoNor=
mal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Any pointers would be v=
ery much appreciated,<u></u><u></u></p><p class=3D"MsoNormal">Sid<u></u><u>=
</u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNorma=
l"><i>Sid Price<u></u><u></u></i></p><p class=3D"MsoNormal"><i>Desktop Appl=
ication and Embedded System Design<u></u><u></u></i></p><p class=3D"MsoNorm=
al"><u></u>=C2=A0<u></u></p></div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
 rel=3D"noreferrer">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature">Charles Krinke<br><br></div>
</div>

--001a113d19a8737f09053075728c--
