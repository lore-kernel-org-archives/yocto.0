Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D33A0E0146F
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 19:22:33 -0800 (PST)
Received: by mail-la0-f45.google.com with SMTP id p9so8020740laa.18
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 19:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TK7XX4cxoA0kV/ogLWgSQ/fR2ksXqK2DXTh8hZ8PLMo=;
	b=v6DnnW9fGHFQyUd3d1TLm5FZ5QgF8rd+GJ1h9pFAPtPz4Xn1tFX1jieQDiFVcp3Og2
	4TSV0Nf7ueyryFFXM4VuqjplQbWy/vfqYBfanbKlMPHmmqZoFyVbgyirP3gHj8a4nFzA
	qEuLNZXQEcCl0Vwd4p9U3zEUihtW7Fp4e25gyyT+4i7y876WG0irUV9flDlOjfWkcNbA
	X7/yIq3y44C6wvI32CWzRMEXcVcFAY/Di3rhX3OBWMOOtukQztlEriHoMnHvwg2Ynz/q
	6y1iio1nm5WJ0Si8bTT4uflIQigGA87zSHzXB/7WWH57OAZoV1WFReYOldSwmSlHhAOo
	lfiQ==
MIME-Version: 1.0
Received: by 10.152.110.18 with SMTP id hw18mr19162970lab.22.1356319352597;
	Sun, 23 Dec 2012 19:22:32 -0800 (PST)
Received: by 10.112.127.35 with HTTP; Sun, 23 Dec 2012 19:22:32 -0800 (PST)
In-Reply-To: <CADkTA4MDzpUdovXTfJ0a04XfPcpiuENu3ERWx--Xmo4EbDvDFA@mail.gmail.com>
References: <alpine.DEB.2.02.1212231024040.27586@oneiric>
	<CADkTA4MDzpUdovXTfJ0a04XfPcpiuENu3ERWx--Xmo4EbDvDFA@mail.gmail.com>
Date: Sun, 23 Dec 2012 23:22:32 -0400
Message-ID: <CADkTA4MAAVVGeOyQ9PAXOhibj4BQK4BnsVmyhWxh6294ONGCNw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel manual seems to make no mention of "defconfig"
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
X-List-Received-Date: Mon, 24 Dec 2012 03:22:34 -0000
Content-Type: multipart/alternative; boundary=bcaec54d4de836ae8504d190b582

--bcaec54d4de836ae8504d190b582
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Dec 23, 2012 at 11:10 PM, Bruce Ashfield
<bruce.ashfield@gmail.com>wrote:

>
>
>
> On Sun, Dec 23, 2012 at 12:26 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:
>
>>
>>   poking around kern-tools for purpose of documenting some stuff and
>> ran across this in "updateme":
>>
>> split_command_line_objects() {
>>         command_line_values=$@
>>
>>         for v in $command_line_values; do
>>             v_base=`basename $v`
>>             case $v_base in
>>                 *.scc) migrate_feature $v
>>                     ;;
>>                 *.cfg) migrate_cfg $v
>>                     ;;
>>                 *.patch|*.diff) migrate_patch $v
>>                     ;;
>>                 defconfig) migrate_cfg $v;;
>>                 *) ;;
>>             esac
>>         done
>> }
>>
>>   AFAICT, there is no mention of a possible "defconfig" entry anywhere
>> in the current yocto kernel manual.
>>
>
> You won't find it there because it isn't specific to the kern-tools, what
> you see
> there is a small wrapper on top of the kernel.bbclass defconfig handling,
> with
> the same end result. So standard yocto/oe-core docs apply here.
>


I also forgot to mention that Darren did cover defconfigs in the yocto
kernel
docs that were put together for the 1.4 release (I think they were posted
here),
so there's better / additional coverage upcoming!

I'm just not near my normal development systems to confirm, since I'm hiding
out for the holidays watching a pack of kids get completely wound up for the
big day!

Cheers,

Bruce


>
> Cheers,
>
> Bruce
>
>
>>
>> rday
>>
>> --
>>
>> ========================================================================
>> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>>                         http://crashcourse.ca
>>
>> Twitter:                                       http://twitter.com/rpjday
>> LinkedIn:                               http://ca.linkedin.com/in/rpjday
>> ========================================================================
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end"
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--bcaec54d4de836ae8504d190b582
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Sun, Dec 23, 2012 at 11:10 PM, Bruce Ashfield <span dir=3D"ltr">=
&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ash=
field@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote"><div class=3D"im">On Sun, Dec 23, 20=
12 at 12:26 PM, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto:rp=
jday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt;</span>=
 wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
=A0 poking around kern-tools for purpose of documenting some stuff and<br>
ran across this in &quot;updateme&quot;:<br>
<br>
split_command_line_objects() {<br>
=A0 =A0 =A0 =A0 command_line_values=3D$@<br>
<br>
=A0 =A0 =A0 =A0 for v in $command_line_values; do<br>
=A0 =A0 =A0 =A0 =A0 =A0 v_base=3D`basename $v`<br>
=A0 =A0 =A0 =A0 =A0 =A0 case $v_base in<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *.scc) migrate_feature $v<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *.cfg) migrate_cfg $v<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *.patch|*.diff) migrate_patch $v<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 defconfig) migrate_cfg $v;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *) ;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 esac<br>
=A0 =A0 =A0 =A0 done<br>
}<br>
<br>
=A0 AFAICT, there is no mention of a possible &quot;defconfig&quot; entry a=
nywhere<br>
in the current yocto kernel manual.<br></blockquote><div><br></div></div><d=
iv>You won&#39;t find it=A0there because it isn&#39;t specific to the kern-=
tools, what you see</div><div>there is a small wrapper on top of the kernel=
.bbclass defconfig handling, with</div>

<div>the same end result. So standard yocto/oe-core docs apply here.</div><=
/div></div></div></blockquote><div><br></div><div><br></div><div style>I al=
so forgot to mention that Darren did cover defconfigs in the yocto kernel=
=A0</div>
<div style>docs that were put together for the 1.4 release (I think they we=
re posted here),</div><div style>so there&#39;s better / additional coverag=
e upcoming!</div><div style><br></div><div style>I&#39;m just not near my n=
ormal development systems to confirm, since I&#39;m hiding</div>
<div style>out for the holidays watching a pack of kids get completely woun=
d up for the</div><div style>big day!</div><div style><br></div><div style>=
Cheers,</div><div style><br></div><div style>Bruce</div><div>=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">
<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div=
><br></div><div>Cheers,</div><div><br></div><div>Bruce</div><div class=3D"i=
m"><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">


<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div><span class=3D"HOEnZb"><font color=3D"#888888"><br=
><br clear=3D"all"><div><br></div>-- <br>&quot;Thou shalt not follow the NU=
LL pointer, for chaos and madness await thee at its end&quot;
</font></span></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Thou s=
halt not follow the NULL pointer, for chaos and madness await thee at its e=
nd&quot;
</div></div>

--bcaec54d4de836ae8504d190b582--
