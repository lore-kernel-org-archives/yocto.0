Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9B65E00945; Thu, 12 Feb 2015 03:19:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38007E0093B
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 03:19:46 -0800 (PST)
Received: by mail-qg0-f52.google.com with SMTP id h3so7286129qgf.11
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 03:19:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=KGx8owgXw34hMPavFl0rUbu/LqBtCZq4j9SPZUExi4k=;
	b=KsSpWIC3iGsBVGVjOJE2+THJwOnLcOtShiPbscUD+DYO9sahSR0BWQSr+P7BYbIdYb
	XSo/DTU7tmA5WJnRtPnHCFM46fP9Tou1tqUpv0q90pXBTcny41gp79ZAtyLBgvXJ2Juk
	cglL47bZsDDw9F79aqxHIH+XgAxc/olM+7rQoJVb4Bqt30T6ie4YGoHsXtJR/K04yeze
	0DO1pNw+zrMZujrRraGIbiJLQ02LwjOrlMN3WHzCXEwJuRhxSxR3utwxWOwgWL9HX7Tj
	cdGPIUOfmA+2EGV6v2DC/abI67Me58H/g0ykLfPXsFQUEY7uO+sJUD8yjukW4MO6kJnt
	NghQ==
X-Gm-Message-State: ALoCoQkXf9nu4MPttcHq15o1nqtZ0Y2S+jv3c7zXNZ7cVs5s5OSkF5q8Z5Qa42o4ShgLkkkAtiVt
X-Received: by 10.140.92.161 with SMTP id b30mr8840136qge.59.1423739986003;
	Thu, 12 Feb 2015 03:19:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Thu, 12 Feb 2015 03:19:25 -0800 (PST)
In-Reply-To: <20150211213954.GI30457@mentor.com>
References: <1423669983.23617.78.camel@tycho.nsa.gov>
	<6445648.XiRzhvmYHl@peggleto-mobl5.ger.corp.intel.com>
	<20150211213954.GI30457@mentor.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Feb 2015 11:19:25 +0000
Message-ID: <CAJTo0LYRUUC6ErtyC2E6kB70bnVQVoeVro9ajwBZ52-NNgTUBQ@mail.gmail.com>
To: OE-devel <openembedded-devel@lists.openembedded.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] meta-selinux
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
X-List-Received-Date: Thu, 12 Feb 2015 11:19:47 -0000
Content-Type: multipart/alternative; boundary=001a1139baf01e5ee7050ee24c13

--001a1139baf01e5ee7050ee24c13
Content-Type: text/plain; charset=UTF-8

On 11 February 2015 at 21:39, Joe MacDonald <Joe_MacDonald@mentor.com>
wrote:

> > What's more likely happening I suspect is that you are on a newer
> > branch/revision of OE-Core/Poky than the meta-selinux maintainers have
> tested.
> > I can't speak to the maintenance schedule for meta-selinux but maybe
> others
> > with knowledge there can chime in.
>
> Our master tends to lag behind oe-core's master for a few reasons, but
> none of them are really insurmountable.  Certainly the intent is that
> meta-selinux/master will build successfully with oe-core/master at any
> given time.


The yocto-autobuilder software is in git and I heartily recommend it (or
similar, if you've a buildbot allergy) for anyone maintaining layers.  Just
the simple act of running a build every night to verify that the layer
works with the latest master branch (and stable branches for bonus points)
means that problems like stale bbappends are rapidly found and resolved.
For even more bonus points, also do builds against master-next if that
branch exists so you can get notification of changes that are in review.

Ross

--001a1139baf01e5ee7050ee24c13
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 February 2015 at 21:39, Joe MacDonald <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Joe_MacDonald@mentor.com" target=3D"_blank">Joe_MacDonald@mentor=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">&gt; What&#39;s more likely happening I suspect is that you are on a new=
er<br>
&gt; branch/revision of OE-Core/Poky than the meta-selinux maintainers have=
 tested.<br>
&gt; I can&#39;t speak to the maintenance schedule for meta-selinux but may=
be others<br>
&gt; with knowledge there can chime in.<br>
<br>
</span>Our master tends to lag behind oe-core&#39;s master for a few reason=
s, but<br>
none of them are really insurmountable.=C2=A0 Certainly the intent is that<=
br>
meta-selinux/master will build successfully with oe-core/master at any<br>
given time.</blockquote></div><br>The yocto-autobuilder software is in git =
and I heartily recommend it (or similar, if you&#39;ve a buildbot allergy) =
for anyone maintaining layers.=C2=A0 Just the simple act of running a build=
 every night to verify that the layer works with the latest master branch (=
and stable branches for bonus points) means that problems like stale bbappe=
nds are rapidly found and resolved.=C2=A0 For even more bonus points, also =
do builds against master-next if that branch exists so you can get notifica=
tion of changes that are in review.</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Ross</div></div>

--001a1139baf01e5ee7050ee24c13--
