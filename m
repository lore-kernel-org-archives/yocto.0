Return-Path: <whulxh@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5BA3E00A76; Sun, 12 Feb 2017 22:02:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (whulxh[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA432E00A94
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 22:02:39 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id 11so13272970qkl.0
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 22:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YDwuic3T01DXaKRho/Ox4IdajM9CPWfZpeEAFYOckpw=;
	b=M5QT+NMaTHxHI2KKsEu+Und7fHr5Ii0hHdWrR6cKUJzkdmQ5Me0QOe8F5M8xetykSm
	wMr1Vgwkv7RECSjIZprN0vD+KN2TwiJzrM1p/ZZKeIVgkSehOOLpBq4YJeQgdSd1Hp7K
	KXsHpKBKg0AHRXzT16aKvyA4sa0PR5Tl716/D5qjBWrTEZd5LAyC81eA1Qd3ybKNyG9H
	TM1WlHCr12o8+EDJ4ioceeQHUtB6gycGh8nKlodKJSdQCpM+dzyS9Dsy18DHUQeTWviI
	OZO+nYr+uec/v7hN6f/+DaHhpO0pII80x2LCURUASPH9fusH2Lmxekq0iS6LjJosgE3p
	Viow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YDwuic3T01DXaKRho/Ox4IdajM9CPWfZpeEAFYOckpw=;
	b=NDvIXGiSd4B2M+t9ubLy2m/kvzir3JMxVxkle5AkbpAbb3PpIznsJyQ1Nx2U9hsQbL
	ECRgY8idMflB+GVN1XCH9ISkyJxXNm9+2L9jkh8P2uk3vyoLrCWWlMAlhPkYr95UZkMg
	i34g+CO8dAPAkbaZM23Gb6j7JxVP5Zn3aGZzUHqtgXeG2zu+v/O2O8Fev3iH5CMkwbjd
	KRAs1/NTBuMKO7XAZTmpQR7YSwmjbbZF5rXLAippsU98eDUXeZKVB1/hpc2fyGwlkCPj
	q3eLS8gnK0QAUL7leCHJfQJVucQeHVDx7aUZZbDr94FuTQaZFYMAdAELFCyTJCo78Vu7
	aslg==
X-Gm-Message-State: AMke39l84dSr9sH7EbieUGeJsJk5ancRhYZW1EBNTN1jvQLaFezRz5C6rpeM8fzc/eIOr0zua0dyuz7o4Ys7iQ==
X-Received: by 10.55.67.77 with SMTP id q74mr19114210qka.127.1486965758730;
	Sun, 12 Feb 2017 22:02:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.43.98 with HTTP; Sun, 12 Feb 2017 22:02:38 -0800 (PST)
In-Reply-To: <cf76c5ae-d74b-8edd-65b3-190d2fd1870a@mlbassoc.com>
References: <CAFxSfziYaKn98sUWbUuPbYiXVWXXpqu4vRdbR=BNP8QV2t+yrQ@mail.gmail.com>
	<CAMKF1srwUOY7VH0S_PfnpbMmr9ONaUrXMHkHcDvUCz+k-0GHyQ@mail.gmail.com>
	<cf76c5ae-d74b-8edd-65b3-190d2fd1870a@mlbassoc.com>
From: Xiaohui Liu <whulxh@gmail.com>
Date: Sun, 12 Feb 2017 22:02:38 -0800
Message-ID: <CAFxSfziow5fS_zFMQ2n4fBus4+RMBQbbP21t1DYj_RC6hHu1+A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to gracefully disable a setscene task?
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
X-List-Received-Date: Mon, 13 Feb 2017 06:02:48 -0000
Content-Type: multipart/alternative; boundary=001a114aa854d7b0730548633121

--001a114aa854d7b0730548633121
Content-Type: text/plain; charset=UTF-8

Hi Gary,

Some tasks depend on do_populate_lic, which requires kernel source. But
when do_populate_lic_setscene is called instead of do_populate_lic, it does
not populate kernel source and leads to those tasks complain missing kernel
source. That's why I want to disable do_populate_lic_setscene. Thanks.

On Fri, Feb 10, 2017 at 10:13 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2017-02-11 02:24, Khem Raj wrote:
>
>> On Fri, Feb 10, 2017 at 3:05 PM, Xiaohui Liu <whulxh@gmail.com> wrote:
>>
>>> Hi everyone,
>>>
>>> I tried to disable a setscene task as below:
>>>
>>> do_populate_lic_setscene () {
>>>    exit 1
>>> }
>>>
>>>
>> you could use something like
>>
>> deltask  do_populate_lic_setscene
>>
>> It works but shows a warning:
>>>
>>> WARNING: Logfile for failed setscene task is
>>> /data/users/xhliu/poky/build-arm/tmp/work/armada39x-poky-lin
>>> ux-gnueabi/linux-terragraph/4.4.8-r0/temp/log.do_populate_
>>> lic_setscene.2825388
>>> WARNING: Setscene task 1
>>> (/data/users/xhliu/poky/meta-terragraph/recipes-kernel/linux/
>>> linux-terragraph_4.4.8.bb,
>>> do_populate_lic_setscene) failed with exit code '1' - real task will be
>>> run
>>> instead
>>>
>>> Any way to disable it without the warning? Thanks in advance.
>>>
>>
> Why would you want to do this?
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114aa854d7b0730548633121
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Gary,<div><br></div>Some tasks depend on <font color=3D=
"#0000ff">do_populate_lic</font>, which requires kernel source. But when <f=
ont color=3D"#0000ff">do_populate_lic_setscene</font> is called instead of=
=C2=A0<span style=3D"color:rgb(0,0,255)">do_populate_lic</span>, it does no=
t populate kernel source and leads to those tasks complain missing kernel s=
ource. That&#39;s why I want to disable=C2=A0<span style=3D"color:rgb(0,0,2=
55)">do_populate_lic_setscene</span>. Thanks.</div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Fri, Feb 10, 2017 at 10:13 PM, Gary Th=
omas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_=
blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><span class=3D"">On 2017-02-11 02:24, Khem Raj wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Fri, Feb 10, 2017 at 3:05 PM, Xiaohui Liu &lt;<a href=3D"mailto:whulxh@g=
mail.com" target=3D"_blank">whulxh@gmail.com</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi everyone,<br>
<br>
I tried to disable a setscene task as below:<br>
<br>
do_populate_lic_setscene () {<br>
=C2=A0 =C2=A0exit 1<br>
}<br>
<br>
</blockquote>
<br>
you could use something like<br>
<br>
deltask=C2=A0 do_populate_lic_setscene<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
It works but shows a warning:<br>
<br>
WARNING: Logfile for failed setscene task is<br>
/data/users/xhliu/poky/build-a<wbr>rm/tmp/work/armada39x-poky-lin<wbr>ux-gn=
ueabi/linux-terragraph/4.<wbr>4.8-r0/temp/log.do_populate_<wbr>lic_setscene=
.2825388<br>
WARNING: Setscene task 1<br>
(/data/users/xhliu/poky/meta-t<wbr>erragraph/recipes-kernel/linux<wbr>/<a h=
ref=3D"http://linux-terragraph_4.4.8.bb" rel=3D"noreferrer" target=3D"_blan=
k">linux-terragraph_4.4.8.bb</a>,<br>
do_populate_lic_setscene) failed with exit code &#39;1&#39; - real task wil=
l be run<br>
instead<br>
<br>
Any way to disable it without the warning? Thanks in advance.<br>
</blockquote></blockquote>
<br></span>
Why would you want to do this?<span class=3D"HOEnZb"><font color=3D"#888888=
"><br>
<br>
-- <br>
------------------------------<wbr>------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------<wbr>------------------------------</font></s=
pan><div class=3D"HOEnZb"><div class=3D"h5"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a114aa854d7b0730548633121--
