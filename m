Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A330E00B2B; Sat,  7 Nov 2015 10:04:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0868E00AFD
	for <yocto@yoctoproject.org>; Sat,  7 Nov 2015 10:04:36 -0800 (PST)
Received: by iody8 with SMTP id y8so151554894iod.1
	for <yocto@yoctoproject.org>; Sat, 07 Nov 2015 10:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=yfSOd/twzsm3jbw0wq4kM0Al4v3jaur9AxA/Sj8/0A4=;
	b=bNCBZZ7oHdY17zo2WZV9JwkNMvv1tZfSGlYetC4PPA6vaOV18XXz9tzany96PAs2OI
	+189BR2BHElz5VMG53F6GTrUd8OBkJH8k/GTT+6m0fe6z/xxjWSFZVTI2wyAufyBD7kF
	JCA+CpFzoCEi+ZbN03sAmQ/vwxMEzMdpiC9U3Qci4xhGUvjihtKgckdTkpT1qQ58MZ7a
	zF5UJEmfluyEWviKJT0yGfaHBD052q8noCoAst6X8Z382We1lwvDgHKx2aN7h0aj0qh3
	cFUYzm6+hX60h4LBQcgqqyjo8KtX+d3To1tUHb8fIurpQ5o5/CDgskdRUd3DLZiA+zPo
	Ex/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=yfSOd/twzsm3jbw0wq4kM0Al4v3jaur9AxA/Sj8/0A4=;
	b=ZW/yQx6V5DpLck9nndbptZuqszQ4uEg9VdVVa+Al/FTFIkTUDlmAOHlxVKycuHlgYt
	7FLC7rQMhsEqNHLUmTNv0iwaPE3hArwQFQ8s/5uccGv3+aoFusCGEAxH10qz31m2uXop
	z/lhLn5G28os9FJqMQYRqw0JXp59fY72+H/vni8PbYTX1DWa2N55EKbhdETRGTo/iMx8
	5aiDBPbP1XUS8vy2yQ3poT2drrl8sVIWzAHEpl4vRZpG8qDRBu7VF5CEZS5EEh6xCdYi
	xfQF1HzMLtf9pfbJXKrDNnUraiNjxjUKpDjI1qWxU5vy7Pv6g4/Y4WJc/CO7PKdLgDOv
	rCfw==
X-Received: by 10.107.38.70 with SMTP id m67mr23136224iom.98.1446919476038;
	Sat, 07 Nov 2015 10:04:36 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.93.7 with HTTP; Sat, 7 Nov 2015 10:04:16 -0800 (PST)
In-Reply-To: <30C2D590D16A5C46ADFE65219103779853A6C63E@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779853A6C63E@AZ-US1EXMB03.global.avaya.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Sat, 7 Nov 2015 11:04:16 -0700
X-Google-Sender-Auth: I-v8TGQiehn4xbZ5uHPoVUy5c9c
Message-ID: <CABcZANmS-a-SXomN_d_Vp26=cioPLJLxfMXNd_W1XL9ZEdfmig@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Calling python function from shell function
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
X-List-Received-Date: Sat, 07 Nov 2015 18:04:38 -0000
Content-Type: multipart/alternative; boundary=001a1140fe406356ea0523f7312b

--001a1140fe406356ea0523f7312b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 7, 2015 at 10:27 AM, Vuille, Martin (Martin) <vmartin@avaya.com=
>
wrote:

> In my custom .bbclass, I have a python function
>
>
>
> python whatever () {
>
>     =E2=80=A6
>
> }
>
>
>
> and I would like to call it from a shell function
>
>
>
> do_something () {
>
>     =E2=80=A6
>
>     whatever
>
>     =E2=80=A6
>
> }
>
>
>
> but bitbake gives me an error =E2=80=9Cwhatever: not found=E2=80=9D when =
building
>
> recipes based on this class
>
>
>
> Is what I am trying to do possible? Do I have the syntax wrong?
>

Not doable, no. You could make a python do_something which calls both
`whatever` and your shell `something_shell`, though. i.e.

python whatever () {
    pass
}

do_something_shell () {
    :
}

python do_something () {
    bb.build.exec_func("whatever", d)
    bb.build.exec_func("something_shell", d)
}
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1140fe406356ea0523f7312b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sat, Nov 7, 2015 at 10:27 AM, Vuille, Martin (Martin) <span dir=3D"ltr">=
&lt;<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">In my custom .bbclass, I have a python function<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">python whatever () {<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 =E2=80=A6<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">}<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">and I would like to call it fro=
m a shell function<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">do_something () {<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 =E2=80=A6<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 whatever<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0 =C2=A0=E2=80=A6<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">}<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">but bitbake gives me an error =
=E2=80=9Cwhatever: not found=E2=80=9D when building<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">recipes based on this class<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is what I am trying to do possi=
ble? Do I have the syntax wrong?</span></p></blockquote></div><br>Not doabl=
e, no. You could make a python do_something which calls both `whatever` and=
 your shell `something_shell`, though. i.e.</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">python whatever () {</div><div class=
=3D"gmail_extra">=C2=A0 =C2=A0 pass</div><div class=3D"gmail_extra">}</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">do_somethin=
g_shell () {</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 :</div><div clas=
s=3D"gmail_extra">}</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">python do_something () {</div><div class=3D"gmail_extra">=C2=
=A0 =C2=A0 bb.build.exec_func(&quot;whatever&quot;, d)</div><div class=3D"g=
mail_extra">=C2=A0 =C2=A0 bb.build.exec_func(&quot;something_shell&quot;, d=
)</div><div class=3D"gmail_extra">}</div><div class=3D"gmail_extra">-- <br>=
<div class=3D"gmail_signature">Christopher Larson<br>clarson at kergoth dot=
 com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<b=
r>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a1140fe406356ea0523f7312b--
