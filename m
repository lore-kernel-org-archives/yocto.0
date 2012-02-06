Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D15A5E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 10:20:01 -0800 (PST)
Received: by vbjk13 with SMTP id k13so5967861vbj.35
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 10:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6rMwQUfIdIE3S0hm9bV0AFBKq8QB2UgRNJBASWAOVts=;
	b=TCZhFIOusmqZWBRIQ8ei0vKKGjH4TpdyLCczhvDseLEalNtkdhOgs0OX/g+9LbDbe3
	fF2dK6d75h7/HZDJeCVnxvG3Kx9bOf5osS1lV2IfY3ST7ogH8x0u8oIXb+NFHscIOsfc
	K5Xz+C5gWvjIHmLFt6/xGO10hYcpPNoOwODTk=
MIME-Version: 1.0
Received: by 10.52.73.169 with SMTP id m9mr8952854vdv.95.1328552399607; Mon,
	06 Feb 2012 10:19:59 -0800 (PST)
Received: by 10.52.24.203 with HTTP; Mon, 6 Feb 2012 10:19:59 -0800 (PST)
In-Reply-To: <4F300E98.6000307@linux.intel.com>
References: <4F2D4D12.3060500@gmail.com> <4F2ED655.5020808@linux.intel.com>
	<2779C8B7-F034-4F86-8BCF-0CC6374AD803@gmail.com>
	<4F2EE44C.7090809@linux.intel.com>
	<F23113B0-A013-4723-A4D9-09FC4FB5FA38@gmail.com>
	<4F2FF8F6.7060601@linux.intel.com> <4F300A55.2060305@gmail.com>
	<4F300E98.6000307@linux.intel.com>
Date: Mon, 6 Feb 2012 13:19:59 -0500
Message-ID: <CANFv2Ekqtp2bWPRDFkF4bLGsv6O68R59evC09zjygOfKgTr+nQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: HOW DO I - new one added for EMGD and Crownbay
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 06 Feb 2012 18:20:02 -0000
Content-Type: multipart/alternative; boundary=bcaec5016409d818b704b84fb5f8

--bcaec5016409d818b704b84fb5f8
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Feb 6, 2012 at 12:32 PM, Darren Hart <dvhart@linux.intel.com> wrote:

