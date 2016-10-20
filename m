Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94971E00D6A; Thu, 20 Oct 2016 12:04:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB1FEE00BCE
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 12:04:09 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id k64so7530029itb.0
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 12:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=alV0dhHHI+E5fuUmc6hSmfyb6kVM7o8yXyYH6O0be1M=;
	b=B0bQlnp2J5Q0Df6QRGScwbt4E9m8pHGoYGMneu5C9Pne//UA4rDWQ8CjzyvU4iCGZV
	NMJ905LnZSecYLVvj9vvA2tVolR7ks0VZdQqmZ6HbUYMHWtSNzSr8JELX5bI3WcJaNzN
	szdxA6xvQD9JtCbqlpgZAv0xCxMVFqhbNt9UTHjYLeKj1JqGrYKpGecyyHeCEug7wAac
	Fq4gSPbSHJ9xA3+SGdwuAITl9Xn0mtEGAyq6j0ZrMBh4ExrPcrC+UmNqOAHUG3jlclKs
	2gsZenT2gvZ2RlYcHB5NwfnFkugcHuFPobA+yCDbdUN58551Cc7m9g1yRnT3lW2sQzl4
	fXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=alV0dhHHI+E5fuUmc6hSmfyb6kVM7o8yXyYH6O0be1M=;
	b=Vtw8TxqXBPHJAoWnq0g83/z7a2MFmTo28RgOTqtKEghgc8uLMSIaKl/tJGrLV5veKw
	qKUAjSulEAbdwVal/Gi5nTyItYf5r+V5p45OH+D7l9durYyfDImNsDeOjp6pYKdp1BXF
	Qtd89ExT8Iu3RdcRP459LxvFp7SUtQlNWeclKSryZbDNitnjzfAtNf41zcBtKgJNyPHa
	1Urnvjd2kBLHA6HPErR+qRFwfTfK3xr9B/7SyZqgOgtr+8hdyLpWCnaUNSyN6EYryzAG
	pSRFnaTwLUWxVdFaXIk4I+u0UYq62ocyfYUEp1gniWMFpJdmAGdccMTbJX/lDKzDCmG9
	XQuw==
X-Gm-Message-State: AA6/9RnFMio4XMqTMIJBX2sq2Yq0sjzFf7W3cyixk8j80Nf3ApRm8HWDo+8VRLt43NbV7tNP2mmKcAllOKRTuw==
X-Received: by 10.36.205.130 with SMTP id l124mr2581923itg.121.1476990248955; 
	Thu, 20 Oct 2016 12:04:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.54.36 with HTTP; Thu, 20 Oct 2016 12:04:08 -0700 (PDT)
In-Reply-To: <E901E1FD-CF6F-42DD-8DD8-4EBA9279E721@gmail.com>
References: <CACfi_Z1THW3LYcqZbnsXWCKw3tyRPW00cSXOrsdzTRapixL_BQ@mail.gmail.com>
	<E901E1FD-CF6F-42DD-8DD8-4EBA9279E721@gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Thu, 20 Oct 2016 15:04:08 -0400
Message-ID: <CACfi_Z0W-D7fz7f50YipdjBp4Cyr9sWKJK8hcznnqFufau_1VQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Deciding between yocto kernels and soc vendor kernels
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
X-List-Received-Date: Thu, 20 Oct 2016 19:04:11 -0000
Content-Type: multipart/alternative; boundary=94eb2c07ce24203391053f5097fa

--94eb2c07ce24203391053f5097fa
Content-Type: text/plain; charset=UTF-8

Hi Khem,

That makes sense.

Thank you for replying!

-Davis

