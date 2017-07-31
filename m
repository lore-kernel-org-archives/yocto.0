Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 983A7E00C3D; Mon, 31 Jul 2017 06:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 123A4E00C37
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:16:08 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id 77so2994478itj.1
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=J27b0irKRRGGU0mADIvZk7Vp0Qvd0kHRppSERePRNPE=;
	b=dLfaOHdzxl/dgYohQQBUY66P98l4nUBPGfi0WkBJMcYQiTi8bdiD6605FyLHrIZKEJ
	DjUIT2cAK1RPnsatVTUfzK/+v64RTkV938zugP74p1jULBwssY3JecCErhgYu8UhZIC/
	EZfd8OUZ4ql14dr6r4vAC4P6K4N0laAgb9Kffs0upnwF9AXeFzkXaW1Ok/7mhZjBTdHR
	g2FSDu2ZRwZdk1ygAcTjX3TeNRuXmf5pOh9nGjsB2Cd1flY6uzvDc4EVu4dDHcMEcdgk
	+bocs57pfUDxHizdUlYlQC3spmYhES1612fxdIb1294p5kk65bcrCTbyvO8ZnySwuta0
	B33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=J27b0irKRRGGU0mADIvZk7Vp0Qvd0kHRppSERePRNPE=;
	b=FDH/C7+cOm1QPApyMAc7XQqcsa7w3C7ph4syn1BLNnyX4lD4rxTXJT3bitgAT5m19e
	1hLaTZ7Er94LG9UQ75SnBnz6Kq1eW2CD6menXkOvZs/24b23n/5a5nEkLwZM4uYqjqRD
	Nr1KyFjM58Ytos16PrUR51pYUb5dWGlfy5UTAxSY3jJtc05VElWq+yzopK2nR58xkP0G
	l/4sfjWj1dtpY7hFiMVr058lGLg0LVQQnVJ2tM2PQQc+eUXMSv7WeiVueEgVFBcDSnHi
	MEAXKtsLq1d+ti/+vBH83SPK/MjsDQlX1IuZNBecTsxcz4MKKbj2HsH2loQBkkzaBXbb
	ENkw==
X-Gm-Message-State: AIVw112oqO2d4HbY3z6Ua5oaDJdAF/WRa/Rgag22qYj2OXbjRLsTEt95
	57fSwS2tnG/cjcdfU8MQH0eAYUXSL9Mo
X-Received: by 10.36.201.198 with SMTP id h189mr18441794itg.113.1501506968383; 
	Mon, 31 Jul 2017 06:16:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Mon, 31 Jul 2017 06:15:47 -0700 (PDT)
In-Reply-To: <CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
	<CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
	<CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 31 Jul 2017 14:15:47 +0100
Message-ID: <CAJTo0LZAwKLB6ZRTw79B9VfPz+ra=CAoJHn8Bzz9Z3ra=jzq3g@mail.gmail.com>
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
X-List-Received-Date: Mon, 31 Jul 2017 13:16:09 -0000
Content-Type: multipart/alternative; boundary="94eb2c0893607a89f305559cd50c"

--94eb2c0893607a89f305559cd50c
Content-Type: text/plain; charset="UTF-8"

How did you get poky?

Ross

On 31 July 2017 at 14:14, Riko Ho <antonius.riko@gmail.com> wrote:

> How can I see my branch?
> On Jul 31, 2017 9:12 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>
>> On 31 July 2017 at 03:33, Riko Ho <antonius.riko@gmail.com> wrote:
>>
>>> Is my auto make disabled with icecc ?
>>>
>>> How to make it enable ? thanks.
>>>
>>
>> That's just a debug message.
>>
>> > | help2man: can't get `--help' info from automake-1.15
>> > | Try `--no-discard-stderr' if option outputs to stderr
>> > | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
>>
>>
>> That's the error your hitting.
>>
>> I think you need to update to the latest commit for the branch you're on,
>> there was a problem with modern perl in help2man.  What release/branch are
>> you using?
>>
>> Ross
>>
>

--94eb2c0893607a89f305559cd50c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How did you get poky?<div><br></div><div>Ross</div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 31 July 2017 at=
 14:14, Riko Ho <span dir=3D"ltr">&lt;<a href=3D"mailto:antonius.riko@gmail=
.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><p dir=3D"ltr">How can I see my branch?</p><di=
v class=3D"HOEnZb"><div class=3D"h5">
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

--94eb2c0893607a89f305559cd50c--
