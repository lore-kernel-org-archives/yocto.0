Return-Path: <michael.calve@vectare.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E29FE00B76; Mon, 12 Jun 2017 10:19:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01D3AE00B63
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 10:19:35 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id i7so58551783ioe.1
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 10:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=vectare-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2GM7wrU41Y0DflqmJ072vM27DwQ7zZPzv35G9LFH6mo=;
	b=LUWKCbOSLOiH6Lb0nbxK4b7kHmG4tU17d6X3oI6+zN1Iyzz5Qm/24IuaWdfeKGu6tq
	McVyyZaVhAqztSsjFaydJqAbsxlg0G0K14/As32z0TWvo1tqx6anObLZnZsP5oEufuQB
	qwGBAYiMBZQTgvQ+au1jMjpnm280sl9h3N3MsmlasHKbOGXlb3azd4aJeV4NSQsCb9Ik
	cghsFzobb84duW5lz4R/YKr1sCIPEGilZ/RgUqjEh5wNKAT5aMPvrQRU4lPYoINyLXNX
	/Fa4ktjd4AMTbgXfMehBubZccJpnj/s9yaxo1BRiW59daqIPHfdmpkcxkBz5P/n/lD2q
	4VHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2GM7wrU41Y0DflqmJ072vM27DwQ7zZPzv35G9LFH6mo=;
	b=CwAs2WIjP56/ALMGanYPlL7VYm9ZauRbh0Ff1ugMW2UHeTgMKKxGxFsfp0nr/5e9nb
	Amc7uTFuECFJPP4C5YM45mylqVW7eTLJYjOnt3TApNJzs2oylC/gpPgRN3Iun+bsCWH4
	/0kWat2ClgIzxmtfVmaX1j84jnpMV5+GnMC4HFZq/gQUnSw/XJvYNJpOwM1NivENFVgl
	/s8pJvhwDB+voAPHc5m3KzBOAWO4HdnsaoieNjjHICbNUlONqg9awLaS9TjE/isCNdcx
	JW08Kp2P2EdYG3ogj7Fhv5G+hynZCeOShPhdJ/ln03LjqA5x/+Yx/uIDaeh9MtJieIxJ
	ds6Q==
X-Gm-Message-State: AKS2vOxrDV6hOpfE2Q2pbWWU0iDfwtDz66xbSkPfRAhvbM4oK987XzW/
	yVJhqIhqze9RjtagmmvUU9ZIauZRLx4o
X-Received: by 10.107.205.130 with SMTP id d124mr1309511iog.27.1497287975032; 
	Mon, 12 Jun 2017 10:19:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.152.86 with HTTP; Mon, 12 Jun 2017 10:19:34 -0700 (PDT)
In-Reply-To: <CAML1SccOh9k83Cq3njB3_qE9r0oiMFgY=PPer+KcBnGjHJyZQw@mail.gmail.com>
References: <CAML1SccnQCtK0WQ8uauHLXhZO9Sc9e+sFYnmjoHoc_S0PbsczA@mail.gmail.com>
	<CAHiDW_EM+xpcp9NpQAdWBDc1MN0YsseehKCumgZNJKmc83ny1Q@mail.gmail.com>
	<CAML1SccOh9k83Cq3njB3_qE9r0oiMFgY=PPer+KcBnGjHJyZQw@mail.gmail.com>
From: Michael Calve <michael.calve@vectare.com>
Date: Mon, 12 Jun 2017 13:19:34 -0400
Message-ID: <CAML1Scc5JxkFRXPi8mqeYgGhDWaSgQST3zkUWGsWHp=6H_ZNqA@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Wireshark but no Tshark?
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
X-List-Received-Date: Mon, 12 Jun 2017 17:19:36 -0000
Content-Type: multipart/alternative; boundary="94eb2c1889f4e1074d0551c68570"

--94eb2c1889f4e1074d0551c68570
Content-Type: text/plain; charset="UTF-8"

I was able to create a username and password, and use this as credentials
for SSH.  However, I can't run some of the commands that I can when using
picocom, and thus operating as root.

On Mon, Jun 12, 2017 at 10:34 AM, Michael Calve <michael.calve@vectare.com>
wrote:

> Okay thank you very much for the clarification.
>
> Is there a set password for the root username?  I'm attempting to send
> files across and run scripts abord the joule from my host system!
>
> On Mon, Jun 12, 2017 at 3:50 AM, Jussi Kukkonen <jussi.kukkonen@intel.com>
> wrote:
>
>> On 7 June 2017 at 20:59, Michael Calve <michael.calve@vectare.com> wrote:
>>
>>> Hi, I've seen that Wireshark is portable to Yocto, however Tshark is
>>> not?  Is there other/better software for reading pcaps and getting field
>>> data???
>>>
>>
>> Hi,
>>
>> tshark is part of wireshark: it should be built by the wireshark recipe
>> in meta-networking.
>>
>> If you want a smaller footprint tool, try tcpdump (also in
>> meta-networking). It's not as featureful as tshark but uses the same
>> sniffing library and wireshark can display tcpdump results just fine.
>>
>> Jussi
>>
>
>

--94eb2c1889f4e1074d0551c68570
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was able to create a username and password, and use this=
 as credentials for SSH.=C2=A0 However, I can&#39;t run some of the command=
s that I can when using picocom,=C2=A0and thus operating as root.</div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jun 12, 2017 =
at 10:34 AM, Michael Calve <span dir=3D"ltr">&lt;<a href=3D"mailto:michael.=
calve@vectare.com" target=3D"_blank">michael.calve@vectare.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Okay thank you=
 very much for the clarification.<div><br></div><div>Is there a set passwor=
d for the root username?=C2=A0 I&#39;m attempting to send files across and =
run scripts abord the joule from my host system!</div></div><div class=3D"H=
OEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Mon, Jun 12, 2017 at 3:50 AM, Jussi Kukkonen <span dir=3D"ltr">&=
lt;<a href=3D"mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukk=
onen@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span>On=
 7 June 2017 at 20:59, Michael Calve <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:michael.calve@vectare.com" target=3D"_blank">michael.calve@vectare.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi, =
I&#39;ve seen that Wireshark is portable to Yocto, however Tshark is not?=
=C2=A0 Is there other/better software for reading pcaps and getting field d=
ata???</div></blockquote><div><br></div></span><div>Hi,</div><div><br></div=
><div>tshark is part of wireshark: it should be built by the wireshark reci=
pe in meta-networking.</div><div><br></div><div>If you want a smaller footp=
rint tool, try tcpdump (also in meta-networking). It&#39;s not as featurefu=
l as tshark but uses the same sniffing library and wireshark can display tc=
pdump results just fine.</div><span class=3D"m_-6776201836910745363HOEnZb">=
<font color=3D"#888888"><div><br></div><div>Jussi</div></font></span></div>=
</div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--94eb2c1889f4e1074d0551c68570--
