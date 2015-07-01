Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDA6CE00A54; Wed,  1 Jul 2015 04:41:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89999E00A4B
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 04:41:04 -0700 (PDT)
Received: by oiyy130 with SMTP id y130so29625310oiy.0
	for <yocto@yoctoproject.org>; Wed, 01 Jul 2015 04:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sILlQ27o4JoIsxYnsJvN/n3gxJ1A0oSouPD+w9IsXGI=;
	b=gmicO8oANW4bVMPjw1p8gaiIrgTWLMEqrW5WmxIMRGks1mDoHWL4sJtSSSg5FqYhy9
	pzustAp/sal50mst4MvpVNB/8xyhgikiGr76SyOKg/WXTI9gC85RPG21BS6bnRQQ/84J
	OYzJiHCMiR3bfnQyaGXUcqU8kIhlOtvGl9OQouCsUi8bLWyIaiDVIO/2+so6zm/GZ9zF
	Lwbqbn9+iHeUCpcdy5ZqWF+yPJ1nPGeVSfZflhm88LT3asu6DOpowrLUQ41pVUvd/Psu
	aqioPJuuO3H0/WCbbg9TZMavAyY4dydv34gpYzfjYQxMfcQ0yGr9pG3OFpdvm8vr5M7u
	nF6g==
MIME-Version: 1.0
X-Received: by 10.182.114.138 with SMTP id jg10mr13826112obb.55.1435750863354; 
	Wed, 01 Jul 2015 04:41:03 -0700 (PDT)
Received: by 10.60.150.76 with HTTP; Wed, 1 Jul 2015 04:41:03 -0700 (PDT)
Received: by 10.60.150.76 with HTTP; Wed, 1 Jul 2015 04:41:03 -0700 (PDT)
In-Reply-To: <A50844B104EDFA45BBC46099A9C6C8407B0BB7D6@SPCCOREXCMBX01.AD.SPIRENTCOM.COM>
References: <A50844B104EDFA45BBC46099A9C6C8407B0BB7D6@SPCCOREXCMBX01.AD.SPIRENTCOM.COM>
Date: Wed, 1 Jul 2015 07:41:03 -0400
Message-ID: <CAFZh4h_P6NrLmWNuK-4d0UYANwR0DfB3RBTOGZ_AjpszFz6a9g@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: "Stanciu, Alin" <Alin.Stanciu@spirent.com>
Cc: yocto@yoctoproject.org
Subject: Re: Retrieve list of all software/applications/packages installed on Yocto
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
X-List-Received-Date: Wed, 01 Jul 2015 11:41:08 -0000
Content-Type: multipart/alternative; boundary=001a11c2e0d032449d0519cecc84

--001a11c2e0d032449d0519cecc84
Content-Type: text/plain; charset=UTF-8

On Jul 1, 2015 7:34 AM, "Stanciu, Alin" <Alin.Stanciu@spirent.com> wrote:
>
> Hello,
>
>
>
> I would simply like to know how to obtain a list of all software
packages/products (basically all applications) running in my Yocto build.
>
>
>
> Can this be done via a recipe? How can I find out whether my build has a
recipe? What are other ways are there to get the listing?
>
>
>
> Thanks
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> Spirent Communications e-mail confidentiality.
> ------------------------------------------------------------------------
> This e-mail contains confidential and / or privileged information
belonging to Spirent Communications plc, its affiliates and / or
subsidiaries. If you are not the intended recipient, you are hereby
notified that any disclosure, copying, distribution and / or the taking of
any action based upon reliance on the contents of this transmission is
strictly forbidden. If you have received this message in error please
notify the sender by return e-mail and delete it from your system.
>
> Spirent Communications plc
> Northwood Park, Gatwick Road, Crawley, West Sussex, RH10 9XN, United
Kingdom.
> Tel No. +44 (0) 1293 767676
> Fax No. +44 (0) 1293 767677
>
> Registered in England Number 470893
> Registered at Northwood Park, Gatwick Road, Crawley, West Sussex, RH10
9XN, United Kingdom.
>
> Or if within the US,
>
> Spirent Communications,
> 27349 Agoura Road, Calabasas, CA, 91301, USA.
> Tel No. 1-818-676- 2300
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

When you build your image ... a manifest file will contain the list of
packages (with versions) contained in that image.

If you have a running system, you can generate kind of the same list
(depending on which package manager is being used - if any) by running a
command like opkg list-installed.

Regards,

Brian

--001a11c2e0d032449d0519cecc84
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Jul 1, 2015 7:34 AM, &quot;Stanciu, Alin&quot; &lt;<a href=3D"mailto:Ali=
n.Stanciu@spirent.com">Alin.Stanciu@spirent.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; I would simply like to know how to obtain a list of all software packa=
ges/products (basically all applications) running in my Yocto build.<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; Can this be done via a recipe? How can I find out whether my build has=
 a recipe? What are other ways are there to get the listing?<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; Spirent Communications e-mail confidentiality.<br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; This e-mail contains confidential and / or privileged information belo=
nging to Spirent Communications plc, its affiliates and / or subsidiaries. =
If you are not the intended recipient, you are hereby notified that any dis=
closure, copying, distribution and / or the taking of any action based upon=
 reliance on the contents of this transmission is strictly forbidden. If yo=
u have received this message in error please notify the sender by return e-=
mail and delete it from your system.<br>
&gt;<br>
&gt; Spirent Communications plc<br>
&gt; Northwood Park, Gatwick Road, Crawley, West Sussex, RH10 9XN, United K=
ingdom.<br>
&gt; Tel No. +44 (0) 1293 767676<br>
&gt; Fax No. +44 (0) 1293 767677<br>
&gt;<br>
&gt; Registered in England Number 470893<br>
&gt; Registered at Northwood Park, Gatwick Road, Crawley, West Sussex, RH10=
 9XN, United Kingdom.<br>
&gt;<br>
&gt; Or if within the US, <br>
&gt;<br>
&gt; Spirent Communications,<br>
&gt; 27349 Agoura Road, Calabasas, CA, 91301, USA.<br>
&gt; Tel No. 1-818-676- 2300 <br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;</p>
<p dir=3D"ltr">When you build your image ... a manifest file will contain t=
he list of packages (with versions) contained in that image.</p>
<p dir=3D"ltr">If you have a running system, you can generate kind of the s=
ame list (depending on which package manager is being used - if any) by run=
ning a command like opkg list-installed.</p>
<p dir=3D"ltr">Regards,</p>
<p dir=3D"ltr">Brian</p>

--001a11c2e0d032449d0519cecc84--
