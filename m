Return-Path: <andrew.james77777@gmail.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FD87E004F6
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 08:47:51 -0800 (PST)
Received: by mail-qa0-f53.google.com with SMTP id j5so5794640qaq.5
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 08:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FqQCzbE48LgQ45l3REK2IkgPYivMWg2kBe8Roeb4nQI=;
	b=TMp2p6jMTvXEaYxkjwj7r6/amxo3v7vuibiw/CwtowCP/dMNDofUqz1jJ2rvt5MsRC
	G+5Db7apM/TZWqvwxfHP+qnvC4B9f9YuSmZVQeHTSnYtZtyAeWV3D22X/phkFRvksveY
	70X18Hi9HZxEcTAGj+u5Cll6qtPhhnNo1s2XpC19iW3BBcsvv5b2rHoAIMq1AXqnuFKb
	OQ4ftVnMrDuVvmC7rXfv9Z8fYp4Zh7CEGzhHFuzXYWWm3XNXRSww7gae/y/FQP3nScP/
	FmMrhYWgQjdGxOVrl6MGjF2uVzYScjlJGmwctqhmh+kbjt44jxu99QOlgUqy6OwO8NDr
	3/RA==
MIME-Version: 1.0
X-Received: by 10.224.94.8 with SMTP id x8mr39463116qam.1.1385311670732; Sun,
	24 Nov 2013 08:47:50 -0800 (PST)
Received: by 10.140.51.198 with HTTP; Sun, 24 Nov 2013 08:47:50 -0800 (PST)
Received: by 10.140.51.198 with HTTP; Sun, 24 Nov 2013 08:47:50 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1311230555380.9634@oneiric>
References: <alpine.DEB.2.02.1311230555380.9634@oneiric>
Date: Sun, 24 Nov 2013 16:47:50 +0000
Message-ID: <CAACeMcJMQ6N6NYBSttSCX3D63XJ=k8MgW8b0dV0YdzQUbgaatg@mail.gmail.com>
From: Andrew James <andrew.james77777@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ksize.py and dirsize.py scripts not in dora tarball, is that deliberate?
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
X-List-Received-Date: Sun, 24 Nov 2013 16:47:52 -0000
Content-Type: multipart/alternative; boundary=047d7b6761f609900004ebef02d5

--047d7b6761f609900004ebef02d5
Content-Type: text/plain; charset=ISO-8859-1

Avv
On 23 Nov 2013 11:00, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:

>
>   current dev manual:
>
>
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#understand-what-gives-your-image-size
>
> claims:
>
> "To help you see where you currently are with kernel and root
> filesystem sizes, you can use two tools found in the Source Directory
> in the scripts directory:
>
> ksize.py: Reports component sizes for the kernel build objects.
>
> dirsize.py: Reports component sizes for the root filesystem."
>
>   however, the current dora tarball doesn't contain these scripts,
> while oe-core contains them more specifically under the scripts/tiny/
> subdirectory. thoughts?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b6761f609900004ebef02d5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Avv</p>
<div class=3D"gmail_quote">On 23 Nov 2013 11:00, &quot;Robert P. J. Day&quo=
t; &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&g=
t; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
=A0 current dev manual:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.ht=
ml#understand-what-gives-your-image-size" target=3D"_blank">http://www.yoct=
oproject.org/docs/latest/dev-manual/dev-manual.html#understand-what-gives-y=
our-image-size</a><br>

<br>
claims:<br>
<br>
&quot;To help you see where you currently are with kernel and root<br>
filesystem sizes, you can use two tools found in the Source Directory<br>
in the scripts directory:<br>
<br>
ksize.py: Reports component sizes for the kernel build objects.<br>
<br>
dirsize.py: Reports component sizes for the root filesystem.&quot;<br>
<br>
=A0 however, the current dora tarball doesn&#39;t contain these scripts,<br=
>
while oe-core contains them more specifically under the scripts/tiny/<br>
subdirectory. thoughts?<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--047d7b6761f609900004ebef02d5--
