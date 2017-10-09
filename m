Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F3D0E00D2A; Mon,  9 Oct 2017 03:16:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38F39E00CD3
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 03:16:51 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id j17so5579932iod.5
	for <yocto@yoctoproject.org>; Mon, 09 Oct 2017 03:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NlRBC8dlpddc4l3nMrYFnY0+AJN7155pZRcMpq/z0jI=;
	b=tGr1lJEmiEgeTBNG3RuzjYsvmTJZ9JeuNO89TSK4Uq/6HWtaZ5G/DI0PD7M8k41eht
	00QjB+97H5t4osVmTrHKSHiGZIKnneihbRedNWd1LOg/zZh2loV3drNMBPYJlkGlZd+9
	KM66MxcigGuoevmUnJjbVFFJMDJa57+oBK+7BCKi+oAb2bO6DJKSQ138uxykhBNGpj0w
	i05UiAi5LLWmocMdV6TDKICfiFhhmIx7PsxLLGxVFQuRSXuogWTG5D1Sj+/nY3uf3dbv
	mQzAHbuI8RaI8Rq7W+eQlNwm7vOblbtHU8Og2Okd1BpVw9nNW84M1ZwBk2wNgRJTy6Qs
	hU2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NlRBC8dlpddc4l3nMrYFnY0+AJN7155pZRcMpq/z0jI=;
	b=M344iUVBg6PCZkch+/mZm7PuFGjdIdygX4BMWiCxLDfvIAUCGoNZRQVTdoAYzuBBgo
	PKGUc37tbnVn7N78++Ii8jFG3J0pxI8FJxkM/K1jc3hpsk2OEoHqtjHorgnud2J1HFpZ
	VRphhyf5h27DXIhXsRuhPEHvaTt8L9mkrUAjGzG+yj34rBo5IMWAilaGNbSeBT4ae+bZ
	aSX7h5KfDx8J7JRRBEY4dGP4MhfAiGTpMdwxH6NEdU/0o3m/rIwm9+Mqji8ymO+AJbya
	g3FTX2WLfwX2e9lP4jTu5f5XkKi521hoTqVzWrlrcC5oV3VyY7uwIijVN1pxykq/ir7s
	tagA==
X-Gm-Message-State: AMCzsaUlWBQUh4pBBUSAqQ++2n7z+GMWkWIUaTd/EyGJG4Y51cgKZE+8
	iTokyrYeTJZHy7hVFMAgarX9NFJnslRuVFOi2nLFvA==
X-Google-Smtp-Source: AOwi7QDNn319kpXgGHlS/UCKkdY/L6O0yA2r+o0vTgUviIQMIzXbw6OhI97nHKSC35hVHC0iaHgl2Ff5iPxx1PiwA9U=
X-Received: by 10.107.133.85 with SMTP id h82mr11702944iod.208.1507544211408; 
	Mon, 09 Oct 2017 03:16:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.205 with HTTP; Mon, 9 Oct 2017 03:16:30 -0700 (PDT)
In-Reply-To: <CADS9r7mnOeMHoQfVxv4D08-_t1rcPSP8-1RjufNW9bqeRaoevQ@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
	<CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
	<CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
	<CAJTo0LZfoa1yA9kcsC4rnBMmOfB0QB1fU3eqVUg+EayTAwjZVQ@mail.gmail.com>
	<CADS9r7=vrThVxzq5uvy19C4eH+mGvG52V9cz3FwKvvBeOdkbLQ@mail.gmail.com>
	<CAJTo0Lb2p7BwAkheq1Cuh2kkfjNuFoi7Dhj7_opLGa5Th-VaXA@mail.gmail.com>
	<CADS9r7=SVFvLh_ato9mR74Jr_BMUMrqAOAd+5vsDk2GMXCfaOw@mail.gmail.com>
	<CAJTo0La6bfnz28+LWCHnVixYiQ4muFOQ_BhvBxVghKkKB6N1sg@mail.gmail.com>
	<CADS9r7mnOeMHoQfVxv4D08-_t1rcPSP8-1RjufNW9bqeRaoevQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Oct 2017 11:16:30 +0100
Message-ID: <CAJTo0LY3Tb_gYCz9416jAwahcCUKCvvBuPYjFU1bMS3ZYv60tg@mail.gmail.com>
To: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pkg-config search directories
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
X-List-Received-Date: Mon, 09 Oct 2017 10:16:54 -0000
Content-Type: multipart/alternative; boundary="001a113fd83a3481b8055b1a7d0a"

--001a113fd83a3481b8055b1a7d0a
Content-Type: text/plain; charset="UTF-8"

