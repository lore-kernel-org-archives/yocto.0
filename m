Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 555FCE00CC2; Tue, 31 Oct 2017 05:28:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B7A4E00C77
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 05:28:05 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id i38so34627529iod.2
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 05:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jh9rJERvCmwotcp3/ql/EvLn7c7HPTSUqJzjmqSOZcs=;
	b=BTGVza0JG4RDUo+q6D/Uy50jpvZQ9Dvowjqdnda5Ncque+vH8a3b2GQ6rj1xvyMhPu
	GToRqDAMAHiz8pjvGvaPbBVOYrlLsC/GMtZGT9g7cq1DN+lFb3DChrxoCAZs0rIW+zV8
	oNXvmIsZBqS4eGKbmffWksDHTa9Dqlf2IH/3OZm1gilC/JWzI5lx8sP9uu41E92KtvSG
	AhGhmkiGHy1UwRSSD6LJgGWI4/1lEoKY7d+gtE7TlvCMOnVUpG+9A7qn09hWcHbUjeSR
	bhxN5J0dd1CbzepYAdcLyODFJ4FyxdHItD9XVWsgNmtfl5SQxIHtly/m3itTenx8ZyHU
	MsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jh9rJERvCmwotcp3/ql/EvLn7c7HPTSUqJzjmqSOZcs=;
	b=SHfN+aEIm8jljbWVwAQ4B7kqS8Rgq9v8IU4u6iea4cOe7D7AMbYNirUlqb3X1/oHrO
	4cI5/dfr704DZAmc52fP8RroPyxDWKUGyBkT4m4/CTcBYsPatyj6MQdPClYqQ4agNx/6
	ljttJx1/BGRCF88e6xLdiGm/enhJZgNDw/cieIcwKgEnwFxcyDCZdEnP91/OKXGpY1+Y
	IqYhmfg5hLp/SyVm5u+q0eR0qp7SDYG4KhovFSuLU4eTygy2B/d+ubMeGGrlDzAIqor3
	rOgI2LuyT2HcDhhI/WPGgmlI4d0LKt1woMkNPYfM/ULvGmkD9nJqZUELapcgJmrXTUn4
	Y1jA==
X-Gm-Message-State: AMCzsaW4UFjQSY9hb9Ucx+/pHJa7agIBkIIi2hGqHew8MX2VfO3o5OGf
	lf5bC4RpvcqXMJeoxko7ASu1Jl2Yy4QP8B45qUiNYw==
X-Google-Smtp-Source: ABhQp+QuVWNcnDDli2UGVE+CLMlh8jJRdBVBR9OJ6WaxBl/vQY/VZyUi87SPP921NQ2ofJ+GP/3EQNGj4MAEFxLpXdU=
X-Received: by 10.36.87.2 with SMTP id u2mr2718988ita.151.1509452885019; Tue,
	31 Oct 2017 05:28:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Tue, 31 Oct 2017 05:27:44 -0700 (PDT)
In-Reply-To: <9e1b73a2-b580-cfbe-164e-d98a90ee0d02@embexus.com>
References: <481c8b41-8497-ac4d-eaa7-d06291b41845@embexus.com>
	<CAJTo0LaVd8oqRgMp4eQ2e9tF_KUht88BgMQh0Dur=SFYDPohXQ@mail.gmail.com>
	<9e1b73a2-b580-cfbe-164e-d98a90ee0d02@embexus.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Oct 2017 12:27:44 +0000
Message-ID: <CAJTo0LYNC6_zZK7n0dFz=+KbhvZV8WVengA8evnqxs46R3s8GQ@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitwise Operations in BBClass
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
X-List-Received-Date: Tue, 31 Oct 2017 12:28:08 -0000
Content-Type: multipart/alternative; boundary="001a1143e8540472aa055cd6e302"

--001a1143e8540472aa055cd6e302
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Two options:

1) fix the bug
2) write the logic in a Python function

On 31 October 2017 at 11:38, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:

