Return-Path: <nishantpoorswani@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B10DAE00D16; Tue,  8 Jan 2019 08:29:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nishantpoorswani[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9402E00CAD
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2019 08:29:49 -0800 (PST)
Received: by mail-oi1-f176.google.com with SMTP id r62so3819666oie.1
	for <yocto@yoctoproject.org>; Tue, 08 Jan 2019 08:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gIUl5ljYI5sHmt/mDV7tdqB9/KcynP0O7uwNPbWtVIM=;
	b=JgtoBg1szIQNeBed4yRlpNH8tNn5AXMiUAPsps5/p2tCazAAens51+8wQUcr4Z8CBl
	XJKWKlogjJwLwxrI2vF6VSUN78rFT8DTH4wgJ7EXoGwz3UpCPoNvOsCCuzKEEd9MecMs
	YqVXY/65SZZgkrpcNoShrlZGA6vQGdueNYO9uquv5d0jT2pWPoqCPFOSmaGx5aX+/ezx
	9hthuYHOBhDcw4GBtpJqGuBk9ZEjCAFBy7qMknGgtWuAD/+Xf+B9qqXuMo12eTvQNEp7
	YMktlWm74Lh1OGVkz2234IsysT1V2puv7ReAhLzFZG16auB24H3chZpi9NRYg+uszZFT
	QyqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gIUl5ljYI5sHmt/mDV7tdqB9/KcynP0O7uwNPbWtVIM=;
	b=t/akjI4TKvm8Sh+i++xsBEua3rWNgiGxnEP9vYMqCSP17JwV7qk5kIwM1EowxhO27l
	lAwkniomhsksrFfKnkpenQIycynpzg29QtV7FuKYfhxMbDtXjpenI4jX5kdoSOe1/x1+
	GEp03QVkDMi6iszxFE0PoBLgI/Bpog+c/HbLsv73Cwx7CGaUkYIwklj6D1bSI/l4Bvei
	uY1fOpivc4j4X8iOyPrS4OhY4g4XQ1qydpTudk1xVPLGeDNRb/s+Uq1sOvhl/1qA6Yql
	rzxXc+nV2ux7KnqKdN7foH4Nq0UM+x+vwsZuCCsaeWHfXVpqII9ULXG4C/k6zJnIkAs7
	IwYQ==
X-Gm-Message-State: AJcUukdtit4eHp0cziL4zY0h6TWJg4j5zbo9oR+Ble3g7XrzgzbGPPxl
	g1V6jJIb640Jg4PXl0hMeePSJ3NV/i3IvkULyaI=
X-Google-Smtp-Source: ALg8bN6JIfjqn4BxzcXdY/wZsxo2ul824n5eN4bKF+Ti+Q3TdNCKmgJ4cFJU82z1UfcJp9WYUA1PzEG0xTF9w/DCFQE=
X-Received: by 2002:aca:52d4:: with SMTP id g203mr1604457oib.14.1546964989153; 
	Tue, 08 Jan 2019 08:29:49 -0800 (PST)
MIME-Version: 1.0
References: <CAN70yQXGX5kvedi=MqfbRmPBHk5zR+ZrsaaT31NXq1wYc0Z06Q@mail.gmail.com>
	<CAPxrFVmJ4KheAw=nKGfZri1ovU02ycpBFbNux_XCGipyje+bOA@mail.gmail.com>
In-Reply-To: <CAPxrFVmJ4KheAw=nKGfZri1ovU02ycpBFbNux_XCGipyje+bOA@mail.gmail.com>
From: nishant poorswani <nishantpoorswani@gmail.com>
Date: Tue, 8 Jan 2019 21:59:36 +0530
Message-ID: <CAN70yQWKMmBTR=j=swDbrAcgpnrX9dJdb+HwVPQSY60s-ENS6w@mail.gmail.com>
To: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Making a script into an executable binary in yocto
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
X-List-Received-Date: Tue, 08 Jan 2019 16:29:52 -0000
Content-Type: multipart/alternative; boundary="000000000000a8950d057ef4da05"

--000000000000a8950d057ef4da05
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My end customer wants the script to be converted into a command(single
executable binary) which can be executed directly from any location and his
end user cannot see the exact code behind it.

On Mon, 7 Jan 2019, 03:56 Jon Szymaniak <jon.szymaniak.foss@gmail.com wrote=
:

> Could you provide a bit more context about your particular use-case and
> need to do this?
>
> i.e. Why is deployment of the existing script insufficient?
>
> I know this isn=E2=80=99t addressing your underlying question, but just w=
ant to
> see if perhaps an alternative solution may be a better one for you.
>
> On Sun, Jan 6, 2019 at 13:12 nishant poorswani <nishantpoorswani@gmail.co=
m>
> wrote:
>
>> Hi, I wanted to know which is the best way of converting a bash script
>> into an executable binary in yocto. One way to do this is to add a recip=
e
>> for shc( script compiler) in yocto and then use the shc for compiling it=
 in
>> another recipe. Is there any other way to achieve this ? Any suggestions
>> would be deeply appreciated.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000a8950d057ef4da05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">My end customer wants the script to be converted into a c=
ommand(single executable binary) which can be executed directly from any lo=
cation and his end user cannot see the exact code behind it.=C2=A0</div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, 7 Jan 2019, 03:56 Jon =
Szymaniak &lt;<a href=3D"mailto:jon.szymaniak.foss@gmail.com">jon.szymaniak=
.foss@gmail.com</a> wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><di=
v><div dir=3D"auto">Could you provide a bit more context about your particu=
lar use-case and need to do this?</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">i.e. Why is deployment of the existing script insufficient?</div>=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">I know this isn=E2=80=
=99t addressing your underlying question, but just want to see if perhaps a=
n alternative solution may be a better one for you.</div><div dir=3D"auto">=
<br></div><div><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, Jan 6, 2=
019 at 13:12 nishant poorswani &lt;<a href=3D"mailto:nishantpoorswani@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">nishantpoorswani@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Hi, I w=
anted to know which is the best way of converting a bash script into an exe=
cutable binary in yocto. One way to do this is to add a recipe for shc( scr=
ipt compiler) in yocto and then use the shc for compiling it in another rec=
ipe. Is there any other way to achieve this ? Any suggestions would be deep=
ly appreciated.=C2=A0</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div></div></div>
</blockquote></div>

--000000000000a8950d057ef4da05--
