Return-Path: <jmehaffey@mvista.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC57DE006D2
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 17:34:01 -0800 (PST)
Received: by mail-wi0-f181.google.com with SMTP id hq4so1022585wib.14
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 17:34:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=HiFnz6vES5t+IYsEl3Jf/8eRyJr5jJe6vTk9telR14s=;
	b=DLmBhikWC/W5rdCq/R7ShvvKUwZc1d42MvExaYxAvtnyg+8SPVYNdKGo1vBO0B/ULX
	vlvXCSOwio7jL2Nro97VuG7ce5SCN/NDZsSR/ihApASO95qPv07rzz1HBfsV9mgKrrku
	NT0s52ice3isyPKNdoK/Anx7tA+YkR1a4vARUlV1WUU8h9mUvhSkuiegZwG5lqaVJOiN
	UvHMt7Xs+f17OyzqAaU+5UhLpGxOc8T8pgRKhRNcoXd0Oh8Rll/wdvIrpeDBQbiD+FYO
	/AkKVfzwK6xYgVwH219Qq0GonbgaZ8TIAKQRbROVK65Juv1hbjQBPL3PYAsNhXKdxP6v
	3FOw==
MIME-Version: 1.0
X-Received: by 10.180.79.194 with SMTP id l2mr6019841wix.22.1359077640403;
	Thu, 24 Jan 2013 17:34:00 -0800 (PST)
Received: by 10.227.19.146 with HTTP; Thu, 24 Jan 2013 17:34:00 -0800 (PST)
In-Reply-To: <51019524.6070602@windriver.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
	<50FEF7EC.6030601@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370A99@GV1HQPEX03.babgsetc.pvt>
	<50FF6A82.9090201@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F09@GV1HQPEX03.babgsetc.pvt>
	<50FF7254.2050903@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F97@GV1HQPEX03.babgsetc.pvt>
	<50FFEA46.5050303@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C3710B3@GV1HQPEX03.babgsetc.pvt>
	<CAGOhT_cSVJOkB0=EutkGojn8SFQSR6PyzxbDc_QLNB4a9M=wLQ@mail.gmail.com>
	<51019524.6070602@windriver.com>
Date: Thu, 24 Jan 2013 17:34:00 -0800
Message-ID: <CAGOhT_f1ZX_zzcxQ0Nea88ihUsj6MUUDZVR5Z2P6NakR1SsV7A@mail.gmail.com>
From: John Mehaffey <mehaf@mvista.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Gm-Message-State: ALoCoQkLeTRiuMCF2IutkbAfAX+0EN3U1LThXu+GnM9AB3dVS5pECQKyDiVZtD9ZD9kd/PZQokIc
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Fri, 25 Jan 2013 01:34:02 -0000
Content-Type: multipart/alternative; boundary=f46d04426e26fa7c3104d412eb87

--f46d04426e26fa7c3104d412eb87
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 24, 2013 at 12:10 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 13-01-24 02:58 PM, John Mehaffey wrote:
>
>> On Wed, Jan 23, 2013 at 7:17 AM, Patrick Turley
>> <PatrickTurley@gamestop.com <mailto:PatrickTurley@**gamestop.com<PatrickTurley@gamestop.com>>>
>> wrote:
>>
>>
>>     On Jan 23, 2013, at 7:48 AM, Bruce Ashfield
>>     <bruce.ashfield@windriver.com <mailto:bruce.ashfield@**windriver.com<bruce.ashfield@windriver.com>
>> >>
>>
>>       wrote:
>>      > On 13-01-23 12:34 AM, Patrick Turley wrote:
>>      >>
>>      >> On Jan 22, 2013, at 11:17 PM, Bruce Ashfield
>>     <bruce.ashfield@windriver.com <mailto:bruce.ashfield@**windriver.com<bruce.ashfield@windriver.com>
>> >>
>>
>>     wrote:
>>      >>
>>      >>> On 13-01-23 12:14 AM, Patrick Turley wrote:
>>      >>>> On Jan 22, 2013, at 10:43 PM, Bruce
>>     Ashfield<bruce.ashfield@**windriver.com<bruce.ashfield@windriver.com>
>>     <mailto:bruce.ashfield@**windriver.com <bruce.ashfield@windriver.com>>>
>>  wrote:
>>
>>      >>>>> On 13-01-22 9:26 PM, Patrick Turley wrote:
>>      >
>>      > Argh. I'll have to just run the commands myself and stop spamming
>> the
>>      > list with ideas :) It's just a matter of making lkc accept the
>>     defaults
>>      > (i.e. you could also use allyesconfig, or allnoconfig) or even
>> better
>>      > not trigger that config check at all.
>>
>>     You're very kind to have spent so much time on my problem already. I
>>     look forward to hearing back.
>>
>>
>> It sounds like you are building for a board with an ARCH other than i386
>> (the default).
>>
>>
> Ah yes .. it can definitely be this. I always have an ARCH on the
> command line when I invoke the oldconfig.
>
> In theory we shouldn't need the oldconfig at all either, just the arch
> on the build line with making the scripts.
>
> Cheers,
>
> Bruce
>

