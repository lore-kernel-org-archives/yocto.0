Return-Path: <eliya.mir@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E23AE00D3E; Tue,  3 Oct 2017 08:36:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eliya.mir[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CA6BE00CF6
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 08:36:15 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id b127so10191804lfe.9
	for <yocto@yoctoproject.org>; Tue, 03 Oct 2017 08:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+YoGeXeS+aoxEhCgQLHuokMniQv5DfEWnodKm7YiiI0=;
	b=kXD4SrISwCA9dUXBoXKVqojVrG3Vm8ZhUj3pggkP7uCILB2boLvroQD7muDBUKyBvK
	Xj58oKfu4PDavFsn39gop9joqZtHYAjRRjTGLY6RetlQuaU0CaDgVgwYEZk1jkfq8w7w
	0e3I5qMkbnUzA7jI25AsiLpCziGMv4ZPzieWzbKso3Al75XI6S4D40HazkgAosAHggeu
	ZElLy+b+5pQ6ZkzZXvEUXJbnLlwsEi2lA6+3WQa20QFLNQi1PebJDPp/cP+aP38QYz38
	+zgEyRTLQZRwKS4rXO/Bk3tsocTGslEhVaC1Elqp9h9W+HRZy/U+y8xUju/45k+qhmao
	742A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+YoGeXeS+aoxEhCgQLHuokMniQv5DfEWnodKm7YiiI0=;
	b=lsI4uyWlSvZZ6vlv3Dco5ghdI1NEQk+goxyXo4dO4W8oQsfYTSwKiRwhASAN50z9AE
	/7eotlohlefOJr7llYc2gn2mJ9kR/BJDy0r05pR2zGDFYkP5EbbMgRylICWVORcUjpVV
	uKcRyKhKaW5FF/52570bCjrMdlwgrZd0gGg+iuUmyPSQqxEpwTCIZHBgZ9hq4ZhIb8/K
	l8QHae4T9O+63Yx8LJUJZL+1DNTEvGiESmcCH+3Ee0b5bPDnBLeXN5wwYLrZcm3s4Q/N
	PqUX3gyJ6TZDWxbCoCwubF5CN2CuCB/4vuKOZ6No8nLb7F3lkPexVJMu90z5d1iAcsCD
	zDYQ==
X-Gm-Message-State: AMCzsaV2gbklsgGopV0Cp9oV6f/jmtKyhV+B7poNTscObpc7J0HIsKLQ
	seA2NafQBp/o+48i9v/zF4O3zdX5bYO/r18sGkZeqA==
X-Google-Smtp-Source: AOwi7QA/zd5D/WlHE5+6CU8GCbqN95QUQ1kn5Gx+RXUJRVSlc6XEgcW39wuxtkhzOC1cMwQePbPlU/gsGjeXBm7B+1I=
X-Received: by 10.25.81.146 with SMTP id g18mr2502663lfl.77.1507044974783;
	Tue, 03 Oct 2017 08:36:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.41.17 with HTTP; Tue, 3 Oct 2017 08:36:13 -0700 (PDT)
In-Reply-To: <CAJTo0Lb2p7BwAkheq1Cuh2kkfjNuFoi7Dhj7_opLGa5Th-VaXA@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
	<CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
	<CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
	<CAJTo0LZfoa1yA9kcsC4rnBMmOfB0QB1fU3eqVUg+EayTAwjZVQ@mail.gmail.com>
	<CADS9r7=vrThVxzq5uvy19C4eH+mGvG52V9cz3FwKvvBeOdkbLQ@mail.gmail.com>
	<CAJTo0Lb2p7BwAkheq1Cuh2kkfjNuFoi7Dhj7_opLGa5Th-VaXA@mail.gmail.com>
From: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Date: Tue, 3 Oct 2017 18:36:13 +0300
Message-ID: <CADS9r7=SVFvLh_ato9mR74Jr_BMUMrqAOAd+5vsDk2GMXCfaOw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Tue, 03 Oct 2017 15:36:17 -0000
Content-Type: multipart/alternative; boundary="94eb2c1cdfc261f2cc055aa640b6"

--94eb2c1cdfc261f2cc055aa640b6
Content-Type: text/plain; charset="UTF-8"

Thanks Ross,
That is the issue : default pkg-config does not search host paths - How to
edit its search paths ?


On Tue, Oct 3, 2017 at 6:28 PM, Burton, Ross <ross.burton@intel.com> wrote:

> Ah, so if you're inheriting native then the default pkg-config is good,
> but the host paths are not searched out of the box.
>
> If you *really* want to link against host binaries and not building your
> own native recipes for it then see qemu.inc for an example of how to steal
> the host pkg-config path and use it at configure time.
>
> Ross
>
> On 3 October 2017 at 16:05, eliya.mir@gmail.com <eliya.mir@gmail.com>
> wrote:
>
>> when running the recipe I get  during do_configure:
>> Checking for header stdlib.h             : yes
>> ...
>> Checking for program pkg-config          : /home/wzbwjj/vpm/GR_Yocto/buil
>> d/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
>>
>> How do I change that ?
>>
>> On Tue, Oct 3, 2017 at 6:02 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> You don't need to, it will search the host.
>>>
>>> Ross
>>>
>>> On 3 October 2017 at 15:54, eliya.mir@gmail.com <eliya.mir@gmail.com>
>>> wrote:
>>>
>>>> Hi Ross,
>>>> how to configure use of pkg-config-native ?
>>>>
>>>> On Tue, Oct 3, 2017 at 5:51 PM, Burton, Ross <ross.burton@intel.com>
>>>> wrote:
>>>>
>>>>> On 3 October 2017 at 15:13, eliya.mir@gmail.com <eliya.mir@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Hi all,
>>>>>> I am new to the Yocto project.
>>>>>> Is this the Yocto forum ?
>>>>>> I would like configure pkg-config search directories but, the program
>>>>>> configured from the sysroots file system, so it does not see Host
>>>>>> environment variables.
>>>>>> i.e : there are two pkg-config apps : Host's pkg-config located at
>>>>>> /usr/bin/ , and bitbake pkg-config located at ~/Yocto/build/tmp/sysroots/
>>>>>> x86_64-linux/usr/bin/
>>>>>>
>>>>>>
>>>>> If you want to access pkg-config files on the host, you'll need to use
>>>>> the pkg-config-native binary as pkg-config uses the *target* sysroots.
>>>>>
>>>>> Ross
>>>>>
>>>>
>>>>
>>>
>>
>

--94eb2c1cdfc261f2cc055aa640b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Ross,=C2=A0<br><div>That is the issue : default pkg=
-config does not search host paths - How to edit its search paths ?=C2=A0<b=
r><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Tue, Oct 3, 2017 at 6:28 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Ah,=
 so if you&#39;re inheriting native then the default pkg-config is good, bu=
t the host paths are not searched out of the box.<div><br></div><div>If you=
 *really* want to link against host binaries and not building your own nati=
ve recipes for it then see qemu.inc for an example of how to steal the host=
 pkg-config path and use it at configure time.</div><div><br></div><div>Ros=
s</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><spa=
n class=3D"">On 3 October 2017 at 16:05, <a href=3D"mailto:eliya.mir@gmail.=
com" target=3D"_blank">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a>&=
gt;</span> wrote:<br></span><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><span class=3D"">when running the recipe I get=C2=A0 during do_configure:=
=C2=A0<div>Checking for header stdlib.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0: yes<br></div></span><div>...<br>Checking for program pkg-con=
fig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /home/wzbwjj/vpm/GR_Yocto/buil<wbr>=
d/tmp/sysroots/x86_64-linux/<wbr>usr/bin/pkg-config<br></div><div><br></div=
><div>How do I change that ?</div></div><div><div class=3D"h5"><div class=
=3D"m_3570546685881285903HOEnZb"><div class=3D"m_3570546685881285903h5"><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Oct 3, 2017 =
at 6:02 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burto=
n@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">You don&#39;t need to, i=
t will search the host.<span class=3D"m_3570546685881285903m_-5655495827445=
326346HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross</div></font>=
</span></div><div class=3D"m_3570546685881285903m_-5655495827445326346HOEnZ=
b"><div class=3D"m_3570546685881285903m_-5655495827445326346h5"><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 3 October 2017 at 15:54,=
 <a href=3D"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.c=
om</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:eliya.mir@gmail.com" target=
=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">Hi Ross,=C2=A0<div>how to configure use of p=
kg-config-native ?</div></div><div class=3D"m_3570546685881285903m_-5655495=
827445326346m_-7853540023792357090HOEnZb"><div class=3D"m_35705466858812859=
03m_-5655495827445326346m_-7853540023792357090h5"><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Tue, Oct 3, 2017 at 5:51 PM, Burton, Ro=
ss <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D=
"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><span>On 3 October 2017 at 15:13, <a href=3D=
"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a> <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:eliya.mir@gmail.com" target=3D"_blank">=
eliya.mir@gmail.com</a>&gt;</span> wrote:<br></span><div class=3D"gmail_ext=
ra"><div class=3D"gmail_quote"><span><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr">Hi all,=C2=A0<br>I am new to the Yocto project.=C2=A0<div>Is this=
 the Yocto forum ?=C2=A0</div><div>I would like configure pkg-config search=
 directories but, the program configured from the sysroots file system, so =
it does not see Host environment variables.</div><div>i.e : there are two p=
kg-config apps : Host&#39;s pkg-config located at /usr/bin/ , and bitbake p=
kg-config located at=C2=A0~/Yocto/build/tmp/sysroots/<wbr>x86_64-linux/usr/=
bin/</div><div><br></div></div></blockquote><div><br></div></span><div>If y=
ou want to access pkg-config files on the host, you&#39;ll need to use the =
pkg-config-native binary as pkg-config uses the *target* sysroots.</div><sp=
an class=3D"m_3570546685881285903m_-5655495827445326346m_-78535400237923570=
90m_6408664309892672214HOEnZb"><font color=3D"#888888"><div><br></div><div>=
Ross=C2=A0</div></font></span></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></div></div></blockquote></div><br></div>
</blockquote></div><br></div>

--94eb2c1cdfc261f2cc055aa640b6--
