Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE01E00852
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 06:57:05 -0800 (PST)
Received: by mail-ve0-f180.google.com with SMTP id jz11so5881577veb.11
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 06:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=GUhf1BK/g7nXVmo2TGjsRg7dxazdy0RHUhXerA2Zu8A=;
	b=UkgpREgKJfetw1eh830B2jOXIIjHNM0B/RgsulyiE/ZLpJOFtfutenRtEHGpMq4sNW
	1dPVj7lDTAUgIoEHTlYSOLUM7J8ixde4eXrB/4Sy4srnv1NJMmUD1oi/+UCJyc/wM8Dh
	/aaBEcN7jcDbG0rmGMPm+qaD38oWhfCQy29+MTvBOoRMKheEQ5mGL1Upw+gRlUIS+K+s
	Ozm8vW9lpdpOctYr/DuV6n+ldVpc5H4/fB+EFskdH1kmuA5jR5eCIIen0uujSh5+izr7
	jCR72ZGkS1H/gIYWdxTQFA312MVAfot60Tax2jPliD5QAEwKVjMfYUq/SRaljbT2jpS7
	JZFQ==
X-Received: by 10.58.18.133 with SMTP id w5mr44759ved.77.1393945024421; Tue,
	04 Mar 2014 06:57:04 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Tue, 4 Mar 2014 06:56:24 -0800 (PST)
In-Reply-To: <26D5BB52-5D73-4746-ACEE-4A21BD130B77@yahoo.com>
References: <1393941002.38518.YahooMailNeo@web163105.mail.bf1.yahoo.com>
	<5315DC71.3080904@dynamicdevices.co.uk>
	<1393942977.87424.YahooMailNeo@web163101.mail.bf1.yahoo.com>
	<CANyK_8fGoQe1XaeU+Kt_CAiba2bUb9kKyu4KDCvXWXuzj5SBvg@mail.gmail.com>
	<26D5BB52-5D73-4746-ACEE-4A21BD130B77@yahoo.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 4 Mar 2014 14:56:24 +0000
X-Google-Sender-Auth: PTf9hjwwsW-jBIwGLzZ717LC5l8
Message-ID: <CANyK_8dF8U-jiVjuZ5xk5DBF_iqQuyKupahz4F1X+hKv4D_Avw@mail.gmail.com>
To: Joel Parker <joelparker27@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add Packages to Recipie
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
X-List-Received-Date: Tue, 04 Mar 2014 14:57:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 4 March 2014 14:47, Joel Parker <joelparker27@yahoo.com> wrote:
> Ok, thanks for that but what do you do for things that aren't in the extended recipes list ? Specifically, I need sqlite3, sqlite3-devel and iconv
>

I don't understand your query: I can find sqlite3 and libiconv using
the recipe search link I posted.

You won't find '-devel' packages though, I think the OE convention is
to use '-dev' instead. The recipe index doesn't show them, but most
packages offer '-dbg', '-dev', etc as appropriate.

Thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

