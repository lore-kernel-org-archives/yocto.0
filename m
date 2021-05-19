Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web10.16979.1621453146794801860
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 12:39:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=mIx5k7od;
 spf=pass (domain: gherzan.com, ip: 64.147.123.19, mailfrom: andrei@gherzan.com)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 1497E1AF2
	for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 15:39:06 -0400 (EDT)
Received: from imap4 ([10.202.2.54])
  by compute1.internal (MEProxy); Wed, 19 May 2021 15:39:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=AFLCju4sb0YcastL8CWNxsfvvF/oNDb
	GLTA0xlLxVao=; b=mIx5k7odJmw1AFYnQFQ6BHx6F2GnFyGO1bIEJzd5pW5lV28
	dphbzXAZB2ukfWd/uRxaFaKyVOjg0+iY/omowHcVJdSxmAhsJyCjUgMgAbdvAyx+
	aadBTSCGO8sXXYO/o2P0OqJRGlOLn2BI/x+ulyY9FbnNAvViDUxzxEjztkJLjk6e
	8zBUZpxAmPHqIsed/h3zjvUtp0G1wiIE4tiW9bokLweMqSHb13nksrw8A877A08v
	SXvwJ5c8WrSK9nN6NBQ4Z0gVNaRitu/y1HoK+EDvdKTwgvwgXcFrsjD5+TnFZM1I
	MDH4CTcEnxAriQo4bEBawsMDdCuOwnqRzd3qF9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=AFLCju
	4sb0YcastL8CWNxsfvvF/oNDbGLTA0xlLxVao=; b=Q/q5d5pSGLoLj6uLaRBhTR
	37FgQxq7LYACj4ckLPfmO1HRj+y2TVARa11jK8425EykexCcvt34FfVT1FGH8q2P
	gB33yYTuB4HidXzS+oTijh7/lqB6+TPjM9Sg1Wc0UZQ4olXzZYn8D7f8VScjipp8
	s6Fof/0VsABiOEdxtBiGjDEtWjlBGW/lvDg6FmNgzQZRRCGBCUgoigJ01qvmlQVZ
	3y8qGmnIjFtvoddl06fexKOzQi8rgrcEO8QKlUrTpzpvcvKKjH68AS5+0nTdZTWe
	tOdY6Tj5rmns4WNzC9COUoZ3boRQy95t/xAC80zyTHBQcDWSEm91cem8B2jSac8g
	==
X-ME-Sender: <xms:WWmlYFMZXNSrnNWLmbyFxIwgVJrOrhd3Wo211zn8mtatBH7ShZJFHg>
    <xme:WWmlYH92ccQA6inaeAdbWY9qnCBYrEcBLYC5QIChkIH6by7kReuoCDklpfTk6pjL7
    wpo4klcZ7tbmaSQkiM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdeiledgudefjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesrg
    dtreerreerjeenucfhrhhomhepfdetnhgurhgvihcuifhhvghriigrnhdfuceorghnughr
    vghisehghhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpefhgeejgfduffdvtd
    dtudekgeehtdegleekgeduleehfeefgeelveetgedugedvhfenucffohhmrghinhepghhi
    thhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheprghnughrvghisehghhgvrhiirghnrdgtohhm
X-ME-Proxy: <xmx:WWmlYETmOesduDujR8dWe1l1-XcgQZNMbQ-8NkCZKHSYL4S49QwQpg>
    <xmx:WWmlYBuPG7AskK0ExET0xEjQNCbDGkgynL-phCZpoWYiYigQpJuhog>
    <xmx:WWmlYNf0dVGnRnJHSPgkA5sm6DBvhY_Www_xnN8Grmm_yIejNllxzg>
    <xmx:WWmlYHo76VW6tpCBQtHlXOL3tT30cvh-Cq2mCjLdj29DPRXHwGqOCA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 7A8011600B0; Wed, 19 May 2021 15:39:05 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-448-gae190416c7-fm-20210505.004-gae190416
Mime-Version: 1.0
Message-Id: <70061484-2153-43da-82c5-fd8bebff3c0a@www.fastmail.com>
In-Reply-To: <cb054588e7434b3bb6f04077a4313ea3@intel.com>
References: <20210518122927.2554655-1-zmuda.w@gmail.com>
 <20210518122927.2554655-3-zmuda.w@gmail.com>
 <CAPoiz9wP6+k5BOiuqhZ5UjKC+ZAFuqgFj7beGzPXRvLch=oW_A@mail.gmail.com>
 <916c2b8e69224dba9179edff271c659d@huawei.com>
 <CAPoiz9w0hm_L_KZH+eM4bnPDdJzkt+ETwuteCPyfW4PAmoChsg@mail.gmail.com>
 <cb054588e7434b3bb6f04077a4313ea3@intel.com>
Date: Wed, 19 May 2021 20:38:35 +0100
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set default preferred version to 2.6.0-rc1
Content-Type: multipart/alternative;
 boundary=2f13728084114c69843c57c5dc0ffed5

--2f13728084114c69843c57c5dc0ffed5
Content-Type: text/plain

Hi,

