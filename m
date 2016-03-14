Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B26DDE00C44; Mon, 14 Mar 2016 11:10:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75528E008C1
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 11:10:29 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id g203so232575037iof.2
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 11:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=5MomW4J1GQFiAt5opRxOnPWqoChEsohRhu1FOGxvkyM=;
	b=v7UkeAU8wh3I9ACipoPdptLChOjUvwFP5pduwJzU8OyZBHxZ0QEw3ASvIau3NVgX2Z
	9CNP7UOSJKhZ0uiyRiEhtjmEvNr9lZBC9aIJnAa6Qtp07QvHDALh0gm6GXrQPi0X2Nbt
	9x5fpXz+HjhsP9QsHghMMTnRxtqEObbNrec+10JrBX1osWyeIkU+NXkcCBJZe0Qfo2va
	FxfvS03Uw3BZFZaT/7tzWAxrCf3Xvvui6ILQddj7mdXWpggftkWnErS2JIo6EwZhgxl1
	Bov9NhxhpCUk6D8IM4WB5lwtoAN2Lc9rYf0E7q9Lg0sXl8dcnIQuzulkNjUsEm2tIBBb
	IYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=5MomW4J1GQFiAt5opRxOnPWqoChEsohRhu1FOGxvkyM=;
	b=NHJh4VveKU+JDRYIleCyLZQoE3EL1a9Sx5eTK+ecckFGmQnwukwMa0VAEhOjiAOAk6
	ckrIDNt7fZnPFJCUXK68vufq6aAbTKX8pZMJ4KH81N342dltQtBPdPdEkKIDK50msEFO
	tkXUvpptoCzYgx+sa9iSFDssSKUp25BUgq4NbzKYaMBA62r8fGrra4ZAXYohEsLp6b8f
	Yr9YQsUO4TS6Qj7ZtusqQ1NvVud2KzVV7Al646/GutxqOBD6L0bI90sxPurGVpIRntt2
	JiFQ47/xuHcAeDMIFQafwn/fHAVz+9p5fEZakDOUhE2vxh0JeoJsMdf/xXjIYH9C34xL
	YQKg==
X-Gm-Message-State: AD7BkJIK4Tms0hux8SdRt+Z1UMXJxQ5G9jX+QLH3JP4i3jmr3KZK0btZdIhRJEXXiYMfXwbCXKtKxIDW11pEJw==
X-Received: by 10.107.15.153 with SMTP id 25mr24765880iop.3.1457979029059;
	Mon, 14 Mar 2016 11:10:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAF3SDA7Z35icGYqTb16buTUw7EsoNj5+KUaq6nDZbReqbgqQvw@mail.gmail.com>
In-Reply-To: <CAF3SDA7Z35icGYqTb16buTUw7EsoNj5+KUaq6nDZbReqbgqQvw@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 14 Mar 2016 18:10:19 +0000
Message-ID: <CABcZANmWgA=zQ0+DnLvCk5JbPwvWYk0chc7hBAATB-7AaVrQfw@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Two or more _append()'s on same task
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
X-List-Received-Date: Mon, 14 Mar 2016 18:10:34 -0000
Content-Type: multipart/alternative; boundary=001a113ee4fc1dfe62052e0632c7

--001a113ee4fc1dfe62052e0632c7
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 14, 2016 at 10:56 AM Daniel. <danielhilst@gmail.com> wrote:

> Hi all,
>
> I was wondering how OE/Yocto would respond if the same task is appended
> twice.
>
> If I have a .bbclass that already creates a do_install_append() and I
> inherit this class at my recipe, will my do_install_append be aplied:
>
> - Before .bbclass do_install_append()
> - After it
> - Will not be aplied
>
> Now if I declare my do_install_append before the inherit line, will it
> be aplied before the .bbclass's do_install_append?
>
> How Yocto handles this _append stuff?
>

Append/prepend are cumulative, just like +=/+=/.=/=.. *all* appends are
applied, in the order they're seen while parsing.

--001a113ee4fc1dfe62052e0632c7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon=
, Mar 14, 2016 at 10:56 AM Daniel. &lt;<a href=3D"mailto:danielhilst@gmail.=
com">danielhilst@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Hi all,<br>
<br>
I was wondering how OE/Yocto would respond if the same task is appended twi=
ce.<br>
<br>
If I have a .bbclass that already creates a do_install_append() and I<br>
inherit this class at my recipe, will my do_install_append be aplied:<br>
<br>
- Before .bbclass do_install_append()<br>
- After it<br>
- Will not be aplied<br>
<br>
Now if I declare my do_install_append before the inherit line, will it<br>
be aplied before the .bbclass&#39;s do_install_append?<br>
<br>
How Yocto handles this _append stuff?<br></blockquote><div><br></div><div>A=
ppend/prepend are cumulative, just like +=3D/+=3D/.=3D/=3D.. *all* appends =
are applied, in the order they&#39;re seen while parsing.=C2=A0</div></div>=
</div>

--001a113ee4fc1dfe62052e0632c7--
