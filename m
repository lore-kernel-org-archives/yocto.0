Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E700E009CA; Mon,  8 Oct 2018 08:37:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC414E00950
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2018 08:37:28 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id l58so5391471otd.6
	for <yocto@yoctoproject.org>; Mon, 08 Oct 2018 08:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UgealvqMOWE+JY4+SnoQg6ARodWotV1BKn5OeVJKcgo=;
	b=KtSu3ojMyxh2RVx5tY+fRd65tbbiBOp2n+l8YVUU8kuTXyW8IntFSsHZJvMIj1w22O
	Y1xuDZW3rcTuW+leMKtB9bYJPwQk/HFEjiHYjWThAP5t4+BMF/+VhAg5QW0ZJyRAOqc3
	eTWWouORmbhEOr66SkCLuC/MfDxf0Z/1OMBje8A8eEPlBtoxlNdwPlS8IxQ8vZCLeUTH
	GjUfU19s60pKoZub738x0Iu/DKe6VXTqEop+8hPzyQ7gSvirlifk3fXq+XRn3BvnWiSD
	BpBDuuEcZyRIn1YrwztI0Lv2i9Yv9j3PrPQJEHchtT8VBsbUePBjHk/arHs0STWRrWaL
	Sf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UgealvqMOWE+JY4+SnoQg6ARodWotV1BKn5OeVJKcgo=;
	b=I+A0JNGCLE9Ss6Db7Rs9ewlDopnyfGujm9w7VC6V6+mt+DKq7UnB+ipx/wd/OwLpRi
	ttYJGJJQ86u8VpC1VT2NPA2LDoRlUrnD9BuNY0GtY2uLmrhdtlsPSov6psHlGn5X+3/s
	FIfwQ6d39nqBESBSKxcMQgOSwBHa4vWHWWc3/yOQxc/HWivyWG7VsmwnHPAiT2Z9NZha
	WmdvTa6udu4Llfu24nYMUJOHac6VVMgOK3rJ53RklCkQUC/un23Xmvwj8vGh1Mglzl+J
	oOw4Ja4SdycVckgFRFPUPjEI/6ZNWPK0vED0XeZtOTZd0oTKMkFrAnltNdXQixYTTLLq
	2GXw==
X-Gm-Message-State: ABuFfoiD9XTVUZuHmrowybhGMoeZaBxDyBF3eAxU25zkCymmzDX927mG
	H7cOdpFZc39KV6VVPlxzuEIyP1LwIpTrAAw43ygrkg==
X-Google-Smtp-Source: ACcGV61pJ+83k19oHz+qoPYXRg+gQn0Tp9SLWVU62gPtbvNjtKkqlLgcppn3tG9hNxrs9Ly6QuG65fYeGEbvwPKv2Fg=
X-Received: by 2002:a9d:256e:: with SMTP id j43mr14406185otd.367.1539013048254;
	Mon, 08 Oct 2018 08:37:28 -0700 (PDT)
MIME-Version: 1.0
References: <CALh9vaUAcgWqOytyo9Z=Q++Y8JXBNtx7pA1YRyW=THtF6O2T7w@mail.gmail.com>
	<CAJTo0La_UUWuAeR1tGAFaY87qTmcubJBDxnUX0DoX9LHhkMeRA@mail.gmail.com>
	<CALh9vaVnRb=AN6v93UotQiyRKfrCGCyn6wO=xTpjfKFpNP9gYA@mail.gmail.com>
In-Reply-To: <CALh9vaVnRb=AN6v93UotQiyRKfrCGCyn6wO=xTpjfKFpNP9gYA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Oct 2018 16:37:16 +0100
Message-ID: <CAJTo0LYQa2q-F8OB=SORVKf=aLqRL=oZmkg45Pf7ZBTyzre=xA@mail.gmail.com>
To: Tim Hammer <tdhammer99@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: DEPENDS=libusb1 | libusb-compat not building package
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
X-List-Received-Date: Mon, 08 Oct 2018 15:37:30 -0000
Content-Type: multipart/alternative; boundary="0000000000000bd4eb0577b96605"

--0000000000000bd4eb0577b96605
Content-Type: text/plain; charset="UTF-8"

Yes, that's odd.  Can you share the recipe?

Ross

On Thu, 4 Oct 2018 at 19:24, Tim Hammer <tdhammer99@gmail.com> wrote:

