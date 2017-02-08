Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E137E009A5; Wed,  8 Feb 2017 03:45:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.53 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14FEDE007AD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 03:45:17 -0800 (PST)
Received: by mail-oi0-f53.google.com with SMTP id s203so80339324oie.1
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 03:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OoitiqeJB8Af8wHafbl8d2AXxOMClsmAP4G+/X2GiO0=;
	b=jDn4/bfoyWzWr89nEYY+I2LyJCqV/fXO1nRpDmngCpvKYN1ktCOERAZidojMUJPx2U
	4jGfM7nF8USny2p4rwb6bcJv3iiAbC5mgznacku+FRhAjlqBHR7+YyOjtaaxR8dMsY6L
	j3LSuvOmlktKXtBXttrkVtLzV5/G8Supt5vVR0/MJHRBo2MkN7istwKYq8uHKXzod9RU
	21guYp3er1caPw9xvUUlCJVXN6s36htEqlvcu8I64cu2rWlQFo0p/R8ILv0uGQoqQk6Y
	l44O7wHmdfJtLQEAl8X5hQ0epl14JXQzInnvbPZ0tHpPnB8dVzuGGnI8ZXGq4WWTn38S
	Kzqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OoitiqeJB8Af8wHafbl8d2AXxOMClsmAP4G+/X2GiO0=;
	b=stXAm2NyvkBqU9jt6mDhWU2OMg5+/eVYU2QPCtspBJsCoomyFuFTcXiQgXqklTe3hI
	fWtW0dVUcDre/X9aDpflm25eAqueCDNbireVZEEcImldNfmeiDM6/zWvBt1AIBfTUM+3
	/vwXoNyDX5cLX1q9sm2ajK8KPBO0vRDNMMJn1HNQGDi3l3U0I9nBnRGU6NQOK0jEbEpS
	pTlO4Vu88WN9Q4G96tEqTAMEn2YZ9EnAl9QVOdV657i/2pEJ5INqJZ+NbddQ6DD/S93K
	lleF27fKoyjI1VDH9ezLOupd8XdiaF6eLvP62pF0639H2bOT5Qy5o7rTQGEcTdffGEs2
	ZooQ==
X-Gm-Message-State: AMke39ncGEVJ1QmtLauVEmxQj10she8h2a/sbFGoVYsEXZq2quHXVEwk9iy5ZkfW9ra2p3T9kJASgaWHJn/POQ==
X-Received: by 10.202.190.136 with SMTP id o130mr10852288oif.14.1486554316782; 
	Wed, 08 Feb 2017 03:45:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Wed, 8 Feb 2017 03:45:16 -0800 (PST)
In-Reply-To: <2cf00af5-fee4-91f3-0d66-2e821b99fb27@mlbassoc.com>
References: <alpine.LFD.2.20.1702070921520.13830@uk63952.mitel.com>
	<CAD4b0_Lqk756919hasgMuHx2eMxBPtywjLvzs0r3cjb9mj49Ag@mail.gmail.com>
	<2cf00af5-fee4-91f3-0d66-2e821b99fb27@mlbassoc.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Wed, 8 Feb 2017 12:45:16 +0100
Message-ID: <CAMjhiJiLQiV55hY8Drn4VPFpAtFisTqqsn-D8EGbBxpOtkzbeQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: is there a list somewhere of OE/YP-supported system perf/monitoring tools?
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
X-List-Received-Date: Wed, 08 Feb 2017 11:45:20 -0000
Content-Type: multipart/alternative; boundary=001a113db600fdd29105480365f0

--001a113db600fdd29105480365f0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 8, 2017 at 12:38 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2017-02-08 07:48, Maciej Borz=C4=99cki wrote:
>
>> On Tue, Feb 7, 2017 at 3:31 PM, Robert P. J. Day <rpjday@crashcourse.ca>
>> wrote:
>>
>>>
>>>   colleague asked me for a list of OE/YP recipes for monitoring system
>>> performance/resource utilization/profiling, i'm unaware of any single
>>> list that tracks that sort of thing so i'll just ask what people are
>>> aware of. just off the top of my head:
>>>
>>>  * sysstat
>>>  * atop
>>>  * collectd
>>>  * netdata
>>>  * rrdtool
>>>  * dstat
>>>
>>
>> * pcp http://pcp.io/
>>
>>
> There is also bootchart (and friends) to gather information about
> system startup and initialization.


blktrace

--001a113db600fdd29105480365f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Wed, Feb 8, 2017 at 12:38 PM, Gary Thomas <span di=
r=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@m=
lbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><span class=3D"gmail-">On 2017-02-08 07:48, Maciej Borz=C4=99ck=
i wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
On Tue, Feb 7, 2017 at 3:31 PM, Robert P. J. Day &lt;<a href=3D"mailto:rpjd=
ay@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wrote:<b=
r>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
=C2=A0 colleague asked me for a list of OE/YP recipes for monitoring system=
<br>
performance/resource utilization/profiling, i&#39;m unaware of any single<b=
r>
list that tracks that sort of thing so i&#39;ll just ask what people are<br=
>
aware of. just off the top of my head:<br>
<br>
=C2=A0* sysstat<br>
=C2=A0* atop<br>
=C2=A0* collectd<br>
=C2=A0* netdata<br>
=C2=A0* rrdtool<br>
=C2=A0* dstat<br>
</blockquote>
<br>
* pcp <a href=3D"http://pcp.io/" rel=3D"noreferrer" target=3D"_blank">http:=
//pcp.io/</a><br>
<br>
</blockquote>
<br></span>
There is also bootchart (and friends) to gather information about<br>
system startup and initialization.<span class=3D"gmail-HOEnZb"><font color=
=3D"#888888"></font></span></blockquote><div><br>blktrace<br>=C2=A0<br></di=
v></div></div></div>

--001a113db600fdd29105480365f0--
