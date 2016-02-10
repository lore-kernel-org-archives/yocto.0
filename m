Return-Path: <joel.zhou@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88C09E00911; Wed, 10 Feb 2016 12:09:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C09B9E00929
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 12:09:26 -0800 (PST)
Received: by mail-ob0-f178.google.com with SMTP id wb13so44737613obb.1
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 12:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GEKB8NNLB/EXK9QLB+0Ef+/nVamzAD8cLrCOeFy7tjU=;
	b=HdzbjYzEskrhjq+SotcFJTgJwUyXJWDtwm9pCzOuubska6KExL3msR3TZVktH7VDOm
	QKi9LvQWPAXTrnu0u1/gwP6eiVkz+cm6h0JniqTZN8qwdo/gdhTlkpZSqZweAvGEVNKs
	OdP36qZeK8t+kQVOZgx7qXwIz0K10q/ww12Ew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=GEKB8NNLB/EXK9QLB+0Ef+/nVamzAD8cLrCOeFy7tjU=;
	b=jyUjmEZGa2TM7Wsy9nD17IRSN4KUo/ZJ9hKjwfHOw97xeb6+k3f5Sp45vmTQaCVXFu
	yiEv6+Sx58wekkbZOiwyqChUlfFcysWImvZj9SA6/bVAThEXUJ2VVBiGj3q1FTcuKHIz
	jqDMDbCyVqGjcdBvSdEu51m5BtYp50EhJK0igG/eJx1CRtYza6EjMfJaZ9FTXVADbjGY
	hNPsx4H+O/tzCPvG8NTYwKnh0ru5s8R76JGlB2xfM/SPfc95xv6StFBRkb2FBRLGcKQ6
	D4zFMCRwMflRXC2PMA7PTIDLii+FBiVAgezNfvcAgBx+jsCV6G/w3hAuXWLcJbPNEJ/I
	svcA==
X-Gm-Message-State: AG10YOSq3DtC4NFekzYU8hvjvZD0gLXjPeQC8zhE7zWpywjTNPtCWTItH8PSMH06xF7hpHUZ3efpfnxFGklMqj2T
MIME-Version: 1.0
X-Received: by 10.60.59.37 with SMTP id w5mr21247984oeq.44.1455134966119; Wed,
	10 Feb 2016 12:09:26 -0800 (PST)
Received: by 10.202.93.69 with HTTP; Wed, 10 Feb 2016 12:09:26 -0800 (PST)
In-Reply-To: <CABcZANkwg5mf5qAdjvP1kxjeynM__O2-GrQvESPqmQyAKQME+A@mail.gmail.com>
References: <CAAJbk1FY6R1urdH-5oMynmprX4jS1-NkHR2V-z3rnBabN9_ZsQ@mail.gmail.com>
	<CABcZANkwg5mf5qAdjvP1kxjeynM__O2-GrQvESPqmQyAKQME+A@mail.gmail.com>
Date: Wed, 10 Feb 2016 15:09:26 -0500
Message-ID: <CAAJbk1FQ6FMUXkQQBJnpEG1VVdMVNsbPVAt-=NeLf1rEtmeURA@mail.gmail.com>
From: Xi Zhou Zhou <joel.zhou@broadcom.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: yocto@yoctoproject.org
Subject: Re: Inline Python function name define
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
X-List-Received-Date: Wed, 10 Feb 2016 20:09:43 -0000
Content-Type: multipart/alternative; boundary=089e0149d186c262db052b700243

--089e0149d186c262db052b700243
Content-Type: text/plain; charset=UTF-8

The code works for me.


Thanks,
Joel

On Wed, Feb 10, 2016 at 2:04 PM, Christopher Larson <clarson@kergoth.com>
wrote:

