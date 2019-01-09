Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15448E00C6D; Wed,  9 Jan 2019 12:55:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
	[209.85.217.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9DF9E006F1
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 12:55:23 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id z23so5630258vsj.11
	for <yocto@yoctoproject.org>; Wed, 09 Jan 2019 12:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2roSPDyWlmHTDE6yDGYCw2bfdHCceNQ2mW+DfnfV1LM=;
	b=Z8L1rWNrMZbchdpS+R3QG504oU5otcJoE0feYDKJSgOqlSR9cbCEjMPXKMu+A1vQyY
	SCctlJPd/gYgksdtSXXV7uLcBMq+CFg6o4FZACIgHjDLn+U8rsv9EwmqeilOEGQFtXxp
	WStoYJSFaFkn/ifvX/BcIbUxnxq1KHXvgY6ppsbxDd8qj8b0GDKR60c0EhTmw9nQOYWr
	9jGU8JDkQxObR2j4xx4X5dBQV5wl7kNFJgJMa0v4W0fM6EkSJx54f//96SZ0CmtsRu9+
	1KjNCuTtg1rKsathlZznmKypTTOFc9+s/LeKFm6g2BPvgxe1EZ/JgxnB68EZHTB5jMMr
	+rzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2roSPDyWlmHTDE6yDGYCw2bfdHCceNQ2mW+DfnfV1LM=;
	b=RMJWNNSeCvJ2KkDFOI8/FWFXIBKK/09ne31/jScUjHIjMmIP/dEKfrVR/W9pgZnAzO
	/glE+P+aYomql3EkQ8y+V6QKwMrZpbkxPrG4lfaKxrzmbpg6lmsLNT7rbxfEXklSd+TN
	eIR2oTBORoJ2krbqk/rMc21yu1QqCDTZcMKPhVhoSu77V+rK1jNkf5PN5ZxbjlNnQTMb
	3rP/8aiVdTHJ/Du4RU6nHl9H3olcMhuxJ+tYsQLGa9B8ZWtCquJDpKuXQeAlcAtUTvB/
	rg99LSV4vshnVuLPtML0Aajuq3Zs6pZzEQ6ChvvhMdgbFOXt16TKU1zT4EVz1DTkTrr/
	jeXQ==
X-Gm-Message-State: AJcUukfJ3GsBx22zi0QGCbz3Hnzv+QxVLwfHWjtaSXmpVuirVFBdT49h
	TPg5tocyA0zGsjrJye9VPYQ0+1DoKa9zSz5gcSY=
X-Google-Smtp-Source: ALg8bN4VQxHSWz1jYFE73SN5qONG4X2f4KgUxU+xY7ac2gHo9M18+Ru0i18Wv5iwVdCIEx402C88uwaZv5m0hITrcog=
X-Received: by 2002:a67:c202:: with SMTP id i2mr2930374vsj.11.1547067322957;
	Wed, 09 Jan 2019 12:55:22 -0800 (PST)
MIME-Version: 1.0
References: <20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>
	<20181024234913.GA11980@deserted.net>
	<8a5b43c6-85eb-dd7a-ceee-d10f6977cca3@kernel.org>
	<CAKRytNw3Ct9mc1SVCRKDg8cK+KUvuQLhVoSD-7vJPu93eSk9Aw@mail.gmail.com>
	<a075bc8f-aae5-443c-ba5d-a75eb6b05e58@email.android.com>
	<20181231024607.GA14710@mentor.com>
	<1546224721158.55264@mentor.com>
In-Reply-To: <1546224721158.55264@mentor.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Wed, 9 Jan 2019 21:55:11 +0100
Message-ID: <CAKRytNxpn9ffa-KjQ4kGXZuPg7DiA3YXMkEx-=aqoLA-qpZCag@mail.gmail.com>
To: "MacDonald, Joe" <Joe_MacDonald@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Wed, 09 Jan 2019 20:55:26 -0000
Content-Type: multipart/alternative; boundary="0000000000003a8538057f0caeee"

--0000000000003a8538057f0caeee
Content-Type: text/plain; charset="UTF-8"

Ok thank you, I'll try it.

Il giorno lun 31 dic 2018 alle ore 03:52 MacDonald, Joe <
Joe_MacDonald@mentor.com> ha scritto:

> One additional quick note, in hope of avoiding any further confusion, I'm
> working on the refpolicy version from July not January 2018.  Sorry about
> that.
>
> -J.
>
> ________________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on
> behalf of MacDonald, Joe
> Sent: Sunday, December 30, 2018 9:46 PM
> To: Stefano Cappa
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [selinux] sumo compilation
>
> [Re: [yocto] [selinux] sumo compilation] On 18.12.30 (Sun 14:31)
> MacDonald, Joe wrote:
>
> > I have both ready to go, there's been a few hiccups with my access to
> the git
> > server. I'll push my queued changes somewhere public when I get to a
> keyboard
> > later today so at least everyone can see what's coming.
>
> Update on this.  While we're sorting out the access issue, the current
> master, sumo and thud branches on my personal mirror
> (https://github.com/joeythesaint/meta-selinux) are mostly up-to-date
> (the only thing I haven't included in there yet is the refpolicy update
> for the 20180114 release, little overdue, that) and build for the
> respective Yocto releases.  If that's not your experience, please let me
> know and we'll get that sorted out right away.
>
> Thanks.
>
> -Joe.
>
> >
> > -J.
> >
> > On Dec 30, 2018 6:29 AM, Stefano Cappa <stefano.cappa.ks89@gmail.com>
> wrote:
> > Are there any news about this? Also for thud branch.
> >
> > Il mar 30 ott 2018, 14:46 Sinan Kaya <okaya@kernel.org> ha scritto:
> >
> >     On 10/24/2018 7:49 PM, Joe MacDonald wrote:
> >     > Hey all,
> >     >
> >     > I just thought I should quickly follow up on this.  I have a
> change set
> >     > ready that includes tagging and a minor tweak for sumo,
> integration of
> >     > the current outstanding patch list and a tag for thud and a couple
> of
> >     > additional things (possibly) for post-thud.  I'll send out a set
> for
> >     > sumo and maybe an additional one for thud/post- possibly tomorrow
> or
> >     > after I get home on Friday.
> >
> >     Thanks, we are looking forward to see it on yocto.
> >
> >     >
> >     > -J.
> >
> >     --
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org
> >     https://lists.yoctoproject.org/listinfo/yocto
> >
>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>

--0000000000003a8538057f0caeee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok thank you, I&#39;ll try it.</div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr">Il giorno lun 31 dic 2018 alle ore 03:52 MacDonal=
d, Joe &lt;<a href=3D"mailto:Joe_MacDonald@mentor.com">Joe_MacDonald@mentor=
.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">One addi=
tional quick note, in hope of avoiding any further confusion, I&#39;m worki=
ng on the refpolicy version from July not January 2018.=C2=A0 Sorry about t=
hat.<br>
<br>
-J.<br>
<br>
________________________________________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> &lt;<a href=3D"mailto:yocto-bounces@yocto=
project.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>&gt; on be=
half of MacDonald, Joe<br>
Sent: Sunday, December 30, 2018 9:46 PM<br>
To: Stefano Cappa<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a><br>
Subject: Re: [yocto] [selinux] sumo compilation<br>
<br>
[Re: [yocto] [selinux] sumo compilation] On 18.12.30 (Sun 14:31) MacDonald,=
 Joe wrote:<br>
<br>
&gt; I have both ready to go, there&#39;s been a few hiccups with my access=
 to the git<br>
&gt; server. I&#39;ll push my queued changes somewhere public when I get to=
 a keyboard<br>
&gt; later today so at least everyone can see what&#39;s coming.<br>
<br>
Update on this.=C2=A0 While we&#39;re sorting out the access issue, the cur=
rent<br>
master, sumo and thud branches on my personal mirror<br>
(<a href=3D"https://github.com/joeythesaint/meta-selinux" rel=3D"noreferrer=
" target=3D"_blank">https://github.com/joeythesaint/meta-selinux</a>) are m=
ostly up-to-date<br>
(the only thing I haven&#39;t included in there yet is the refpolicy update=
<br>
for the 20180114 release, little overdue, that) and build for the<br>
respective Yocto releases.=C2=A0 If that&#39;s not your experience, please =
let me<br>
know and we&#39;ll get that sorted out right away.<br>
<br>
Thanks.<br>
<br>
-Joe.<br>
<br>
&gt;<br>
&gt; -J.<br>
&gt;<br>
&gt; On Dec 30, 2018 6:29 AM, Stefano Cappa &lt;<a href=3D"mailto:stefano.c=
appa.ks89@gmail.com" target=3D"_blank">stefano.cappa.ks89@gmail.com</a>&gt;=
 wrote:<br>
&gt; Are there any news about this? Also for thud branch.<br>
&gt;<br>
&gt; Il mar 30 ott 2018, 14:46 Sinan Kaya &lt;<a href=3D"mailto:okaya@kerne=
l.org" target=3D"_blank">okaya@kernel.org</a>&gt; ha scritto:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 10/24/2018 7:49 PM, Joe MacDonald wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hey all,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I just thought I should quickly follow up on t=
his.=C2=A0 I have a change set<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ready that includes tagging and a minor tweak =
for sumo, integration of<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; the current outstanding patch list and a tag f=
or thud and a couple of<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; additional things (possibly) for post-thud.=C2=
=A0 I&#39;ll send out a set for<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; sumo and maybe an additional one for thud/post=
- possibly tomorrow or<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; after I get home on Friday.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks, we are looking forward to see it on yocto.<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; -J.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank">yocto@yoctoproject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctoproject.org/listinfo/=
yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/=
listinfo/yocto</a><br>
&gt;<br>
<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
</blockquote></div>

--0000000000003a8538057f0caeee--
