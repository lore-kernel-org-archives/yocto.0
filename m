Return-Path: <ssinfod@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2450EE00BC1; Fri, 20 Jun 2014 13:56:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ssinfod[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAA9CE00B7B
	for <yocto@yoctoproject.org>; Fri, 20 Jun 2014 13:56:17 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id k48so4237623wev.6
	for <yocto@yoctoproject.org>; Fri, 20 Jun 2014 13:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AcmC2DtidsQyvMernoXjAOp7AyQPeDc48UBYETnvugo=;
	b=G7SBCENkJPhklI9eX6oGeV8dqT3e0gWIFmCb5zjndMEriLElSs2IpRRhQgjEvKqvxt
	d0uAx7iHAzsdqpgQuyTitq6YpMtOmzygkCLeVLvbVNCdNW+hFuf361Cv+VVeh3MASXb4
	pdxf31+mC+ATA4+F8nNaIm+rrBlyVYYq1GfAZNg2158o0/VuLUAOBKbvK3PzqABkwyQ1
	vcdLSplYuOcdey/WU6zHOcSeYRxXJQfqObVpORqiRs4iy1skileHF3ChQ5+uzRlwuexf
	CVltDnnWlBGdLXTg6dmhVqugWPcugPrFNOQBAlLVFhUA1x+UmA+rhn4xX5oPJ5ToiRc3
	P+CA==
MIME-Version: 1.0
X-Received: by 10.180.90.141 with SMTP id bw13mr6809460wib.23.1403297776664;
	Fri, 20 Jun 2014 13:56:16 -0700 (PDT)
Received: by 10.216.37.71 with HTTP; Fri, 20 Jun 2014 13:56:16 -0700 (PDT)
In-Reply-To: <53A36F54.6090801@balister.org>
References: <CAHUo2cxU3sNEFyHNyJe7B438Jq4FZOquJmQneReauacFBnu4UQ@mail.gmail.com>
	<CAKxgB24g60Cmf=eOpX3VHwcBSoizAvYTz+M=739hrKJn1DnTNA@mail.gmail.com>
	<53A36F54.6090801@balister.org>
Date: Fri, 20 Jun 2014 16:56:16 -0400
Message-ID: <CAHUo2cz==zUQo8L4OeC3KPv6ktjCVZO=yCoMRT6HAn6CMPG8Jg@mail.gmail.com>
From: ssinfod ssinfod <ssinfod@gmail.com>
To: Philip Balister <philip@balister.org>
Cc: yocto@yoctoproject.org
Subject: Re: List of hardware BSP from all vendors.
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
X-List-Received-Date: Fri, 20 Jun 2014 20:56:22 -0000
Content-Type: multipart/alternative; boundary=f46d043be1a67e04b204fc4ab9b6

--f46d043be1a67e04b204fc4ab9b6
Content-Type: text/plain; charset=UTF-8

there is not a lot of devices on "https://www.yoctoproject.org/downloads"...
I think there is more BSP than that in the field... (ex: wandboard,
olinuxino, etc.)

I am wondering if is it optionnal or mandatory to inform yoctoproject.org
when a BSP is made ?
What is the good practice ? Where the BSP of a new hardware vendor should
be hosted ?

thanks
ssinfod



On Thu, Jun 19, 2014 at 7:16 PM, Philip Balister <philip@balister.org>
wrote:

> On 06/19/2014 01:25 PM, Aziz Bahri wrote:
> > might this be something you are looking for?
> >
> > https://www.yoctoproject.org/downloads   scroll down for bsp
>
> Also try searching here:
>
> http://layers.openembedded.org/layerindex/branch/master/machines/
>
> Philip
>
>
> >
> > *Aziz Bahri*
> >
> >
> >
> >
> >
> >
> >
> >
> > *CEO Engineering Society ITBInstitute of Technology
> > BlanchardstownBlanchardstown Road NorthBlanchardstownDublin 15*
> > *Email: azizengsoc@gmail.com <azizengsoc@gmail.com>*
> >
> >
> > On Thu, Jun 19, 2014 at 6:06 PM, ssinfod ssinfod <ssinfod@gmail.com>
> wrote:
> >
> >> Is there a list somewhere that gives all the hardware that has a Yocto
> BSB
> >> layer ?
> >> Is it somewhere on yoctoproject.org ?
> >>
> >> Thanks
> >> ssinfod
> >>
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >>
> >
> >
> >
>

--f46d043be1a67e04b204fc4ab9b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>there is not a lot of devices on &quot;<a href=3D"htt=
ps://www.yoctoproject.org/downloads" target=3D"_blank" style=3D"font-size:1=
3px;font-family:arial,sans-serif">https://www.yoctoproject.org/downloads</a=
><font color=3D"#500050" face=3D"arial, sans-serif">&quot;... I think there=
 is more BSP than that in the field... (ex: wandboard, olinuxino, etc.)</fo=
nt></div>
<div><font color=3D"#500050" face=3D"arial, sans-serif"><br></font></div><d=
iv><font color=3D"#500050" face=3D"arial, sans-serif">I am wondering if is =
it optionnal or mandatory to inform <a href=3D"http://yoctoproject.org">yoc=
toproject.org</a> when a BSP is made ?</font></div>
<div><font color=3D"#500050" face=3D"arial, sans-serif">What is the good pr=
actice ? Where the BSP of a new hardware vendor should be hosted ?</font></=
div><div><font color=3D"#500050" face=3D"arial, sans-serif"><br></font></di=
v><div>
<font color=3D"#500050" face=3D"arial, sans-serif">thanks</font></div><div>=
<font color=3D"#500050" face=3D"arial, sans-serif">ssinfod</font></div><div=
><font color=3D"#500050" face=3D"arial, sans-serif"><br></font></div></div>=
<div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Jun 19, 2014 at 7:16 PM, Philip =
Balister <span dir=3D"ltr">&lt;<a href=3D"mailto:philip@balister.org" targe=
t=3D"_blank">philip@balister.org</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<div class=3D"">On 06/19/2014 01:25 PM, Aziz Bahri wrote:<br>
&gt; might this be something you are looking for?<br>
&gt;<br>
&gt; <a href=3D"https://www.yoctoproject.org/downloads" target=3D"_blank">h=
ttps://www.yoctoproject.org/downloads</a> =C2=A0 scroll down for bsp<br>
<br>
</div>Also try searching here:<br>
<br>
<a href=3D"http://layers.openembedded.org/layerindex/branch/master/machines=
/" target=3D"_blank">http://layers.openembedded.org/layerindex/branch/maste=
r/machines/</a><br>
<br>
Philip<br>
<br>
<br>
&gt;<br>
&gt; *Aziz Bahri*<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; *CEO Engineering Society ITBInstitute of Technology<br>
&gt; BlanchardstownBlanchardstown Road NorthBlanchardstownDublin 15*<br>
&gt; *Email: <a href=3D"mailto:azizengsoc@gmail.com">azizengsoc@gmail.com</=
a> &lt;<a href=3D"mailto:azizengsoc@gmail.com">azizengsoc@gmail.com</a>&gt;=
*<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt;<br>
&gt; On Thu, Jun 19, 2014 at 6:06 PM, ssinfod ssinfod &lt;<a href=3D"mailto=
:ssinfod@gmail.com">ssinfod@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Is there a list somewhere that gives all the hardware that has a Y=
octo BSB<br>
&gt;&gt; layer ?<br>
&gt;&gt; Is it somewhere on <a href=3D"http://yoctoproject.org" target=3D"_=
blank">yoctoproject.org</a> ?<br>
&gt;&gt;<br>
&gt;&gt; Thanks<br>
&gt;&gt; ssinfod<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--f46d043be1a67e04b204fc4ab9b6--