>
>
> On 02/06/2012 09:13 AM, jfabernathy wrote:
> > On 02/06/2012 10:59 AM, Darren Hart wrote:
> >>
> >> On 02/06/2012 05:00 AM, James Abernathy wrote:
> >>> On Feb 5, 2012, at 3:19 PM, Darren Hart wrote:
> >>>
> >>>>
> >>>> On 02/05/2012 11:44 AM, James Abernathy wrote:
> >>>>> On Feb 5, 2012, at 2:19 PM, Darren Hart wrote:
> >>>>>
> >>>>>> On 02/04/2012 07:21 AM, jfabernathy wrote:
> >>>>>>> I just added and EMGD example to the How Do I in the wiki.
> >>>>>> Jim, really appreciate your work here. For those of us not
> >>>>>> following quite as closely, please provide links to the pages
> >>>>>> you update so we don't have to go hunting for them.
> >>>>>>
> >>>>> It's the How Do I link on the wiki page:
> >>>>>
> >>>>> https://wiki.yoctoproject.org/wiki/How_do_I
> >>>> I see. This Question heading seems a bit inconsistent with what you
> >>>> are actually doing. Step 1 of getting EMGD on Crownbay is adding
> >>>> alsa to MACHINE_FEATURES for a BSP called meta-mymachine?
> >>>>
> >>>> This appears to be just trying to get commercial codecs working
> >>>> with accelerated graphics.
> >>>>
> >>>> The reason I raise this, is that while it's good to have these
> >>>> sorts of "Tactical" guides, if we aren't careful they can dilute
> >>>> the documentation space and end up confusing users more than they
> >>>> help. The README for crownbay covers what is necessary to enable
> >>>> EMGD accelerated graphics. Please consider renaming the title to
> >>>> someting more consistent with what you're trying accomplish.
> >>>>
> >>> Look, I'm not a documentation expert or understand what the project
> >>> team is trying to accomplish with their documentation or wiki.  A
> >>> user on the mailing list asked me to summarize what I did to get all
> >>> the issues resolve related to media acceleration and decoder.  What I
> >>> put in  the How Do I was a summation of the questions and answers
> >>> that were in the email thread. I can just as easily email that user
> >>> the summary, if it's not appropriate for the wiki.
> >>>
> >> Please don't take the above as a criticism of the "How Do I" concept, as
> >> I said at first, I appreciate you doing it - I understand it takes some
> >> considerable additional time to publish it. The goal is clearly to make
> >> things easier for others when they attempt what you're doing. I saw
> >> something in there that might not fit the goal and raised it as a point
> >> of improvement, that's all.
> >>
> >>
> >>> Please feel free to edit what I put there or remove it.
> >> I've CC'd Scott R. to review and see if he might care to adjust things a
> >> bit. I certainly don't want to remove it :)
> >>
> >> --
> >> Darren
> >>
> > What I feel is missing from the standard documentation for EMGD v1.10
> > integration into the Crownbay BSP is all the "other" stuff you need.
> > The README file in the meta-crownbay includes exactly what is needed to
> > integrate the EMGD v 1.10 driver.  But generally, after that users will
> > have the next level of questions about how do I get video and audio
> > media files to play correctly, or test 3D . This is technically not a
> > driver integration question, but can be anticipated because you wouldn't
> > care about integrating the EMGD driver unless you had media and 3D needs
> > in your application/.
>
> Fair enough. As those sorts of things are not BSP specific, I certainly
> think the How-Do-I pages you're creating are a good way to address that
> gap. At some point, this sort of tactical documentation might make sense
> to be rolled up into some more official type of docs. For now, the
> How-Do-I Question title could be improved were to read "How do I enable
> audio and commerial audio and video codecs?" or "How do I get the Sato
> media player to play mp3s?"
>


> If we could make the "How Do I" section of the wiki broken into
> sub-categories so each "How Do I" is a separate item to be edited. That
> would make it easier to find, create, and edit these items. Also once an
> item found it's way into official documentation, it could be removed or
> edited to point to the official doc.


Jim A


> --
> Darren
>
> >
> > Just my thoughts.
> >
> > Jim A
> >
> >>> Jim A
> >>>
> >>>> -- Darren
> >>>>
> >>>>>> I'm interested to see what more was needed for EMGD and
> >>>>>> Crownbay than is already in the BSP README.
> >>>>>>
> >>>>>>> In my opinion, we need to think about breaking this one big
> >>>>>>> edit up into individual How Do I's.  It would simplify
> >>>>>>> editing and make getting to the individual How Do I's much
> >>>>>>> easier and quicker.
> >>>>>>>
> >>>>>>> I don't know how to do that, but I think it needs doing.
> >>>>>>>
> >>>>>>> Jim A
> >>>>>>>
> >>>>>>> _______________________________________________ yocto mailing
> >>>>>>> list yocto@yoctoproject.org
> >>>>>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>>>> -- Darren Hart Intel Open Source Technology Center Yocto
> >>>>>> Project - Linux Kernel
> >>>> -- Darren Hart Intel Open Source Technology Center Yocto Project -
> >>>> Linux Kernel
> >
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>

--bcaec5016409d818b704b84fb5f8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Mon, Feb 6, 2012 at 12:32 PM, Darren Hart <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart@linux.i=
ntel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5"><br><br>On 02/06/2012 09:13 AM, jfabernathy wrote:<br>&gt=
; On 02/06/2012 10:59 AM, Darren Hart wrote:<br>&gt;&gt;<br>&gt;&gt; On 02/=
06/2012 05:00 AM, James Abernathy wrote:<br>&gt;&gt;&gt; On Feb 5, 2012, at=
 3:19 PM, Darren Hart wrote:<br>
