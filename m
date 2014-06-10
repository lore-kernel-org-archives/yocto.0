Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D63FE00BBA; Tue, 10 Jun 2014 04:25:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE, MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	*  1.2 MISSING_HEADERS Missing To: header
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73B06E00B0B
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 04:25:37 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id tp5so5315867ieb.22
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 04:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=tz/CGWH6UdGZcN8P4Tsf3J5RUb5aqNgpIRjS9mT8kXo=;
	b=PU2LkpMuCEUZzO9Y9EEuPBySaUawaYbMOFPXU8KRLkI/jRd5S4VcHsCf6OhS7l/i62
	HTYC+QdeAOMhlb1t9DTdR+DdIZ8gtseU1Z+G8TtQnvqC4SoBBM7V0vM1UNZ5PTBp+Oql
	zyghKtb9w7IvNfadRTWvKuJ7HsDeVZmDtGcEQQtdyd2tm68+bQqxzSTMBjp2abKtLIL4
	x6AbiMPPGIJu9xKXLFEavbHF1KPogPm0ia9WXba5RlK6o2K2M0wdBOcx8cVXm4jdJH2g
	v9g8ZZ/+GazthENEE8etK6ghQjlXRI2zAb35XHgYN0f3n/UpxoF5fODsxLag4/Fu76f9
	axzA==
MIME-Version: 1.0
X-Received: by 10.50.134.66 with SMTP id pi2mt25030283igb.25.1402399536850;
	Tue, 10 Jun 2014 04:25:36 -0700 (PDT)
Received: by 10.64.252.166 with HTTP; Tue, 10 Jun 2014 04:25:36 -0700 (PDT)
Received: by 10.64.252.166 with HTTP; Tue, 10 Jun 2014 04:25:36 -0700 (PDT)
In-Reply-To: <20140610103736.GC24880@gmail.com>
References: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
	<20140610103736.GC24880@gmail.com>
Date: Tue, 10 Jun 2014 13:25:36 +0200
Message-ID: <CAALGJZaBFLsX3Knt35fGkvxh0uTz0-TQMZnveQh7paPZ9h438g@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Why use Yocto?
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
X-List-Received-Date: Tue, 10 Jun 2014 11:25:47 -0000
Content-Type: multipart/alternative; boundary=047d7b3a9cba3b94a004fb799637

--047d7b3a9cba3b94a004fb799637
Content-Type: text/plain; charset=UTF-8

Am 10.06.2014 12:38 schrieb "Paul Barker" <paul@paulbarker.me.uk>:
>
> On Mon, Jun 09, 2014 at 03:52:50PM -0700, Marlon Smith wrote:
> > Hi everyone,
> >
> > I'm developing a product that will run on a custom i.MX6 board and I'm
> > trying to decide whether to use Yocto or Ubuntu (there's a version of
> > Ubuntu packaged for the Wandboard that will run on our board).  The
> > board will run our own custom app, and we'll modify the Linux kernel to
> > support our hardware.
> >
> > Ubuntu seems like it would be ready to go - just put it on an SD card,
> > boot the board, compile the app and create a new SD card image from the
> > result to use for manufacturing.
> >
> > Yocto seems like it would be easier to remove unneeded packages from,
> > and easier to cross-compile the application for.  This means we could
> > have a smaller SD card image in the end.
> >
> > What are your thoughts on this?
>
> Philip has already mentioned license compliance in his reply, I'd like to
add a
> couple of other points:
>
> - In addition to a smaller image, you should have less services running by
>   default and so lower power usage.
>
This is because yocto splits documentation and not needed stuff in separate
packages. In ubuntu you have to remove a lot of stuff.
> - It's much easier to do consistent, reproducible image builds which
include
This us a major feature. You can build the whole image by Jenkins or any
other build server.
>   your own packages. Rather than having a series of steps such as
installing
>   Ubuntu on an SD card, booting, installing required additional packages,
>   downloading your source code to the card, building and then installing,
you
>   just do 'bitbake my-image' and everything you need is encoded in recipe
files
>   which you can keep under version control. There's less chance for human
error
>   to creep in.
>
> - You don't need to install the toolchain on the board itself, you can do
the
You can even create your own toolchain with all needed headers. And it is
damn easy to remote debug your application from eclipse for example.
>   system build on a separate machine and not pollute the SD card image
with the
>   history of building your software. It saves you the time of going
through and
>   removing the things you need to build your software but aren't needed
to run
>   it, which you'll probably end up doing to reduce the image size.
>
> - You'll have a great community of people doing similar things with the
Yocto
+1
>   Project. I don't know of a similar community for modifying Ubuntu SD
card
>   images in this fashion.
>
And you can fine tune all those recipe and build for example a hard float
or a softfloat image.