>
> Even with libusb1 in DEPENDS it fails. It may be in the configure script
> (which works fine "outside" of a bitbake build), but what I am confused
> about is the lack of any libusb content in my cc-tool build tree.
>
> When I added boost to the DEPENDS, I got the headers and libraries in
> recipe-sysroot/...
> I am not getting any libusb stuff there with libusb1 in DEPENDS.
>
>
> On Thu, Oct 4, 2018 at 2:01 PM Burton, Ross <ross.burton@intel.com> wrote:
>
>> The recipe you're after for DEPENDS is libusb1.  If that doesn't work
>> then there's a bug in the configure script.
>>
>> Ross
>> On Thu, 4 Oct 2018 at 18:19, Tim Hammer <tdhammer99@gmail.com> wrote:
>> >
>> > I am trying to write a recipe for cc-tool (
>> https://sourceforge.net/projects/cctool/) and ran into the following
>> error during the build:
>> >
>> > | checking for libusb-1.0 >= 1.0.0... no
>> > | configure: error: Package requirements (libusb-1.0 >= 1.0.0) were not
>> met:
>> > |
>> > | No package 'libusb-1.0' found
>> >
>> >
>> > I have added "libusb1" and then tried "libusb-compat" and also "libusb"
>> as well as "libusb-1.0" to my recipe's DEPENDS but nothing gets
>> fetched/built.
>> >
>> > I previously encountered the same failure with Boost and adding it to
>> DEPENDS was the solution. What am I missing for libusb-1.0?
>> >
>> > Do I need to instead modify the configure input to look in a different
>> location for libusb-1.0?
>> > --
>> >
>> > .Tim
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
>
> .Tim
>

--0000000000000bd4eb0577b96605
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, that&#39;s odd.=C2=A0 Can you share the recipe?<div><=
br></div><div>Ross</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r">On Thu, 4 Oct 2018 at 19:24, Tim Hammer &lt;<a href=3D"mailto:tdhammer99=
@gmail.com">tdhammer99@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><br><div>Even with libusb1 in DEPENDS it fai=
ls. It may be in the configure script (which works fine &quot;outside&quot;=
 of a bitbake build), but what I am confused about is the lack of any libus=
b content in my cc-tool build tree.</div><div><br></div><div>When I added b=
oost to the DEPENDS, I got the headers and libraries in recipe-sysroot/...<=
/div><div>I am not getting any libusb stuff there with libusb1 in DEPENDS.<=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">O=
n Thu, Oct 4, 2018 at 2:01 PM Burton, Ross &lt;<a href=3D"mailto:ross.burto=
n@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">The recipe you&#39;re after for DEPENDS is=
 libusb1.=C2=A0 If that doesn&#39;t work<br>
then there&#39;s a bug in the configure script.<br>
<br>
Ross<br>
On Thu, 4 Oct 2018 at 18:19, Tim Hammer &lt;<a href=3D"mailto:tdhammer99@gm=
ail.com" target=3D"_blank">tdhammer99@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I am trying to write a recipe for cc-tool (<a href=3D"https://sourcefo=
rge.net/projects/cctool/" rel=3D"noreferrer" target=3D"_blank">https://sour=
ceforge.net/projects/cctool/</a>) and ran into the following error during t=
he build:<br>
&gt;<br>
&gt; | checking for libusb-1.0 &gt;=3D 1.0.0... no<br>
&gt; | configure: error: Package requirements (libusb-1.0 &gt;=3D 1.0.0) we=
re not met:<br>
&gt; |<br>
&gt; | No package &#39;libusb-1.0&#39; found<br>
&gt;<br>
&gt;<br>
&gt; I have added &quot;libusb1&quot; and then tried &quot;libusb-compat&qu=
ot; and also &quot;libusb&quot; as well as &quot;libusb-1.0&quot; to my rec=
ipe&#39;s DEPENDS but nothing gets fetched/built.<br>
&gt;<br>
&gt; I previously encountered the same failure with Boost and adding it to =
DEPENDS was the solution. What am I missing for libusb-1.0?<br>
&gt;<br>
&gt; Do I need to instead modify the configure input to look in a different=
 location for libusb-1.0?<br>
&gt; --<br>
&gt;<br>
&gt; .Tim<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"m_8732447672551663091gmail_signature" data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><br><span style=3D"font-family:arial narrow,sans-s=
erif">.Tim</span><br></div></div>
</blockquote></div>

--0000000000000bd4eb0577b96605--
