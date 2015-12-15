Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2B47E00C34; Tue, 15 Dec 2015 10:47:37 -0800 (PST)
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
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F056FE00C1E
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 10:47:00 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id n186so178465497wmn.1
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 10:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=do25K03RgB2nOp3PueMLhzOkxlAE4ITsoU3OIry+q2A=;
	b=L+BxidIk1cC3ilFOqzUJx3+tXc1N2rORGGvGMBKIo/ecMAB9QlYhwWeo/jL+Lo5pHB
	t7Ql06rV8Nck2Xc7BLwda3tYNZvPC0t+yf2UnZfHaaeY0WVIsC8zKU7JxU1ukmZsn/hv
	XvTsix+R3lVRK5G7/mFKjVpRA4RublIs3ZXcP+QzF66bKlGejpYuAE9KZBuKU8k9mOEC
	ZVnNXA+k6/g2uEkpPcufsiPJnI4g/1UlIFRcxXh7N4PNrv0fgMqYPC/n/ozvoQYVvyVN
	2Fyz0o6v3WjLcJF4TO7AptlzOknAxfJK2yjONNMGdikb7g11Cx3FF6BKIiE/T2KkG2tM
	O+rg==
MIME-Version: 1.0
X-Received: by 10.194.178.135 with SMTP id cy7mr45676546wjc.61.1450205220022; 
	Tue, 15 Dec 2015 10:47:00 -0800 (PST)
Received: by 10.27.49.68 with HTTP; Tue, 15 Dec 2015 10:46:59 -0800 (PST)
Received: by 10.27.49.68 with HTTP; Tue, 15 Dec 2015 10:46:59 -0800 (PST)
In-Reply-To: <CAALGJZZSsF_xE3w1c=6ajkXFDbr+7_wd0+BN=e283XGZya8dVA@mail.gmail.com>
References: <1450201373.2067.10.camel@settopsurvey.com>
	<CAALGJZZSsF_xE3w1c=6ajkXFDbr+7_wd0+BN=e283XGZya8dVA@mail.gmail.com>
Date: Tue, 15 Dec 2015 19:46:59 +0100
Message-ID: <CAALGJZbV0Afzj3=YD1pqVrtbQ4ugcMiVK3dLj6VRM57Y+gxcTg@mail.gmail.com>
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
X-List-Received-Date: Tue, 15 Dec 2015 18:47:37 -0000
Content-Type: multipart/alternative; boundary=047d7b86c84efdb41b0526f4362a

--047d7b86c84efdb41b0526f4362a
Content-Type: text/plain; charset=UTF-8

Am 15.12.2015 7:45 nachm. schrieb "Christian Ege" <k4230r6@gmail.com>:
>
> Hi,
>
> Am 15.12.2015 6:45 nachm. schrieb "simo" <sazzalin@settopsurvey.com>:
> >
> > I am using a Gumtix Overo board and we create and expansion board that
> > power Overo and other devices by external power supply IC.
> >
> > Our expansion board with power supply are connected by I2C bus 2 in
> > overo (not the same i2C that TW4030 or tps6595 is connected).
> >
> > Using the Linux  command shutdown we would like to power off the hole
> > system.
> > We would like to close the linux and last thing send a command over I2C
> > to our power supply IC in order it disconnect the physical power.
> >
> > Our question is:
> >
> > Where we have to implement that function?
> > Is there any example of it?
> I guess you can use
> http://lxr.free-electrons.com/source/kernel/reboot.c
>
register_reboot_notifier is your friend
> You have to create some kernel module doing this or write a kernel patch.
>
> Regards,
> Christian
>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

--047d7b86c84efdb41b0526f4362a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 15.12.2015 7:45 nachm. schrieb &quot;Christian Ege&quot; &lt;<a href=3D"=
mailto:k4230r6@gmail.com">k4230r6@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; Am 15.12.2015 6:45 nachm. schrieb &quot;simo&quot; &lt;<a href=3D"mail=
to:sazzalin@settopsurvey.com">sazzalin@settopsurvey.com</a>&gt;:<br>
&gt; &gt;<br>
&gt; &gt; I am using a Gumtix Overo board and we create and expansion board=
 that<br>
&gt; &gt; power Overo and other devices by external power supply IC.<br>
&gt; &gt;<br>
&gt; &gt; Our expansion board with power supply are connected by I2C bus 2 =
in<br>
&gt; &gt; overo (not the same i2C that TW4030 or tps6595 is connected).<br>
&gt; &gt;<br>
&gt; &gt; Using the Linux=C2=A0 command shutdown we would like to power off=
 the hole<br>
&gt; &gt; system.<br>
&gt; &gt; We would like to close the linux and last thing send a command ov=
er I2C<br>
&gt; &gt; to our power supply IC in order it disconnect the physical power.=
<br>
&gt; &gt;<br>
&gt; &gt; Our question is:<br>
&gt; &gt;<br>
&gt; &gt; Where we have to implement that function?<br>
&gt; &gt; Is there any example of it?<br>
&gt; I guess you can use <br>
&gt; <a href=3D"http://lxr.free-electrons.com/source/kernel/reboot.c">http:=
//lxr.free-electrons.com/source/kernel/reboot.c</a><br>
&gt;<br>
register_reboot_notifier is your friend<br>
&gt; You have to create some kernel module doing this or write a kernel pat=
ch.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Christian<br>
&gt;<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https:/=
/lists.yoctoproject.org/listinfo/yocto</a><br>
</p>

--047d7b86c84efdb41b0526f4362a--