&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; On 02/05/2012 11:44 AM=
, James Abernathy wrote:<br>&gt;&gt;&gt;&gt;&gt; On Feb 5, 2012, at 2:19 PM=
, Darren Hart wrote:<br>&gt;&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;&gt;&gt; On=
 02/04/2012 07:21 AM, jfabernathy wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; I just added and EMGD example to the How Do I =
in the wiki.<br>&gt;&gt;&gt;&gt;&gt;&gt; Jim, really appreciate your work h=
ere. For those of us not<br>&gt;&gt;&gt;&gt;&gt;&gt; following quite as clo=
sely, please provide links to the pages<br>
&gt;&gt;&gt;&gt;&gt;&gt; you update so we don&#39;t have to go hunting for =
them.<br>&gt;&gt;&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;&gt; It&#39;s the How =
Do I link on the wiki page:<br>&gt;&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;&gt;=
 <a href=3D"https://wiki.yoctoproject.org/wiki/How_do_I" target=3D"_blank">=
https://wiki.yoctoproject.org/wiki/How_do_I</a><br>
&gt;&gt;&gt;&gt; I see. This Question heading seems a bit inconsistent with=
 what you<br>&gt;&gt;&gt;&gt; are actually doing. Step 1 of getting EMGD on=
 Crownbay is adding<br>&gt;&gt;&gt;&gt; alsa to MACHINE_FEATURES for a BSP =
called meta-mymachine?<br>
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; This appears to be just trying to get =
commercial codecs working<br>&gt;&gt;&gt;&gt; with accelerated graphics.<br=
>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; The reason I raise this, is that whil=
e it&#39;s good to have these<br>
&gt;&gt;&gt;&gt; sorts of &quot;Tactical&quot; guides, if we aren&#39;t car=
eful they can dilute<br>&gt;&gt;&gt;&gt; the documentation space and end up=
 confusing users more than they<br>&gt;&gt;&gt;&gt; help. The README for cr=
ownbay covers what is necessary to enable<br>
&gt;&gt;&gt;&gt; EMGD accelerated graphics. Please consider renaming the ti=
tle to<br>&gt;&gt;&gt;&gt; someting more consistent with what you&#39;re tr=
ying accomplish.<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt; Look, I&#39;m not a do=
cumentation expert or understand what the project<br>
&gt;&gt;&gt; team is trying to accomplish with their documentation or wiki.=
 =A0A<br>&gt;&gt;&gt; user on the mailing list asked me to summarize what I=
 did to get all<br>&gt;&gt;&gt; the issues resolve related to media acceler=
ation and decoder. =A0What I<br>
&gt;&gt;&gt; put in =A0the How Do I was a summation of the questions and an=
swers<br>&gt;&gt;&gt; that were in the email thread. I can just as easily e=
mail that user<br>&gt;&gt;&gt; the summary, if it&#39;s not appropriate for=
 the wiki.<br>
&gt;&gt;&gt;<br>&gt;&gt; Please don&#39;t take the above as a criticism of =
the &quot;How Do I&quot; concept, as<br>&gt;&gt; I said at first, I appreci=
ate you doing it - I understand it takes some<br>&gt;&gt; considerable addi=
tional time to publish it. The goal is clearly to make<br>
&gt;&gt; things easier for others when they attempt what you&#39;re doing. =
I saw<br>&gt;&gt; something in there that might not fit the goal and raised=
 it as a point<br>&gt;&gt; of improvement, that&#39;s all.<br>&gt;&gt;<br>
