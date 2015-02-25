Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA494E0076F; Wed, 25 Feb 2015 00:27:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D75E0074C
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 00:27:32 -0800 (PST)
Received: by mail-qg0-f42.google.com with SMTP id z107so1824365qgd.1
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 00:27:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4EmQNWtL4Bz1zhpi5qN0IWzVF8S5Y16rJXHyhcBqs6U=;
	b=p4U6QICnijic3CXI15171bZdckxcvR248g/QYaxoKShvesV4OSDE7b/ygGSCOpaVjX
	U+CRt8Kxmw48RZNvdzeyZKlAT5B9axYZY6cbl6K+FM36jnivIMgjhZxeq8ES5Arzk/p3
	wxXULYwT4LtVwWjExHG47MoiFZdLhRVjELWHh4WrfNJdzROrOypehQwBEkKmtmfIiaJt
	9QANJANNXZ+l4lEA4pBtU30E+Fy+evgPYvL7E1AdttmqnGuyTRINLpASRsY1QfT0ndQc
	q0RHB+MHr0idCIsTXungkTahdA31kzgx/tCTqfoLAlPmOVWsNj+QPiqXDik+1fdQdEG2
	uo5w==
X-Received: by 10.140.239.68 with SMTP id k65mr4755632qhc.76.1424852852016;
	Wed, 25 Feb 2015 00:27:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.91.165 with HTTP; Wed, 25 Feb 2015 00:27:11 -0800 (PST)
In-Reply-To: <54ECF1DD.7000805@mlbassoc.com>
References: <54ECE7FD.4070503@mlbassoc.com> <54ECF114.8060203@gmail.com>
	<54ECF1DD.7000805@mlbassoc.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Wed, 25 Feb 2015 09:27:11 +0100
Message-ID: <CAP2S6e7aD=O1Scjec1Cw=5NEG2JDZFOjKcc=Qhdnq=m7sY_21Q@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Pi-2 support?
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
X-List-Received-Date: Wed, 25 Feb 2015 08:27:33 -0000
Content-Type: multipart/alternative; boundary=001a1135b7581a0ef8050fe568e9

--001a1135b7581a0ef8050fe568e9
Content-Type: text/plain; charset=UTF-8

Look there:

https://github.com/agherzan/meta-raspberrypi
It has the Raspberry pi 2 machine conf.

Cheers


2015-02-24 22:49 GMT+01:00 Gary Thomas <gary@mlbassoc.com>:

> On 2015-02-24 14:45, Christian Ege wrote:
>
>> Am 24.02.2015 um 22:07 schrieb Gary Thomas:
>>
>>> Any ideas when this layer might support the new Pi-2?
>>> Is anyone working on it?
>>>
>>>  Andrei Gherzan already sended some Patches to this ML
>> http://comments.gmane.org/gmane.linux.embedded.yocto.general/23265
>>
>> It looks like those are already merged:
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=
>> 54c5451a04a2b6601ca729038780d4e4eb69437e
>>
>
> Cool :-)
>
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

--001a1135b7581a0ef8050fe568e9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Look there:<br><br><a href=3D"https://github.com=
/agherzan/meta-raspberrypi">https://github.com/agherzan/meta-raspberrypi</a=
><br></div>It has the Raspberry pi 2 machine conf.<br><br></div>Cheers<br><=
div><div><br></div></div></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">2015-02-24 22:49 GMT+01:00 Gary Thomas <span dir=3D"ltr">&lt;=
<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a=
>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div =
class=3D"h5">On 2015-02-24 14:45, Christian Ege wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Am 24.02.2015 um 22:07 schrieb Gary Thomas:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Any ideas when this layer might support the new Pi-2?<br>
Is anyone working on it?<br>
<br>
</blockquote>
Andrei Gherzan already sended some Patches to this ML<br>
<a href=3D"http://comments.gmane.org/gmane.linux.embedded.yocto.general/232=
65" target=3D"_blank">http://comments.gmane.org/<u></u>gmane.linux.embedded=
.yocto.<u></u>general/23265</a><br>
<br>
It looks like those are already merged:<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commi=
t/?id=3D54c5451a04a2b6601ca729038780d4e4eb69437e" target=3D"_blank">http://=
git.yoctoproject.org/<u></u>cgit/cgit.cgi/meta-<u></u>raspberrypi/commit/?i=
d=3D<u></u>54c5451a04a2b6601ca729038780d4<u></u>e4eb69437e</a><br>
</blockquote>
<br></div></div>
Cool :-)<div class=3D"HOEnZb"><div class=3D"h5"><br>
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
</div></div></blockquote></div><br></div>

--001a1135b7581a0ef8050fe568e9--
