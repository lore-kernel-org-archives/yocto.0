Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E71CE00E4D; Mon, 12 Mar 2018 03:39:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99028E0081A
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 03:39:35 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id p78so10807775iod.13
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 03:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jOzHd2kW7kK+R8LXN8BT2KIBk+VK+M5jJkgYRXSRGj4=;
	b=s/8HXOPVBqO/LKINQ3N1RHhr9mA/0HDZB+0EYlQYS1XGQlbw3A8ewky+5Y3yHrBjH+
	sSr9wPfY1sF2UAguAOJLscUMtWlM0Hrl/BAzU0Ml1oBbktWdhCXV8T7YtZChSLx6e2b7
	RDV9Qv4dG0YBfeY8Hsqkeg/nglalNXVZzC5OxKOmFh3F/w6W37pILmMVRn1g2qPiDfIk
	12OAwd0ajiln9xyOxUJbhQeNTp3qPoBtcdns90BUXkXYKnD3kOVN5ZcjihjQtNfgg9Hd
	3Aua9nVsm1mmYIoPjComBrm2n+EtCnLMAt0we2eJmXlyJd1BswuREVVRHTtygelyFzai
	6F7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jOzHd2kW7kK+R8LXN8BT2KIBk+VK+M5jJkgYRXSRGj4=;
	b=SxzsMqyy3xxp3TGSHz8M+EGe6MCmd5EaFt+DPmU5+U10SjYCjTovVEYRGWuQBLbrBO
	QVBz9HW2upbFLQvA3gnyH7QG5zxYpe3FMFq8Rz9XmIY/4HZUhKXInwgXgT/oFQDQdmL4
	XGpKQJsujmFNloL83v5Pt2KugsB2JvrjGLijrPqV6DgmstePWJEahG8EeC9AppBfp3np
	CGYZ7i3Idh/Rbp9IPt5RNt8XqmiciacSbJeUr9o40YMhXvZE2Gf7BbtlhoYBsPyIraKO
	7cjjpJVlteBtCV5jJCoV626D1Fow4BLMDGt6FMVgME2AvSVIr2juiUqc3KGMIsv/t3lZ
	9twQ==
X-Gm-Message-State: AElRT7FMSNpq23gY5YW18aZ62qb/Zmnkr5lbDRNWmpiZaEmcnqH/Edr5
	F8I/U6M7EVjQOy0s/pwHJoXcAmtdi9wNrbLqvFtkZg==
X-Google-Smtp-Source: AG47ELsd80kFAPblX8hGKhcax83a+744MSucRP+m8SeBiTXPeYx01d1Tk8g3mabbpFTLsg1nueCXz2xkEY0UzMZYE7Q=
X-Received: by 10.107.161.200 with SMTP id k191mr7831092ioe.270.1520851174703; 
	Mon, 12 Mar 2018 03:39:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 12 Mar 2018 03:39:14 -0700 (PDT)
In-Reply-To: <trinity-0bbdd579-574b-43bc-89e6-fd45fef799a3-1520850748905@3c-app-gmx-bs80>
References: <trinity-53cb1c50-6d60-491f-b325-6f30fd900d49-1520839936007@3c-app-gmx-bs80>
	<CAJTo0LaVH0xrRhEeKfb17pNzmFNnXjRxUnnPW=x7PAqBvhPd+Q@mail.gmail.com>
	<trinity-0bbdd579-574b-43bc-89e6-fd45fef799a3-1520850748905@3c-app-gmx-bs80>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Mar 2018 10:39:14 +0000
Message-ID: <CAJTo0Lbi8XVFboq-9j9+sKf5_MTh0-15Q=ezgnmRQCHrH+khwA@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: O_RDONLY ... missed bits/fcntl.h not as expected
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
X-List-Received-Date: Mon, 12 Mar 2018 10:39:37 -0000
Content-Type: multipart/alternative; boundary="001a113e919806663e056734c25e"

--001a113e919806663e056734c25e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you looked at the content of bits/fcntl-32.h?

On 12 March 2018 at 10:32, Arno Steffens <star@gmx.li> wrote:

