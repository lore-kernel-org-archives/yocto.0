Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96E9CE00BEF; Tue, 15 Dec 2015 10:46:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF01BE00985
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 10:45:57 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id n186so39470176wmn.0
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 10:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=j4kQDtfEe4zymdANLdUV0ES25n0nNw/AyynX62P213g=;
	b=szznno4enzI0sXpTvHyxSwz0m53VSAVzq+4tm4kWe/3/rualF1lhxbTHzS4L7HvU4f
	ybEv6cM87PaZ7V8/CAHVE129a4z3tKImJy/BnYuoSIO+MYM0g/aXNvSQiun+MaqKA9qw
	8ZBqukZsZxIc3zpsjqKq5AxUjNwa2a5G8wcVO/TcqhaawCOWoFz+gxk2cK0gPlqUD0h8
	0+sntGoaAnolReiGymrpWqYL5TLoZ5z1niGwHSt8JDvOhNyvH9vyIely0qKTqOeZqr9s
	eO630mJQt3AT5B/SQO+5oM4VC+2bfTSDeaZ5tWVzhon9PPllF1lp7fSBjesfmfPH7mS5
	0MuQ==
MIME-Version: 1.0
X-Received: by 10.194.94.100 with SMTP id db4mr43611357wjb.85.1450205156594;
	Tue, 15 Dec 2015 10:45:56 -0800 (PST)
Received: by 10.27.49.68 with HTTP; Tue, 15 Dec 2015 10:45:56 -0800 (PST)
Received: by 10.27.49.68 with HTTP; Tue, 15 Dec 2015 10:45:56 -0800 (PST)
In-Reply-To: <1450201373.2067.10.camel@settopsurvey.com>
References: <1450201373.2067.10.camel@settopsurvey.com>
Date: Tue, 15 Dec 2015 19:45:56 +0100
Message-ID: <CAALGJZZSsF_xE3w1c=6ajkXFDbr+7_wd0+BN=e283XGZya8dVA@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: simo <sazzalin@settopsurvey.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Power off IC over Yocto
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
X-List-Received-Date: Tue, 15 Dec 2015 18:46:01 -0000
Content-Type: multipart/alternative; boundary=047d7beb945835db620526f433b6

--047d7beb945835db620526f433b6
Content-Type: text/plain; charset=UTF-8

Hi,
Am 15.12.2015 6:45 nachm. schrieb "simo" <sazzalin@settopsurvey.com>:
>
> I am using a Gumtix Overo board and we create and expansion board that
> power Overo and other devices by external power supply IC.
>
> Our expansion board with power supply are connected by I2C bus 2 in
> overo (not the same i2C that TW4030 or tps6595 is connected).
>
> Using the Linux  command shutdown we would like to power off the hole
> system.
> We would like to close the linux and last thing send a command over I2C
> to our power supply IC in order it disconnect the physical power.
>
> Our question is:
>
> Where we have to implement that function?
> Is there any example of it?
I guess you can use
http://lxr.free-electrons.com/source/kernel/reboot.c

You have to create some kernel module doing this or write a kernel patch.

Regards,
Christian
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--047d7beb945835db620526f433b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi,<br>
Am 15.12.2015 6:45 nachm. schrieb &quot;simo&quot; &lt;<a href=3D"mailto:sa=
zzalin@settopsurvey.com">sazzalin@settopsurvey.com</a>&gt;:<br>
&gt;<br>
&gt; I am using a Gumtix Overo board and we create and expansion board that=
<br>
&gt; power Overo and other devices by external power supply IC.<br>
&gt;<br>
&gt; Our expansion board with power supply are connected by I2C bus 2 in<br=
>
&gt; overo (not the same i2C that TW4030 or tps6595 is connected).<br>
&gt;<br>
&gt; Using the Linux=C2=A0 command shutdown we would like to power off the =
hole<br>
&gt; system.<br>
&gt; We would like to close the linux and last thing send a command over I2=
C<br>
&gt; to our power supply IC in order it disconnect the physical power.<br>
&gt;<br>
&gt; Our question is:<br>
&gt;<br>
&gt; Where we have to implement that function?<br>
&gt; Is there any example of it?<br>
I guess you can use <br>
<a href=3D"http://lxr.free-electrons.com/source/kernel/reboot.c">http://lxr=
.free-electrons.com/source/kernel/reboot.c</a></p>
<p dir=3D"ltr">You have to create some kernel module doing this or write a =
kernel patch.</p>
<p dir=3D"ltr">Regards,<br>
Christian<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--047d7beb945835db620526f433b6--
