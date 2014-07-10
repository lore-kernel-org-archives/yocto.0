Return-Path: <gnichimed@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4D0CE006F1; Thu, 10 Jul 2014 10:35:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gnichimed[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B1A1E00572;
	Thu, 10 Jul 2014 10:34:55 -0700 (PDT)
Received: by mail-qa0-f46.google.com with SMTP id v10so2882004qac.33
	for <multiple recipients>; Thu, 10 Jul 2014 10:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=H/bGFGqKTs2773Fqyib56s0Fv3Pm02C87fBBoFjMfBc=;
	b=vjVJVeLCD9rVLhbnQKmGgxSatB1WmC0vEQ5Q4rGNwf0I0cwGZNvk8l+7M/vPprAspQ
	GxLGSnYjWXq2ji1pkkiZLbLBwVT1vWHMslZIXl3laGO5Nyfix2k6aQSEWuhGi/Kyeou9
	QK94ibPH45ywUd4vRsQbq/ypNJBpm2cK65JCC2/rU5l11cHpA+2Wlg6Kh/MoWs/bDjTI
	+NXP+gxMhfrcfdHw6kuAm2HU2KfNp97BmZMLEBE82qZOXfp5s8N+ZqmQXIiILBUJx5Ot
	RMMoCkfqfI/o3L02O1MqxHUOt+T7fZ7Lh6gfYbSNO93UZfE7ol4mBwhpNR6FB1VH9c32
	FTyQ==
MIME-Version: 1.0
X-Received: by 10.229.82.74 with SMTP id a10mr3450374qcl.21.1405013689561;
	Thu, 10 Jul 2014 10:34:49 -0700 (PDT)
Received: by 10.224.209.1 with HTTP; Thu, 10 Jul 2014 10:34:47 -0700 (PDT)
In-Reply-To: <53BEA7C5.5040704@linaro.org>
References: <CAGeG0kYVh+UTb8Uqqn8aqoMFb=kFJqJWta-0VzYvK1Y_BuMT-A@mail.gmail.com>
	<53BE8E5F.7000806@linaro.org>
	<CAGeG0kZMiqdEMzfwdAi4W+AdaHbrb9+deYQwrk1jUSc1wgUqaA@mail.gmail.com>
	<53BEA7C5.5040704@linaro.org>
Date: Thu, 10 Jul 2014 18:34:47 +0100
Message-ID: <CAGeG0kbCRGtAvx6vC1M3oDJk2MPUR1YmXe5vAbRzDCaGkQpVBw@mail.gmail.com>
From: Gnichi Mohamed <gnichimed@gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>, yocto@yoctoproject.org
Cc: meta-freescale@yoctoproject.org
Subject: Re: [meta-freescale] configuring kernel for imx233
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
X-List-Received-Date: Thu, 10 Jul 2014 17:35:04 -0000
Content-Type: multipart/alternative; boundary=001a1134a7bce623d304fdda3d80

--001a1134a7bce623d304fdda3d80
Content-Type: text/plain; charset=UTF-8

Hi Guys,
Thank you Trevor for your interest
Regards



2014-07-10 15:48 GMT+01:00 Trevor Woerner <trevor.woerner@linaro.org>:

> On 07/10/14 09:05, Gnichi Mohamed wrote:
> > I resolved this issue by redirecting the terminal to xterm instead of
> > konsole or yakuake
> > i added this line to my local.conf
> > OE_TERMINAL = "xterm"
>
> That's great to hear. Would you like to update your email on the Yocto
> mailing list too so that others can benefit from your solution?
>

--001a1134a7bce623d304fdda3d80
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Guys,<br></div>Thank you Trevor for your inte=
rest<br></div>Regards<br><div><br><div class=3D"gmail_extra"><br><br><div c=
lass=3D"gmail_quote">2014-07-10 15:48 GMT+01:00 Trevor Woerner <span dir=3D=
"ltr">&lt;<a href=3D"mailto:trevor.woerner@linaro.org" target=3D"_blank">tr=
evor.woerner@linaro.org</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 07/10/14 09:05, Gnichi Mo=
hamed wrote:<br>
&gt; I resolved this issue by redirecting the terminal to xterm instead of<=
br>
&gt; konsole or yakuake<br>
&gt; i added this line to my local.conf<br>
&gt; OE_TERMINAL =3D &quot;xterm&quot;<br>
<br>
</div>That&#39;s great to hear. Would you like to update your email on the =
Yocto<br>
mailing list too so that others can benefit from your solution?<br>
</blockquote></div><br></div></div></div>

--001a1134a7bce623d304fdda3d80--