>
> Sure, sorry if this wasn't clear.
> For me the chain is
> <fcntl.h> includes <bits/fcntl.h>  (see below) and this doesn't include
> <bits/fcntl-linux.h>.
> This is my SDK sysroot for cortexa9-hf.
>
> Arno
>
>
> /*
>  * Copyright (C) 2005-2011 by Wind River Systems, Inc.
>  *
>  * Permission is hereby granted, free of charge, to any person obtaining =
a
> copy
>  * of this software and associated documentation files (the "Software"),
> to deal
>  * in the Software without restriction, including without limitation the
> rights
>  * to use, copy, modify, merge, publish, distribute, sublicense, and/or
> sell
>  * copies of the Software, and to permit persons to whom the Software is
>  * furnished to do so, subject to the following conditions:
>  *
>  * The above copyright notice and this permission notice shall be include=
d
> in
>  * all copies or substantial portions of the Software.
>  *
>  * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRES=
S
> OR
>  * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILIT=
Y,
>  * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHAL=
L
> THE
>  * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>  * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISIN=
G
> FROM,
>  * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
> IN
>  * THE SOFTWARE.
>  *
>  */
>
> #if defined (__arm__)
> #define __MHWORDSIZE            32
> #elif defined (__aarch64__) && defined ( __LP64__)
> #define __MHWORDSIZE            64
> #elif defined (__aarch64__)
> #define __MHWORDSIZE            32
> #else
> #include <bits/wordsize.h>
> #if defined (__WORDSIZE)
> #define __MHWORDSIZE            __WORDSIZE
> #else
> #error "__WORDSIZE is not defined"
> #endif
> #endif
> #if __MHWORDSIZE =3D=3D 32
> #ifdef _MIPS_SIM
> #if _MIPS_SIM =3D=3D _ABIO32
> #include <bits/fcntl-32.h>
> #elif _MIPS_SIM =3D=3D _ABIN32
> #include <bits/fcntl-n32.h>
> #else
> #error "Unknown _MIPS_SIM"
> #endif
> #else /* _MIPS_SIM is not defined */
> #include <bits/fcntl-32.h>
> #endif
> #elif __MHWORDSIZE =3D=3D 64
> #include <bits/fcntl-64.h>
> #else
> #error "Unknown __WORDSIZE detected"
> #endif /* matches #if __WORDSIZE =3D=3D 32 */
>
>
>
> *Gesendet:* Montag, 12. M=C3=A4rz 2018 um 11:00 Uhr
> *Von:* "Burton, Ross" <ross.burton@intel.com>
> *An:* "Arno Steffens" <star@gmx.li>
> *Cc:* Yocto-mailing-list <yocto@yoctoproject.org>
> *Betreff:* Re: [yocto] O_RDONLY ... missed bits/fcntl.h not as expected
> Can you explain what the actual problem is?
>
> For me the include you'd use in programs <fcntl.h> includes <bits/fcntl.h=
>
> which includes <bits/fcntl-linux.h> which defines O_RDONLY.
>
> Ross
>
>
> On 12 March 2018 at 07:32, Arno Steffens <star@gmx.li> wrote:
>>
>> I looked for
>> #define O_RDONLY             00
>> #define O_WRONLY             01
>> #define O_RDWR               02
>> and found it in : bits/fcntl-linux.h. According to this file it should
>> not be included, but bits/fcntl.h.
>> And it requires something like that:
>>
>>   A minimal <bits/fcntl.h> contains just:
>>    struct flock {...}
>>    #ifdef __USE_LARGEFILE64
>>    struct flock64 {...}
>>    #endif
>>    #include <bits/fcntl-linux.h>
>>
>>
>>
>> But this doesn't finally include the fcntl-linux.h as expected. Am I
>> doing something wrong?
>> Regards
>> Arno
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113e919806663e056734c25e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Have you looked at the content of bits/fcntl-32.h?</div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 12 March 2018 at=
 10:32, Arno Steffens <span dir=3D"ltr">&lt;<a href=3D"mailto:star@gmx.li" =
target=3D"_blank">star@gmx.li</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div><div style=3D"font-family:Verdana;font-size:12.0px"><div>=
=C2=A0
<div>
<div>Sure, sorry if this wasn&#39;t clear.</div>

<div>For me the chain is</div>

<div>&lt;fcntl.h&gt; includes &lt;bits/fcntl.h&gt;=C2=A0 (see below) and th=
is doesn&#39;t include &lt;bits/fcntl-linux.h&gt;.</div>

<div>This is my SDK sysroot for cortexa9-hf.</div>

<div>=C2=A0</div>

<div>Arno</div>

<div>=C2=A0</div>

<div>=C2=A0</div>

<div>
<div>/*<br>
=C2=A0* Copyright (C) 2005-2011 by Wind River Systems, Inc.<br>
=C2=A0*<br>
=C2=A0* Permission is hereby granted, free of charge, to any person obtaini=
ng a copy<br>
=C2=A0* of this software and associated documentation files (the &quot;Soft=
ware&quot;), to deal<br>
=C2=A0* in the Software without restriction, including without limitation t=
he rights<br>
=C2=A0* to use, copy, modify, merge, publish, distribute, sublicense, and/o=
r sell<br>
=C2=A0* copies of the Software, and to permit persons to whom the Software =
is<br>
=C2=A0* furnished to do so, subject to the following conditions:<br>
=C2=A0*<br>
=C2=A0* The above copyright notice and this permission notice shall be incl=
uded in<br>
=C2=A0* all copies or substantial portions of the Software.<br>
=C2=A0*<br>
=C2=A0* THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY=
 KIND, EXPRESS OR<br>
=C2=A0* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABI=
LITY,<br>
=C2=A0* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT S=
HALL THE<br>
=C2=A0* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OT=
HER<br>
=C2=A0* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARI=
SING FROM,<br>
=C2=A0* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALI=
NGS IN<br>
=C2=A0* THE SOFTWARE.<br>
=C2=A0*<br>
=C2=A0*/</div>

