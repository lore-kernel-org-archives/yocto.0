Return-Path: <tom.rini@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 154DFE0072A
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 08:56:30 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbez10 with SMTP id ez10so382925vbb.35
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 08:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=lmbylLxnDWfk6st6nl19kxM+BAzKuf840WUL62oQ2pc=;
	b=leb0iGGzE9QH3tgwn3Kxk+/xNUKf76r0Gj5/ycoFqQXA+6WVbNkNVkEpSEnKU8Cdxd
	Kp7idsfWwA7jaaYssLX0YUAL6NKqLx2ZJ2Pj2YxGPeGL2hwJJGt8om1NQbzK2b3OeNA4
	0OgpmsiEv/vQyuPWkGil+6s/VdHT4Fwro4GWA=
MIME-Version: 1.0
Received: by 10.224.104.134 with SMTP id p6mr1794575qao.5.1321635390261; Fri,
	18 Nov 2011 08:56:30 -0800 (PST)
Received: by 10.229.94.72 with HTTP; Fri, 18 Nov 2011 08:56:30 -0800 (PST)
In-Reply-To: <4EC68212.2030702@mlbassoc.com>
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
	<94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com>
	<4EC6280B.1010308@communistcode.co.uk>
	<4D9E0AFD9C2FCC428A8EAADA898F5B2D0E8A96@TAMANS-MB100V.thcg.net>
	<4EC68022.7040407@mlbassoc.com> <4EC68104.30305@balister.org>
	<4EC68212.2030702@mlbassoc.com>
Date: Fri, 18 Nov 2011 09:56:30 -0700
Message-ID: <CA+M6bXnGCL=4oQOA4beS50PvzJQjZ9aE962jxt7Zk-BGEeYV5g@mail.gmail.com>
From: Tom Rini <tom.rini@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto usability questions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Nov 2011 16:56:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 18, 2011 at 9:04 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2011-11-18 09:00, Philip Balister wrote:
>>
>> On 11/18/2011 10:56 AM, Gary Thomas wrote:
>>>
>>> On 2011-11-18 08:02, Ourada, Paul wrote:
>>>>
>>>> Jack said:
>>>>>
>>>>> From: yocto-bounces@yoctoproject.org
>>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jack Mitchell
>>>>> Sent: Friday, November 18, 2011 2:40 AM
>>>>> To: yocto@yoctoproject.org
>>>>> Subject: Re: [yocto] Yocto usability questions
>>>>>
>>>>> On 17/11/2011 21:38, Chris Tapp wrote:
>>>>> On 16 Nov 2011, at 22:07, Jeff Osier-Mixon wrote:
>>>>>
>>>>>
>>>>> Mark& =A0 everyone else listening:
>>>>>
>>>>>
>>>>> It is very frustrating when you come to an issue that isn't
>>>>> documented, however I have found the IRC an invaluable>resource as
>>>>> well as this mailing list. If documentation was to become more
>>>>> extensive I feel the categories should be>defined further and split
>>>>> into more documents.
>>>>
>>>> I would just add that for some corporate/enterprise customers (such as
>>>> myself), while IRC is great, it isn't as great an option because
>>>> corporate IS locks down IRC protocols. To use IRC, I would have to do
>>>> so from a non-work computer and likely outside of normal work hours,
>>>> of which I already put in way more than my wife would prefer. :)
>>>
>>> IMO, IRC is like gossip - only those present learn anything :-( =A0I th=
ink
>>> information
>>> should be shared and archived and IRC doesn't really cover that. =A0Tha=
t's
>>> part of why
>>> I pepper these lists with questions and problems and ...
>>>
>>
>> Good irc channels are logged and the logs will be hit with google
>> searches.
>
> But that's hardly the same as having the "conversation(s)" delivered to m=
y
> desk,
> along with [normally] useful subject lines, that I can peruse at will. =
=A0It's
> the difference between push [mailing lists] and pull [IRC logs].

The problem goes like this.  Some projects tend to keep all of their
technical discussions on the mailing list, so this works great.  But,
OE isn't one of those.  I think we try and keep the "big items" at
least summarized on the mailing lists, but at the end of the day, if
you know you need to ask $someone what they think, and you're on IRC
(or gchat or skype or ...) and they are too, you can either bug them
real time, or email them long form (or the dreaded but happens in
companies, 10 emails in 2 minutes, top posting questions/answers back
and forth, with some list in tow).

I don't know if this was a conscious choice of the project or not, but
at the end of the day, if you want to know everything you need to also
skim the logs for #oe and #yocto (and if you're angstrom, #angstrom).
That said, I think the IRC logging bots could use a kick into this
decade and some RSS feeds would sure help folks actually follow along
rather than just waiting on google to index the text files.

--=20
Tom

