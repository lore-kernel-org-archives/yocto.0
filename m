Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCF2FE007C9; Sun, 17 Aug 2014 04:51:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DDFEE0071E
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 04:50:58 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id m20so3866502qcx.35
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 04:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ywAGlFg8T4/UMwDo8IvZ6WXPoJGpKS2FPze7LfU7F7M=;
	b=SrJBujENxmi44lXvrILMuqpNvJDZ0nddCuXt7LYNGpO5wjSWm+HTpdDj1dPn5Bvczb
	h+efgfZduyyD5imanJ+V/pPiRF4sPAXk8XrmDKTzNgNKknCs/pak2D8f3ttSXrNZrfdD
	hzGZJk1rimIWtcCkbscT1MnHLfuWHG/9STuHODdk/5GVkGx9N9rh2jGgUfh4ihdpcvHF
	yQ0QnKMFY4Xbzba75R2DQGSyDgley9w0wB+kDuX6Gdwq/hwLTPxofA1SHtCe0AA1PKyn
	2pM1b9T0tLcFd75Rl1xUBgCCe8kvIFn3qILdzCpEUGEwAE1+xrS+fltmL3jrk3edTfUU
	VCbw==
X-Received: by 10.140.32.134 with SMTP id h6mr43842382qgh.49.1408276258234;
	Sun, 17 Aug 2014 04:50:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Sun, 17 Aug 2014 04:50:38 -0700 (PDT)
In-Reply-To: <CAMKF1sp9Z6vj1Dz96_WYiHOtYFqa-zECrNHOFgb=dBUDJN2Z_g@mail.gmail.com>
References: <CAMKF1sp9Z6vj1Dz96_WYiHOtYFqa-zECrNHOFgb=dBUDJN2Z_g@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Sun, 17 Aug 2014 08:50:38 -0300
Message-ID: <CAMCfZKFWAsu8m2h907RwM6XMCr6NbpsxeWE2hfuC=FtFyLAS5A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Announcing meta-musl OE/Yocto layer supporting musl C library
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
X-List-Received-Date: Sun, 17 Aug 2014 11:51:02 -0000
Content-Type: multipart/alternative; boundary=001a113b3e041e29d10500d1de22

--001a113b3e041e29d10500d1de22
Content-Type: text/plain; charset=ISO-8859-1

Wow!!!!

This is a really great job. Nice work.

I'm gonna test it.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/


On Sat, Aug 16, 2014 at 9:50 PM, Khem Raj <raj.khem@gmail.com> wrote:

> Hello All
>
> musl <http://www.musl-libc.org/> is a newer implementation licensed
> under MIT licence
> A layer to support musl to supply your system C library as an
> alternative to uclibc and eglibc/glibc  is now available at
>
> https://github.com/kraj/meta-musl
>
> README describes way to get going with it.
>
> Few things to note
>
> * Supports gcc 4.9 in OE not 4.8
> * Current musl recipe is 1.1.4 based
> * You need latest master of OE-Core
> (106305227003761c3fc562c21bb859a5256f2b36) or          newer and
> bitbake
> * Its only able to build core-image-minimal
> * core-image-minimal boots on qemuarm, qemuppc, qemumips, qemux86,
> qemux86-64
>
> I will send a request to add it to layerindex soon and then you should
> be able to find it using
> layerindex.opernembedded.org as well
>
> If you try it out on your hardware and/or have feedback I am
> interested. Fork it from github, file bugs
> send patches ....
>
> Happy hacking
>
> -Khem
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

--001a113b3e041e29d10500d1de22
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Wow!!!!<div><br></div><div>This is a really great job. Nic=
e work.<br></div><div><br></div><div>I&#39;m gonna test it.</div><div><br><=
/div><div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><di=
v>Regards,</div>

<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados=
<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&=
amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" targ=
et=3D"_blank">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
<br><br><div class=3D"gmail_quote">On Sat, Aug 16, 2014 at 9:50 PM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">

Hello All<br>
<br>
musl &lt;<a href=3D"http://www.musl-libc.org/" target=3D"_blank">http://www=
.musl-libc.org/</a>&gt; is a newer implementation licensed<br>
under MIT licence<br>
A layer to support musl to supply your system C library as an<br>
alternative to uclibc and eglibc/glibc=A0 is now available at<br>
<br>
<a href=3D"https://github.com/kraj/meta-musl" target=3D"_blank">https://git=
hub.com/kraj/meta-musl</a><br>
<br>
README describes way to get going with it.<br>
<br>
Few things to note<br>
<br>
* Supports gcc 4.9 in OE not 4.8<br>
* Current musl recipe is 1.1.4 based<br>
* You need latest master of OE-Core<br>
(106305227003761c3fc562c21bb859a5256f2b36) or=A0 =A0 =A0 =A0 =A0 newer and<=
br>
bitbake<br>
* Its only able to build core-image-minimal<br>
* core-image-minimal boots on qemuarm, qemuppc, qemumips, qemux86, qemux86-=
64<br>
<br>
I will send a request to add it to layerindex soon and then you should<br>
be able to find it using<br>
<a href=3D"http://layerindex.opernembedded.org" target=3D"_blank">layerinde=
x.opernembedded.org</a> as well<br>
<br>
If you try it out on your hardware and/or have feedback I am<br>
interested. Fork it from github, file bugs<br>
send patches ....<br>
<br>
Happy hacking<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-Khem<br>
--<br>
_______________________________________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org">Openembedded-co=
re@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" target=3D"_blank">http://lists.openembedded.org/mailman/listinfo/openembe=
dded-core</a><br>
</font></span></blockquote></div><br></div></div>

--001a113b3e041e29d10500d1de22--
