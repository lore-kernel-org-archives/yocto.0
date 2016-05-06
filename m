Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FC7AE00E33; Thu,  5 May 2016 21:11:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F124E00C8D
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 21:10:58 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id r184so54476933qkc.1
	for <yocto@yoctoproject.org>; Thu, 05 May 2016 21:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=xZMbPkAftrims67kv9fuS+xCZOgBf/Z72RluE9plvzA=;
	b=c/UMEhburwZwuycZ0/bxdFsjnUIS0eZvgtnRZt0En7Ny+bXMhF4i185B/6s1trwiJI
	pBckxYxRGhkVk/38yhzVHsfkzvVPG/uaMIdVnkNlRTwYGM7SwZNC+Iz9JREOOtjnJjOI
	DcrwIgKsuxUz0krKcQ/8pGGuUxeVoRf1kOT5zbWp9t9AbmiIABisXh4zAM+VrZemDTCQ
	KlflCYmkC4PjRxqxqo0PNTrhMQgHjYgndrUXeD+IuLO0MUXyfg9S+k6veap3Y0BC9cIr
	RMVHQbkEChjPIbCO7VIA4aiOO5zohsGgJSWjp4KM7nwENiIxGEX8uB2QRaYxl7oAJn3T
	KJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=xZMbPkAftrims67kv9fuS+xCZOgBf/Z72RluE9plvzA=;
	b=CX9IhyFm0cCSVIjGObBbud7YqkRL+HKy5KcpgRw2tgpOwEnwqpTtz3LUtELZ980Yv2
	KzyAO2cDO5MRRUntLg4nzcKwTTT2c9yfvBst162mn1hp1TMKt8cCEptKY79ct71b3OTO
	RCgpkOahPla9SGgHNAWTUocDjHP37pR0wqQNSAWFdePvbgzaHdBfsbeG4k/LsqANRzv6
	msjlnzJEr45OkMSNMNoVEoed+jDvJGGeEyIknb3Njd1qlMViNr6gdwOMF4CUidw0nzgh
	/55iPJ0qeU+gAQB47u+epuGG4y1IOkOO2Y2Wn9YpxPkImAOqjlCTk6xi34xDhtJDwFCQ
	FxhA==
X-Gm-Message-State: AOPr4FWEOP7l3OaA4+gRTtcNOKNAmJloletHvHkWAHPuI6NaH43O64MN56l/zX5afMUoDbrxNIeMwynRgF15jw==
MIME-Version: 1.0
X-Received: by 10.55.200.215 with SMTP id t84mr19197059qkl.41.1462507857418;
	Thu, 05 May 2016 21:10:57 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Thu, 5 May 2016 21:10:57 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Thu, 5 May 2016 21:10:57 -0700 (PDT)
In-Reply-To: <PN1PR01MB03330E00BD2451A3F0D3D736EF7D0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB03339D46A7D7D48583BF087AEF650@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1spbbhuJsxrKg_hW+nrzXn8oG7iXiejDmTxusUgqFebmeQ@mail.gmail.com>
	<PN1PR01MB03335EB964C553EDFD8B3C9BEF790@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
	<6D8F8D7A-41DF-4CF7-8363-059BA95294FB@gmail.com>
	<PN1PR01MB0333D44ABADD6C708D844EEEEF7A0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
	<PN1PR01MB03330E00BD2451A3F0D3D736EF7D0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
Date: Thu, 5 May 2016 21:10:57 -0700
Message-ID: <CAMKF1spR=X3qeU3QyBkQdztB=YpWrrY05pR3omY=P7Qsaf8eBw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Harinath maddelal <Harinath.maddela@inedasystems.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error while buildng SGX
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
X-List-Received-Date: Fri, 06 May 2016 04:11:03 -0000
Content-Type: multipart/alternative; boundary=001a113c259a52a54d053224a57d

--001a113c259a52a54d053224a57d
Content-Type: text/plain; charset=UTF-8

Did you investiagte a bit on the hints that has been provided
On May 5, 2016 8:16 PM, "Harinath maddelal" <
Harinath.maddela@inedasystems.com> wrote:

