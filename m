Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4034E00B0B; Mon,  2 Jun 2014 03:50:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduva.jan.alexandru[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ECEFE009C1
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:50:03 -0700 (PDT)
Received: by mail-wi0-f171.google.com with SMTP id cc10so4321443wib.4
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 03:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AfwivrMCtM+O35xe/hvWimZm+0d0rS3UfZ4NdMLFdwM=;
	b=C9Tve/INmmkwzg4yMkdmjmsv/RfBVPgEa64LtzHrV9o61xLIxGg8yC8PO+O75wuxBy
	Hi8TtClOLzsIb8cq+6ePW9kOzxjmaDxEVLRte1Cct0qOr+UT5WBkIvU2udduHLa0cft2
	GGrZSmWDBfvbUfdMaXFpVShZkitSfIH4Y4ZxfwG667d1+J+t5ILE3pslbr62NBlV9uqI
	k5eHGkEmWdv6JtE+8gCQL+fYb5I4CglFMsMg3JAdSq1Q+wHrzQtG/YLFTpPOlsPPWOBD
	AadOilOtY1ddkFLHazsI6JtiJqSfe2UylHcuByJInpyLoBJ1oH4fCT4xxFxtofEvIXJD
	3cLA==
MIME-Version: 1.0
X-Received: by 10.194.1.242 with SMTP id 18mr49235328wjp.22.1401706202739;
	Mon, 02 Jun 2014 03:50:02 -0700 (PDT)
Received: by 10.194.133.1 with HTTP; Mon, 2 Jun 2014 03:50:02 -0700 (PDT)
In-Reply-To: <538C54F7.9080401@dynamicdevices.co.uk>
References: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>
	<25eecdf05ee2d0268d06082d2b904f43c503898e.1401703109.git.ajlennon@dynamicdevices.co.uk>
	<CABwVrCpw7pNvkK71noXVvF8ySiLT4zeOiiMLw12=0VFfYOt=-g@mail.gmail.com>
	<538C54F7.9080401@dynamicdevices.co.uk>
Date: Mon, 2 Jun 2014 13:50:02 +0300
Message-ID: <CABwVrCoSbHviDzSnr2FXa6BD8hiPKwcHgEoFga439Q13Zn4Dsg@mail.gmail.com>
From: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 1/1] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Mon, 02 Jun 2014 10:50:08 -0000
Content-Type: multipart/alternative; boundary=047d7b3a82144b3be104fad82812

--047d7b3a82144b3be104fad82812
Content-Type: text/plain; charset=UTF-8

I am not sure, let`s wait and see what the maintainers(Andrei and John)
have to say, if you pushed the
commit as recommended into the README file (
https://github.com/djwillis/meta-raspberrypi/blob/master/README).
I will try to contact them on Trello tonight if nothings happens until them.


Alex


On Mon, Jun 2, 2014 at 1:41 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

>
> On 02/06/2014 11:30, Alexandru Vaduva wrote:
> > It looks ok to me.
> > Waiting for a push on remote.
> >
>
> Thanks Alex. Interesting issue. Next time I get a chance I need to turn
> back to getting gstreamer-1.0 working with it.
>
> I've pushed the commit up to gherzan. Is there anything else I should be
> doing?
>
> > I like the suggestion regarding SRC_URI format but I would have
> > suggested it to be another patch.
> > The reason would be that when someone wants to do a revert to the
> > change the suggestion would still remain,
> > but this is only a personal preference.
> >
>
> OK, I could do that if it was needed. (I'm pleased you like it. I pushed
> a similar change upstream to my fork of
> raspiberrypi/userland  to try to make sure nobody else sinks time on
> this. Breaking out the fork and branch
> that way helps me to manage the upstream commits and github pull request).
>
> > Good work once again, you really did me a service.
> >
> >
>
> Cheers,
>
> Alex
>
>

--047d7b3a82144b3be104fad82812
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I am not sure, let`s wait and see what the maint=
ainers(Andrei and John) have to say, if you pushed the <br>commit as recomm=
ended into the README file (<a href=3D"https://github.com/djwillis/meta-ras=
pberrypi/blob/master/README">https://github.com/djwillis/meta-raspberrypi/b=
lob/master/README</a>).<br>
</div>I will try to contact them on Trello tonight if nothings happens unti=
l them.<br><br><br></div>Alex<br></div><div class=3D"gmail_extra"><br><br><=
div class=3D"gmail_quote">On Mon, Jun 2, 2014 at 1:41 PM, Alex J Lennon <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=
=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D""><br>
On 02/06/2014 11:30, Alexandru Vaduva wrote:<br>
&gt; It looks ok to me.<br>
&gt; Waiting for a push on remote.<br>
&gt;<br>
<br>
</div>Thanks Alex. Interesting issue. Next time I get a chance I need to tu=
rn<br>
back to getting gstreamer-1.0 working with it.<br>
<br>
I&#39;ve pushed the commit up to gherzan. Is there anything else I should b=
e<br>
doing?<br>
<div class=3D""><br>
&gt; I like the suggestion regarding SRC_URI format but I would have<br>
&gt; suggested it to be another patch.<br>
&gt; The reason would be that when someone wants to do a revert to the<br>
&gt; change the suggestion would still remain,<br>
&gt; but this is only a personal preference.<br>
&gt;<br>
<br>
</div>OK, I could do that if it was needed. (I&#39;m pleased you like it. I=
 pushed<br>
a similar change upstream to my fork of<br>
raspiberrypi/userland =C2=A0to try to make sure nobody else sinks time on<b=
r>
this. Breaking out the fork and branch<br>
that way helps me to manage the upstream commits and github pull request).<=
br>
<div class=3D""><br>
&gt; Good work once again, you really did me a service.<br>
&gt;<br>
&gt;<br>
<br>
</div>Cheers,<br>
<br>
Alex<br>
<br>
</blockquote></div><br></div>

--047d7b3a82144b3be104fad82812--
