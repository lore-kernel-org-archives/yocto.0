Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 734AAE00C43; Fri,  4 Aug 2017 05:01:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7465E00C35
	for <yocto@yoctoproject.org>; Fri,  4 Aug 2017 05:01:45 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id g35so5078033ioi.3
	for <yocto@yoctoproject.org>; Fri, 04 Aug 2017 05:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=En3uwGB70DBQbf9eGYXq7RXjLF4miHsLIAlb50//+4o=;
	b=qKlkjKVRUjVeTWziUjuVCwIjz9+UwIDb/usBKL+4sSCiyOIv+2cnjLAejCDwp0fhnl
	KaJzp1W1sllufLFunbUuxMfQoBKj4jyAvyevGQiwU8C8FDFV81LVaYGyuRBQR9gmZdvU
	WFDloYe0rIoPuw/rwZGI7KrzR6EC+B78gIa0/r0HpOXKm8lU9kBOHu0DsJuhNHUi1Us1
	Y+94t2QLJgiXgL5e+DEUu+tP+FcJTLosN2fUcsrKYAipAdVuFcXJlJpNtQkvJUbcB9zC
	+p+VTK2f3pRWYgqxiKlimOWUJckH9VYcp0VtlxvETHeAAmzo6ddFz4UoeLa3cC3AEFjg
	OEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=En3uwGB70DBQbf9eGYXq7RXjLF4miHsLIAlb50//+4o=;
	b=tZwYiCuRrWo7rTFlFxOdsmFPSBlJfHW8x/2tLZ7MglifYHgNpKsXzJsG5ijDFTSpQp
	AgtyAgZTJ9XQGall4JBqo5I+htKq7x30QwFcwMhR7mVevgpCfc1WaG3+yd6yLV4ehpiG
	6i9mtjdj9l5fePrSRZMN+sISb6pS6AnQ0E1Zk0vyGBw4W2gj139A9dOZC2kGxw5ihgdI
	YmkmsPIaGDVZh37blzyFM1uEAeeIgQfT9wHuGmcUIFtNDB2HT6jYiHgTs1WrDEF0wn9V
	SmInO3ZOq5yp7Jjpgx5mZTJ1Hy9NmulVBtU964/8aVKKm2KvuLO65GkN5ZVimCEiPlg8
	yxzg==
X-Gm-Message-State: AHYfb5jYwQjoGbobEYlMSorMY/T3ale+icakpV1NkzI48HXbMEcYKbiN
	PwQoA2jr6X0d7i86vovkkM0SqqstDZvg
X-Received: by 10.107.12.160 with SMTP id 32mr2188047iom.207.1501848104998;
	Fri, 04 Aug 2017 05:01:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Fri, 4 Aug 2017 05:01:24 -0700 (PDT)
In-Reply-To: <CAJTo0LYs5bo=Dd4h=Siqiq+kMtN0-msgQX6H3Kmn6hHSp8DWAQ@mail.gmail.com>
References: <1280838053.2327487.1501829336917.ref@mail.yahoo.com>
	<1280838053.2327487.1501829336917@mail.yahoo.com>
	<1452600482.2586512.1501844336709@mail.yahoo.com>
	<CAJTo0LYs5bo=Dd4h=Siqiq+kMtN0-msgQX6H3Kmn6hHSp8DWAQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 4 Aug 2017 13:01:24 +0100
Message-ID: <CAJTo0LbYyEQz0UW8MfDXVa1huwXZ=1cgr6Js_HC=Km1dyuGGtQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 04 Aug 2017 12:01:46 -0000
Content-Type: multipart/alternative; boundary="001a113f9376ce2f8f0555ec42c4"

--001a113f9376ce2f8f0555ec42c4
Content-Type: text/plain; charset="UTF-8"

Alex's comment is right that the semantics of PARALLEL_MAKE are GNU Make
specific so you might find some recipes don't handle anything but there
being -j values.  You might have a little bit of fixing to do.

Ross

On 4 August 2017 at 13:00, Burton, Ross <ross.burton@intel.com> wrote:

> It's not just feasible but you can do it right now.
>
> PARALLEL_MAKE is the variable that sets how parallel the build should be.
> By default we pass -j<number of processors".
>
> Just set it to -l2.5 or whatever load average you want.
>
> Ross
>
> On 4 August 2017 at 11:58, Gianfranco Costamagna <
> costamagnagianfranco@yahoo.it> wrote:
>
>> Hello Yocto developers!
>>
>>
>>
>>
>> recently I found a really nice make feature, that tunes at runtime the
>> number of parallel
>>
>> execution jobs, according to the current system load [1].
>>
>>
>> I think such a feature would be really nice on server were multiple yocto
>> builds are run in parallel,
>>
>> and when people forgets to put the correct number of parallel build jobs.
>>
>>
>> E.g., a number around CPU+1 is nice, but sometimes CPU*2 gives better
>> results.
>>
>> Unfortunately if somebody else starts a build in parallel, that CPU*2
>> locks really hard the server, specially
>>
>> when building qt-based projects (e.g. qtbase, qtwebengine).
>>
>>
>> Tuning such value at runtime will probably end in faster compilation time
>> and lower swapping on remote
>>
>> servers.
>>
>> (I would think also to something that checks the amount of free RAM)
>>
>>
>>
>> is such a feature feasible?
>> should I open a bug for it?
>>
>>
>> [1] https://www.gnu.org/software/make/manual/html_node/Parallel.
>> html#Parallel
>>
>>
>> thanks,
>>
>>
>> Gianfranco
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--001a113f9376ce2f8f0555ec42c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Alex&#39;s comment is right that the semantics of PARALLEL=
_MAKE are GNU Make specific so you might find some recipes don&#39;t handle=
 anything but there being -j values.=C2=A0 You might have a little bit of f=
ixing to do.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On 4 August 2017 at 13:00, Burton, Ross <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank=
">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr">It&#39;s not just feasible but you can do it right no=
w.<div><br></div><div>PARALLEL_MAKE is the variable that sets how parallel =
the build should be.=C2=A0 By default we pass -j&lt;number of processors&qu=
ot;.</div><div><br></div><div>Just set it to -l2.5 or whatever load average=
 you want.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></d=
iv><div>Ross</div></font></span></div><div class=3D"HOEnZb"><div class=3D"h=
5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 4 August 20=
17 at 11:58, Gianfranco Costamagna <span dir=3D"ltr">&lt;<a href=3D"mailto:=
costamagnagianfranco@yahoo.it" target=3D"_blank">costamagnagianfranco@yahoo=
.it</a><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello Yo=
cto developers!<br>
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
[1] <a href=3D"https://www.gnu.org/software/" target=3D"_blank">https://www=
.gnu.org/software/</a>m<wbr>ake/manual/html_node/Parallel.<wbr>html#Paralle=
l<br>
<br>
<br>
thanks,<br>
<br>
<br>
Gianfranco<br>
<span class=3D"m_-9218674551763075708HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject" target=3D"_blank">https://lists.yoct=
oproject</a>.org<wbr>/listinfo/yocto<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a113f9376ce2f8f0555ec42c4--
