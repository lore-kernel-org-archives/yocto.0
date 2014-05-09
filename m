Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E960E00B95; Fri,  9 May 2014 08:23:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.47 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qa0-f47.google.com (unknown [209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D1C4E0070F
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 08:22:59 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id s7so4187320qap.20
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 08:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=5MpVKVeRaifiNyo1hJFJq/Li+IeQQqsQ98I1o9S5hfI=;
	b=hDqPC8GRDnuXoTG/j018z7E9Njvro5jqWZICyrCmtd5+IxCqqTDYkT6kEg9KYmPQcy
	tGzLxAUAKP01t4CMLKFGvj9fOUVl2wtSlK+c64VPANyCoP6ZBkypjPtYHyrG8EWWumz2
	cuH0QTapdz8kLip6LSi8S8pDgti963KbO5Ubx0upcX+ikGQopXNE38QzI6x/38b0ghyy
	qovni56PBake9tTUnQbbFpTjaKlmuyPX435dwm2kps1nEWvln1DPHvcJVACg0pf31fMq
	UAyFtL35m7tRGgJA4HUXmMI9tNIfKGeTIz5f4uUZ51RlIw//uOdIu4swdlXZe0MV+60b
	tHhQ==
X-Received: by 10.224.167.209 with SMTP id r17mr5999872qay.1.1399648659136;
	Fri, 09 May 2014 08:17:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Fri, 9 May 2014 08:17:18 -0700 (PDT)
In-Reply-To: <CAMCfZKFHkaAHV0mUZeYoDuS1V5VvBx_7z4BRO27UoGqpO=vJ0w@mail.gmail.com>
References: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>
	<CAMKF1spVm46k7s+xm0BKCu6=sHR4npEbHLfAUVfQDOve9thc0A@mail.gmail.com>
	<CAMCfZKGF=dftUZ2AEwmUBCaGjBLOn5PAnrWuf4hDviu_3anNrw@mail.gmail.com>
	<CAMKF1sqfnZnMVufmitCS-C1QU6PCzOcqqJWmNrYE1J7JnBf5fg@mail.gmail.com>
	<CAMCfZKEZgu_o1fqK3jR8kTxmMKVVStuskM7AcmQJXzdkaP7Z-A@mail.gmail.com>
	<CAMCfZKFHkaAHV0mUZeYoDuS1V5VvBx_7z4BRO27UoGqpO=vJ0w@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 9 May 2014 12:17:18 -0300
Message-ID: <CAMCfZKHVqiEKYARKDyirRJCG+9iLgZrK2pqSwuOSv29=s+m-0Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM to Verify Installed Packages
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
X-List-Received-Date: Fri, 09 May 2014 15:23:04 -0000
Content-Type: multipart/alternative; boundary=089e0149cd7423653a04f8f9192c

--089e0149cd7423653a04f8f9192c
Content-Type: text/plain; charset=ISO-8859-1

Folks,

After 1 day of debugging I found what was causing the issue.

Commenting out the to lines (590-591) below on lib/verify.c
(showVerifyPackage function) solved the issue:

    /* If not verifying %ghost, skip ghost files. */
    /* XXX the broken!!! logic disables %ghost queries always. */
    if (!(FF_ISSET(qva->qva_fflags, GHOST) && FF_ISSET(fflags, GHOST)))
        continue;


I've tested "rpm -V" on qemuarm and qemux86 and it's reporting errors for
missing files and MD5 error at least.

I really don't know what is the side effect of this change and any help on
trying to understand what's going on with this bug is very welcome.



Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/


On Wed, May 7, 2014 at 9:46 AM, Diego Sueiro <diego.sueiro@gmail.com> wrote:

> Folks,
>
> On Tue, May 6, 2014 at 3:48 PM, Diego Sueiro <diego.sueiro@gmail.com>wrote:
>
>> On Tue, May 6, 2014 at 3:39 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>> On Tue, May 6, 2014 at 11:34 AM, Diego Sueiro <diego.sueiro@gmail.com>
>>> wrote:
>>> >
>>> > It's hard to say. But when I try to execute it I receive: "cannot
>>> execute
>>> > binary file".
>>> > And the output of "file" command is: "data".
>>> >
>>> > My bet is that the system was powered down during the update process.
>>>
>>> what happens if you reinstall it ?
>>
>>
>> It works.
>> But the problem is that --verify option is not working.
>> Even if I remove a file from the installed package it did not point for a
>> missing file.
>>
>
> Any thoughts?
>
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>
>
> /*long live rock 'n roll*/
>

--089e0149cd7423653a04f8f9192c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div>After 1 day of debugging I found=
 what was causing the issue.<br></div><div><br></div><div style>Commenting =
out the to lines (590-591) below on lib/verify.c (showVerifyPackage functio=
n) solved the issue:</div>

<div style><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding=
:0px"><div style><div>=A0 =A0 /* If not verifying %ghost, skip ghost files.=
 */</div><div>=A0 =A0 /* XXX the broken!!! logic disables %ghost queries al=
ways. */</div>

<div>=A0 =A0 if (!(FF_ISSET(qva-&gt;qva_fflags, GHOST) &amp;&amp; FF_ISSET(=
fflags, GHOST)))</div><div>=A0 =A0 =A0 =A0 continue;</div></div></blockquot=
e><br></div><div style>I&#39;ve tested &quot;rpm -V&quot; on qemuarm and qe=
mux86 and it&#39;s reporting errors for missing files and MD5 error at leas=
t.=A0</div>

<div style><br></div><div style>I really don&#39;t know what is the side ef=
fect of this change and any help on trying to understand what&#39;s going o=
n with this bug is very welcome.</div><div style><br></div><div><br></div>

<div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div>Reg=
ards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do=
 Embarcados<br>
<a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;=
utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=
=3D"_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll*/=
<br></div>


</div>
<br><br><div class=3D"gmail_quote">On Wed, May 7, 2014 at 9:46 AM, Diego Su=
eiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=
=3D"_blank">diego.sueiro@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;=
border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex=
">


<div dir=3D"ltr"><div class=3D"gmail_extra">Folks,</div><div class=3D"gmail=
_extra"><div><br><div class=3D"gmail_quote">On Tue, May 6, 2014 at 3:48 PM,=
 Diego Sueiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.co=
m" target=3D"_blank">diego.sueiro@gmail.com</a>&gt;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"gmail_extra"><div><div><div class=3D"gmail_q=
uote">

On Tue, May 6, 2014 at 3:39 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</spa=
n> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>On Tue, May 6, 2014 at 11:34 AM, Diego Sueiro &lt;<a =
href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.sueiro@gmail=
.com</a>&gt; wrote:<br>





&gt;<br>
&gt; It&#39;s hard to say. But when I try to execute it I receive: &quot;ca=
nnot execute<br>
&gt; binary file&quot;.<br>
&gt; And the output of &quot;file&quot; command is: &quot;data&quot;.<br>
&gt;<br>
&gt; My bet is that the system was powered down during the update process.<=
br>
<br>
</div>what happens if you reinstall it ?</blockquote></div><br></div></div>=
It works.</div><div class=3D"gmail_extra">But the problem is that --verify =
option is not working.</div><div class=3D"gmail_extra">Even if I remove a f=
ile from the installed package it did not point for a missing file.</div>



</blockquote></div><br></div>Any thoughts?</div><div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra"><br><br clear=3D"all"><div><div d=
ir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br>
<br>Administrador do Embarcados<br>
<a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;=
utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=
=3D"_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll*/=
<br></div>



</div>
</div></div></div>
</blockquote></div><br></div></div>

--089e0149cd7423653a04f8f9192c--
