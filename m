Return-Path: <ka6sox@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B46CEE00E42; Mon, 11 Apr 2016 18:48:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ka6sox[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82EA1E00970
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 18:48:26 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id y204so5114065oie.3
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 18:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=LlEFUYnSyczJYjtbRrPaf7N7hzaC4oXS+JU0y+auFEQ=;
	b=ayvl3Q7ZhfBdWcqLZgmTTNkLSw0liVKNlfOBNX0uVuGPi2brLJMoB5L9Y7msN/cv0I
	HrA8fHfSllKfBWuc1dHo/baNPGdcSWtTFcILx63RtpZyQIiEWAPwuUgKz0J6H9KT5ELs
	Q/+LSCxudmg22nf85pJfHWb77DAlzYZoAfQ0Yc+FhLfnr+QTA8k8qpZ+NoavYiyfahuh
	1+TXtr0hhnVuk0m+lyZMoJWAAo/rIE23eh9SGfi5DI8BDHg198AZEdpJaxche3Qtrd+/
	Z6ILZDQ/GyxHzx0N1Y7aceBUlNkuW36avJ9BRQUX0SJx8T/r58vZ8wn2xM9JVzuhHxu4
	HqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=LlEFUYnSyczJYjtbRrPaf7N7hzaC4oXS+JU0y+auFEQ=;
	b=OFqGg35C1mk9epKHbTu7ZjfK/XUtewETPl0YHS0TXIXZ+XFlgZBnblWxLNeVIgtLmq
	cOkerMF/ynQRENwl3h3+6i2SZUpFAlX2d93FeVTW7RaK+dmWrz7Uc01CFkOox+xR2J2b
	MyaidYi2FnxRr8fRR/4YEr3N3DYtvAtM2wNVYJfeJbUipmpxlLJJlbIdsGGMCobwvWng
	c5lzGLVUM6if+pU5Nl82XrQGXkLPR/sX+jhYyZ+k5gNH0t4dlTcxQi4d3C+h3pVrPN7p
	lInJU68AzxzrWAVBB5a6hfYo58xlXlSqY9i2h+Lim2qhb5aKxfptSuUmjEvPZTuJlKya
	gaNg==
X-Gm-Message-State: AOPr4FWfqzv5HyYyof4OMn1AeHZwckQeqGY4uJpJVTuS0aEIpsmLT/ic9QmFMTjpJbvsQ7ZIbRarasJSOO9Oow==
MIME-Version: 1.0
X-Received: by 10.202.168.195 with SMTP id r186mr262632oie.40.1460425705613;
	Mon, 11 Apr 2016 18:48:25 -0700 (PDT)
Received: by 10.202.231.16 with HTTP; Mon, 11 Apr 2016 18:48:25 -0700 (PDT)
In-Reply-To: <570C52DB.6060901@balister.org>
References: <56DEF97F.9070306@balister.org> <1458767514382.89578@seescan.com>
	<56F30D13.6030909@balister.org>
	<2408177.Nm4BLto1dd@rjs-zotac.streifs.net>
	<20160412013543.GV16135@denix.org> <570C52DB.6060901@balister.org>
Date: Mon, 11 Apr 2016 18:48:25 -0700
Message-ID: <CAHQecY4PBZ-PHi6SefradTq5o2PXKo0wbo-jid80hMc0bfkYgA@mail.gmail.com>
From: Tom King <ka6sox@gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	openembedded-devel@lists.openembedded.org,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [oe] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Tue, 12 Apr 2016 01:48:29 -0000
Content-Type: multipart/alternative; boundary=001a113ce2c46774d205303fdb3d

--001a113ce2c46774d205303fdb3d
Content-Type: text/plain; charset=UTF-8

do we have meeting minutes posted someplace?

thanks

tom

On Mon, Apr 11, 2016 at 6:43 PM, Philip Balister <philip@balister.org>
wrote:

> On 04/11/2016 09:35 PM, Denys Dmytriyenko wrote:
> > On Mon, Apr 11, 2016 at 03:35:21PM -0700, Rudolf J Streif wrote:
> >> Hello Everyone:
> >>
> >> If you attended OEDAM last Friday in San Diego, I very much hope that
> you enjoyed being here.
> >>
> >> The Catamaran Hotel, where we held the meeting, would very much
> appreciate your feedback:
> >>
> >> www.catamaranresort.com/trip
> >>
> >> I hope you all had a safe trip back home,
> >
> > And huge thanks to Rudi and Jefro for their help in organizing the event!
> >
>
> And an even bigger thanks to everyone that came to the meeting. You are
> the people that make OpenEmbedded great!
>
> Philip
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

--001a113ce2c46774d205303fdb3d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">do we have meeting minutes posted someplace?<div><br></div=
><div>thanks</div><div><br></div><div>tom</div></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Mon, Apr 11, 2016 at 6:43 PM, Philip=
 Balister <span dir=3D"ltr">&lt;<a href=3D"mailto:philip@balister.org" targ=
et=3D"_blank">philip@balister.org</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><span class=3D"">On 04/11/2016 09:35 PM, Denys Dmytriyenko w=
rote:<br>
&gt; On Mon, Apr 11, 2016 at 03:35:21PM -0700, Rudolf J Streif wrote:<br>
&gt;&gt; Hello Everyone:<br>
&gt;&gt;<br>
&gt;&gt; If you attended OEDAM last Friday in San Diego, I very much hope t=
hat you enjoyed being here.<br>
&gt;&gt;<br>
&gt;&gt; The Catamaran Hotel, where we held the meeting, would very much ap=
preciate your feedback:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"http://www.catamaranresort.com/trip" rel=3D"noreferrer"=
 target=3D"_blank">www.catamaranresort.com/trip</a><br>
&gt;&gt;<br>
&gt;&gt; I hope you all had a safe trip back home,<br>
&gt;<br>
&gt; And huge thanks to Rudi and Jefro for their help in organizing the eve=
nt!<br>
&gt;<br>
<br>
</span>And an even bigger thanks to everyone that came to the meeting. You =
are<br>
the people that make OpenEmbedded great!<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Philip<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">--<br>
_______________________________________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org">Openembedded-co=
re@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailma=
n/listinfo/openembedded-core</a><br>
</div></div></blockquote></div><br></div>

--001a113ce2c46774d205303fdb3d--