It is a little bit hard to get started but if you get familiar with this.
There is no alternative :)

--
Christian Ege
> Hope this helps,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b3a9cba3b94a004fb799637
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 10.06.2014 12:38 schrieb &quot;Paul Barker&quot; &lt;<a href=3D"mailto:p=
aul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt;:<br>
&gt;<br>
&gt; On Mon, Jun 09, 2014 at 03:52:50PM -0700, Marlon Smith wrote:<br>
&gt; &gt; Hi everyone,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m developing a product that will run on a custom i.MX6 boar=
d and I&#39;m<br>
&gt; &gt; trying to decide whether to use Yocto or Ubuntu (there&#39;s a ve=
rsion of<br>
&gt; &gt; Ubuntu packaged for the Wandboard that will run on our board). =
=C2=A0The<br>
&gt; &gt; board will run our own custom app, and we&#39;ll modify the Linux=
 kernel to<br>
&gt; &gt; support our hardware.<br>
&gt; &gt;<br>
&gt; &gt; Ubuntu seems like it would be ready to go - just put it on an SD =
card,<br>
&gt; &gt; boot the board, compile the app and create a new SD card image fr=
om the<br>
&gt; &gt; result to use for manufacturing.<br>
&gt; &gt;<br>
&gt; &gt; Yocto seems like it would be easier to remove unneeded packages f=
rom,<br>
&gt; &gt; and easier to cross-compile the application for. =C2=A0This means=
 we could<br>
&gt; &gt; have a smaller SD card image in the end.<br>
&gt; &gt;<br>
&gt; &gt; What are your thoughts on this?<br>
&gt;<br>
&gt; Philip has already mentioned license compliance in his reply, I&#39;d =
like to add a<br>
&gt; couple of other points:<br>
&gt;<br>
&gt; - In addition to a smaller image, you should have less services runnin=
g by<br>
&gt; =C2=A0 default and so lower power usage.<br>
&gt;<br>
This is because yocto splits documentation and not needed stuff in separate=
 packages. In ubuntu you have to remove a lot of stuff.<br>
&gt; - It&#39;s much easier to do consistent, reproducible image builds whi=
ch include<br>
This us a major feature. You can build the whole image by Jenkins or any ot=
her build server.<br>
&gt; =C2=A0 your own packages. Rather than having a series of steps such as=
 installing<br>
&gt; =C2=A0 Ubuntu on an SD card, booting, installing required additional p=
ackages,<br>
&gt; =C2=A0 downloading your source code to the card, building and then ins=
talling, you<br>
&gt; =C2=A0 just do &#39;bitbake my-image&#39; and everything you need is e=
ncoded in recipe files<br>
&gt; =C2=A0 which you can keep under version control. There&#39;s less chan=
ce for human error<br>
&gt; =C2=A0 to creep in.<br>
&gt;<br>
&gt; - You don&#39;t need to install the toolchain on the board itself, you=
 can do the<br>
You can even create your own toolchain with all needed headers. And it is d=
amn easy to remote debug your application from eclipse for example.<br>
&gt; =C2=A0 system build on a separate machine and not pollute the SD card =
image with the<br>
&gt; =C2=A0 history of building your software. It saves you the time of goi=
ng through and<br>
&gt; =C2=A0 removing the things you need to build your software but aren&#3=
9;t needed to run<br>
&gt; =C2=A0 it, which you&#39;ll probably end up doing to reduce the image =
size.<br>
&gt;<br>
&gt; - You&#39;ll have a great community of people doing similar things wit=
h the Yocto<br>
+1<br>
&gt; =C2=A0 Project. I don&#39;t know of a similar community for modifying =
Ubuntu SD card<br>
&gt; =C2=A0 images in this fashion.<br>
&gt;<br>
And you can fine tune all those recipe and build for example a hard float o=
r a softfloat image. </p>
<p dir=3D"ltr">It is a little bit hard to get started but if you get famili=
ar with this. There is no alternative :)</p>
<p dir=3D"ltr">--<br>
Christian Ege<br>
&gt; Hope this helps,<br>
&gt;<br>
&gt; --<br>
&gt; Paul Barker<br>
&gt;<br>
&gt; Email: <a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk<=
/a><br>
&gt; <a href=3D"http://www.paulbarker.me.uk">http://www.paulbarker.me.uk</a=
><br>
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

--047d7b3a9cba3b94a004fb799637--