On Wed, 19 May 2021, at 07:08, Naveen Saini wrote:
> 
> 
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <mailto:yocto%40lists.yoctoproject.org> <yocto@lists.yoctoproject.org <mailto:yocto%40lists.yoctoproject.org>> On
> > Behalf Of Jon Mason
> > Sent: Wednesday, May 19, 2021 12:00 AM
> > To: Zbigniew Bodek <zbigniew.bodek@huawei.com <mailto:zbigniew.bodek%40huawei.com>>
> > Cc: Wojciech Zmuda <zmuda.w@gmail.com <mailto:zmuda.w%40gmail.com>>; yocto@lists.yoctoproject.org <mailto:yocto%40lists.yoctoproject.org>
> > Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set
> > default preferred version to 2.6.0-rc1
> > 
> > On Tue, May 18, 2021 at 11:24 AM Zbigniew Bodek
> > <zbigniew.bodek@huawei.com <mailto:zbigniew.bodek%40huawei.com>> wrote:
> > >
> > > Hello Jon,
> > >
> > > Thanks for your comment. I will try to answer.
> > > This change is to include following bug fix:
> > > https://github.com/zephyrproject-rtos/zephyr/pull/33251
> > > I can also see we've had multiple RC versions in the past but in principle, I'm
> > not against your suggestion to have master-next, etc. So where should we go
> > from here?
> > 
> > My recommendation would be to pull that patch out and apply it directly on
> > top of v2.5.0 (assuming that is feasible).  Maybe even asking the upstream
> > zephyr project to port this to v2.5.0 and make it
> > v2.5.1 would be the optimal solution.
> 
> [Naveen]  We can wait for stable release. If it is urgent, we can carry patches for bug fixes,  in case upstream does not give dot release !

Even if we don't have the 2.6.0-rc1 release default (to which I agree), I still think having support for it (as a non default) is beneficial. Especially given that 2.6.0 will be an LTS so people might want early (opt-in) support for the time being.

-- 
Andrei Gherzan 
gpg: rsa4096/D4D94F67AD0E9640


--2f13728084114c69843c57c5dc0ffed5
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hi,<br></div><d=
iv><br></div><div>On Wed, 19 May 2021, at 07:08, Naveen Saini wrote:<br>=
</div><blockquote type=3D"cite" id=3D"qt" style=3D""><div><br></div><div=
><br></div><div>&gt; -----Original Message-----<br></div><div>&gt; From:=
&nbsp;<a href=3D"mailto:yocto%40lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a> &lt;<a href=3D"mailto:yocto%40lists.yoctoproject.org">y=
octo@lists.yoctoproject.org</a>&gt; On<br></div><div>&gt; Behalf Of Jon =
Mason<br></div><div>&gt; Sent: Wednesday, May 19, 2021 12:00 AM<br></div=
><div>&gt; To: Zbigniew Bodek &lt;<a href=3D"mailto:zbigniew.bodek%40hua=
wei.com">zbigniew.bodek@huawei.com</a>&gt;<br></div><div>&gt; Cc: Wojcie=
ch Zmuda &lt;<a href=3D"mailto:zmuda.w%40gmail.com">zmuda.w@gmail.com</a=
>&gt;;&nbsp;<a href=3D"mailto:yocto%40lists.yoctoproject.org">yocto@list=
s.yoctoproject.org</a><br></div><div>&gt; Subject: Re: [yocto] [meta-zep=
hyr][PATCH 2/2] zephyr-kernel-src.inc: set<br></div><div>&gt; default pr=
eferred version to 2.6.0-rc1<br></div><div>&gt;&nbsp;<br></div><div>&gt;=
 On Tue, May 18, 2021 at 11:24 AM Zbigniew Bodek<br></div><div>&gt; &lt;=
<a href=3D"mailto:zbigniew.bodek%40huawei.com">zbigniew.bodek@huawei.com=
</a>&gt; wrote:<br></div><div>&gt; &gt;<br></div><div>&gt; &gt; Hello Jo=
n,<br></div><div>&gt; &gt;<br></div><div>&gt; &gt; Thanks for your comme=
nt. I will try to answer.<br></div><div>&gt; &gt; This change is to incl=
ude following bug fix:<br></div><div>&gt; &gt;&nbsp;<a href=3D"https://g=
ithub.com/zephyrproject-rtos/zephyr/pull/33251">https://github.com/zephy=
rproject-rtos/zephyr/pull/33251</a><br></div><div>&gt; &gt; I can also s=
ee we've had multiple RC versions in the past but in principle, I'm<br><=
/div><div>&gt; not against your suggestion to have master-next, etc. So =
where should we go<br></div><div>&gt; from here?<br></div><div>&gt;&nbsp=
;<br></div><div>&gt; My recommendation would be to pull that patch out a=
nd apply it directly on<br></div><div>&gt; top of v2.5.0 (assuming that =
is feasible).&nbsp; Maybe even asking the upstream<br></div><div>&gt; ze=
phyr project to port this to v2.5.0 and make it<br></div><div>&gt; v2.5.=
1 would be the optimal solution.<br></div><div><br></div><div>[Naveen]&n=
bsp; We can wait for stable release. If it is urgent, we can carry patch=
es for bug fixes,&nbsp; in case upstream does not give dot release !<br>=
</div></blockquote><div><div><br></div><div>Even if we don't have the 2.=
6.0-rc1 release default (to which I agree), I still think having support=
 for it (as a non default) is beneficial. Especially given that 2.6.0 wi=
ll be an LTS so people might want early (opt-in) support for the time be=
ing.<br></div><div><br></div><div>--&nbsp;<br></div><div id=3D"sig112942=
400"><div class=3D"signature">Andrei Gherzan&nbsp;<br></div><div class=3D=
"signature">gpg: rsa4096/D4D94F67AD0E9640<br></div></div><div><br></div>=
</div><div><br></div></body></html>

--2f13728084114c69843c57c5dc0ffed5--
