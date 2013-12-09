Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D62E2E005B1
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2013 13:45:38 -0800 (PST)
Received: by mail-ob0-f170.google.com with SMTP id wp18so4408994obc.15
	for <yocto@yoctoproject.org>; Mon, 09 Dec 2013 13:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=R6vB8TBcZjJH0UtEolWkaoX8oMAIWP00b5JKIPDG3V8=;
	b=RxaERzPUJPn8EgrOQNdGjj4AQRO1OjPbvbhEUI3OkdCIC/eoSQpHpf7j4tYQ0J5v/z
	oq4GxJ30iI2t6uxnRCSMGmj/D9bNOCXbchR9Pael4sKd+vZsaOszUCyb2yIww4deDypS
	DKYaCcO8v0NTFYVP4uLx0vH/iIToqLmV9jmquzYOpHNqmDuQk0pM0Sh5bySDyZDmmjcx
	KmOzQ0YZSqkRvuWz1W56MQ194/prcrOsgmkV62Py7i52mxbnK3duLeCVGtaxHLZlflv1
	JmEa34Zu7aV6zdtuhDlkw7BAmFoS0lUXAIO9Rh35QlY65zlVPvGMUrQV6Sg1sZDBlQ9w
	CIdw==
MIME-Version: 1.0
X-Received: by 10.182.112.130 with SMTP id iq2mr4156210obb.57.1386625537826;
	Mon, 09 Dec 2013 13:45:37 -0800 (PST)
Received: by 10.76.23.136 with HTTP; Mon, 9 Dec 2013 13:45:37 -0800 (PST)
In-Reply-To: <52A634FF.8020705@linux.intel.com>
References: <CAE8H0+XtcT9ZriW31mN28xjDzASAp7AASxOOg=fE9LvepTatRA@mail.gmail.com>
	<1386360528.3028.62.camel@empanada>
	<CAE8H0+U_XmpsS=iVrGbWp6um6nMUXxDb+fighV7KruBuFRGWFw@mail.gmail.com>
	<52A634FF.8020705@linux.intel.com>
Date: Mon, 9 Dec 2013 16:45:37 -0500
Message-ID: <CAE8H0+W5uDM4PKpHzNymY9pNCheMqke7OT8ycoRAG-FgrfDaqA@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky-tiny breaks at ncurses and perl (Dylan 9.0.1)
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
X-List-Received-Date: Mon, 09 Dec 2013 21:45:42 -0000
Content-Type: multipart/alternative; boundary=089e01229a069e641604ed20ea67

--089e01229a069e641604ed20ea67
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 9, 2013 at 4:24 PM, Saul Wold <sgw@linux.intel.com> wrote:

> On 12/09/2013 11:51 AM, r10kindsofpeople wrote:
>
>> On Fri, Dec 6, 2013 at 3:08 PM, Tom Zanussi <tom.zanussi@intel.com
>> <mailto:tom.zanussi@intel.com>> wrote:
>>
>>     On Fri, 2013-12-06 at 14:08 -0500, r10kindsofpeople wrote:
>>      > After some success building my system (crownbay), I'm now trying to
>>      > optimize boot time, so I read up on poky-tiny, created a new
>>     layer and
>>      > am trying to build.  I think I've pulled most of my system
>>     changes out
>>      > so that I can at least bitbake core-image-minimal, but I'm still
>> not
>>      > able to get past ncurses config and perl.  (ncurses reports
>> autoconf
>>      > errors in widec, perl has undefined references to gcvt, I'm also
>>      > getting complaints about multiple providers for the kernel, etc.)
>>      >
>>      >
>>      > Is poky-tiny still active and tested?  What are the odds of this
>>     being
>>      > resolved in Dora versus the odds of running into other migration
>>      > issues?
>>      >
>>
>>     I haven't tried poky-tiny with dylan, but I have with dora and didn't
>>     run into any build problems - the build errors you're running into
>>     aren't things I've seen either.
>>
>>     So maybe you can try with dora and see what happens - if you still run
>>     into problems, please provide some more details on your setup.
>>
>>
>> Thanks, Tom...using Dora, I was able to get the basic system to build.
>>
>> Adding some features (dhcp-server, for instance) still breaks the build,
>> but I suspect that's just a consequence of -tiny doing it's thing.
>>
>>  John, that's probably correct, the tiny configuration uses uclibc and if
> you see bug number 5431 (https://bugzilla.yoctoproject.org/show_bug.cgi?
> id=5431), there are a number of recipes that will not build correctly
> with the full uclibc, but that was with a full uclibc, where as the tiny
> configuration cuts down ulibc to just support the bare minimum.
>
> Hope that helps with your efforts.
>
> Sau!
>
>
> Thanks, Saul, I'll take a look.

