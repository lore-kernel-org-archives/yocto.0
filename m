Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74964E00949; Wed, 22 Apr 2015 02:07:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A56A7E003A8
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 02:07:44 -0700 (PDT)
Received: by widdi4 with SMTP id di4so169398813wid.0
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 02:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BRCNh4kn0COarOqNbfLt7j7g5jr6q7QzrvPIohmvssQ=;
	b=NFlXxj3bfqilykah4La7zIRJvgSPF0i/O5INop30EZKXDuR2eSrt8fTg9NIolG3R4f
	WNUr11J7bhHvVblts/0Ar3qKazMA4gmQTOsLh1XJuKo5aTHPztMThv0blQruU+ASsKPC
	tAGxygl4I1shcH0EJzsxwbPESjCMs2mA28LpRze6PlpWIWL0joNP76t5IXA9CT50bbQp
	H0UmmF04re/6bpg5lcB01sIuVILtfczNZg3shHvy6t+w/JnySFDTU26bRZOR2I0KbpHK
	dM5USGCMYwfwnm2QEcsXC2kNYlDJmJvAOaqg1aEwn6pMTcqzQPO8Ukzcpto7AarynQvW
	rTBQ==
MIME-Version: 1.0
X-Received: by 10.194.234.38 with SMTP id ub6mr11329378wjc.9.1429693663967;
	Wed, 22 Apr 2015 02:07:43 -0700 (PDT)
Received: by 10.194.187.116 with HTTP; Wed, 22 Apr 2015 02:07:43 -0700 (PDT)
In-Reply-To: <1877075.AIEOl3otnI@peggleto-mobl.ger.corp.intel.com>
References: <CABc_YGBZjNwcPoSwBnPKqoVqoq3iZuf-WVeDLnHL2bEVkjjpRQ@mail.gmail.com>
	<1877075.AIEOl3otnI@peggleto-mobl.ger.corp.intel.com>
Date: Wed, 22 Apr 2015 11:07:43 +0200
Message-ID: <CABc_YGB+jjqmL7wJpXL844DWDQHALsmJhKvo05=ciDp2zPuNJA@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Initramfs image name (INITRAMFS_IMAGE)
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
X-List-Received-Date: Wed, 22 Apr 2015 09:07:51 -0000
Content-Type: multipart/alternative; boundary=089e01493daafa804505144c7ebe

--089e01493daafa804505144c7ebe
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

In such below sentence from local.conf.sample is wrong or I missing
something here?

*# NOTE: You can set INITRAMFS_IMAGE in an image recipe, but*
*#       INITRAMFS_IMAGE_BUNDLE can only be set in a conf file.*

Regards,
Marcn

2015-04-21 15:20 GMT+02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> Hi Marcin,
>
> On Tuesday 21 April 2015 08:54:49 Marcin Krzemi=C5=84ski wrote:
> > I want to set my initramfs image name in my image recipe.
> > In local.conf I've set:
> >
> > INITRAMFS_IMAGE_BUNDLE=3D"1"
> >
> > In my image recipe I am setting image name:
> >
> > INITRAMFS_IMAGE =3D "myimage-image-minimal"
> >
> > Unfortunately when kernel recipe is parsed INITRAMFS_IMAGE variable i
> empty.
> > running bitbake -e tells that this variable is properly set.
> > I think because image recipe is parsed at the very end kernel recipe ca=
n
> > not see it.
> > I tried to use export INITRAMFS_IMAGE (like in example) but this also n=
ot
> > working.
> > Is the any way that I can do this?
>
> In general, one recipe cannot set a variable such that it is seen from
> another
> recipe, our system doesn't work that way. You need to set it at the
> configuration level - local.conf, or more appropriately a custom distro
> config
> file.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e01493daafa804505144c7ebe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>In such below sentence from lo=
cal.conf.sample is wrong or I missing something here?</div><div><br></div><=
div><div><i># NOTE: You can set INITRAMFS_IMAGE in an image recipe, but</i>=
</div><div><i># =C2=A0 =C2=A0 =C2=A0 INITRAMFS_IMAGE_BUNDLE can only be set=
 in a conf file.</i></div></div><div><i><br></i></div><div>Regards,</div><d=
iv>Marcn</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">2015-04-21 15:20 GMT+02:00 Paul Eggleton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Marci=
n,<br>
<span class=3D""><br>
On Tuesday 21 April 2015 08:54:49 Marcin Krzemi=C5=84ski wrote:<br>
&gt; I want to set my initramfs image name in my image recipe.<br>
&gt; In local.conf I&#39;ve set:<br>
&gt;<br>
&gt; INITRAMFS_IMAGE_BUNDLE=3D&quot;1&quot;<br>
&gt;<br>
&gt; In my image recipe I am setting image name:<br>
&gt;<br>
&gt; INITRAMFS_IMAGE =3D &quot;myimage-image-minimal&quot;<br>
&gt;<br>
&gt; Unfortunately when kernel recipe is parsed INITRAMFS_IMAGE variable i =
empty.<br>
&gt; running bitbake -e tells that this variable is properly set.<br>
&gt; I think because image recipe is parsed at the very end kernel recipe c=
an<br>
&gt; not see it.<br>
&gt; I tried to use export INITRAMFS_IMAGE (like in example) but this also =
not<br>
&gt; working.<br>
&gt; Is the any way that I can do this?<br>
<br>
</span>In general, one recipe cannot set a variable such that it is seen fr=
om another<br>
recipe, our system doesn&#39;t work that way. You need to set it at the<br>
configuration level - local.conf, or more appropriately a custom distro con=
fig<br>
file.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--089e01493daafa804505144c7ebe--