> Hi,
>
>
> On 31.10.2017 12:34, Burton, Ross wrote:
>
>> That would be https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11314,
>> $(( isn't supported by our shell parser. Shouldn't be that difficult to =
fix
>> in bitbake.
>>
>
> Any workarrounds for that problem ?
> I tried with expr but it does not recognize bitwise operations like  & ~
> I'm really stucked ...
>
>
>> Ross
>>
>> On 31 October 2017 at 11:27, Ayoub Zaki <ayoub.zaki@embexus.com <mailto:
>> ayoub.zaki@embexus.com>> wrote:
>>
>>     Hello,
>>
>>     I'm trying to get a bitwise operation working in a bitbake bblcass
>>     function but no luck so far :
>>
>>     my_function() {
>>
>>         SZ=3D"`wc -c < ${1}`"
>>
>>         ALIGN_SZ=3D$(((${SZ} + 0x1000 - 1) & ~ (0x1000 - 1)))
>>
>>         .......
>>
>>     }
>>
>>     Bitbake complains with :
>>
>>     ERROR: ExpansionError during parsing
>>     /opt/Projects/Yocto/meta-somelayer/recipes-kernel/linux/linu
>> x-imx_4.1.15.bb
>>     <http://linux-imx_4.1.15.bb>: Failure expanding variable
>>     my_function: NotImplementedError: $((
>>
>>
>>     Any suggestions how to tackle this prob
>> <https://maps.google.com/?q=3Dw+to+tackle+this+prob&entry=3Dgmail&source=
=3Dg>lem
>> ?
>>
>>     Thank you !
>>
>>     --     Ayoub Zaki
>>     Embedded Systems Consultant
>>
>>     Vaihinger Stra=C3=9Fe 2/1
>>     <https://maps.google.com/?q=3DVaihinger+Stra%C3%9Fe+2/1&entry=3D
>> gmail&source=3Dg>
>>     D-71634 Ludwigsburg
>>
>>     Tel.     : +4971415074546 <tel:%2B4971415074546>
>>     Mobile   : +4917662901545 <tel:%2B4917662901545>
>>     Email    : ayoub.zaki@embexus.com <mailto:ayoub.zaki@embexus.com>
>>     Homepage : https://embexus.com
>>     VAT No.  : DE313902634
>>
>>     --     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
> --
> Ayoub Zaki
> Embedded Systems Consultant
>
> Vaihinger Stra=C3=9Fe 2/1
> D-71634 Ludwigsburg
>
> Tel.     : +4971415074546
> Mobile   : +4917662901545
> Email    : ayoub.zaki@embexus.com
> Homepage : https://embexus.com
> VAT No.  : DE313902634
>
>

--001a1143e8540472aa055cd6e302
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Two options:<div><br></div><div>1) fix the bug</div><div>2=
) write the logic in a Python function</div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On 31 October 2017 at 11:38, Ayoub Zaki <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_bl=
ank">ayoub.zaki@embexus.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">Hi,<span class=3D""><br>
<br>
<br>
On 31.10.2017 12:34, Burton, Ross wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
That would be <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D11314" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoprojec=
t.<wbr>org/show_bug.cgi?id=3D11314</a>, $(( isn&#39;t supported by our shel=
l parser. Shouldn&#39;t be that difficult to fix in bitbake.<br>
</blockquote>
<br></span>
Any workarrounds for that problem ?<br>
I tried with expr but it does not recognize bitwise operations like=C2=A0 &=
amp; ~<br>
I&#39;m really stucked ...<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Ross<span class=3D""><br>
<br>
On 31 October 2017 at 11:27, Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki@em=
bexus.com" target=3D"_blank">ayoub.zaki@embexus.com</a> &lt;mailto:<a href=
=3D"mailto:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexus.com=
</a><wbr>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 Hello,<br>
<br>
=C2=A0 =C2=A0 I&#39;m trying to get a bitwise operation working in a bitbak=
e bblcass<br>
=C2=A0 =C2=A0 function but no luck so far :<br>
<br>
=C2=A0 =C2=A0 my_function() {<br>
<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0 SZ=3D&quot;`wc -c &lt; ${1}`&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0 ALIGN_SZ=3D$(((${SZ} + 0x1000 - 1) &amp; ~=
 (0x1000 - 1)))<br>
<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0 .......<br>
<br>
=C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 Bitbake complains with :<br>
<br>
=C2=A0 =C2=A0 ERROR: ExpansionError during parsing<br>
=C2=A0 =C2=A0 /opt/Projects/Yocto/meta-somel<wbr>ayer/recipes-kernel/linux/=
<a href=3D"http://linux-imx_4.1.15.bb" rel=3D"noreferrer" target=3D"_blank"=
>linu<wbr>x-imx_4.1.15.bb</a><br></span>
=C2=A0 =C2=A0 &lt;<a href=3D"http://linux-imx_4.1.15.bb" rel=3D"noreferrer"=
 target=3D"_blank">http://linux-imx_4.1.15.bb</a>&gt;: Failure expanding va=
riable<span class=3D""><br>
=C2=A0 =C2=A0 my_function: NotImplementedError: $((<br>
<br>
<br>
=C2=A0 =C2=A0 Any suggestions ho<a href=3D"https://maps.google.com/?q=3Dw+t=
o+tackle+this+prob&amp;entry=3Dgmail&amp;source=3Dg">w to tackle this prob<=
/a>lem ?<br>
<br>
=C2=A0 =C2=A0 Thank you !<br>
<br>
=C2=A0 =C2=A0 --=C2=A0 =C2=A0 =C2=A0Ayoub Zaki<br>
=C2=A0 =C2=A0 Embedded Systems Consultant<br>
<br>
=C2=A0 =C2=A0 Vaihinger Stra=C3=9Fe 2/1<br></span>
=C2=A0 =C2=A0 &lt;<a href=3D"https://maps.google.com/?q=3DVaihinger+Stra%C3=
%9Fe+2/1&amp;entry=3Dgmail&amp;source=3Dg" rel=3D"noreferrer" target=3D"_bl=
ank">https://maps.google.com/?q=3DVa<wbr>ihinger+Stra%C3%9Fe+2/1&amp;entry=
=3D<wbr>gmail&amp;source=3Dg</a>&gt;<br>
=C2=A0 =C2=A0 D-71634 Ludwigsburg<br>
<br>
=C2=A0 =C2=A0 Tel.=C2=A0 =C2=A0 =C2=A0: <a href=3D"tel:%2B4971415074546" va=
lue=3D"+4971415074546" target=3D"_blank">+4971415074546</a> &lt;tel:%2B4971=
415074546&gt;<br>
=C2=A0 =C2=A0 Mobile=C2=A0 =C2=A0: <a href=3D"tel:%2B4917662901545" value=
=3D"+4917662901545" target=3D"_blank">+4917662901545</a> &lt;tel:%2B4917662=
901545&gt;<br>
=C2=A0 =C2=A0 Email=C2=A0 =C2=A0 : <a href=3D"mailto:ayoub.zaki@embexus.com=
" target=3D"_blank">ayoub.zaki@embexus.com</a> &lt;mailto:<a href=3D"mailto=
:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexus.com</a><wbr>&=
gt;<span class=3D""><br>
=C2=A0 =C2=A0 Homepage : <a href=3D"https://embexus.com" rel=3D"noreferrer"=
 target=3D"_blank">https://embexus.com</a><br>
=C2=A0 =C2=A0 VAT No.=C2=A0 : DE313902634<br>
<br>
=C2=A0 =C2=A0 --=C2=A0 =C2=A0 =C2=A0_____________________________<wbr>_____=
_____________<br>
=C2=A0 =C2=A0 yocto mailing list<br></span>
=C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt;<br>
=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listi=
nfo/yocto</a><br>
=C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or<wbr>g/l=
istinfo/yocto</a>&gt;<br>
<br>
<br>
</blockquote><div class=3D"HOEnZb"><div class=3D"h5">
<br>
-- <br>
Ayoub Zaki<br>
Embedded Systems Consultant<br>
<br>
Vaihinger Stra=C3=9Fe 2/1<br>
D-71634 Ludwigsburg<br>
<br>
Tel.=C2=A0 =C2=A0 =C2=A0: <a href=3D"tel:%2B4971415074546" value=3D"+497141=
5074546" target=3D"_blank">+4971415074546</a><br>
Mobile=C2=A0 =C2=A0: <a href=3D"tel:%2B4917662901545" value=3D"+49176629015=
45" target=3D"_blank">+4917662901545</a><br>
Email=C2=A0 =C2=A0 : <a href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_b=
lank">ayoub.zaki@embexus.com</a><br>
Homepage : <a href=3D"https://embexus.com" rel=3D"noreferrer" target=3D"_bl=
ank">https://embexus.com</a><br>
VAT No.=C2=A0 : DE313902634<br>
<br>
</div></div></blockquote></div><br></div>

--001a1143e8540472aa055cd6e302--