&gt;&gt;<br>&gt;&gt;&gt; Please feel free to edit what I put there or remov=
e it.<br>&gt;&gt; I&#39;ve CC&#39;d Scott R. to review and see if he might =
care to adjust things a<br>&gt;&gt; bit. I certainly don&#39;t want to remo=
ve it :)<br>
&gt;&gt;<br>&gt;&gt; --<br>&gt;&gt; Darren<br>&gt;&gt;<br>&gt; What I feel =
is missing from the standard documentation for EMGD v1.10<br>&gt; integrati=
on into the Crownbay BSP is all the &quot;other&quot; stuff you need.<br>
&gt; The README file in the meta-crownbay includes exactly what is needed t=
o<br>&gt; integrate the EMGD v 1.10 driver. =A0But generally, after that us=
ers will<br>&gt; have the next level of questions about how do I get video =
and audio<br>
&gt; media files to play correctly, or test 3D . This is technically not a<=
br>&gt; driver integration question, but can be anticipated because you wou=
ldn&#39;t<br>&gt; care about integrating the EMGD driver unless you had med=
ia and 3D needs<br>
&gt; in your application/.<br><br></div></div>Fair enough. As those sorts o=
f things are not BSP specific, I certainly<br>think the How-Do-I pages you&=
#39;re creating are a good way to address that<br>gap. At some point, this =
sort of tactical documentation might make sense<br>
to be rolled up into some more official type of docs. For now, the<br>How-D=
o-I Question title could be improved were to read &quot;How do I enable<br>=
audio and commerial audio and video codecs?&quot; or &quot;How do I get the=
 Sato<br>
media player to play mp3s?&quot;<br></blockquote>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">If we could make the &quot;How Do I&q=
uot; section of the wiki broken into sub-categories so each &quot;How Do I&=
quot; is a separate item to be edited. That would make it easier to find,=
=A0create, and edit these items. Also once an item found it&#39;s way into =
official documentation, it could be removed or edited to point to the offic=
ial doc.</blockquote>

<div>=A0</div>
<div>Jim A<br></div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote"><span class=3D"HOEnZb"><font color=3D=
"#888888">--<br>Darren<br></font></span>
<div class=3D"HOEnZb">
<div class=3D"h5"><br>&gt;<br>&gt; Just my thoughts.<br>&gt;<br>&gt; Jim A<=
br>&gt;<br>&gt;&gt;&gt; Jim A<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; -- Darren=
<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;&gt;&gt; I&#39;m interested to see =
what more was needed for EMGD and<br>
&gt;&gt;&gt;&gt;&gt;&gt; Crownbay than is already in the BSP README.<br>&gt=
;&gt;&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;&gt;&gt;&gt; In my opinion, we nee=
d to think about breaking this one big<br>&gt;&gt;&gt;&gt;&gt;&gt;&gt; edit=
 up into individual How Do I&#39;s. =A0It would simplify<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; editing and make getting to the individual How=
 Do I&#39;s much<br>&gt;&gt;&gt;&gt;&gt;&gt;&gt; easier and quicker.<br>&gt=
;&gt;&gt;&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;&gt;&gt;&gt; I don&#39;t know =
how to do that, but I think it needs doing.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;&gt;&gt;&gt; Jim A<br>&gt;&=
gt;&gt;&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;&gt;&gt;&gt; ___________________=
____________________________ yocto mailing<br>&gt;&gt;&gt;&gt;&gt;&gt;&gt; =
list <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/list=
info/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br>&gt;&gt;&gt;&gt;&gt;&gt; -- Darren Hart Intel Open Source Technolog=
y Center Yocto<br>
&gt;&gt;&gt;&gt;&gt;&gt; Project - Linux Kernel<br>&gt;&gt;&gt;&gt; -- Darr=
en Hart Intel Open Source Technology Center Yocto Project -<br>&gt;&gt;&gt;=
&gt; Linux Kernel<br>&gt;<br><br>--<br>Darren Hart<br>Intel Open Source Tec=
hnology Center<br>
Yocto Project - Linux Kernel<br></div></div></blockquote></div><br>

--bcaec5016409d818b704b84fb5f8--