> Hi
>
> Can you please help me in this
>
> Thanks and Regards,
> Harinath
>
>
> ________________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on
> behalf of Harinath maddelal <Harinath.maddela@inedasystems.com>
> Sent: Tuesday, May 3, 2016 11:13:13 AM
> To: Khem Raj
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Error while buildng SGX
>
> Hi
>
> There is one point that i missed out in the last mail.
>
> We have earlier used yocto-1.7.3 and SGX was build fine.
> Now we migrated to yocto-1.8.1 and the issue occurs
>
> Yocto-1.7.3 uses compiler of version mipsel-poky-linux-gcc-4.9.1 whereas
> Yocto-1.8.1 uses version of mipsel-poky-linux-gcc-4.9.2
>
> Is there any way to mention in the poky, to build Yocto-1.8.1 using
> compiler mipsel-poky-linux-gcc-4.9.1 rather than it using
> mipsel-poky-linux-gcc-4.9.2?
>
>
> Thanks and Regards,
> Harinath
>
>
> ________________________________________
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Monday, May 2, 2016 9:15:58 PM
> To: Harinath maddelal
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Error while buildng SGX
>
> > On May 1, 2016, at 10:44 PM, Harinath maddelal <
> Harinath.maddela@inedasystems.com> wrote:
> >
> > Hi
> >
> >> The same builds fine when i use my local gcc of version 4.8.3.
> >
> > By this i mean we are using our local copy of mips
> toolchain(mips-linux-gnu-gcc-4.8.3)
> >
> > So i have used poky mips toolchain to build the entire poky(except SGX).
> > SGX is built with our local copy of mips toolchain (as it was giving the
> build errors when built with poky mips toolchain, log file attached for
> reference)
>
> SGX build system is probably hardcoding CC/CXX variables and not letting
> environment to override it. When you build with poky, its important
> that CC and CXX variables are effective in the components make system.
>
> >
> > Is there any way to build the complete poky using local mips toolchain
> rather than using the poky mips toolchain? I just want to know how to use
> our local toolchain setup to build entire poky.
>
> you should look into external toolchain recipes, Some samples like
> sourcery toolchain and Linaro toolchain are available as samples.
> I for one would advise to not go this route. Since you are not able to
> take advantage of integration that YP had done using internal
> toolchain.
>
> >
> > Kindly help me in this regard
> >
> > Thanks and Regards,
> > Harinath
> >
> >
> > ________________________________________
> > From: Khem Raj <raj.khem@gmail.com>
> > Sent: Saturday, April 30, 2016 7:41:40 AM
> > To: Harinath maddelal
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Error while buildng SGX
> >
> > On Thu, Apr 28, 2016 at 6:34 AM, Harinath maddelal
> > <Harinath.maddela@inedasystems.com> wrote:
> >> Hi all,
> >>
> >>
> >> When i build sgx using yocto, im getting following errors.
> >>
> >> The same builds fine when i use my local gcc of version 4.8.3.
> >>
> >>
> >> I have used 1.8.1 Yocto its using 4.9.2 gcc.
> >>
> >>
> >> Can you please help me resolve the issue. Thanks in advance
> >>
> >>
> >> Following is the console build error log
> >
> > Please provide compiler cmdline for the failing compile, most probably
> > its due to messed up -isystem
> > on cmdline
> >
> > ______________________________________________________________________
> > This email has been scanned by the Symantec Email Security.cloud service.
> > For more information please visit http://www.symanteccloud.com
> > ______________________________________________________________________
> > <log.do_compile>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
> ______________________________________________________________________
> This email has been scanned by the Symantec Email Security.cloud service.
> For more information please visit http://www.symanteccloud.com
> ______________________________________________________________________
>

