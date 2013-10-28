Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DABFE0169B
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 04:47:54 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id n12so6461248wgh.35
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 04:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=p6pcMZDiyEKto7dNo4J6kb3lc2SMxHAWDYGMmQtN/DI=;
	b=BdCVID5DHve4mPjCn0NBnxYJsyc9HL40WFrSWkDUNKloBBCe7AKNcD78RXyM7OmQb0
	4+X0l4OBLlmTqYfdL0tTe4Dqw8jhFGfSLcDkkrZZaBm8/AaowBBxMZFWXdMC44gSaVZg
	GRxWTHPDy4nF5GU+YFGRUcrXtLjrGGZBDOsA+8EvOGlutQkF1odiQaIoMu3mEUHhkaf0
	X03qwwahjbs9Rix2e6T62uBdqJLJcS+u9+qWrS2kPHYzCCPcS8wMnAiQRI3hzyqQOoem
	ZiVGsg83+i/sfUPkklLfQPqFm1GjWuuHbe7ao14W86bDddwZD+Pxiz4wihVZ6sPWXd9j
	1WNQ==
MIME-Version: 1.0
X-Received: by 10.180.149.179 with SMTP id ub19mr8545882wib.43.1382960873565; 
	Mon, 28 Oct 2013 04:47:53 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Mon, 28 Oct 2013 04:47:53 -0700 (PDT)
In-Reply-To: <CABHD4K_6HoLqGEPYvtKduPOhzzxQCBGWAjyBmcN5sWTLW+suKA@mail.gmail.com>
References: <CABHD4K9zMKu6kxJqNOo9-WfMaENEg_dRg=CuajJDiRDPpEJ8=w@mail.gmail.com>
	<CABHD4K-WnaT3z5hGmbrfwy+=-d2rukK3+89L9m2feu8nHEZDsA@mail.gmail.com>
	<526E24E2.1050006@linux.intel.com>
	<CABHD4K_-LX4eFn=wh886xKYvEDg8mQQmsbhbiBfHdZGZqruHPg@mail.gmail.com>
	<526E3842.1080707@linux.intel.com>
	<CABHD4K_6HoLqGEPYvtKduPOhzzxQCBGWAjyBmcN5sWTLW+suKA@mail.gmail.com>
Date: Mon, 28 Oct 2013 17:17:53 +0530
Message-ID: <CABHD4K-gKvYQKdc6QOcvWYxpkqKfT0tTcfe7wvC0EYiysVpFTQ@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to recreate or modify already existing usres in /etc/passwd in Yocto
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
X-List-Received-Date: Mon, 28 Oct 2013 11:47:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

Jukaa I trying adding these lines in to my .conf file
But getting below error while bitbake

 Unable to parse extrausers: ParseError in configuration INHERITs:
Could not inherit file classes/extrausers.bbclass

Thanks

On Mon, Oct 28, 2013 at 4:11 PM, Amit Tomer <amittomer25@gmail.com> wrote:
> Fine Jukka ,I got your point.
>
> The way we changed shell of a user of the /etc/passwd fie is by
> patching the passwd.master file(orignator of /etc/passwd).
>
> How Do you review this method of modifying  shell of a user?
>
> Thanks
> Amit
>
> On Mon, Oct 28, 2013 at 3:41 PM, Jukka Rissanen
> <jukka.rissanen@linux.intel.com> wrote:
>> On 28.10.2013 12:07, Amit Tomer wrote:
>>>
>>> Thanks Jukka for the response
>>>
>>> EXTRA_USERS_PARAMS="usermod -s /bin/false foobar;" where did you
>>> define user(Is  foobar is usre here??).
>>
>>
>> Yes, foobar is the username in this example. See manual page of usermod for
>> details.
>>
>>
>> --
>> Cheers,
>> Jukka

