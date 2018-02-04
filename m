Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FDF6E00E82; Sun,  4 Feb 2018 11:12:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1402EE006E3
	for <yocto@yoctoproject.org>; Sun,  4 Feb 2018 11:12:31 -0800 (PST)
Received: by mail-pl0-f65.google.com with SMTP id v3so10289964plg.3
	for <yocto@yoctoproject.org>; Sun, 04 Feb 2018 11:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=Y2A4m+urFK1Jzkyr48dJAFERr/0HI9nBxA5OvEbZoNg=;
	b=evQXyx2ipO4D22kdrcee1xtp0GdlzJ3BENiQvEmQeSal2DJrAbMxok/rRZxZR6nbag
	KQVZXdKIro4UoX9LyuKYEeqjWTkBm7TUqIbpX+M2uBHazn5ue7VRbukm66pZqEAU+613
	GhsPloP90o1++3WCuaxdqt7B6G9mx7XJU4eOWuWbnSPVMXo+YikxvMk6fsjKNTBhjhVi
	8mZHArOcrZCdGoThRE6OP1DPnhUCK2bNeNSYAQGJoADSdBURR47LkC5+GBzS1Ss6Uovh
	pudJ7/4mZ6zL97Rp2TTUMA6rwva3Cpx2sKXB+RZ6C8XYnyUWZNHdLc8FeqIfYbITc6E+
	6mug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Y2A4m+urFK1Jzkyr48dJAFERr/0HI9nBxA5OvEbZoNg=;
	b=A40RKY/0pn8fRY2Pjn0k+NU7EOcAYAmlmEBF7TMaqafpv2XCjhyhfh8uUahnZscJjx
	7QnfpR10mvzfqQjgYvLotqOSKZvNzurTkvSKtrb/vgZawuZJAh0S+GB+UTjU6GvSoerT
	e6WVyhmecQqabYseSVlmTqRToE46uQeXt8o+9byHWgrZgNfxpYisD+I8LtneUyr6dL2k
	es32XFOi8L8KZChd6EXNCXs31K4ByLZoWxCLMuuH4tEf4wTUudakO9vvkMguedw47vHg
	BcHU+NMQx//a23WlleGxt0MBmOKeGzDBj31YMf9k4OjWbqpNdSSMJA1iPCcbXbN6qtn4
	toMQ==
X-Gm-Message-State: AKwxyteG162fn4LF44SLnP9SrTeM4M8bcpt8YR1kAQWAte87YW3RMK/e
	srgxJjWkY0dLkPiz0n22hjbUztN/GJc=
X-Google-Smtp-Source: AH8x226+R7ai9vShN+oaRa3V5ONN5hyrDU52fd+c8ThYOuHfro2feZUcPRb50Bmkd3S6ltUA5KcRMg==
X-Received: by 2002:a17:902:4c88:: with SMTP id
	b8-v6mr40631564ple.233.1517771551000; 
	Sun, 04 Feb 2018 11:12:31 -0800 (PST)
Received: from [10.5.7.147] ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	g63sm3768542pfg.17.2018.02.04.11.12.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 04 Feb 2018 11:12:29 -0800 (PST)
To: Stephano Cetola <stephano.cetola@linux.intel.com>, yocto@yoctoproject.org
References: <1C72AF990F2FFD43A51A2896DAD431FC8ADBF8@ORSMSX109.amr.corp.intel.com>
	<acf2e06d-18ec-325c-fc0e-336559916095@linux.intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <6970166f-ee90-bc82-fe1f-8c95d8687900@mvista.com>
Date: Mon, 5 Feb 2018 00:42:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <acf2e06d-18ec-325c-fc0e-336559916095@linux.intel.com>
Subject: Re: Yocto Project Technical Team Meeting
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
X-List-Received-Date: Sun, 04 Feb 2018 19:12:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 02/03/2018 09:25 PM, Stephano Cetola wrote:
> On 2/2/18 11:04 AM, Cetola, Stephano wrote:
>> Cetola, Stephano has invited you to Yocto Project Technical Team Meeti=
ng
>>
>> When:
>>
>> Occurs the first Tuesday of every month effective 2/6/18 from 8:00 AM =
to
>> 8:30 AM.
>> =09
>> Organizer:
>>
>> 	Cetola, Stephano <stephano.cetola@intel.com>
>>
>> Description:
>>
>> When: Occurs every month on the first Tuesday of the month from 8:00 A=
M
>> to 8:30 AM effective 2/6/2018. (UTC-08:00) Pacific Time (US & Canada)
> It has been mentioned to me that there is some confusion on when this
> meeting occurs. I sent this invite using Outlook, which is a necessary
> evil here.
>
> The meeting is from 8:00 - 8:30 (UTC -08:00). I'm happy to send a new
> invite if enough people need one, but I want to minimize the noise here=
=2E
Same time, Same Bat Channel only hosted by Robin?

Is this link still correct?

https://www.yoctoproject.org/tools-resources/community/monthly-technical-=
call

- Armin

We
>
> Cheers,
> Stephano



