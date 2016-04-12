Return-Path: <ankur.tyagi85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80104E00D53; Mon, 11 Apr 2016 19:32:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ankur.tyagi85[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A14FE00AAB
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 19:32:47 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id s79so6188394oie.1
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 19:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cfB2bLwVOFJI6ffyqaK2RCmfAFlmrPvd5KfDnTiUsIw=;
	b=tggNLBSloK6cvPBgQilGGbHme1ceLb3YFbBYr0ZjdYBhuc++Tumk6eXhoQfanyWw96
	ll1+WSeh+PkSAJM9rJtDR+FtDz9g01dhLPgSe1KwHev+DTxZ4OO0IpH9MGz8XCZKGWh3
	YGmfjUx0T6Qd58LGkpwW1HiQ81XETwHEl+t1rJr7upmO3DMXlmkk8WSNu+DBg1FKbZuQ
	20aRlgwpydsrKCL04bvPtl+z9+TeduX9JkVmsl8456AJUjkxWtKCNfZoQcPeVU2t81Ev
	HjEOICyU1/DoyZHqZMArp6VsLS8uRggzOx2fKnpdbK4h7/hC3YWtR7uWlT8YCZeL1o9y
	2Gdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cfB2bLwVOFJI6ffyqaK2RCmfAFlmrPvd5KfDnTiUsIw=;
	b=f3w3Rlj5ruX/oquzaVzu8c2rECNhFcwyAy67n7QITao92KMm97Zchf61Ol7yw5B+qt
	ayU528RTjFVNCilnVVINuBRHe9dc1MQlk3gvADiIspOlR2ph3YDXO30cUscqrm7LV1IK
	VduCtkuVN1UsX7kPRBS2bOVdTP8DEtOV/7TlIb2R2ZF0EIfXxvag8iKLQXRwu4iHMsaX
	cc4TxGFiXpuODsPlewrzKUkPSTSZ855UmNnAk2oeICyfGUT1L7ZkH0kYpSw/2PpOuKTq
	03SmareUZ+rx1xwr2ZpJdMJD0lFhFfj/ZJjBD4jS3VbIA3e6CrcGSezd/wGZUCKoG0HT
	90zg==
X-Gm-Message-State: AOPr4FUM3/goBddN5mh6jp5wgm1UIHAFLNaxR/lc7MtA36Gpr/2+x7MyjTCfEbFgDdia5dVb33g+wYvlABweyA==
X-Received: by 10.202.172.201 with SMTP id v192mr283840oie.29.1460428367329;
	Mon, 11 Apr 2016 19:32:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.227.131 with HTTP; Mon, 11 Apr 2016 19:32:27 -0700 (PDT)
In-Reply-To: <CAHQecY4PBZ-PHi6SefradTq5o2PXKo0wbo-jid80hMc0bfkYgA@mail.gmail.com>
References: <56DEF97F.9070306@balister.org> <1458767514382.89578@seescan.com>
	<56F30D13.6030909@balister.org>
	<2408177.Nm4BLto1dd@rjs-zotac.streifs.net>
	<20160412013543.GV16135@denix.org> <570C52DB.6060901@balister.org>
	<CAHQecY4PBZ-PHi6SefradTq5o2PXKo0wbo-jid80hMc0bfkYgA@mail.gmail.com>
From: Ankur Tyagi <ankur.tyagi85@gmail.com>
Date: Tue, 12 Apr 2016 14:32:27 +1200
Message-ID: <CADySD0E_HRSQ3ytibHCPYcFm5Y-rv96u=b1u38ABkE7s2ahzbw@mail.gmail.com>
To: openembedded-devel@lists.openembedded.org
X-Mailman-Approved-At: Tue, 12 Apr 2016 08:20:49 -0700
Cc: "openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: [oe] [OE-core] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Tue, 12 Apr 2016 02:32:51 -0000
Content-Type: multipart/alternative; boundary=001a113ced740e00d90530407a56

--001a113ced740e00d90530407a56
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=E2=80=8B
Hi,
=E2=80=8B
Is there any information/material posted online for people who weren't able
to attend because of geographical barriers ?

regards
Ankur


On Tue, Apr 12, 2016 at 1:48 PM, Tom King <ka6sox@gmail.com> wrote:

> do we have meeting minutes posted someplace?
>
> thanks
>
> tom
>
> On Mon, Apr 11, 2016 at 6:43 PM, Philip Balister <philip@balister.org>
> wrote:
>
> > On 04/11/2016 09:35 PM, Denys Dmytriyenko wrote:
> > > On Mon, Apr 11, 2016 at 03:35:21PM -0700, Rudolf J Streif wrote:
> > >> Hello Everyone:
> > >>
> > >> If you attended OEDAM last Friday in San Diego, I very much hope tha=
t
> > you enjoyed being here.
> > >>
> > >> The Catamaran Hotel, where we held the meeting, would very much
> > appreciate your feedback:
> > >>
> > >> www.catamaranresort.com/trip
> > >>
> > >> I hope you all had a safe trip back home,
> > >
> > > And huge thanks to Rudi and Jefro for their help in organizing the
> event!
> > >
> >
> > And an even bigger thanks to everyone that came to the meeting. You are
> > the people that make OpenEmbedded great!
> >
> > Philip
> > --
> > _______________________________________________
> > Openembedded-core mailing list
> > Openembedded-core@lists.openembedded.org
> > http://lists.openembedded.org/mailman/listinfo/openembedded-core
> >
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>

--001a113ced740e00d90530407a56
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
;font-family:georgia,serif;font-size:small">=E2=80=8B</div><div>Hi,<div cla=
ss=3D"gmail_default" style=3D"color:rgb(51,51,153);font-family:georgia,seri=
f;font-size:small">=E2=80=8B</div></div><div>Is there any information/mater=
ial posted online for people who weren&#39;t able to attend because of geog=
raphical barriers ?<br><br>regards<br>Ankur</div><div class=3D"gmail_extra"=
><br clear=3D"all"></div><div class=3D"gmail_extra"><div class=3D"gmail_sig=
nature">
<br></div></div><div class=3D"gmail_quote">On Tue, Apr 12, 2016 at 1:48 PM,=
 Tom King <span dir=3D"ltr">&lt;<a href=3D"mailto:ka6sox@gmail.com" target=
=3D"_blank">ka6sox@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left=
-color:rgb(204,204,204);border-left-width:1px;border-left-style:solid">do w=
e have meeting minutes posted someplace?<br>
<br>
thanks<br>
<br>
tom<br>
<br>
On Mon, Apr 11, 2016 at 6:43 PM, Philip Balister &lt;<a href=3D"mailto:phil=
ip@balister.org">philip@balister.org</a>&gt;<br>
wrote:<br>
<span><br>
&gt; On 04/11/2016 09:35 PM, Denys Dmytriyenko wrote:<br>
&gt; &gt; On Mon, Apr 11, 2016 at 03:35:21PM -0700, Rudolf J Streif wrote:<=
br>
&gt; &gt;&gt; Hello Everyone:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; If you attended OEDAM last Friday in San Diego, I very much h=
ope that<br>
&gt; you enjoyed being here.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; The Catamaran Hotel, where we held the meeting, would very mu=
ch<br>
&gt; appreciate your feedback:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; <a href=3D"http://www.catamaranresort.com/trip" target=3D"_bl=
ank" rel=3D"noreferrer">www.catamaranresort.com/trip</a><br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I hope you all had a safe trip back home,<br>
&gt; &gt;<br>
&gt; &gt; And huge thanks to Rudi and Jefro for their help in organizing th=
e event!<br>
&gt; &gt;<br>
&gt;<br>
&gt; And an even bigger thanks to everyone that came to the meeting. You ar=
e<br>
&gt; the people that make OpenEmbedded great!<br>
&gt;<br>
&gt; Philip<br>
&gt; --<br>
&gt; _______________________________________________<br>
</span>&gt; Openembedded-core mailing list<br>
&gt; <a href=3D"mailto:Openembedded-core@lists.openembedded.org">Openembedd=
ed-core@lists.openembedded.org</a><br>
&gt; <a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded=
-core" target=3D"_blank" rel=3D"noreferrer">http://lists.openembedded.org/m=
ailman/listinfo/openembedded-core</a><br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
--<br>
_______________________________________________<br>
Openembedded-devel mailing list<br>
<a href=3D"mailto:Openembedded-devel@lists.openembedded.org">Openembedded-d=
evel@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-deve=
l" target=3D"_blank" rel=3D"noreferrer">http://lists.openembedded.org/mailm=
an/listinfo/openembedded-devel</a><br>
</div></div></blockquote></div><div class=3D"gmail_extra"><br></div></div>

--001a113ced740e00d90530407a56--