On Thu, Oct 20, 2016 at 1:46 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Oct 20, 2016, at 10:32 AM, Davis Roman <davis.roman84@gmail.com> wrote:
>
> Hello Yocto Community,
>
> As I understand it, the Yocto project team cherry-picks certain kernel
> versions from kernel.org to be dedicated as Yocto Project Linux Kernels
> that have support for the officially supported arm target boards.
>
> However, if I'm using a silicon vendor, such as nxp, for a custom i.mx6
> board then I'll need to stick with nxp's kernel but the problem that I see
> here is that they may not support that version of kernel for too long.
>
> Are there any best practices or advice when it comes to how to avoid
> getting locked into an evil vendor kernel ?
>
>
> You can try to check if needed support for the given SOC is upstreamed.
> Sometimes, vendor kernel have additional stuff but the base support is
> upstream, if you are lucky
> and dont need the things which are on top of such base port then you can
> try switching to kernel.org kernel and unshackles yourself.
>
> Secondly, you can work with vendor to upstream the needed bits at
> priority, may be helping out with testing or whatever you can.
>
> if vendor kernels are having too much stuff that is essential to support
> the basic stuff on chip then you are at the vendors behest for support,
> there may be
> some OSVs that can help may be or some other consultancies.
>
>
> Thank you,
>
> Davis
>
>
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--94eb2c07ce24203391053f5097fa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem,<div><br></div><div>That makes sense.</div><div><b=
r></div><div>Thank you for replying!</div><div><br></div><div>-Davis</div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Oct =
20, 2016 at 1:46 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.k=
hem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><br><d=
iv><span class=3D""><blockquote type=3D"cite"><div>On Oct 20, 2016, at 10:3=
2 AM, Davis Roman &lt;<a href=3D"mailto:davis.roman84@gmail.com" target=3D"=
_blank">davis.roman84@gmail.com</a>&gt; wrote:</div><br class=3D"m_64392881=
63440403234Apple-interchange-newline"><div><div dir=3D"ltr">Hello Yocto Com=
munity,<div><br></div><div>As I understand it, the Yocto project team cherr=
y-picks certain kernel versions from <a href=3D"http://kernel.org/" target=
=3D"_blank">kernel.org</a> to be dedicated as Yocto Project Linux Kernels t=
hat have support for the officially supported arm target boards.</div><div>=
<br></div><div>However, if I&#39;m using a silicon vendor, such as nxp, for=
 a custom i.mx6 board then I&#39;ll need to stick with nxp&#39;s kernel but=
 the problem that I see here is that they may not support that version of k=
ernel for too long.</div><div><br></div><div>Are there any best practices o=
r advice when it comes to how to avoid getting locked into an evil vendor k=
ernel ?</div></div></div></blockquote><div><br></div></span><div>You can tr=
y to check if needed support for the given SOC is upstreamed. Sometimes, ve=
ndor kernel have additional stuff but the base support is upstream, if you =
are lucky</div><div>and dont need the things which are on top of such base =
port then you can try switching to <a href=3D"http://kernel.org" target=3D"=
_blank">kernel.org</a> kernel and unshackles yourself.</div><div><br></div>=
<div>Secondly, you can work with vendor to upstream the needed bits at prio=
rity, may be helping out with testing or whatever you can.</div><div><br></=
div><div>if vendor kernels are having too much stuff that is essential to s=
upport the basic stuff on chip then you are at the vendors behest for suppo=
rt, there may be</div><div>some OSVs that can help may be or some other con=
sultancies.=C2=A0</div><br><blockquote type=3D"cite"><div><div dir=3D"ltr">=
<div><br></div><div>Thank you,</div><div><br></div><div>Davis</div><div><br=
></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br=
></div><div><br></div><div><br></div><span class=3D"HOEnZb"><font color=3D"=
#888888"><div><br></div></font></span></div><span class=3D"HOEnZb"><font co=
lor=3D"#888888">
-- <br>______________________________<wbr>_________________<br>yocto mailin=
g list<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo=
/yocto" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yoct=
o</a><br></font></span></div></blockquote></div><br></div></blockquote></di=
v><br></div>

--94eb2c07ce24203391053f5097fa--