A "FWIW" for any and all...to get qemu to work with the tiny image, I had
to do a menuconfig for busybox and add "setsid" and "cttyhack", otherwise I
was getting "not found" and "error 127" loops on startup.

(hints on how to do this without menuconfig are welcome...I tried creating
my own recipe and adding package ${PN}-setsid or including my own (edited)
defconfig, but neither seemed to work.

>  John
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>

--089e01229a069e641604ed20ea67
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Dec 9, 2013 at 4:24 PM, Saul Wold <span dir=3D"ltr">&lt;<a href=3D"mail=
to:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;</span=
> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">On 12/09/2013 11:51 AM, r10kindsofpeople wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
On Fri, Dec 6, 2013 at 3:08 PM, Tom Zanussi &lt;<a href=3D"mailto:tom.zanus=
si@intel.com" target=3D"_blank">tom.zanussi@intel.com</a><br>
&lt;mailto:<a href=3D"mailto:tom.zanussi@intel.com" target=3D"_blank">tom.z=
anussi@intel.com</a>&gt;<u></u>&gt; wrote:<br>
<br>
=A0 =A0 On Fri, 2013-12-06 at 14:08 -0500, r10kindsofpeople wrote:<br>
=A0 =A0 =A0&gt; After some success building my system (crownbay), I&#39;m n=
ow trying to<br>
=A0 =A0 =A0&gt; optimize boot time, so I read up on poky-tiny, created a ne=
w<br>
=A0 =A0 layer and<br>
=A0 =A0 =A0&gt; am trying to build. =A0I think I&#39;ve pulled most of my s=
ystem<br>
=A0 =A0 changes out<br>
=A0 =A0 =A0&gt; so that I can at least bitbake core-image-minimal, but I&#3=
9;m still not<br>
=A0 =A0 =A0&gt; able to get past ncurses config and perl. =A0(ncurses repor=
ts autoconf<br>
=A0 =A0 =A0&gt; errors in widec, perl has undefined references to gcvt, I&#=
39;m also<br>
=A0 =A0 =A0&gt; getting complaints about multiple providers for the kernel,=
 etc.)<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; Is poky-tiny still active and tested? =A0What are the odds =
of this<br>
=A0 =A0 being<br>
=A0 =A0 =A0&gt; resolved in Dora versus the odds of running into other migr=
ation<br>
=A0 =A0 =A0&gt; issues?<br>
=A0 =A0 =A0&gt;<br>
<br>
=A0 =A0 I haven&#39;t tried poky-tiny with dylan, but I have with dora and =
didn&#39;t<br>
=A0 =A0 run into any build problems - the build errors you&#39;re running i=
nto<br>
=A0 =A0 aren&#39;t things I&#39;ve seen either.<br>
<br>
=A0 =A0 So maybe you can try with dora and see what happens - if you still =
run<br>
=A0 =A0 into problems, please provide some more details on your setup.<br>
<br>
<br>
Thanks, Tom...using Dora, I was able to get the basic system to build.<br>
<br>
Adding some features (dhcp-server, for instance) still breaks the build,<br=
>
but I suspect that&#39;s just a consequence of -tiny doing it&#39;s thing.<=
br>
<br>
</blockquote>
John, that&#39;s probably correct, the tiny configuration uses uclibc and i=
f you see bug number 5431 (<a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D5431" target=3D"_blank">https://bugzilla.<u></u>yoctoproject=
.org/show_bug.cgi?<u></u>id=3D5431</a>), there are a number of recipes that=
 will not build correctly with the full uclibc, but that was with a full uc=
libc, where as the tiny configuration cuts down ulibc to just support the b=
are minimum.<br>

<br>
Hope that helps with your efforts.<br>
<br>
Sau!<br>
<br>
<br></blockquote>Thanks, Saul, I&#39;ll take a look.<div><br></div><div>A &=
quot;FWIW&quot; for any and all...to get qemu to work with the tiny image, =
I had to do a menuconfig for busybox and add &quot;setsid&quot; and &quot;c=
ttyhack&quot;, otherwise I was getting &quot;not found&quot; and &quot;erro=
r 127&quot; loops on startup. =A0</div>
<div><br></div><div>(hints on how to do this without menuconfig are welcome=
...I tried creating my own recipe and adding package ${PN}-setsid or includ=
ing my own (edited) defconfig, but neither seemed to work.=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-l=
eft:1ex">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
John<br>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
</blockquote></div><br></div></div>

--089e01229a069e641604ed20ea67--