<div><br>
#if defined (__arm__)<br>
#define __MHWORDSIZE=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A032<br>
#elif defined (__aarch64__) &amp;&amp; defined ( __LP64__)<br>
#define __MHWORDSIZE=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A064<br>
#elif defined (__aarch64__)<br>
#define __MHWORDSIZE=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A032<br>
#else<br>
#include &lt;bits/wordsize.h&gt;<br>
#if defined (__WORDSIZE)<br>
#define __MHWORDSIZE=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0__WORDSIZE<br>
#else<br>
#error &quot;__WORDSIZE is not defined&quot;<br>
#endif<br>
#endif</div>

<div>#if __MHWORDSIZE =3D=3D 32</div>

<div>#ifdef _MIPS_SIM</div>

<div>#if _MIPS_SIM =3D=3D _ABIO32<br>
#include &lt;bits/fcntl-32.h&gt;<br>
#elif _MIPS_SIM =3D=3D _ABIN32<br>
#include &lt;bits/fcntl-n32.h&gt;<br>
#else<br>
#error &quot;Unknown _MIPS_SIM&quot;<br>
#endif</div>

<div>#else /* _MIPS_SIM is not defined */<br>
#include &lt;bits/fcntl-32.h&gt;<br>
#endif</div>

<div>#elif __MHWORDSIZE =3D=3D 64<br>
#include &lt;bits/fcntl-64.h&gt;<br>
#else<br>
#error &quot;Unknown __WORDSIZE detected&quot;<br>
#endif /* matches #if __WORDSIZE =3D=3D 32 */<br>
=C2=A0</div>

<div>=C2=A0</div>
</div>
=C2=A0

<div name=3D"quote" style=3D"margin:10px 5px 5px 10px;padding:10px 0 10px 1=
0px;border-left:2px solid #c3d9e5;word-wrap:break-word">
<div style=3D"margin:0 0 10px 0"><b>Gesendet:</b>=C2=A0Montag, 12. M=C3=A4r=
z 2018 um 11:00 Uhr<br>
<b>Von:</b>=C2=A0&quot;Burton, Ross&quot; &lt;<a href=3D"mailto:ross.burton=
@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<br>
<b>An:</b>=C2=A0&quot;Arno Steffens&quot; &lt;<a href=3D"mailto:star@gmx.li=
" target=3D"_blank">star@gmx.li</a>&gt;<br>
<b>Cc:</b>=C2=A0Yocto-mailing-list &lt;<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
<b>Betreff:</b>=C2=A0Re: [yocto] O_RDONLY ... missed bits/fcntl.h not as ex=
pected</div><div><div class=3D"h5">

<div name=3D"quoted-content">
<div>Can you explain what the actual problem is?
<div>=C2=A0</div>

<div>For me the include you&#39;d use in programs &lt;fcntl.h&gt; includes =
&lt;bits/fcntl.h&gt; which includes &lt;bits/fcntl-linux.h&gt; which define=
s O_RDONLY.</div>

<div>=C2=A0</div>

<div>Ross</div>

<div>=C2=A0</div>
</div>

<div class=3D"gmail_extra">=C2=A0
<div class=3D"gmail_quote">On 12 March 2018 at 07:32, Arno Steffens <span>&=
lt;<a href=3D"mailto:star@gmx.li" target=3D"_blank">star@gmx.li</a>&gt;</sp=
an> wrote:

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;border-left:1=
.0px rgb(204,204,204) solid;padding-left:1.0ex">I looked for<br>
#define O_RDONLY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A000<br>
#define O_WRONLY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A001<br>
#define O_RDWR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A002<br>
and found it in : bits/fcntl-linux.h. According to this file it should not =
be included, but bits/fcntl.h.<br>
And it requires something like that:<br>
<br>
=C2=A0 A minimal &lt;bits/fcntl.h&gt; contains just:<br>
=C2=A0 =C2=A0struct flock {...}<br>
=C2=A0 =C2=A0#ifdef __USE_LARGEFILE64<br>
=C2=A0 =C2=A0struct flock64 {...}<br>
=C2=A0 =C2=A0#endif<br>
=C2=A0 =C2=A0#include &lt;bits/fcntl-linux.h&gt;<br>
<br>
<br>
<br>
But this doesn&#39;t finally include the fcntl-linux.h as expected. Am I do=
ing something wrong?<br>
Regards<br>
<span class=3D"m_8642611372597653578HOEnZb"><font color=3D"#888888">Arno<br=
>
<br>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<wbr>org/listinfo/yocto</a></font></span></bloc=
kquote>
</div>
</div>
</div>
</div></div></div>
</div>
</div></div></div>
</blockquote></div><br></div>

--001a113e919806663e056734c25e--
