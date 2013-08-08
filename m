Return-Path: <martiert@gmail.com>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D04D8E01575
	for <yocto@yoctoproject.org>; Wed,  7 Aug 2013 23:01:11 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id c1so1307012eek.10
	for <yocto@yoctoproject.org>; Wed, 07 Aug 2013 23:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=I9snuBNY8KGbMSWTA5y4EBONL8G/k/PZXsGcsdd4/vE=;
	b=i6rPtr8NtA2pXD+yJsJof1++q+t8W307YCBI5I349TxsCIGOErtThDyNXnQimOAMo0
	+x+hCKOcV5NySuUV1mX1Tk7UEJG948EZGb5u+vwqw0sBqSQho5ybsJGgQ6Wk7Ov4ECMd
	3F/4YYORQT5epYFBIJgd4TDLXNQb3GE6L0lScutl0JLZ/cfEOPNQz8ewCgu5WiXRVqJj
	BaIHfIoFXPnzqmPyEPNZ9fwc583/OQlbuM7zp/UunZLe9QBlimRKFUVZT9S+xxXQpvH1
	aYJtG4cfuqSWl1mPzoJU2r2gIGC7UtrxmEAkbBHvOWWMnyJvw4svcI6RkCt9DhY1wYj7
	IKJA==
X-Received: by 10.14.47.73 with SMTP id s49mr6529319eeb.71.1375941670231;
	Wed, 07 Aug 2013 23:01:10 -0700 (PDT)
Received: from ?IPv6:2001:420:44ff:fd0e:52e5:49ff:fe32:d20b?
	([2001:420:44ff:fd0e:52e5:49ff:fe32:d20b])
	by mx.google.com with ESMTPSA id k7sm16156791eeg.13.2013.08.07.23.01.08
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 07 Aug 2013 23:01:09 -0700 (PDT)
Message-ID: <520334EE.2090704@gmail.com>
Date: Thu, 08 Aug 2013 08:04:30 +0200
From: Martin Ertsaas <martiert@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130705 Thunderbird/17.0.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <51F8BAE8.3090805@gmail.com>
	<CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
	<51F8EDB2.4020001@gmail.com>
	<CADkTA4NbutoU4AXyfQ84VQNCUmYv1PZwTFhYDBX8ENbOhCL0Gw@mail.gmail.com>
	<8FA37C33-DF65-4B96-BD90-4D3B784E4A57@gmail.com>
	<51FF1602.8040805@windriver.com>
	<BD3A762D-ACE6-4DB3-971F-B5CC975C0D69@gmail.com>
	<52028282.8020207@windriver.com>
In-Reply-To: <52028282.8020207@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Thu, 08 Aug 2013 06:01:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/07/13 19:23, Bruce Ashfield wrote:
> On 13-08-07 12:31 PM, martiert@gmail.com wrote:
>> Bruce, have you had the opportunity to look at this yet?
>>
>
> I was about to email on this. I was out of the office last week, but
> was just starting on this last night.
>
> Cheers,
>
> Bruce
>
Great. Thanks for the help btw. It is greatly appreciated. I'm kind of
stuck on what I have done wrong on this one.

- Martin