Is this the same problem? You dont want to search the host for libraries
that you want on the target.  Just add mesa to DEPENDS and pkgconfig will
find the GL headers in the sysroot.

Are you using the glmark2 recipe from meta-oe?

Ross

On 8 October 2017 at 16:00, eliya.mir@gmail.com <eliya.mir@gmail.com> wrote:

> Hi Ross,
> I am still trying to configure pkg-config.
>
> Running bitbake glmark2 recipe results with an error :
> Checking for 'gl'                        : not found.
>
> looking into the log file :
> Checking for 'gl'
> ['/home/wzbwjj/vpm/GR_Yocto/build/tmp/sysroots/x86_64-linux/usr/bin/pkg-config',
> 'gl', '--cflags', '--libs']
> err: Package gl was not found in the pkg-config search path.
> Perhaps you should add the directory containing `gl.pc'
> to the PKG_CONFIG_PATH environment variable
> No package 'gl' found
>
> not found
> from /home/wzbwjj/vpm/GR_Yocto/build/tmp/work/corei7-64-poky-
> linux/glmark2/2014.03+AUTOINC+fa71af2dfa-r0/git: The configuration failed
>
>
> Thanks!
>
>
>
> On Tue, Oct 3, 2017 at 6:40 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> On 3 October 2017 at 16:36, eliya.mir@gmail.com <eliya.mir@gmail.com>
>> wrote:
>>
>>> Thanks Ross,
>>> That is the issue : default pkg-config does not search host paths - How
>>> to edit its search paths ?
>>>
>>
>> "If you *really* want to link against host binaries and not building
>> your own native recipes for it then see qemu.inc for an example of how to
>> steal the host pkg-config path and use it at configure time."
>>
>> Ross
>>
>
>

--001a113fd83a3481b8055b1a7d0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Is this the same problem? You d=
ont want to search the host for libraries that you want on the target.=C2=
=A0 Just add mesa to DEPENDS and pkgconfig will find the GL headers in the =
sysroot.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Are you using the glmark2 recipe from meta-oe?</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">Ross</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 8 =
October 2017 at 16:00, <a href=3D"mailto:eliya.mir@gmail.com">eliya.mir@gma=
il.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:eliya.mir@gmail.com" tar=
get=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr">Hi Ross,=C2=A0<br>I am still trying to con=
figure pkg-config.=C2=A0<div><br></div><div>Running bitbake glmark2 recipe =
results with an error :=C2=A0=C2=A0</div><div>Checking for &#39;gl&#39;=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 : not found.</div><div><br></div><div>looking into the log file :=C2=
=A0</div><div><div>Checking for &#39;gl&#39;</div><div>[&#39;/home/wzbwjj/v=
pm/GR_Yocto/<wbr>build/tmp/sysroots/x86_64-<wbr>linux/usr/bin/pkg-config&#3=
9;, &#39;gl&#39;, &#39;--cflags&#39;, &#39;--libs&#39;]</div><div>err: Pack=
age gl was not found in the pkg-config search path.</div><div>Perhaps you s=
hould add the directory containing `gl.pc&#39;</div><div>to the PKG_CONFIG_=
PATH environment variable</div><div>No package &#39;gl&#39; found</div><div=
><br></div><div>not found</div><div>from /home/wzbwjj/vpm/GR_Yocto/<wbr>bui=
ld/tmp/work/corei7-64-poky-<wbr>linux/glmark2/2014.03+AUTOINC+<wbr>fa71af2d=
fa-r0/git: The configuration failed</div></div><div><br></div><div><br></di=
v><div>Thanks!</div><div><br></div><div><br></div></div><div class=3D"HOEnZ=
b"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Oct 3, 2017 at 6:40 PM, Burton, Ross <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
<span>On 3 October 2017 at 16:36, <a href=3D"mailto:eliya.mir@gmail.com" ta=
rget=3D"_blank">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:eliya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a>&gt;</sp=
an> wrote:<br></span><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<span><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Thanks Ross,=C2=A0<br><div>That is =
the issue : default pkg-config does not search host paths - How to edit its=
 search paths ?=C2=A0</div></div></blockquote><div><br></div></span><span><=
div>&quot;<span style=3D"font-size:12.800000190734863px">If you *really* wa=
nt to link against host binaries and not building your own native recipes f=
or it then see qemu.inc for an example of how to steal the host pkg-config =
path and use it at configure time.&quot;</span></div><div><span style=3D"fo=
nt-size:12.800000190734863px"><br></span></div><div><span style=3D"font-siz=
e:12.800000190734863px">Ross</span></div></span></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div></div>

--001a113fd83a3481b8055b1a7d0a--
