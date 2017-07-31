Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9DFCE00C3C; Mon, 31 Jul 2017 06:26:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ADA1E00BB7
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:26:33 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id g35so78327591ioi.3
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sniQiuZUgcNZnrTaTc/xNNemQYo7XOJp8aBLKGTeK+4=;
	b=XHmSh3KhZ2t/lJi4pYSpN/27NT0LUALRvCb/cUeK1bqJawNgLJ2acS/diyJHL7W+qr
	Q43Y9vlHy2BQhFIgH+7uvP1O6DXPtDpSZb+HFCWAotDG8o8OBTgYYP8Uwq9CtGYTE3/N
	acP8acLBg1oGM7V3/S1vOWX/T4iAFCahlLCNyUI+ar43eujoe/EPod23hLeDj2a8ZoWq
	Qq2t6ye/h/ASUJZZTaX2QbIi4w2wl8/BVSUEeYM11Ff3i1dSE2hcDOrFE7JWEZtviGlr
	HGhJOSvJHsP0E2dcxrruE7yyeSUAzaUUmYJXlDUuSbjzKn27Rmpo0bAuGX+qzl65NhLQ
	foSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sniQiuZUgcNZnrTaTc/xNNemQYo7XOJp8aBLKGTeK+4=;
	b=aYxKT1FJkQI4p/GHi7Gr344ujJvYW9eGxkxdxDKKN+82qYplbzC849vcCVTZ8Mwc9e
	WDR/znHZjYDCEKMej9xx8/GHRwe+g0mgN+VDp7esl4gIUXD6lP+9ZsWGY4zqiL+XSI9I
	ddDj9O83Fp0ssI2rdVSPl43K4K8EBBUP/n5lBqJdjwZNTE2Lm6nx+lauV51OVRvl8+1W
	zpBdGUVZ/DzUbJfnvLvJjcyc8oORuHfiHj4gf1SDq5ZXq4CSvMkAPrg1wKnaavgCvZ+Y
	qF9bwXWXHbWun5C5RlhT388g+jyoSFT9F7QP4syp+lwzM7yrqkICdbbPXnvLZjbjfn5C
	7Q1A==
X-Gm-Message-State: AIVw1120ejThE+32WcPwRTZNJit+y/eyfDcYXvcWPdBkZ1z+odUXvevk
	iUj2NELnhzt14RHksMvCg0NEIWxrM1m6
X-Received: by 10.107.205.72 with SMTP id d69mr18971804iog.224.1501507593534; 
	Mon, 31 Jul 2017 06:26:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Mon, 31 Jul 2017 06:26:13 -0700 (PDT)
In-Reply-To: <CAByQQ_q0mkG2BfK3FGBZgXOSJxzkUAORCZPC5mYiAQ2oB5qgFw@mail.gmail.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
	<CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
	<CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
	<CAJTo0LZAwKLB6ZRTw79B9VfPz+ra=CAoJHn8Bzz9Z3ra=jzq3g@mail.gmail.com>
	<CAByQQ_q0mkG2BfK3FGBZgXOSJxzkUAORCZPC5mYiAQ2oB5qgFw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 31 Jul 2017 14:26:13 +0100
Message-ID: <CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Mon, 31 Jul 2017 13:26:34 -0000
Content-Type: multipart/alternative; boundary="94eb2c189baebd8b7c05559cfa41"

--94eb2c189baebd8b7c05559cfa41
Content-Type: text/plain; charset="UTF-8"

Then the branch you checked out.  git branch will tell you.

Ross

On 31 July 2017 at 14:17, Riko Ho <antonius.riko@gmail.com> wrote:

> Git clone ...
> On Jul 31, 2017 9:16 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>
>> How did you get poky?
>>
>> Ross
>>
>> On 31 July 2017 at 14:14, Riko Ho <antonius.riko@gmail.com> wrote:
>>
>>> How can I see my branch?
>>> On Jul 31, 2017 9:12 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>>>
>>>> On 31 July 2017 at 03:33, Riko Ho <antonius.riko@gmail.com> wrote:
>>>>
>>>>> Is my auto make disabled with icecc ?
>>>>>
>>>>> How to make it enable ? thanks.
>>>>>
>>>>
>>>> That's just a debug message.
>>>>
>>>> > | help2man: can't get `--help' info from automake-1.15
>>>> > | Try `--no-discard-stderr' if option outputs to stderr
>>>> > | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
>>>>
>>>>
>>>> That's the error your hitting.
>>>>
>>>> I think you need to update to the latest commit for the branch you're
>>>> on, there was a problem with modern perl in help2man.  What release/branch
>>>> are you using?
>>>>
>>>> Ross
>>>>
>>>
>>

--94eb2c189baebd8b7c05559cfa41
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Then the branch you checked out. =C2=A0git branch will tel=
l you.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On 31 July 2017 at 14:17, Riko Ho <span dir=3D"ltr=
">&lt;<a href=3D"mailto:antonius.riko@gmail.com" target=3D"_blank">antonius=
.riko@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p =
dir=3D"ltr">Git clone ...</p><div class=3D"HOEnZb"><div class=3D"h5">
<div class=3D"gmail_quote">On Jul 31, 2017 9:16 PM, &quot;Burton, Ross&quot=
; &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burto=
n@intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr">How did you get poky?<div><br></div><div>Ross</div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 31 July =
2017 at 14:14, Riko Ho <span dir=3D"ltr">&lt;<a href=3D"mailto:antonius.rik=
o@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr">How can I see my branch?=
</p><div class=3D"m_2019242909827686211m_-4777739250393309465HOEnZb"><div c=
lass=3D"m_2019242909827686211m_-4777739250393309465h5">
<div class=3D"gmail_quote">On Jul 31, 2017 9:12 PM, &quot;Burton, Ross&quot=
; &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burto=
n@intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr">On 31 July 2017 at 03:33, Riko Ho <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:antonius.riko@gmail.com" target=3D"_blank">antonius.=
riko@gmail.com</a>&gt;</span> wrote:<div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div text=3D"#000000" bgcol=
or=3D"#FFFFFF">
    <p>Is my auto make disabled with icecc ?</p>
    <p>How to make it enable ? thanks.<br></p></div></blockquote><div><br><=
/div><div>That&#39;s just a debug message. <br><br>&gt; | help2man: can&#39=
;t get `--help&#39; info from automake-1.15<br>&gt; | Try `--no-discard-std=
err&#39; if option outputs to stderr<br>&gt; | Makefile:3687: recipe for ta=
rget &#39;doc/automake-1.15.1&#39; failed<br><br><br>That&#39;s the error y=
our hitting.</div><div><br></div><div>I think you need to update to the lat=
est commit for the branch you&#39;re on, there was a problem with modern pe=
rl in help2man.=C2=A0 What release/branch are you using?</div><div><br></di=
v><div>Ross</div></div></div></div>
</blockquote></div>
</div></div></blockquote></div><br></div>
</blockquote></div>
</div></div></blockquote></div><br></div>

--94eb2c189baebd8b7c05559cfa41--
