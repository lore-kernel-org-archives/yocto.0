Return-Path: <jessecobra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 167BCE00A1C; Fri, 29 May 2015 16:52:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jessecobra[at]gmail.com)
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
	*      [209.85.212.173 listed in list.dnswl.org]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8BF5E009A3
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 16:52:29 -0700 (PDT)
Received: by wicmx19 with SMTP id mx19so31160251wic.0
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 16:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hwFzmu1bE6YlliR7FV6iwSyfPL/vDHHHUeGcPss88Fo=;
	b=cGL9KMINzZzMAXNrbvglczcCLsAUhlMTJULOTlhN6fLhyu283bjpyQLg8sgOdp7wD3
	VKVc3rSqtqQkyWrFBKmTf368bYhyUvqkF5KBZEXVq5yERHgrna5Qi/8YZFJz/FkRRkxz
	4M/88J6ma3VujKkfWDLAa9kObDTDNg2UaJlCeJ0UyntMT1vANCmM5nw57P/k26QPWm1B
	8dRG2+/bVq+wG40oEf6+XL8zB7y4RJnhp1d2ErrduzZ+Ng3LAOUI9xF5VhXd847trTSh
	R5LAej5txDpD8tRKKuV6Tq4gB9IzQjGnzYj+nuVMfLLBu3y7VBSqHgVkS7dBKzBpIDyd
	nvpA==
MIME-Version: 1.0
X-Received: by 10.180.82.6 with SMTP id e6mr174301wiy.84.1432943547241; Fri,
	29 May 2015 16:52:27 -0700 (PDT)
Received: by 10.27.220.21 with HTTP; Fri, 29 May 2015 16:52:27 -0700 (PDT)
In-Reply-To: <CACG401rvMrw_X-_vZcj4n+3nK44z9iBPsOkBtx1--LcSOcWHgw@mail.gmail.com>
References: <CACG401qjzuj6bNjSb6sjAuKYKbC5Gibwn75chuv9nfydHmim+w@mail.gmail.com>
	<CAMKF1sr9Bb65KjLq=9WK+MSEdswbCczQ2bESfFp4_V5CbWg30A@mail.gmail.com>
	<CACG401rvMrw_X-_vZcj4n+3nK44z9iBPsOkBtx1--LcSOcWHgw@mail.gmail.com>
Date: Fri, 29 May 2015 16:52:27 -0700
Message-ID: <CACG401papvKL8du7v-18C37o5W6TPWz4QXDcj6sNxE7Et9jDbQ@mail.gmail.com>
From: Jesse Cobra <jessecobra@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GCC 4.8.2 build errors
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
X-List-Received-Date: Fri, 29 May 2015 23:52:32 -0000
Content-Type: multipart/alternative; boundary=f46d044304381ddac80517412b1d

--f46d044304381ddac80517412b1d
Content-Type: text/plain; charset=UTF-8

This issue ended up going away when I wiped my build folder and started
with a new one.

On Wed, May 27, 2015 at 9:39 PM, Jesse Cobra <jessecobra@gmail.com> wrote:

> Always reproducible on this build folder.
>
> Just created a new build folder and kicked off a brand new build. See if
> that works...
>
> my setup:
>
> repo init -u git://git.freescale.com/imx/fsl-arm-yocto-bsp.git -b
> imx-3.14.28-1.0.0_ga
> repo sync
> MACHINE=imx6qsabreauto source fsl-setup-release.sh -b newbuild
> bitbake core-image-minimal
>
> On Wed, May 27, 2015 at 7:12 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Wed, May 27, 2015 at 3:46 PM, Jesse Cobra <jessecobra@gmail.com>
>> wrote:
>> >
>> /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c
>> > -o cp/parser.o
>> > |
>> >
>> /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c:
>> > In function 'bool cp_parser_tokens_start_cast_expression(cp_parser*)':
>> > |
>> >
>> /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c:7159:12:
>> > error: 'ref_qual' was not declared in this scope
>> > |      return ref_qual;
>> > |             ^
>> > | make[2]: *** [cp/parser.o] Error 1
>>
>>
>> is it always reproducible ? can you try same for say qemumips or
>> qemux86 as machine and see if it fails in same way ?
>>
>
>

--f46d044304381ddac80517412b1d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This issue ended up going away when I wiped my build folde=
r and started with a new one.</div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Wed, May 27, 2015 at 9:39 PM, Jesse Cobra <span dir=3D=
"ltr">&lt;<a href=3D"mailto:jessecobra@gmail.com" target=3D"_blank">jesseco=
bra@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
dir=3D"ltr"><div>Always reproducible on this build folder.<br><br></div>Jus=
t created a new build folder and kicked off a brand new build. See if that =
works...<br><br>my setup:<br><br>repo init -u git://<a href=3D"http://git.f=
reescale.com/imx/fsl-arm-yocto-bsp.git" target=3D"_blank">git.freescale.com=
/imx/fsl-arm-yocto-bsp.git</a> -b imx-3.14.28-1.0.0_ga<br>repo sync<br>MACH=
INE=3Dimx6qsabreauto source fsl-setup-release.sh -b newbuild<br>bitbake cor=
e-image-minimal<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Wed, May 27, 2015 at 7:12 PM, Khem Raj <span dir=3D"ltr">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, May 27, 2015 a=
t 3:46 PM, Jesse Cobra &lt;<a href=3D"mailto:jessecobra@gmail.com" target=
=3D"_blank">jessecobra@gmail.com</a>&gt; wrote:<br>
&gt; /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/g=
cc/cp/parser.c<br>
&gt; -o cp/parser.o<br>
&gt; |<br>
&gt; /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/g=
cc/cp/parser.c:<br>
&gt; In function &#39;bool cp_parser_tokens_start_cast_expression(cp_parser=
*)&#39;:<br>
&gt; |<br>
&gt; /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/g=
cc/cp/parser.c:7159:12:<br>
&gt; error: &#39;ref_qual&#39; was not declared in this scope<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 return ref_qual;<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>
&gt; | make[2]: *** [cp/parser.o] Error 1<br>
<br>
<br>
is it always reproducible ? can you try same for say qemumips or<br>
qemux86 as machine and see if it fails in same way ?<br>
</blockquote></div><br></div>
</blockquote></div><br></div>

--f46d044304381ddac80517412b1d--