> def foo(d):
>     # Do something
>
> FOO = "${@foo(d)}"
>
> On Wed, Feb 10, 2016 at 12:02 PM Xi Zhou Zhou <joel.zhou@broadcom.com>
> wrote:
>
>> Hi,
>>
>> I want to manipulate a variable with inline python function in a recipe.
>> The code is something like this.
>>
>> python newpv() {
>>     return 999
>> }
>>
>> PV = "${@newpv()}"
>>
>>
>> The error is "name 'newpv' is not defined"
>>
>> ERROR: ExpansionError during parsing /home/joelz/poky/build/
>> ../meta-test/recipes-bsp/mytest/mytest.bb: Failure expanding variable
>> PV, expression was ${@newpv()} which triggered exception NameError: name
>> 'newpv' is not defined
>>
>>
>> What's the right way to create inline python function in Yocto recipe?
>>
>>
>> Thanks,
>> Joel
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--089e0149d186c262db052b700243
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The code works for me.</div><div class=3D"gmail_extra"><br=
 clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><br><di=
v>Thanks,</div><div>Joel</div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Feb 10, 2016 at 2:04 PM, Christopher=
 Larson <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=
=3D"_blank">clarson@kergoth.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">def foo(d):<div>=C2=A0 =C2=A0 # Do something=
</div><div><br></div><div>FOO =3D &quot;${@foo(d)}&quot;</div></div><br><di=
v class=3D"gmail_quote"><div><div class=3D"h5"><div dir=3D"ltr">On Wed, Feb=
 10, 2016 at 12:02 PM Xi Zhou Zhou &lt;<a href=3D"mailto:joel.zhou@broadcom=
.com" target=3D"_blank">joel.zhou@broadcom.com</a>&gt; wrote:<br></div></di=
v></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div dir=3D"l=
tr">Hi,<div><br></div><div>I want to manipulate a variable with inline pyth=
on function in a recipe.=C2=A0</div><div>The code is something like this.</=
div><div><br></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none=
;padding:0px"><div><div></div></div></blockquote><div><div style=3D"display=
:block;padding:0.5em;color:rgb(51,51,51);font-family:monospace;background:r=
gb(248,248,248)"><blockquote style=3D"margin:0px 0px 0px 40px;border:none;p=
adding:0px"><div><div><span style=3D"color:rgb(153,0,0);font-weight:bold">p=
ython</span> newpv() {</div></div><div><div>=C2=A0 =C2=A0 <span style=3D"co=
lor:rgb(153,0,0);font-weight:bold">return</span> <span style=3D"color:rgb(0=
,128,128)">999</span></div></div><div><div>}</div></div></blockquote><block=
quote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><div>P=
V =3D <span style=3D"color:rgb(221,17,68)">&quot;<span style=3D"color:rgb(0=
,128,128)">${@newpv()}</span>&quot;</span></div></div></blockquote></div></=
div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><=
div><div></div></div></blockquote><div><div><br></div><div>The error is &qu=
ot;name &#39;newpv&#39; is not defined&quot;</div><div><br></div></div><blo=
ckquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><div=
></div></div></blockquote><div><div style=3D"display:block;overflow-x:auto;=
padding:0.5em;color:rgb(51,51,51);font-family:monospace;background:rgb(248,=
248,248)"><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px"><div><div><span style=3D"color:rgb(0,128,128)">ERROR</span>: Expansion=
Error during parsing <span style=3D"color:rgb(0,153,38)">/home/joelz/poky/b=
uild/</span>../meta-test/recipes-bsp/mytest/mytest.<span style=3D"color:rgb=
(0,128,128)">bb</span>: Failure expanding variable PV, expression was ${<sp=
an>@newpv</span>()} which triggered exception <span style=3D"color:rgb(0,12=
8,128)">NameError</span>: name <span style=3D"color:rgb(221,17,68)">&#39;ne=
wpv&#39;</span> <span style=3D"color:rgb(51,51,51);font-weight:bold">is</sp=
an> <span style=3D"color:rgb(51,51,51);font-weight:bold">not</span> defined=
</div></div></blockquote><div><div><div><div dir=3D"ltr"></div></div></div>=
</div></div></div><div><div><div><div dir=3D"ltr"><br></div><div>What&#39;s=
 the right way to create inline python function in Yocto recipe?</div><div =
dir=3D"ltr"><br></div><div dir=3D"ltr"><br><div>Thanks,</div><div>Joel</div=
></div></div></div>
</div></div></div></div><span class=3D"HOEnZb"><font color=3D"#888888">
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div>
</blockquote></div><br></div>

--089e0149d186c262db052b700243--
