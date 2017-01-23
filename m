Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46D70E003DB; Mon, 23 Jan 2017 14:55:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24F49E0033D
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 14:55:16 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id n13so20736746qtc.0
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 14:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vsV8Nw95HhJu7TGrYMyfx5xymqkijQt2/WImxFo0qpc=;
	b=iLHNthlZ9uTgLZ2ZheRV6nuWEbYfTBk5NWRS0HEACdb7bwfZSW1/3fKZ3xTl5tOoxz
	mop/UcaEn6f6kjKh/7UiYDuTbV+K3i89K+7KRSX3UG51Yv6+VWJk4jpRPR6Kk07g4LMf
	mgvmD3/fCczQP/DbkJHG7uDF5N8V41A2OMHPlm5m56GNLs1R4dVR7sNMoCtfoVAcFs7D
	YTX1SDrAsRsB6iqi0iCr8f7352rC2p2Bqu4QR4EYCDT4WMJEEjoLzElFE3vOL7IW1lzB
	MT4VeX2YKtPP0zfewSdG4Ttuiwznswcp4K6gON/9sNVsV0gu2iL4gir/pOwSEHX/nytj
	Vs4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vsV8Nw95HhJu7TGrYMyfx5xymqkijQt2/WImxFo0qpc=;
	b=XQZX9gSvUm2ecZJ1CclSHgySNGx9xqDLolijbDVQJyQzi3Fy6dJ5fnCLkhw9dJUpC1
	+Z88xypYttSux6n8FJBC1KvNgGOLinc4Dw04DJQW9o1rGHHmrzSAHfawWR+NgpG8mZzo
	+slwWnh5Dhv7Uz7d6cQd/MVZzLhRmoGjFMVEMD3nmPc+waha8VBzWx+pPlrVdxhZw2n4
	B2PRizbrhZ/NZNmxTeaN3l/xPLZvIMa+mHFJzsMIQjz/5pi88S6sPqSbD8pa8L6cMydr
	OvwhQf/yZTHz38Pnp1Uicz9+CZxbI9mKliwULHLuBpmSDG9SdSiEChGb6DFpt4af3Oqf
	g8vw==
X-Gm-Message-State: AIkVDXK+AIK7H46DhT1Kmg5Mzkf9+zKPdf483m7xlPnovRhSlrBhli5CXbqsRkyor/oJo37wpdgAlrhw2DJ7Eg==
X-Received: by 10.55.22.97 with SMTP id g94mr25930557qkh.287.1485212116049;
	Mon, 23 Jan 2017 14:55:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.135.153 with HTTP; Mon, 23 Jan 2017 14:55:14 -0800 (PST)
Received: by 10.12.135.153 with HTTP; Mon, 23 Jan 2017 14:55:14 -0800 (PST)
In-Reply-To: <CADkTA4NOWQk0zfAUALjJanHjgqdi6rMLOk7Z=ZY0cit8-fqbbw@mail.gmail.com>
References: <cover.d80eadf93cc834138baf753dee75bd75faefc003.1485180600.git-series.patrick.ohly@intel.com>
	<93665f38-8cee-4bd3-3b44-2a5030aa93dd@windriver.com>
	<1485203083.20333.46.camel@intel.com>
	<CADkTA4Mve6Mj5Y7_F7WsGzrVeFL_VfiPknUyzRffLQ_NRQVK0A@mail.gmail.com>
	<CADkTA4NOWQk0zfAUALjJanHjgqdi6rMLOk7Z=ZY0cit8-fqbbw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 23 Jan 2017 17:55:14 -0500
Message-ID: <CADkTA4PDNQs-f8EJ__KP834GsaTA_4oK+YiCYkr1CC1Ufdw0Fw@mail.gmail.com>
To: Patrick Ohly <patrick.ohly@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto-kernel-cache][PATCH 0/1] features: enable tpm
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
X-List-Received-Date: Mon, 23 Jan 2017 22:55:21 -0000
Content-Type: multipart/alternative; boundary=001a114967ea97e60d0546cae46f

--001a114967ea97e60d0546cae46f
Content-Type: text/plain; charset=UTF-8

On Jan 23, 2017 12:36 PM, "Patrick Ohly" <patrick.ohly@intel.com> wrote:

On Mon, 2017-01-23 at 14:51 -0500, Bruce Ashfield wrote:
> On 01/23/2017 09:11 AM, Patrick Ohly wrote:
> > This was tested with the yocto-4.8 branch and linux-yocto 4.8.17 under
> > qemu with TPM provided by swtpm, but can and should also get merged
> > into the yocto-4.9 and master branches.
> >
> > The feature intentionally enables all current TPM drivers. A real
> > production kernel should be more selective.
> >
>
> Looks good to me. I've staged the change and will send SRCREV
> updates later.
>
> This missed a cc' to linux-yocto, but I noticed it regardless :D

Thanks ;-} I had checked the 00-README in the yocto-kernel-cache, but
couldn't find instructions on where and how to submit changes. Is that
documented somewhere?



It used to be part of the kernel tree and not separated out.. so you are
right, it wouldn't be in the README. I'll push a commit to add that info.

Bruce



--
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--001a114967ea97e60d0546cae46f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Jan 23, 2017 12:36 PM, &quot;Patrick Ohly&quot; &lt;<a href=3D=
"mailto:patrick.ohly@intel.com">patrick.ohly@intel.com</a>&gt; wrote:<br ty=
pe=3D"attribution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div class=3D"quoted-text">On M=
on, 2017-01-23 at 14:51 -0500, Bruce Ashfield wrote:<br>
&gt; On 01/23/2017 09:11 AM, Patrick Ohly wrote:<br>
&gt; &gt; This was tested with the yocto-4.8 branch and linux-yocto 4.8.17 =
under<br>
&gt; &gt; qemu with TPM provided by swtpm, but can and should also get merg=
ed<br>
&gt; &gt; into the yocto-4.9 and master branches.<br>
&gt; &gt;<br>
&gt; &gt; The feature intentionally enables all current TPM drivers. A real=
<br>
&gt; &gt; production kernel should be more selective.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Looks good to me. I&#39;ve staged the change and will send SRCREV<br>
&gt; updates later.<br>
&gt;<br>
&gt; This missed a cc&#39; to linux-yocto, but I noticed it regardless :D<b=
r>
<br>
</div>Thanks ;-} I had checked the 00-README in the yocto-kernel-cache, but=
<br>
couldn&#39;t find instructions on where and how to submit changes. Is that<=
br>
documented somewhere?<br></blockquote></div></div></div><div dir=3D"auto"><=
br></div><div dir=3D"auto"><br></div><div dir=3D"auto">It used to be part o=
f the kernel tree and not separated out.. so you are right, it wouldn&#39;t=
 be in the README. I&#39;ll push a commit to add that info.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Bruce=C2=A0</div><div dir=3D"auto"><b=
r></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_e=
xtra"><div class=3D"gmail_quote"><blockquote class=3D"quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<font color=3D"#888888"><br>
--<br>
Best Regards, Patrick Ohly<br>
<br>
The content of this message is my personal opinion only and although<br>
I am an employee of Intel, the statements I make here in no way<br>
represent Intel&#39;s position on the issue, nor am I authorized to speak<b=
r>
on behalf of Intel on this matter.<br>
</font><div class=3D"elided-text"><br>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></blockquote></div><br></div></div></div>

--001a114967ea97e60d0546cae46f--
