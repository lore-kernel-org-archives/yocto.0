Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 031C4E00770; Wed,  7 May 2014 05:46:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (diego.sueiro[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0A13E00B1E
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 05:46:31 -0700 (PDT)
Received: by mail-qg0-f44.google.com with SMTP id i50so960947qgf.17
	for <yocto@yoctoproject.org>; Wed, 07 May 2014 05:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=qPE5/3kGtGRPtBZcHsEytykGfDGeTKsk0TM7lr4PmOA=;
	b=jlpTJ3WTBf994TJaTw4K5w1o+6TkVKreVWosYwGLIwXgHJJaw4ENsK18JwJP909kLv
	4uIStgSf0HOAQkwt5q6Z4vBGxH1CP6h5RULorNyrNTDxKcedCgdnZYeHdudAAG8G9rz/
	JpMntWGjKjTOArt2deLtpxC4el8x4Gf8MnZUvDRlhE4jc4KkYI2W6UP0goBEQSLQhbV1
	zmPGOGS9eUAXvjlihRXxLk8ssZEMBUb3WOnTjJ0U0X6VmlPm1DQU2lbia89k3g8ZtjSF
	hIbH36d7pG04FfzrrCdkzVXdEtDD8R0JJvuHsOrpo4JfGpz9sbCGKVmDWRAPToHnJMlP
	e4Sw==
X-Received: by 10.140.103.74 with SMTP id x68mr59270086qge.82.1399466790131;
	Wed, 07 May 2014 05:46:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Wed, 7 May 2014 05:46:10 -0700 (PDT)
In-Reply-To: <CAMCfZKEZgu_o1fqK3jR8kTxmMKVVStuskM7AcmQJXzdkaP7Z-A@mail.gmail.com>
References: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>
	<CAMKF1spVm46k7s+xm0BKCu6=sHR4npEbHLfAUVfQDOve9thc0A@mail.gmail.com>
	<CAMCfZKGF=dftUZ2AEwmUBCaGjBLOn5PAnrWuf4hDviu_3anNrw@mail.gmail.com>
	<CAMKF1sqfnZnMVufmitCS-C1QU6PCzOcqqJWmNrYE1J7JnBf5fg@mail.gmail.com>
	<CAMCfZKEZgu_o1fqK3jR8kTxmMKVVStuskM7AcmQJXzdkaP7Z-A@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 7 May 2014 09:46:10 -0300
Message-ID: <CAMCfZKFHkaAHV0mUZeYoDuS1V5VvBx_7z4BRO27UoGqpO=vJ0w@mail.gmail.com>
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
X-List-Received-Date: Wed, 07 May 2014 12:46:38 -0000
Content-Type: multipart/alternative; boundary=001a1134eda8e69ee904f8cec046

--001a1134eda8e69ee904f8cec046
Content-Type: text/plain; charset=ISO-8859-1

Folks,

On Tue, May 6, 2014 at 3:48 PM, Diego Sueiro <diego.sueiro@gmail.com> wrote:

> On Tue, May 6, 2014 at 3:39 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Tue, May 6, 2014 at 11:34 AM, Diego Sueiro <diego.sueiro@gmail.com>
>> wrote:
>> >
>> > It's hard to say. But when I try to execute it I receive: "cannot
>> execute
>> > binary file".
>> > And the output of "file" command is: "data".
>> >
>> > My bet is that the system was powered down during the update process.
>>
>> what happens if you reinstall it ?
>
>
> It works.
> But the problem is that --verify option is not working.
> Even if I remove a file from the installed package it did not point for a
> missing file.
>

Any thoughts?



Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a1134eda8e69ee904f8cec046
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Folks,</div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Tue, May 6, 2014 at 3:48 PM, Dieg=
o Sueiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" ta=
rget=3D"_blank">diego.sueiro@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"gmail_extra"><div class=3D"adM=
"><div class=3D""><div class=3D"gmail_quote">On Tue, May 6, 2014 at 3:39 PM=
, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Tue, May 6, 2014 at 11:34 AM, Diego =
Sueiro &lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">dieg=
o.sueiro@gmail.com</a>&gt; wrote:<br>



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

</blockquote></div><br>Any thoughts?</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra"><br><br clear=3D"all"><div><div dir=3D"ltr">=
<div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administ=
rador do Embarcados<br>

<a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;=
utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=
=3D"_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll*/=
<br></div>

</div>
</div></div>

--001a1134eda8e69ee904f8cec046--
