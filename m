Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EA81E00E95; Tue, 19 Apr 2016 01:46:45 -0700 (PDT)
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
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43FE7E009D7
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 01:46:43 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id u206so17075504wme.1
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 01:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=i2DV+362YoQHLo1g1XPiw2+plDZpNTe4ZSkOVKb2btI=;
	b=aXHULwouz5Wxxe4BY4oAho18vNHCaTnQmmsgj+VR7ZZyQBvwwzSmBPAhcb7Kdz6VCb
	Jowgtux+JRCg8SjrgBqNK7SiwuMpw1Xy5WkayEsdMoox1xAzOHb0POJ84RzkTwIIqtPD
	hFML4abEpstDH0VWcKyG65k7yaSvIsNYLt8W9euATL3/DX81OA4i+Otyx5as5YYlujJi
	N7RQvJI6fjjEjeVbor2wManiMda8CLUeA5nNNrBGVJJa8MNBt/L+qGQHpfI6AdRZF/aB
	TuVtWjV5FxrkZ6jUPOZ9YVokLs2hvQckDK2scU4JHyVbx/9bCwbfxCDMc+H035vztj/k
	4x+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=i2DV+362YoQHLo1g1XPiw2+plDZpNTe4ZSkOVKb2btI=;
	b=JnOF45/yIDxVx/SAIkzCZhi6DldA7sARxgD2FNIMQ4kHC4sW49gF4gYbm4m4NAMXB/
	NErAkdS7FfxX/oFN+4MEMOB30RE/r5u8ohevBJKPRkvxjKYU6+rDTqKzNrrSK7rDymek
	ChTdxuSuVAHciTruUvjKIF/DwCfYE9DZA+1BxZna0YYPjhICBOlGdzF1uEXp5nDRm2HW
	cwVtafhfUwitOOOUd8YvoBLa/QWoi0ZlUgtg9w73FLAC+7wbTCO/x3NAE0gVjEYLwIl5
	yr1ZqH6/jHdFoO0KqdHJHaBVKHARmigsZI3dK7/sHRIS+deIM25jCM5Yn76QoSS7cnCt
	u1/A==
X-Gm-Message-State: AOPr4FURj1IrhAYdXRlWnbaakP5TfPMSrPu5DAGwqPDbjI3lQ0za3YSL+vRKouu/JmvBhxEzF0z7qXVt/o9YNA==
X-Received: by 10.194.58.114 with SMTP id p18mr1716892wjq.84.1461055603023;
	Tue, 19 Apr 2016 01:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAE7FUj=0feapPPozQK_6F-9_-y=RVbLEa1ih-+cuqd--pe3yCA@mail.gmail.com>
In-Reply-To: <CAE7FUj=0feapPPozQK_6F-9_-y=RVbLEa1ih-+cuqd--pe3yCA@mail.gmail.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Tue, 19 Apr 2016 08:46:33 +0000
Message-ID: <CAP2S6e6_j1qjo6v_KrD7sKy7Wcy3XYid7HU9Tvv+OWZub+dOrg@mail.gmail.com>
To: Ivan Ivanov <ivan.h.ivanov99@gmail.com>, yocto@yoctoproject.org
Subject: Re: Use 3G modem on Intel Galileo Gen 2
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
X-List-Received-Date: Tue, 19 Apr 2016 08:46:45 -0000
Content-Type: multipart/alternative; boundary=047d7ba984603725ee0530d28428

--047d7ba984603725ee0530d28428
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ivan,

I've had success connecting my machine to internet with a 3G dongle with
connman and ofono recipes.
Ofono doesn't recognizes every dongle out of the box. I tried the ones I
had and only managed to connect to internet with a "hso" dongle (that would
be the name of the driver I think).
If you get lucky, a few hours playing with the dbus-send command and the
ofono documentation will get you there.
Connman will then switch flawlessly between your Cellular and your Ethernet
connections according to their availability.

Hope this helps.

Regards.


Le mar. 19 avr. 2016 =C3=A0 09:56, Ivan Ivanov <ivan.h.ivanov99@gmail.com> =
a
=C3=A9crit :

> Hello,
>
> I'm working on a project and I use Intel Galileo Gen 2 with Yocto Project
> Linux. I use LAN to connect to Internet but I would want to connect to
> Internet with 3G USB modem.
>
> I tried using Sakis3g to connect my 3G USB modem with my Intel Galileo an=
d
> use Internet through it. But I couldn't install it.
>
> I don't want to use any additional hardware or shields, only through
> software.
>
> Can you suggest and help me to create an Internet connection using 3G USB
> modem?
>
> Best regards,
> Ivan Ivanov
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7ba984603725ee0530d28428
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi Ivan,</div><div><br></div>I&#3=
9;ve had success connecting my machine to internet with a 3G dongle with co=
nnman and ofono recipes. </div>Ofono doesn&#39;t recognizes every dongle ou=
t of the box. I tried the ones I had and only managed to connect to interne=
t with a &quot;hso&quot; dongle (that would be the name of the driver I thi=
nk).<br></div>If you get lucky, a few hours playing with the dbus-send comm=
and and the ofono documentation will get you there.</div>Connman will then =
switch flawlessly between your Cellular and your Ethernet connections accor=
ding to their availability.<br></div><div><br><div></div>Hope this helps.<b=
r><br></div>Regards.<br><div><div><div><div><div><div><div><br></div></div>=
</div></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">Le=C2=A0mar. 19 avr. 2016 =C3=A0=C2=A009:56, Ivan Ivanov &lt;<a hr=
ef=3D"mailto:ivan.h.ivanov99@gmail.com">ivan.h.ivanov99@gmail.com</a>&gt; a=
 =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><span style=3D"font-size:12.8px">Hello,</span><div style=3D"font-size:12.8=
px"><br></div><div style=3D"font-size:12.8px">I&#39;m working on a project =
and I use Intel Galileo Gen 2 with Yocto Project Linux. I use LAN to connec=
t to Internet but I would want to connect to Internet with 3G USB modem.=C2=
=A0</div><div style=3D"font-size:12.8px"><br></div><div style=3D"font-size:=
12.8px">I tried using Sakis3g to connect my 3G USB modem with my Intel Gali=
leo and use Internet through it. But I couldn&#39;t install it.</div><div s=
tyle=3D"font-size:12.8px"><br></div>I don&#39;t want to use any additional =
hardware or shields, only through software.<div style=3D"font-size:12.8px">=
<br></div><div style=3D"font-size:12.8px">Can you suggest and help me to=C2=
=A0create an Internet connection using 3G USB modem?</div><div style=3D"fon=
t-size:12.8px"><br></div><div style=3D"font-size:12.8px">Best regards,</div=
><div style=3D"font-size:12.8px">Ivan Ivanov</div></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--047d7ba984603725ee0530d28428--
