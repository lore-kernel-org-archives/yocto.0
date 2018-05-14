Return-Path: <parkch98@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B2D6E01CF4; Mon, 14 May 2018 01:17:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (parkch98[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E513E00E12
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 01:17:57 -0700 (PDT)
Received: by mail-wr0-f182.google.com with SMTP id v60-v6so11260090wrc.7
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 01:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=udH3tzDITAW4A+l9Wk1M+OTlrSM9HmVwoP/0G0eIUYQ=;
	b=btbMUaj650nOWTMHGFRtRwtYrTs5UCqb8kLSB/GbZaL8Lw3fkAoM1NzCftGG3l93AE
	qrK19cay8rHfDOVE+O/3727CHLIOE7BJUjZO6NqxWscGSbYaue0VuikyqCP6BCqBv8k6
	XChyneMCoeIexh6FI4DUXF/87nCzunhLxYZUihKGNr2vKxmFxpWX1KpnQukPn/3T6o7g
	g6oUrOo+DWafoJpii7z4dZn9bwIwABADpnNFJomPEL12ZbrqAQGa6wAe+hhfc2cY00jr
	ylzWW14/fH1zJWaar2KV/NcukI4AHuEdPLHdlfNGCkivXnyJZComvXg5ULVw/70oUbGv
	5sEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=udH3tzDITAW4A+l9Wk1M+OTlrSM9HmVwoP/0G0eIUYQ=;
	b=I2NG+ltVoVAZlJkLlBchJkkB3h0FmqSm4hahAVPDkP3LAsesjkcwFKwMU/ira7efdC
	OJ0AiNtoUe3QugvUyEU7crlWKp6EFF60YBWNuXn87VR1h7vapXxvZodGMsDT1bnkjHAu
	qLrZCsKh6TgH1oijLu8ewenUkJaRvQ9Ai+3CIKlRrl7IO3HTobwMbeGpunpBOw2dC3Gn
	jh3TFrCRAEboYdQqbH6EfY+0tNabHfX59a3QdCU0Wn53W4TJFzrHQu80Kx6S7q0HwS6w
	wZe7yjRGQLU058p53T39xcwzJqWiu1aJsdkj/oBDHA1bqpN1MBaSTJNfrPvgEAHCGr5d
	XahQ==
X-Gm-Message-State: ALKqPwd5shNctvDa0a/XNqGOPW23UW7Kvb7XeZl+Yc973jVJt6hHkiCj
	vxRJ+ArZ9VYxtkR8dR8I3en+rZtnmxk5BAtbEe8dBQ==
X-Google-Smtp-Source: AB8JxZoMCazNY7bEvZPSaqrYuB7HT40SOh9HmXKHixSccrYzqCnPpPAqwMHGsmSK6dsPrANGDr92ilA908RoOzP6lnU=
X-Received: by 2002:adf:8822:: with SMTP id
	d31-v6mr5873630wrd.18.1526285876907; 
	Mon, 14 May 2018 01:17:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAPTzV16hShVj_HsC4Ykd-HC_J+hGewG+DQYyB+=kD1mgsu56gA@mail.gmail.com>
	<952a174d-ae9f-e82f-3294-1d9490cf8da7@osg.samsung.com>
	<CAPTzV17QSxoOtVU3fTdVpppJcRrcACVT4uDro_rUH6PP+B34-g@mail.gmail.com>
	<CACn9BzmV3BchF-kSLNXUG8dfCywONT5mMTDk5aygncWR9VcNgQ@mail.gmail.com>
In-Reply-To: <CACn9BzmV3BchF-kSLNXUG8dfCywONT5mMTDk5aygncWR9VcNgQ@mail.gmail.com>
From: Chanho Park <parkch98@gmail.com>
Date: Mon, 14 May 2018 17:17:46 +0900
Message-ID: <CAPTzV16ECPNdehXSWSme4ZPOTr3mmTM3To+Rs40oir7o6pYt9Q@mail.gmail.com>
To: Philippe Coval <philippe.coval.pro@gmail.com>
Cc: "iotivity-dev@lists.iotivity.org" <iotivity-dev@lists.iotivity.org>,
	yocto@yoctoproject.org, Philippe Coval <philippe.coval@osg.samsung.com>
Subject: Re: [dev] [meta-oic] Question about Iotivity 1.3.0/1 and fixes status
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
X-List-Received-Date: Mon, 14 May 2018 08:17:59 -0000
Content-Type: multipart/alternative; boundary="00000000000084d3ea056c261f73"

--00000000000084d3ea056c261f73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Phillippe,

I=E2=80=99ve seen you updated the 1.3.0 and 1.3.1 branch as well. Unfortuna=
tely, I
got stuck when I tried to build 1.3.1 branch for aarch as well as armhf
architectures. You already fixed the issue on master branch and 1.3-rel
branch[1] as well but they are not applied yet in meta-oic. I tried to fix
it but it seemed to be updated install scripts of bb file as well. Could
you update the 1.3.1 branch of meta-oic as well?

[1]: https://jira.iotivity.org/browse/IOT-2706

Best Regards,
Chanho Park
On Tue, 6 Mar 2018 at 1:07 AM Philippe Coval <philippe.coval.pro@gmail.com>
wrote:

> On Fri, Jan 12, 2018 at 3:26 AM, Chanho Park <parkch98@gmail.com> wrote:
>
>> Hi Philippe,
>>
>> On Thu, 11 Jan 2018 at 7:11 PM Philippe Coval <
>> philippe.coval@osg.samsung.com> wrote:
>>
>>>
>>> On 11/01/18 02:30, Chanho Park wrote:
>>> > Hi Philippe,
>>> >
>>
>>
>
>> Okay. I=E2=80=99ll test them when you resend them. Please CCing me at th=
at time.
>>>
>>
>>
> 1.3.0 is now merged in:
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/commit/README?id=3Deb7=
dfc4764ce538fc84eb40f1ca7ed7e14eb1f1d
>
> I will commit more pending patches in coming days/week,
> feedback is always welcome in iotivity tracker (add yocto label)
>
>
>
>> Okay. I look forward to your results :)
>> Thanks.
>>
>>
> Thank you for your patience, now It should me faster since I got commit
> rights.
>
> Regards
>
> --
> gpg:0x467094BC
> xmpp:philippe.coval.pro@gmail.com
> https://wiki.tizen.org/wiki/User:Pcoval
>
>

--00000000000084d3ea056c261f73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Phillippe,<br><br>I=E2=80=99ve seen you updated the 1.3.0 and 1.3.1 bran=
ch as well. Unfortunately, I got stuck when I tried to build 1.3.1 branch f=
or aarch as well as armhf architectures. You already fixed the issue on mas=
ter branch and 1.3-rel branch[1] as well but they are not applied yet in me=
ta-oic. I tried to fix it but it seemed to be updated install scripts of bb=
 file as well. Could you update the 1.3.1 branch of meta-oic as well?<br><b=
r>[1]: <a href=3D"https://jira.iotivity.org/browse/IOT-2706">https://jira.i=
otivity.org/browse/IOT-2706</a><br><br>Best Regards,<br>Chanho Park<br><div=
 class=3D"gmail_quote"><div dir=3D"ltr">On Tue, 6 Mar 2018 at 1:07 AM Phili=
ppe Coval &lt;<a href=3D"mailto:philippe.coval.pro@gmail.com">philippe.cova=
l.pro@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On Fri, =
Jan 12, 2018 at 3:26 AM, Chanho Park <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:parkch98@gmail.com" target=3D"_blank">parkch98@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div dir=3D=
"auto">Hi Philippe,</div><br><div class=3D"gmail_quote"><span class=3D"m_89=
72251626038541812gmail-"><div dir=3D"auto">On Thu, 11 Jan 2018 at 7:11 PM P=
hilippe Coval &lt;<a href=3D"mailto:philippe.coval@osg.samsung.com" target=
=3D"_blank">philippe.coval@osg.samsung.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><br>
On 11/01/18 02:30, Chanho Park wrote:<br>
&gt; Hi Philippe,<br>
&gt;</blockquote></span></div></div></blockquote><div>=C2=A0</div></div></d=
iv></div><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div class=3D"g=
mail_quote"><span class=3D"m_8972251626038541812gmail-"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Okay. I=E2=80=99ll test them when you rese=
nd them. Please CCing me at that time.<br></blockquote></span><span class=
=3D"m_8972251626038541812gmail-"><div dir=3D"auto"><br></div></span></div><=
/div></blockquote><div><br></div><div>1.3.0 is now merged in:</div><div><br=
></div><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/c=
ommit/README?id=3Deb7dfc4764ce538fc84eb40f1ca7ed7e14eb1f1d" target=3D"_blan=
k">http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/commit/README?id=3Deb=
7dfc4764ce538fc84eb40f1ca7ed7e14eb1f1d</a><br></div><div><br></div><div>I w=
ill commit more pending patches in coming days/week,</div><div>feedback is =
always welcome in iotivity tracker (add yocto label)</div></div></div></div=
><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><di=
v><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div><div class=3D"gmail_quote"><div dir=3D"auto">Okay. I look forward =
to your results :)</div><div dir=3D"auto">Thanks.</div><span class=3D"m_897=
2251626038541812gmail-"><div dir=3D"auto"><br></div></span></div></div></bl=
ockquote><div><br></div></div></div></div><div dir=3D"ltr"><div class=3D"gm=
ail_extra"><div class=3D"gmail_quote"><div>Thank you for your patience, now=
 It should me faster since I got commit rights.</div><div><br></div><div>Re=
gards</div><div>=C2=A0</div></div></div></div><div dir=3D"ltr"><div class=
=3D"gmail_extra"><div class=3D"m_8972251626038541812gmail_signature"><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><div>--=C2=A0</div><div><span style=3D"fon=
t-size:12.8px">gpg:0x467094BC</span><br><span style=3D"font-size:12.8px"><a=
 href=3D"mailto:xmpp%3Aphilippe.coval.pro@gmail.com" target=3D"_blank">xmpp=
:philippe.coval.pro@gmail.com</a></span><br style=3D"font-size:12.8px"><a h=
ref=3D"https://wiki.tizen.org/wiki/User:Pcoval" style=3D"font-size:12.8px" =
target=3D"_blank">https://wiki.tizen.org/wiki/User:Pcoval</a><br></div><div=
><br>
</div></div></div></div></div>
</div></div></blockquote></div>

--00000000000084d3ea056c261f73--