--001a113c259a52a54d053224a57d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Did you investiagte a bit on the hints that has been provide=
d</p>
<div class=3D"gmail_quote">On May 5, 2016 8:16 PM, &quot;Harinath maddelal&=
quot; &lt;<a href=3D"mailto:Harinath.maddela@inedasystems.com">Harinath.mad=
dela@inedasystems.com</a>&gt; wrote:<br type=3D"attribution"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">Hi<br>
<br>
Can you please help me in this<br>
<br>
Thanks and Regards,<br>
Harinath<br>
<br>
<br>
________________________________________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto=
-bounces@yoctoproject.org</a>&gt; on behalf of Harinath maddelal &lt;<a hre=
f=3D"mailto:Harinath.maddela@inedasystems.com">Harinath.maddela@inedasystem=
s.com</a>&gt;<br>
Sent: Tuesday, May 3, 2016 11:13:13 AM<br>
To: Khem Raj<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] Error while buildng SGX<br>
<br>
Hi<br>
<br>
There is one point that i missed out in the last mail.<br>
<br>
We have earlier used yocto-1.7.3 and SGX was build fine.<br>
Now we migrated to yocto-1.8.1 and the issue occurs<br>
<br>
Yocto-1.7.3 uses compiler of version mipsel-poky-linux-gcc-4.9.1 whereas Yo=
cto-1.8.1 uses version of mipsel-poky-linux-gcc-4.9.2<br>
<br>
Is there any way to mention in the poky, to build Yocto-1.8.1 using compile=
r mipsel-poky-linux-gcc-4.9.1 rather than it using mipsel-poky-linux-gcc-4.=
9.2?<br>
<br>
<br>
Thanks and Regards,<br>
Harinath<br>
<br>
<br>
________________________________________<br>
From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com=
</a>&gt;<br>
Sent: Monday, May 2, 2016 9:15:58 PM<br>
To: Harinath maddelal<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] Error while buildng SGX<br>
<br>
&gt; On May 1, 2016, at 10:44 PM, Harinath maddelal &lt;<a href=3D"mailto:H=
arinath.maddela@inedasystems.com">Harinath.maddela@inedasystems.com</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; Hi<br>
&gt;<br>
&gt;&gt; The same builds fine when i use my local gcc of version 4.8.3.<br>
&gt;<br>
&gt; By this i mean we are using our local copy of mips toolchain(mips-linu=
x-gnu-gcc-4.8.3)<br>
&gt;<br>
&gt; So i have used poky mips toolchain to build the entire poky(except SGX=
).<br>
&gt; SGX is built with our local copy of mips toolchain (as it was giving t=
he build errors when built with poky mips toolchain, log file attached for =
reference)<br>
<br>
SGX build system is probably hardcoding CC/CXX variables and not letting en=
vironment to override it. When you build with poky, its important<br>
that CC and CXX variables are effective in the components make system.<br>
<br>
&gt;<br>
&gt; Is there any way to build the complete poky using local mips toolchain=
 rather than using the poky mips toolchain? I just want to know how to use =
our local toolchain setup to build entire poky.<br>
<br>
you should look into external toolchain recipes, Some samples like sourcery=
 toolchain and Linaro toolchain are available as samples.<br>
I for one would advise to not go this route. Since you are not able to take=
 advantage of integration that YP had done using internal<br>
toolchain.<br>
<br>
&gt;<br>
&gt; Kindly help me in this regard<br>
&gt;<br>
&gt; Thanks and Regards,<br>
&gt; Harinath<br>
&gt;<br>
&gt;<br>
&gt; ________________________________________<br>
&gt; From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmai=
l.com</a>&gt;<br>
&gt; Sent: Saturday, April 30, 2016 7:41:40 AM<br>
&gt; To: Harinath maddelal<br>
&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: Re: [yocto] Error while buildng SGX<br>
&gt;<br>
&gt; On Thu, Apr 28, 2016 at 6:34 AM, Harinath maddelal<br>
&gt; &lt;<a href=3D"mailto:Harinath.maddela@inedasystems.com">Harinath.madd=
ela@inedasystems.com</a>&gt; wrote:<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; When i build sgx using yocto, im getting following errors.<br>
&gt;&gt;<br>
&gt;&gt; The same builds fine when i use my local gcc of version 4.8.3.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I have used 1.8.1 Yocto its using 4.9.2 gcc.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Can you please help me resolve the issue. Thanks in advance<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Following is the console build error log<br>
&gt;<br>
&gt; Please provide compiler cmdline for the failing compile, most probably=
<br>
&gt; its due to messed up -isystem<br>
&gt; on cmdline<br>
&gt;<br>
&gt; ______________________________________________________________________=
<br>
&gt; This email has been scanned by the Symantec Email Security.cloud servi=
ce.<br>
&gt; For more information please visit <a href=3D"http://www.symanteccloud.=
com" rel=3D"noreferrer" target=3D"_blank">http://www.symanteccloud.com</a><=
br>
&gt; ______________________________________________________________________=
<br>
&gt; &lt;log.do_compile&gt;<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
______________________________________________________________________<br>
This email has been scanned by the Symantec Email Security.cloud service.<b=
r>
For more information please visit <a href=3D"http://www.symanteccloud.com" =
rel=3D"noreferrer" target=3D"_blank">http://www.symanteccloud.com</a><br>
______________________________________________________________________<br>
</blockquote></div>

--001a113c259a52a54d053224a57d--
