Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE92AE007C3; Mon, 30 Nov 2015 11:59:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 931F8E005B7
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 11:59:54 -0800 (PST)
Received: by igcto18 with SMTP id to18so79474097igc.0
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 11:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3MsilpO6B+tcDaERZgF/ezex5F9gJ/+gbOeuA6AB5Dw=;
	b=BgjWwOaTkQKKKfMhRYorQMXeeIo/3kEKNs+MmosOhb79B64JZabEIF/6VLvmflse99
	8S81Joi8lt6jFv7Hqf6dW/+KUP8la4yHn66j47nUz9pzfCClqdnrfepfFHw/V9SSqQz2
	kmlrJlHwNGh1jk7awMyV+M4chH0ckkI2gZJE1g40JOkPKNvvFeeWCZLWLxqWUaEBLD33
	12A0DidGAXJsJv+ivtEUsBukcyuUpbk3CymFFt7moTPUsEcW4yLqpIKrb9CgJhyZ5JCS
	xLFuw/JjCARyJSWXjllZRuPcMDChY6zej2nyxY4gRWtFh8nip6VFIOhY62lsvvjXu68P
	D2Fg==
MIME-Version: 1.0
X-Received: by 10.50.155.65 with SMTP id vu1mr23407536igb.11.1448913594301;
	Mon, 30 Nov 2015 11:59:54 -0800 (PST)
Received: by 10.107.12.205 with HTTP; Mon, 30 Nov 2015 11:59:53 -0800 (PST)
Received: by 10.107.12.205 with HTTP; Mon, 30 Nov 2015 11:59:53 -0800 (PST)
In-Reply-To: <CAF5S8SN2wHM39fbLuj+jT5d8mM-e83sey_aJ7vYHa-9=ifzS_A@mail.gmail.com>
References: <CAF5S8SN2wHM39fbLuj+jT5d8mM-e83sey_aJ7vYHa-9=ifzS_A@mail.gmail.com>
Date: Mon, 30 Nov 2015 11:59:53 -0800
Message-ID: <CAMKF1spKsEq+FUCS5wk9Xs5oJo5CrW+PxbkL3wLLoO1OZ9AE1Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
Cc: yocto@yoctoproject.org
Subject: Re: Kernel header generation
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
X-List-Received-Date: Mon, 30 Nov 2015 19:59:58 -0000
Content-Type: multipart/alternative; boundary=001a113464101943fe0525c77cb5

--001a113464101943fe0525c77cb5
Content-Type: text/plain; charset=UTF-8

On Nov 27, 2015 5:48 AM, "Sarayu Krishna Sivanandam" <sarayu@zaikenn.com>
wrote:
>
> Hi ,
>
> I have written a kernel module which i am currently building along with
the yocto kernel but i want to be able to move my code to a different
repository and be able to build it as a stand alone module.
>
> To do so , i will need the kernel headers to be generated from the linux
kernel on yocto . Can you please provide me the steps to build the kernel
headers and be able to install it outside the yocto setup.

You need to look into building it as external module first. Thats totally
between kbuild and your module build system. Once that is in place then you
just write a new recipe for your module and inherit module class in it
mainly doing the build and packaging from OE point. There already are many
such recipes already in meta data
>
> I am using the QorIQ-SDK-V1.8 SDK .
>
> Thanks in advance for your help.
> Thanks and Regards,
> Sarayu K S
> Tech Lead
> Zaikenn Technologies
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113464101943fe0525c77cb5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Nov 27, 2015 5:48 AM, &quot;Sarayu Krishna Sivanandam&quot; &lt;<a href=
=3D"mailto:sarayu@zaikenn.com">sarayu@zaikenn.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi ,=C2=A0<br>
&gt;<br>
&gt; I have written a kernel module which i am currently building along wit=
h the yocto kernel but i want to be able to move my code to a different rep=
ository and be able to build it as a stand alone module.<br>
&gt;<br>
&gt; To do so , i will need the kernel headers to be generated from the lin=
ux kernel on yocto . Can you please provide me the steps to build the kerne=
l headers and be able to install it outside the yocto setup.</p>
<p dir=3D"ltr">You need to look into building it as external module first. =
Thats totally between kbuild and your module build system. Once that is in =
place then you just write a new recipe for your module and inherit module c=
lass in it mainly doing the build and packaging from OE point. There alread=
y are many such recipes already in meta data<br>
&gt;<br>
&gt; I am using the=C2=A0QorIQ-SDK-V1.8 SDK=C2=A0.=C2=A0<br>
&gt;<br>
&gt; Thanks in advance for your help.<br>
&gt; Thanks and Regards,<br>
&gt; Sarayu K S=C2=A0<br>
&gt; Tech Lead=C2=A0<br>
&gt; Zaikenn Technologies<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--001a113464101943fe0525c77cb5--
