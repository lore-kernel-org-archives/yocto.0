Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3A63E00830; Sat,  8 Nov 2014 06:23:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, URIBL_RHS_DOB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	*  1.5 URIBL_RHS_DOB Contains an URI of a new domain (Day Old Bread)
	*      [URIs: ripperd.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C9EAE007BA
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 06:23:45 -0800 (PST)
Received: by mail-oi0-f54.google.com with SMTP id a141so3684125oig.27
	for <yocto@yoctoproject.org>; Sat, 08 Nov 2014 06:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=chvYYzOsHYTvKlfdLb7XbcgNAbSUCBUNjMBAm6EIgpw=;
	b=XWQBe+R0dmfP0KkcV0mMbSrLRMSnSG562slu56zaP+UUUGj0HtyvG6wnI4p7LmRJCo
	MpmDpj23TenV9JkYDC54N49OpbQ90Ypdg21tCjsqvLqqIf7n2NDi0r4S/tSTRu1F4uOY
	rpol3T01pTj409Wo0YVdZHVVVr8T/faENQt2hUhyNmcDCFi749LvcfP/aiI2Ju+5catX
	b68R+DIIUqdb7FFOqPfcyED+rrFEum32zfHKoz/l6QUgdLhqdog7AfMHyGSClIDqn21f
	kmT25Q3bNslHDqk+kb5ovT8t+sNrRQaa6AyrWX6o7rkqSoLjq54NNL4KD7nz0zkEy2c/
	tY1A==
MIME-Version: 1.0
X-Received: by 10.60.94.73 with SMTP id da9mr15895692oeb.10.1415456624400;
	Sat, 08 Nov 2014 06:23:44 -0800 (PST)
Received: by 10.60.166.109 with HTTP; Sat, 8 Nov 2014 06:23:44 -0800 (PST)
Received: by 10.60.166.109 with HTTP; Sat, 8 Nov 2014 06:23:44 -0800 (PST)
In-Reply-To: <545E21EA.9040403@ripperd.com>
References: <545E21EA.9040403@ripperd.com>
Date: Sat, 8 Nov 2014 09:23:44 -0500
Message-ID: <CAFZh4h_rar=t5MV5jsEsoZ6YPx04jVx9QkTq-SJV5jmXk6oUqw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Dean <dean@ripperd.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build optimization question
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
X-List-Received-Date: Sat, 08 Nov 2014 14:23:56 -0000
Content-Type: multipart/alternative; boundary=089e012291764ae160050759add3

--089e012291764ae160050759add3
Content-Type: text/plain; charset=ISO-8859-1

On Nov 8, 2014 9:02 AM, "Dean" <dean@ripperd.com> wrote:
>
> So I am using core-image-minimal and trying to shrink things as much as
possible for boot speed. I wrap the bitbake command in some other commands
to basically extract the image and then attach it to a kernel as a ramdisk.
So the size of the image is critical to boot speed.
>
> In some of my custom packages I have used -Os in the gcc command line.
> Is there a way to set this globally for all the packages built into the
image?
>
> Any other hints or tips to reduce the size of the build? Or potential
changes to u-boot to make it load faster? This is running on a beaglebone
black.
>
>
> Thanks,
> Dean
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

... I've been noticing over the last few releases that core - image -
minimal isn't so minimal anymore.  Its been picking up weight as it ages
(like me).

I'm planning to just start excluding some of the packages in it ... I don't
need sound, wireless, Bluetooth etc.

Regards,

Brian

--089e012291764ae160050759add3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Nov 8, 2014 9:02 AM, &quot;Dean&quot; &lt;<a href=3D"mailto:dean@ripperd=
.com">dean@ripperd.com</a>&gt; wrote:<br>
&gt;<br>
&gt; So I am using core-image-minimal and trying to shrink things as much a=
s possible for boot speed. I wrap the bitbake command in some other command=
s to basically extract the image and then attach it to a kernel as a ramdis=
k. So the size of the image is critical to boot speed.<br>
&gt;<br>
&gt; In some of my custom packages I have used -Os in the gcc command line.=
<br>
&gt; Is there a way to set this globally for all the packages built into th=
e image?<br>
&gt;<br>
&gt; Any other hints or tips to reduce the size of the build? Or potential =
changes to u-boot to make it load faster? This is running on a beaglebone b=
lack.<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Dean<br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a></p>
<p dir=3D"ltr">... I&#39;ve been noticing over the last few releases that c=
ore - image - minimal isn&#39;t so minimal anymore.=A0 Its been picking up =
weight as it ages (like me).</p>
<p dir=3D"ltr">I&#39;m planning to just start excluding some of the package=
s in it ... I don&#39;t need sound, wireless, Bluetooth etc.</p>
<p dir=3D"ltr">Regards,</p>
<p dir=3D"ltr">Brian<br>
</p>

--089e012291764ae160050759add3--
