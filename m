Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA48BE0049A; Wed, 11 Jan 2017 17:52:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA266E0049A
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 17:52:42 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id r144so652019wme.0
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 17:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=1pC+BUC5Mapp7/5UiN6XaVH/k8ilccNJbnQXOJySRDs=;
	b=AaIuixVtsLJzQqsp4MQfRiylVtUx6kmVe83yyo5/mQT0lzWSGi+PLt/vwS8OAYQI+f
	hA7zPO3XSCGxDEQG/wQ+D0m1hd8Cx+RELdh85IMWMP4t0RUVFRExG6age7iqxmuvNDJ6
	aESDGonbtxIlfI9LutYU9JAZvlPT7ocEDzXSqXGND9Z5np325qG0fnK0w5BPVciGJCut
	XmLPMprY8hJoV2Sprc9C61n4CMdsupqkQGn0/VkYewExeL0BK5RsJf/3HN8uuJrsNYXl
	aJMmLWyoBnMeH3yG0u6+bELIHzy52Lj6togCkn71wEZBgpArU1J3Ix3dH5erX9oL57dn
	CD6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=1pC+BUC5Mapp7/5UiN6XaVH/k8ilccNJbnQXOJySRDs=;
	b=ozaRLVP3HplAh9yftUvRVZOUPSaI4T66yVO8ty6wP8W1wTSTYUApEbNBA0Cz0eoeGU
	H9B51pngSatdVp7n9HQweXZQ1QuO+uSVHQ8g3gEB87ezvA+ujp2CDktvl4dS8vpF8GT6
	JQqW++Dzn5qI5lIzSUtWXP0U4Xie5IVSC5hsn4ZIcgjcgfb4tdXDNR5L4k+U/BK4/nSq
	rIp3Fz5i8gJBiS8op0ytJZlLreuFOyUIbxnlCCpLWUi8tDz2d+RlYgnHil4bNwjRWlA+
	RqF6TjvvlZC+9OlqoRO9ObV/45jGFfUtfFXXl3gBR6+TLlIklDwIOa1/0j2SUwe4U/qL
	zSpw==
X-Gm-Message-State: AIkVDXIMEnerUqTiyJ03/H6OYB8RZ3+/OPf0XHwidEFR0eHWYlsp68M9xiHDfO05K910a7BAUdmxbIYDGId73g==
X-Received: by 10.223.150.118 with SMTP id c51mr6506263wra.190.1484185961760; 
	Wed, 11 Jan 2017 17:52:41 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.194.186.232 with HTTP; Wed, 11 Jan 2017 17:52:21 -0800 (PST)
In-Reply-To: <2377449.YFeu6CDXkj@peggleto-mobl.ger.corp.intel.com>
References: <c93f2baf-e05d-fc8a-0789-9651dc5a1fd4@balister.org>
	<2377449.YFeu6CDXkj@peggleto-mobl.ger.corp.intel.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Wed, 11 Jan 2017 17:52:21 -0800
X-Google-Sender-Auth: BO5c1Zs7funFtqhIdUqfrXXFdrI
Message-ID: <CA+YB3rZi0p1LgNzVi-o9n+-ZDaZCar-18oTbuUS5iq-x-D0JrQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded Developers Meeting in Portland before ELC
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
X-List-Received-Date: Thu, 12 Jan 2017 01:52:44 -0000
Content-Type: multipart/alternative; boundary=001a1147d0f2080eb90545dbf97a

--001a1147d0f2080eb90545dbf97a
Content-Type: text/plain; charset=UTF-8

That is an excellent question. The main issue is that the room usually
contains 20-25 people who are spread too far apart for many solutions to
hear effectively. This is compounded by normally not having any access to
the room until the morning of the event, so it is always a mad scramble.

This year I am focusing on using a regular conference phone rather than a
fancy solution, so there will be no video but hopefully there will be good
audio. I wish I had a permanent solution, but the room is completely
different at every event. I will keep working on it.

