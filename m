Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E90A7E00B58; Fri, 13 Jan 2017 01:03:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DE2EE00B58
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 01:03:49 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id q20so4951370ioi.3
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 01:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FXArI+68v7+H0SKC8iX4kOlCo3EiyWGL19jN+xT4lCA=;
	b=jQde779lutPLOZTSsoHYjC79GLO1S2Q/J+KfMKmBGDLEZ6qH0bWUGs7JjLjyPRd4ED
	ThzFv3Tt3ayATh1zeGlsSaFnO9S89OkqvQpV7QP51XQ4KWIIKtaVx/AgHj2vMtAL6Rd/
	zFEffMbsTN9cWbFmxKiwHORbxWI67Vl6U7ZCfwRibN8Rtq2T/pGBzWpJCDpygkZNnhdf
	bGdMx07aoX69Ln6VqZD65l/cOP7ZDbhZWMmaOuphp3SL4VweBTg6cC7qhn45ccL8FLvK
	HcsGQveeo2oUd7YZ6KzEn10j0+VXmiUTYuqnW38dQ7/EYYc66ybdp1FAbqXnVKIbsDxc
	4HPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FXArI+68v7+H0SKC8iX4kOlCo3EiyWGL19jN+xT4lCA=;
	b=PlcpM36oacM4yQ9eFaisfv58ilkNgm1hhTWbtbaXf8iT5ZkosCTqZVXcZ1arfnK4Y3
	uYssUQZBB+mjlLGeu0TtYbMHo1DXj09/16GKrQQ9W/ZddIet4E3CJmtPXrD7XCpGEYuA
	v4bp2HbPqgH/XGlr42a4AZ43FNS9y/4r2XOVP1OsCyjXGBaLqRx+xUBKHgz7g4ryTUO7
	Stk40VK6bPK5iQy9BG6eFDB2BtahNxMzzmhHR7kYDHaibUtwLxeTd7ILZ4cx2i3H0bTm
	80dR9ovHMJiVRihqxLm2HLPZaXqak6PSHWo6CxduOgu7g8Uv9FyJErfenuYNRjwN8oxl
	dlmQ==
X-Gm-Message-State: AIkVDXLmXYzXWzoLS6VMhI7cMQGCwXIyW3TjX8V+wgXABnsmjM7zsjCf/1d6s2eR2iNwMJMZ1qMe2QsbDbhzNQ==
X-Received: by 10.107.180.8 with SMTP id d8mr17622160iof.101.1484298229190;
	Fri, 13 Jan 2017 01:03:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.195.69 with HTTP; Fri, 13 Jan 2017 01:03:48 -0800 (PST)
X-Originating-IP: [86.186.202.142]
Received: by 10.107.195.69 with HTTP; Fri, 13 Jan 2017 01:03:48 -0800 (PST)
In-Reply-To: <CAK18fxGpp4Ojp6YoxgkQewqT54ek8yuRMVWiRDeX4z7vF5JCnw@mail.gmail.com>
References: <20170112182905.15203-1-raj.khem@gmail.com>
	<CAK18fxEs0UGdhSZ18yiEB5s2fDe3zExHX88Gv-DYt=VJheDWow@mail.gmail.com>
	<CAMKF1soVdmjRHd9z8N_4d7N8SX25co=kJh9M1P6wzNQgqLuJGA@mail.gmail.com>
	<CAK18fxGpp4Ojp6YoxgkQewqT54ek8yuRMVWiRDeX4z7vF5JCnw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 13 Jan 2017 09:03:48 +0000
Message-ID: <CAK18fxFNLJ606wBpgDj0KuCGALQmGprm8GR0VO+xbHFg4FKsvQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.8.bb: Upgrade to 4.8.16
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
X-List-Received-Date: Fri, 13 Jan 2017 09:03:54 -0000
Content-Type: multipart/alternative; boundary=94eb2c05a656b1339a0545f61c68

--94eb2c05a656b1339a0545f61c68
Content-Type: text/plain; charset=UTF-8

On 13 Jan 2017 02:04, "Khem Raj" <raj.khem@gmail.com> wrote:

On Thu, Jan 12, 2017 at 1:54 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Jan 12, 2017 at 6:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>> index 7511f93..be25e65 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>> @@ -1,8 +1,8 @@
>>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>
>> -LINUX_VERSION ?= "4.8.15"
>> +LINUX_VERSION ?= "4.8.16"
>>
>> -SRCREV = "c8af0c2f515556ef052913d552b6b11501c71996"
>> +SRCREV = "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
>>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=
rpi-4.8.y \
>>  "
>>  require linux-raspberrypi.inc
>> --
>> 2.11.0
>>
>
> Merged both to master.

 What do folks think about deleting all other kernel besides 4.1 4.4 and 4.9


I agree.


cheers!

--94eb2c05a656b1339a0545f61c68
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On 13 Jan 2017 02:04, &quot;Khem Raj&quot; &lt;<a href=3D"mailto:=
raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br type=3D"attributio=
n"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div class=3D"elided-text">On Thu, Jan 12, 2017=
 at 1:54 PM, Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei=
@gherzan.ro</a>&gt; wrote:<br>
&gt; On Thu, Jan 12, 2017 at 6:29 PM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">=
raj.khem@gmail.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.8=
.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.8.bb</a>=
 | 4 ++--<br>
&gt;&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberr=
ypi_4.8.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.8=
.bb</a> b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.8.bb" =
rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.8.bb</a><br>
&gt;&gt; index 7511f93..be25e65 100644<br>
&gt;&gt; --- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.8=
.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.8.bb</a>=
<br>
&gt;&gt; +++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.8=
.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.8.bb</a>=
<br>
&gt;&gt; @@ -1,8 +1,8 @@<br>
&gt;&gt;=C2=A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&q=
uot;<br>
&gt;&gt;<br>
&gt;&gt; -LINUX_VERSION ?=3D &quot;4.8.15&quot;<br>
&gt;&gt; +LINUX_VERSION ?=3D &quot;4.8.16&quot;<br>
&gt;&gt;<br>
&gt;&gt; -SRCREV =3D &quot;<wbr>c8af0c2f515556ef052913d552b6b1<wbr>1501c719=
96&quot;<br>
&gt;&gt; +SRCREV =3D &quot;<wbr>061dccce6cf6705bbb5da29a643f4b<wbr>0ad1d116=
30&quot;<br>
&gt;&gt;=C2=A0 SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspber=
rypi/linux.git;protocol=3Dgit;branch=3Drpi-4.8.y" rel=3D"noreferrer" target=
=3D"_blank">github.com/raspberrypi/<wbr>linux.git;protocol=3Dgit;branch=3D<=
wbr>rpi-4.8.y</a> \<br>
&gt;&gt;=C2=A0 &quot;<br>
&gt;&gt;=C2=A0 require linux-raspberrypi.inc<br>
&gt;&gt; --<br>
&gt;&gt; 2.11.0<br>
&gt;&gt;<br>
&gt;<br>
&gt; Merged both to master.<br>
<br>
</div>=C2=A0What do folks think about deleting all other kernel besides 4.1=
 4.4 and 4.9<br></blockquote></div></div></div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">I agree.</div><div dir=3D"auto"><div class=3D"gmail_extra=
"><div class=3D"gmail_quote"><blockquote class=3D"quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
cheers!<br>
</blockquote></div><br></div></div></div>

--94eb2c05a656b1339a0545f61c68--