Well, the real question is why you have to set ARCH at all, given that it
is in the
.config (e.g. CONFIG_ARM=y), but that is a question for someone with more
cycles
to spare than I have.

-mehaf


>  You need to either run it in a devshell or use "make ARCH=<arch>
>> oldconfig".
>>
>> -mehaf
>>
>>
>>     ______________________________**_________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>     https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
>

--f46d04426e26fa7c3104d412eb87
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Thu, Jan 24, 2013 at 12:10 PM, Bruce Ashfield=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" targ=
et=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
<div class=3D"im">On 13-01-24 02:58 PM, John Mehaffey wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
On Wed, Jan 23, 2013 at 7:17 AM, Patrick Turley<br></div><div class=3D"im">
&lt;<a href=3D"mailto:PatrickTurley@gamestop.com" target=3D"_blank">Patrick=
Turley@gamestop.com</a> &lt;mailto:<a href=3D"mailto:PatrickTurley@gamestop=
.com" target=3D"_blank">PatrickTurley@<u></u>gamestop.com</a>&gt;&gt; wrote=
:<br>

<br>
<br>
=A0 =A0 On Jan 23, 2013, at 7:48 AM, Bruce Ashfield<br></div>
=A0 =A0 &lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blan=
k">bruce.ashfield@windriver.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashf=
ield@windriver.com" target=3D"_blank">bruce.ashfield@<u></u>windriver.com</=
a>&gt;&gt;<div class=3D"im">
<br>
=A0 =A0 =A0 wrote:<br>
=A0 =A0 =A0&gt; On 13-01-23 12:34 AM, Patrick Turley wrote:<br>
=A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0&gt;&gt; On Jan 22, 2013, at 11:17 PM, Bruce Ashfield<br></div>
=A0 =A0 &lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blan=
k">bruce.ashfield@windriver.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashf=
ield@windriver.com" target=3D"_blank">bruce.ashfield@<u></u>windriver.com</=
a>&gt;&gt;<div class=3D"im">
<br>
=A0 =A0 wrote:<br>
=A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0&gt;&gt;&gt; On 13-01-23 12:14 AM, Patrick Turley wrote:<br>
=A0 =A0 =A0&gt;&gt;&gt;&gt; On Jan 22, 2013, at 10:43 PM, Bruce<br>
=A0 =A0 Ashfield&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=
=3D"_blank">bruce.ashfield@<u></u>windriver.com</a><br></div>
=A0 =A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@windriver.com" target=
=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;&gt; =A0wrote:<div c=
lass=3D"im"><br>
=A0 =A0 =A0&gt;&gt;&gt;&gt;&gt; On 13-01-22 9:26 PM, Patrick Turley wrote:<=
br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; Argh. I&#39;ll have to just run the commands myself and sto=
p spamming the<br>
=A0 =A0 =A0&gt; list with ideas :) It&#39;s just a matter of making lkc acc=
ept the<br>
=A0 =A0 defaults<br>
=A0 =A0 =A0&gt; (i.e. you could also use allyesconfig, or allnoconfig) or e=
ven better<br>
=A0 =A0 =A0&gt; not trigger that config check at all.<br>
<br>
=A0 =A0 You&#39;re very kind to have spent so much time on my problem alrea=
dy. I<br>
=A0 =A0 look forward to hearing back.<br>
<br>
<br>
It sounds like you are building for a board with an ARCH other than i386<br=
>
(the default).<br>
<br>
</div></blockquote>
<br>
Ah yes .. it can definitely be this. I always have an ARCH on the<br>
command line when I invoke the oldconfig.<br>
<br>
In theory we shouldn&#39;t need the oldconfig at all either, just the arch<=
br>
on the build line with making the scripts.<br>
<br>
Cheers,<br>
<br>
Bruce<br></blockquote><div><br>Well, the real question is why you have to s=
et ARCH at all, given that it is in the<br>.config (e.g. CONFIG_ARM=3Dy), b=
ut that is a question for someone with more cycles<br>to spare than I have.=
<br>
<br>-mehaf<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
You need to either run it in a devshell or use &quot;make ARCH=3D&lt;arch&g=
t; oldconfig&quot;.<br>
<br>
-mehaf<br>
<br>
<br>
=A0 =A0 ______________________________<u></u>_________________<br>
=A0 =A0 yocto mailing list<br></div>
=A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@y=
octoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
=A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D=
"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
<br>
</blockquote>
<br>
</blockquote></div><br>

--f46d04426e26fa7c3104d412eb87--
