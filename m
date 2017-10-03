Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67FA3E00CFF; Tue,  3 Oct 2017 08:29:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0E7CE00CF5
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 08:29:13 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id y138so12364256itc.5
	for <yocto@yoctoproject.org>; Tue, 03 Oct 2017 08:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bYPgej1i4OGn50HARPSGI0rpZUUjxg2I1L7fQe9PQlM=;
	b=RO4rfuPz1cVU2Ys3WHs69T3S9imOdUfjjN7im257iE4rm0holW1HWTLZEyERxG+gz7
	UGt9KveWkD4MstmMdbZq600mYs2bWskYKi1RMCEE60J+eYJ0oLJ/LZA1xkZDB1Qf2iTt
	v4yiXoILGHauA3bTKtMqtlVOwFUlyp0dellZ97F95p8696hdcdt+1xW7Inxt6LF9i0Zj
	HELj0dwHZoIeXaopi/05Q3r38ywBlU0ahHLh98YBFno8o1Kab4+vwBu8TznFVI2wKcPS
	7Nl5YfqzxnaU7PCZNqmasHfaaqfooYLGJFHJp53mkHLa8GVtXcrpQ7c6KrlU3yw4iV1h
	HwAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bYPgej1i4OGn50HARPSGI0rpZUUjxg2I1L7fQe9PQlM=;
	b=nHm/vzGX78mnNPwdLSm0n8h4iv2OopEcJFHn98B2svE0I9cVKH1NfujUsxZRi3W9w5
	PjBOheaLU7d7fA8gC58JkY/a0gtTEi93o8WuX2fMRkzqLoAJPlpnErzbcQAiRJOvX11y
	w8ZUtsELJwTsyQ2+q2JgiRdtF08J0RypS2pLvZSkWwQsXHudaRJQLIZGzI40KGZud9cW
	nHKdY5gmKP8F7aP8zwuXjsaOB+Qz9HkZB68b9qnH40T5L4zsP1RTcgxooy8cobQmFZ2F
	OrEOFFYGGV6hHROZOujHPi1nYxAg6PyAGu+8J+OWe/uvSFlpdm89tVY1VpxbecwM7q4E
	U9yw==
X-Gm-Message-State: AHPjjUj+WQ8H3l6zByE8KLBWzVyoU2AIC12jczuW55qf1O7rXcXwftNe
	aG5jl1ByW5WCdHKMWBM3I32S/sKh+8z9/uz94NAbDg==
X-Google-Smtp-Source: AOwi7QDB34OvPUPTWmNxV3gsLdQ6LomFQrNYVPKK5qmqeYThGUM5FEZ9oMnDXY57g3a/oFgP5uRwstyLTusvPb6GakM=
X-Received: by 10.36.178.1 with SMTP id u1mr26548674ite.120.1507044552954;
	Tue, 03 Oct 2017 08:29:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.164.134 with HTTP; Tue, 3 Oct 2017 08:28:52 -0700 (PDT)
In-Reply-To: <CADS9r7=vrThVxzq5uvy19C4eH+mGvG52V9cz3FwKvvBeOdkbLQ@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
	<CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
	<CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
	<CAJTo0LZfoa1yA9kcsC4rnBMmOfB0QB1fU3eqVUg+EayTAwjZVQ@mail.gmail.com>
	<CADS9r7=vrThVxzq5uvy19C4eH+mGvG52V9cz3FwKvvBeOdkbLQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 3 Oct 2017 16:28:52 +0100
Message-ID: <CAJTo0Lb2p7BwAkheq1Cuh2kkfjNuFoi7Dhj7_opLGa5Th-VaXA@mail.gmail.com>
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
X-List-Received-Date: Tue, 03 Oct 2017 15:29:14 -0000
Content-Type: multipart/alternative; boundary="f403045d9c0e3d8105055aa6277a"

--f403045d9c0e3d8105055aa6277a
Content-Type: text/plain; charset="UTF-8"

Ah, so if you're inheriting native then the default pkg-config is good, but
the host paths are not searched out of the box.

If you *really* want to link against host binaries and not building your
own native recipes for it then see qemu.inc for an example of how to steal
the host pkg-config path and use it at configure time.

Ross

On 3 October 2017 at 16:05, eliya.mir@gmail.com <eliya.mir@gmail.com> wrote:

