Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A606E00C43; Fri,  4 Aug 2017 05:00:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7994E00C35
	for <yocto@yoctoproject.org>; Fri,  4 Aug 2017 05:00:42 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id h199so6912765ith.1
	for <yocto@yoctoproject.org>; Fri, 04 Aug 2017 05:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QvF86ZrDAzFfgp+BN+wqka3ZDZuzPegcX6/snd6a9Kw=;
	b=VWyzovK/oVBS8P7W+tUTD3T5p4H2u39faCV6C7d4xOU6Ke6bBbCKnUD7muSZuwWIab
	rQOC6CWh0r9fyGn4Dtlgsx5HAvE5AOzROmVYxSBJVCEs7D6r8tOQuWXjRUp/e8TfPqQZ
	+ebX4YJWuggC40F4u+arZPPrMWcPDhq8BmkAUG6hVuW9uerhuZJO/nER2Dy175T4Zebx
	ZQtOD2H+RKBRPYViwP1GVQT5vRIDQdbM1TUn+5ouh3vlFt41tXmrZ8SaZyGh/KZstIXO
	Yz1WusTshTa+72aBJw2MzH3vyWjt8Al1cVrJ0Dh1KvRTCHFaaDbJvQZ31j55spcQDV0h
	FKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QvF86ZrDAzFfgp+BN+wqka3ZDZuzPegcX6/snd6a9Kw=;
	b=oWGQv3j4VyxLDUi7Gy8uGfGhZl2UBv+QTKgFc/r/LirPbnHUmGz/OO/9ojIWBAgBE8
	xjMPCs27si6yfRsDLZYD6+RPudOI9ZFnAr1dC/v8N4uBpGVFIpq/II19CSLWSJqgEkle
	Z3GDK0UUrcRBvCdAjgjNZguAGX4Lcq5OobE2HWDTvS6g4YkDJigoH5GuL4QL5unTlvA9
	6vuoQJwRNud2YjQ6CxD9zgfTy2RSrCKvO1OD7czust79lzlxVvZKL+7TNJfKtIp+ZoE/
	oAh3wqek77DXwaty9Up0NYPx49zpgvNklyemKuYpMvsfd4L71IciiwKpJb2PvCLBdiOQ
	FL9Q==
X-Gm-Message-State: AHYfb5icVB0GDj5kliEUwKVs5THOUGajj71quEWo9DouOIA8AE4gajrR
	gOTqjKDQ4vaS+jDI7pQie2mTuNvCsaP2
X-Received: by 10.36.44.77 with SMTP id i74mr1773082iti.42.1501848042095; Fri,
	04 Aug 2017 05:00:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Fri, 4 Aug 2017 05:00:21 -0700 (PDT)
In-Reply-To: <1452600482.2586512.1501844336709@mail.yahoo.com>
References: <1280838053.2327487.1501829336917.ref@mail.yahoo.com>
	<1280838053.2327487.1501829336917@mail.yahoo.com>
	<1452600482.2586512.1501844336709@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 4 Aug 2017 13:00:21 +0100
Message-ID: <CAJTo0LYs5bo=Dd4h=Siqiq+kMtN0-msgQX6H3Kmn6hHSp8DWAQ@mail.gmail.com>
To: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [feature request] avoid getting the server stuck because of high "-j" value
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
X-List-Received-Date: Fri, 04 Aug 2017 12:00:43 -0000
Content-Type: multipart/alternative; boundary="001a113f66c00e60390555ec3f07"

--001a113f66c00e60390555ec3f07
Content-Type: text/plain; charset="UTF-8"

It's not just feasible but you can do it right now.

PARALLEL_MAKE is the variable that sets how parallel the build should be.
By default we pass -j<number of processors".

Just set it to -l2.5 or whatever load average you want.

Ross

On 4 August 2017 at 11:58, Gianfranco Costamagna <
costamagnagianfranco@yahoo.it> wrote:

> Hello Yocto developers!
>
>
>
>
> recently I found a really nice make feature, that tunes at runtime the
> number of parallel
>
> execution jobs, according to the current system load [1].
>
>
> I think such a feature would be really nice on server were multiple yocto
> builds are run in parallel,
>
> and when people forgets to put the correct number of parallel build jobs.
>
>
> E.g., a number around CPU+1 is nice, but sometimes CPU*2 gives better
> results.
>
> Unfortunately if somebody else starts a build in parallel, that CPU*2
> locks really hard the server, specially
>
> when building qt-based projects (e.g. qtbase, qtwebengine).
>
>
> Tuning such value at runtime will probably end in faster compilation time
> and lower swapping on remote
>
> servers.
>
> (I would think also to something that checks the amount of free RAM)
>
>
>
> is such a feature feasible?
> should I open a bug for it?
>
>
> [1] https://www.gnu.org/software/make/manual/html_node/
> Parallel.html#Parallel
>
>
> thanks,
>
>
> Gianfranco
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113f66c00e60390555ec3f07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s not just feasible but you can do it right now.<di=
v><br></div><div>PARALLEL_MAKE is the variable that sets how parallel the b=
uild should be.=C2=A0 By default we pass -j&lt;number of processors&quot;.<=
/div><div><br></div><div>Just set it to -l2.5 or whatever load average you =
want.</div><div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On 4 August 2017 at 11:58, Gianfranco Costama=
gna <span dir=3D"ltr">&lt;<a href=3D"mailto:costamagnagianfranco@yahoo.it" =
target=3D"_blank">costamagnagianfranco@yahoo.it</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">Hello Yocto developers!<br>
<br>
<br>
<br>
<br>
recently I found a really nice make feature, that tunes at runtime the numb=
er of parallel<br>
<br>
execution jobs, according to the current system load [1].<br>
<br>
<br>
I think such a feature would be really nice on server were multiple yocto b=
uilds are run in parallel,<br>
<br>
and when people forgets to put the correct number of parallel build jobs.<b=
r>
<br>
<br>
E.g., a number around CPU+1 is nice, but sometimes CPU*2 gives better resul=
ts.<br>
<br>
Unfortunately if somebody else starts a build in parallel, that CPU*2 locks=
 really hard the server, specially<br>
<br>
when building qt-based projects (e.g. qtbase, qtwebengine).<br>
<br>
<br>
Tuning such value at runtime will probably end in faster compilation time a=
nd lower swapping on remote<br>
<br>
servers.<br>
<br>
(I would think also to something that checks the amount of free RAM)<br>
<br>
<br>
<br>
is such a feature feasible?<br>
should I open a bug for it?<br>
<br>
<br>
[1] <a href=3D"https://www.gnu.org/software/">https://www.gnu.org/software/=
</a><wbr>make/manual/html_node/<wbr>Parallel.html#Parallel<br>
<br>
<br>
thanks,<br>
<br>
<br>
Gianfranco<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject">https://lists.yoctoproject</a>.<wbr>=
org/listinfo/yocto<br>
</font></span></blockquote></div><br></div>

--001a113f66c00e60390555ec3f07--