Stay tuned for dialup info (no, it won't be google hangout).

On Wed, Jan 11, 2017 at 5:47 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Mon, 09 Jan 2017 16:04:57 Philip Balister wrote:
> > As we do around each Embedded Linux Conference, OpenEmbedded will host a
> > developer meeting to discuss the state of OpenEmbedded and what efforts
> > we should focus on over the next six months or so.
> >
> > All developers and users are welcome to attend. We like to hear feedback
> > from a variety of people over what works, doesn't work, and is useful to
> > people using OpenEmbedded for all sort of applications.
> >
> > The meeting will be held Monday, Feb 20 at a location we can almost
> > announce. Based on prior years, the meeting will run from 9AM to 5PM.
> >
> > If you are going to attend add your name to:
> >
> > http://openembedded.org/wiki/OEDAM_2017
> >
> > Also, go ahead and add ideas for the agenda. We'll organize them better
> > just before the actual meeting.
>
> So it's great that this is happening, but unfortunately I'm not going to be
> able to make it to this one, and I suspect there will be many others who
> would
> like to participate but can't be present in person. In previous meetings we
> have really struggled with practical means for remote participation. I
> don't
> expect effective real-time two-way communication, but last time the audio
> was
> so poor I wasn't even able to hear what was being said.
>
> Is there a chance that given advance notice we will be able to set
> something
> up that could improve this?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>



-- 
Jeff Osier-Mixon - Open Source Community Engineer, Intel Corporation

--001a1147d0f2080eb90545dbf97a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That is an excellent question. The main issue is that the =
room usually contains 20-25 people who are spread too far apart for many so=
lutions to hear effectively. This is compounded by normally not having any =
access to the room until the morning of the event, so it is always a mad sc=
ramble.<div><br></div><div>This year I am focusing on using a regular confe=
rence phone rather than a fancy solution, so there will be no video but hop=
efully there will be good audio. I wish I had a permanent solution, but the=
 room is completely different at every event. I will keep working on it.</d=
iv><div><br></div><div>Stay tuned for dialup info (no, it won&#39;t be goog=
le hangout).</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Wed, Jan 11, 2017 at 5:47 PM, Paul Eggleton <span dir=3D"ltr">&lt=
;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eg=
gleton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><span class=3D"">On Mon, 09 Jan 2017 16:04:57 Philip Balister wrote:<br=
>
&gt; As we do around each Embedded Linux Conference, OpenEmbedded will host=
 a<br>
&gt; developer meeting to discuss the state of OpenEmbedded and what effort=
s<br>
&gt; we should focus on over the next six months or so.<br>
&gt;<br>
&gt; All developers and users are welcome to attend. We like to hear feedba=
ck<br>
&gt; from a variety of people over what works, doesn&#39;t work, and is use=
ful to<br>
&gt; people using OpenEmbedded for all sort of applications.<br>
&gt;<br>
&gt; The meeting will be held Monday, Feb 20 at a location we can almost<br=
>
&gt; announce. Based on prior years, the meeting will run from 9AM to 5PM.<=
br>
&gt;<br>
&gt; If you are going to attend add your name to:<br>
&gt;<br>
&gt; <a href=3D"http://openembedded.org/wiki/OEDAM_2017" rel=3D"noreferrer"=
 target=3D"_blank">http://openembedded.org/wiki/<wbr>OEDAM_2017</a><br>
&gt;<br>
&gt; Also, go ahead and add ideas for the agenda. We&#39;ll organize them b=
etter<br>
&gt; just before the actual meeting.<br>
<br>
</span>So it&#39;s great that this is happening, but unfortunately I&#39;m =
not going to be<br>
able to make it to this one, and I suspect there will be many others who wo=
uld<br>
like to participate but can&#39;t be present in person. In previous meeting=
s we<br>
have really struggled with practical means for remote participation. I don&=
#39;t<br>
expect effective real-time two-way communication, but last time the audio w=
as<br>
so poor I wasn&#39;t even able to hear what was being said.<br>
<br>
Is there a chance that given advance notice we will be able to set somethin=
g<br>
up that could improve this?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
--<br>
______________________________<wbr>_________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org">Openembedded-co=
re@lists.<wbr>openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/<wbr>m=
ailman/listinfo/openembedded-<wbr>core</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Jeff Os=
ier-Mixon - Open Source Community Engineer, Intel Corporation</div>
</div>

--001a1147d0f2080eb90545dbf97a--
