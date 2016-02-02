Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 810D6E00B45; Tue,  2 Feb 2016 01:07:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35D06E00AAB
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 01:07:44 -0800 (PST)
Received: by mail-lf0-f48.google.com with SMTP id 78so65215288lfy.3
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 01:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=GoQFoQG7u3CtL7+rgWhPc97zHvCJQ29vcCpORkO3X/o=;
	b=l3g7jTF0+8Eb3hu+rzxy/nIfr2cDfsFv+B+y//SJFJBmPQEAP1Eo1QUXcd2jvQh7Nb
	GnMm23hgODePg0HDjc1AotfA3oaTjjWO+6nw3dQKOP+RED56U1yp3pU3ML7h6+j4FGij
	c7vN+U1navvyKkD6nN79iKWbC3JtdRz/lMoWWVg8C3NsbHD3RD1R3kp323GxHjqUm956
	bMzIBmTJNQMp2Oa+DV4grfulaX/V+kVYBU+mI0BMiheFZPq/Opdz//ZaJ46Xm3qeEipx
	Kc+QGECH1gLFCsXo5s+OWY3Gsfkmf5Qz6saYUAPTe51PcyJO90AwiSol6dO0XGrFccE+
	AcBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=GoQFoQG7u3CtL7+rgWhPc97zHvCJQ29vcCpORkO3X/o=;
	b=PAdG0XLpRvz2w+khstW6Dl5aARJjQXne58+7feRa5tZR7cC87LuEJjXRiDN0++rBEV
	4//w+MOFJ/TLz/bIqnhNN9rRjXa1QPmPUpjSgYJU50HC4pt7z/h1nMCAjoVJE9VVm4Jg
	Y2dM4/d8tD3pXIz+kZCWo19I6nHuiWFbhB/ReOVGsV6EWZYGeUN3OSXGtVWyEUBf271p
	JHNBKMmzObB7xf2kUVtk3Xzdm89hsMClgEzWmuaNfLAZV13o2gaUgtYejmVVY5afS2+r
	wZnPSDpzrN2CfEx8NhzkVfE0Kbvntwcz1BIjDpO+aXAfNL+Mmtfa5ZFcC4tFdMjCNaGW
	/XFg==
X-Gm-Message-State: AG10YOTS9dOg2dwwyrBF5q2ba3+ggN9Y9ImSP6T+DlS5K2lxX8pfvfgbDxRImYE/DnNC9C0yuyDWxPWq2IbJEA==
X-Received: by 10.25.88.77 with SMTP id m74mr8264511lfb.149.1454404063055;
	Tue, 02 Feb 2016 01:07:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.171.168 with HTTP; Tue, 2 Feb 2016 01:07:23 -0800 (PST)
In-Reply-To: <CAMCfZKEi_AdyaY0FgtH+wO7u3pV4pX+ZRNc7OzqxDACFPUpejw@mail.gmail.com>
References: <CAMCfZKF6asR9ubz7+oKJQ6FCO8mM0ryUzq-WDBGf6AAp2+WeMw@mail.gmail.com>
	<BLUPR0501MB18434F9CCFB9D423227C9F53BBDA0@BLUPR0501MB1843.namprd05.prod.outlook.com>
	<CAMCfZKHu1YtfYq3GH2R8drMSnFWwYzD8VPs2nwQcGTg4LJr3Mg@mail.gmail.com>
	<3BA28CC0-59D4-4013-BD2E-3CAE31B1159D@gmail.com>
	<CAMCfZKEi_AdyaY0FgtH+wO7u3pV4pX+ZRNc7OzqxDACFPUpejw@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 2 Feb 2016 09:07:23 +0000
Message-ID: <CAMCfZKFLb9MV-w6t+561=chibPCfym9FPzudSxmwxxdnM-8hYg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Migrate, or not Migrate, that's the question!!!
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
X-List-Received-Date: Tue, 02 Feb 2016 09:07:48 -0000
Content-Type: multipart/alternative; boundary=001a1141f2cc89d433052ac5d553

--001a1141f2cc89d433052ac5d553
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2 February 2016 at 08:40, Diego Sueiro <diego.sueiro@gmail.com> wrote:

> Khem,
>
> On 1 February 2016 at 18:34, Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>> I think you have to think about what you are getting into. You are tryin=
g
>> to mix quite two different things are create third one. If I were you, I
>> would just
>> keep myself synced with upstream as much as I could, Don=E2=80=99t look =
one way,
>> you have to look into time and effort you will spend on maintaining this=
 new
>> jargon for years to come.
>>
>
> Thanks for your opinion.
>
> I agree with you, but this decision is out of my responsibility.
>
> We already had problems on backporting device drivers and packages.
> I believe that for the next generation of the product we'll try to keep
> synced with upstream, but until then I want to try to use a recent versio=
n
> of Yocto/OE
>


And just to keep it clear. We are talking about a project with 272 packages
and 1.5 MLOC (proprietary embedded code) which took 4 years to be developed=
.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&utm_medium=3De=
-mail&utm_campaign=3DAssinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a1141f2cc89d433052ac5d553
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 February 2016 at 08:40, Diego Sueiro <span dir=3D"ltr">&lt;<a href=3D"=
mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.sueiro@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_ex=
tra">Khem,</div><div class=3D"gmail_extra"><span class=3D""><br><div class=
=3D"gmail_quote">On 1 February 2016 at 18:34, Khem Raj <span dir=3D"ltr">&l=
t;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><span><div><br></div></span><di=
v>I think you have to think about what you are getting into. You are trying=
 to mix quite two different things are create third one. If I were you, I w=
ould just</div><div>keep myself synced with upstream as much as I could, Do=
n=E2=80=99t look one way, you have to look into time and effort you will sp=
end on maintaining this new</div><div>jargon for years to come.</div></bloc=
kquote></div><br></span>Thanks for your opinion.</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">I agree with you, but this decis=
ion is out of my responsibility.</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">We already had problems on backporting device dr=
ivers and packages.</div><div class=3D"gmail_extra">I believe that for the =
next generation of the product we&#39;ll try to keep synced with upstream, =
but until then I want to try to use a recent version of Yocto/OE</div></blo=
ckquote></div><br><br>And just to keep it clear. We are talking about a pro=
ject with 272 packages and 1.5 MLOC (proprietary embedded code) which took =
4 years to be developed.<br><br><br clear=3D"all"><div><div class=3D"gmail_=
signature"><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>=
Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.em=
barcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;=
utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados=
.com.br</a><br><br>/*long live rock &#39;n roll*/<br></div></div></div>
</div></div>

--001a1141f2cc89d433052ac5d553--