> when running the recipe I get  during do_configure:
> Checking for header stdlib.h             : yes
> ...
> Checking for program pkg-config          : /home/wzbwjj/vpm/GR_Yocto/
> build/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
>
> How do I change that ?
>
> On Tue, Oct 3, 2017 at 6:02 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> You don't need to, it will search the host.
>>
>> Ross
>>
>> On 3 October 2017 at 15:54, eliya.mir@gmail.com <eliya.mir@gmail.com>
>> wrote:
>>
>>> Hi Ross,
>>> how to configure use of pkg-config-native ?
>>>
>>> On Tue, Oct 3, 2017 at 5:51 PM, Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>>
>>>> On 3 October 2017 at 15:13, eliya.mir@gmail.com <eliya.mir@gmail.com>
>>>> wrote:
>>>>
>>>>> Hi all,
>>>>> I am new to the Yocto project.
>>>>> Is this the Yocto forum ?
>>>>> I would like configure pkg-config search directories but, the program
>>>>> configured from the sysroots file system, so it does not see Host
>>>>> environment variables.
>>>>> i.e : there are two pkg-config apps : Host's pkg-config located at
>>>>> /usr/bin/ , and bitbake pkg-config located at ~/Yocto/build/tmp/sysroots/
>>>>> x86_64-linux/usr/bin/
>>>>>
>>>>>
>>>> If you want to access pkg-config files on the host, you'll need to use
>>>> the pkg-config-native binary as pkg-config uses the *target* sysroots.
>>>>
>>>> Ross
>>>>
>>>
>>>
>>
>

--f403045d9c0e3d8105055aa6277a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ah, so if you&#39;re inheriting native then the default pk=
g-config is good, but the host paths are not searched out of the box.<div><=
br></div><div>If you *really* want to link against host binaries and not bu=
ilding your own native recipes for it then see qemu.inc for an example of h=
ow to steal the host pkg-config path and use it at configure time.</div><di=
v><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 3 October 2017 at 16:05, <a href=3D"mailto:eliya.mir@gm=
ail.com">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:el=
iya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">when running the rec=
ipe I get=C2=A0 during do_configure:=C2=A0<div>Checking for header stdlib.h=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: yes<br></div><div>...<br>=
Checking for program pkg-config=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /home/w=
zbwjj/vpm/GR_Yocto/<wbr>build/tmp/sysroots/x86_64-<wbr>linux/usr/bin/pkg-co=
nfig<br></div><div><br></div><div>How do I change that ?</div></div><div cl=
ass=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Tue, Oct 3, 2017 at 6:02 PM, Burton, Ross <span dir=3D"=
ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bu=
rton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr">You don&#39;t need to, it will search the host.<span class=3D"=
m_-5655495827445326346HOEnZb"><font color=3D"#888888"><div><br></div><div>R=
oss</div></font></span></div><div class=3D"m_-5655495827445326346HOEnZb"><d=
iv class=3D"m_-5655495827445326346h5"><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On 3 October 2017 at 15:54, <a href=3D"mailto:eliya.mi=
r@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a> <span dir=3D"ltr">&l=
t;<a href=3D"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
">Hi Ross,=C2=A0<div>how to configure use of pkg-config-native ?</div></div=
><div class=3D"m_-5655495827445326346m_-7853540023792357090HOEnZb"><div cla=
ss=3D"m_-5655495827445326346m_-7853540023792357090h5"><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Tue, Oct 3, 2017 at 5:51 PM, Burton=
, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" targe=
t=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><span>On 3 October 2017 at 15:13, <a href=
=3D"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a> <=
span dir=3D"ltr">&lt;<a href=3D"mailto:eliya.mir@gmail.com" target=3D"_blan=
k">eliya.mir@gmail.com</a>&gt;</span> wrote:<br></span><div class=3D"gmail_=
extra"><div class=3D"gmail_quote"><span><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr">Hi all,=C2=A0<br>I am new to the Yocto project.=C2=A0<div>Is t=
his the Yocto forum ?=C2=A0</div><div>I would like configure pkg-config sea=
rch directories but, the program configured from the sysroots file system, =
so it does not see Host environment variables.</div><div>i.e : there are tw=
o pkg-config apps : Host&#39;s pkg-config located at /usr/bin/ , and bitbak=
e pkg-config located at=C2=A0~/Yocto/build/tmp/sysroots/<wbr>x86_64-linux/u=
sr/bin/</div><div><br></div></div></blockquote><div><br></div></span><div>I=
f you want to access pkg-config files on the host, you&#39;ll need to use t=
he pkg-config-native binary as pkg-config uses the *target* sysroots.</div>=
<span class=3D"m_-5655495827445326346m_-7853540023792357090m_64086643098926=
72214HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross=C2=A0</div></=
font></span></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--f403045d9c0e3d8105055aa6277a--
