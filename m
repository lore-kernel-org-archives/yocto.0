Return-Path: <grsandeep85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4552FE00E14; Wed, 12 Oct 2016 20:20:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (grsandeep85[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.182 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12567E00CAB
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 20:20:00 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id z190so64677390qkc.2
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 20:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZKre1VslvZjvQ4BfarYoqkuSntA9f1atzLW4JOjH0sA=;
	b=TRiUqkwcvcZSnKleSkD1rW9G9uE6LnybQoF5naoNFmnKChIJkSOWruv48wryt7DVlv
	rA82uz8UCPFn1mYDZQP3l5cBrU7MP0ScrBPjZYbj/OqtSJbmJc15LmELBxPQJviT2YIL
	ctRFZygBe+94jghSW2Oj+y+5siTZWlZ3IBR9CFnImAhBABRwnBoOHACZ+QKOShjwVkOI
	1YQ7CqX4y873USxpayxMoD4SlfYROBJwrvzlqq0aNcOxiFfj3mV41lmLWu62zzvr96at
	gfQtFS+UnoDUESAxmaZPFvzZpYWlq57+xLwUtJYUjPr0uZ7rW//eNahLPnWwpc9YqsSK
	LcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZKre1VslvZjvQ4BfarYoqkuSntA9f1atzLW4JOjH0sA=;
	b=TJKtGof44egzv8Nw96SEgvX9cBymlktr5DPeNg+Ghm0Akyq2A5Nvkrr2QlvEiaaBYx
	x243i6S1bD+0r2gGLyMISKSHRVA19jLekOzSEH5MVZZiQPrJKzd6pgcIJ2K+V9ZPeFST
	77wtQJ2XKsCTk3ER1zcMHGwFy8Ru1m+GXJv50jWB50fd2h7pg2w2aU3u2JuQpplxAaOE
	KWqV6QGSySnwGvYmV6pwsaanX3fVuGah3aTqEW6LGLeqf8WhQZgCJBkHJXQZB/0ORDR/
	R9LNvatGcoJALCEdK5asRXcFQ/O0KVT3qnwS5vB4Mc6kBhWBbglgGSqQDUO6DDztGJca
	B0BQ==
X-Gm-Message-State: AA6/9RnpyNBtRSAF7c2ikX9G23n5zCi3M4SKx3FPlnuiHVquKtMPbNoNmSCR4Gv6pk/GqCZX5wm1/Y7gJacYig==
X-Received: by 10.55.45.196 with SMTP id t187mr4040046qkh.2.1476328800158;
	Wed, 12 Oct 2016 20:20:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.45.4 with HTTP; Wed, 12 Oct 2016 20:19:59 -0700 (PDT)
In-Reply-To: <CAJ58UN=B-P0VeEb_WPO7Z+ViEOspvBdzt==A7tTNnEE0T69y6g@mail.gmail.com>
References: <CAJ58UN=tw2n70748xW9zoSh1tge-c5MWGUwpRr7pkR_jfh8BXg@mail.gmail.com>
	<1676378.mbRJq8UcJs@peggleto-mobl.ger.corp.intel.com>
	<CAJ58UN=B-P0VeEb_WPO7Z+ViEOspvBdzt==A7tTNnEE0T69y6g@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
Date: Wed, 12 Oct 2016 21:19:59 -0600
Message-ID: <CAKP9-ShAzdB+mCDsbDnTz_jDuT_qAmND=WPay7oLH-t+5YcrMQ@mail.gmail.com>
To: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yoctoproject <yocto@yoctoproject.org>
Subject: Re: Clarification regarding GCC tool version supported on - Krogoth 2.1.1
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
X-List-Received-Date: Thu, 13 Oct 2016 03:20:03 -0000
Content-Type: multipart/alternative; boundary=001a114f411cb4adbe053eb695b5

--001a114f411cb4adbe053eb695b5
Content-Type: text/plain; charset=UTF-8

Hi Vijay,

You can run *"bitbake-layers show-recipes | grep gcc-source"* to know more
on supported toolchain versions.

On Wed, Oct 12, 2016 at 11:55 AM, Vijayakumar Badiger <
vijayakumarmb@gmail.com> wrote:

> Thanks Paul, appreciate your reply.
>
> Cheers,
> Vijay
>
>
> On Mon, Oct 10, 2016 at 6:24 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> Hi Vijay,
>>
>> On Mon, 10 Oct 2016 17:44:13 Vijayakumar Badiger wrote:
>> > Please can some one tell me the tool chain versions supported on the
>> latest
>> > YPCore-Krogoth.
>> > I know the it uses default GCC5.3, just wanted to know if older tool
>> chain
>> > like 4.9XX is supported or not.
>> >
>> > I don't see the feature list like the one listed below for Krogoth
>> 2.1.1.
>> > which clearly states the tool chain versions supported.
>> >
>> > https://www.yoctoproject.org/downloads/core/jethro20
>>
>> gcc 4.9 is included in the krogoth branch, and being an earlier default
>> version it should work - however it's fair to say it does not receive the
>> same
>> level of testing that 5.3 does given that 5.3 is the default.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*Thanks & Regards,*
*Sandeep G R*

--001a114f411cb4adbe053eb695b5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&quot;tr=
ebuchet ms&quot;,sans-serif;color:rgb(7,55,99)">Hi Vijay,</div><div class=
=3D"gmail_default" style=3D"font-family:&quot;trebuchet ms&quot;,sans-serif=
;color:rgb(7,55,99)"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:&quot;trebuchet ms&quot;,sans-serif;color:rgb(7,55,99)">You can run <=
b>&quot;bitbake-layers show-recipes | grep gcc-source&quot;</b> to know mor=
e on supported toolchain versions.</div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Wed, Oct 12, 2016 at 11:55 AM, Vijayakumar =
Badiger <span dir=3D"ltr">&lt;<a href=3D"mailto:vijayakumarmb@gmail.com" ta=
rget=3D"_blank">vijayakumarmb@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr">Thanks Paul, appreciate your reply.=
=C2=A0<div><br></div><div>Cheers,</div><div>Vijay</div><div><br></div></div=
><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Mon, Oct 10, 2016 at 6:24 PM, Paul Eggleton <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=
=3D"_blank">paul.eggleton@linux.intel.com</a><wbr>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">Hi Vijay,<br>
<span><br>
On Mon, 10 Oct 2016 17:44:13 Vijayakumar Badiger wrote:<br>
&gt; Please can some one tell me the tool chain versions supported on the l=
atest<br>
&gt; YPCore-Krogoth.<br>
&gt; I know the it uses default GCC5.3, just wanted to know if older tool c=
hain<br>
&gt; like 4.9XX is supported or not.<br>
&gt;<br>
&gt; I don&#39;t see the feature list like the one listed below for Krogoth=
 2.1.1.<br>
&gt; which clearly states the tool chain versions supported.<br>
&gt;<br>
&gt; <a href=3D"https://www.yoctoproject.org/downloads/core/jethro20" rel=
=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/d<wbr>ownloa=
ds/core/jethro20</a><br>
<br>
</span>gcc 4.9 is included in the krogoth branch, and being an earlier defa=
ult<br>
version it should work - however it&#39;s fair to say it does not receive t=
he same<br>
level of testing that 5.3 does given that 5.3 is the default.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"m_-5608202370594599938HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
<font face=3D"trebuchet ms, sans-serif" color=3D"#073763"><b>Thanks &amp; R=
egards,</b></font><div><font face=3D"trebuchet ms, sans-serif" color=3D"#07=
3763"><b>Sandeep G R</b></font><br><br></div></div></div>
</div>

--001a114f411cb4adbe053eb695b5--
