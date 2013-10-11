Return-Path: <otavio.salvador@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 940E3E01653
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 17:01:12 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id e14so2247107iej.25
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 17:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=/ljTyIw3fPynR7M8F0slF7FIUrzLT0jkuLqQvlY10m4=;
	b=Po6p1fwJW6gi69LzRhC5hDneAaDy9n1vg7W/YGgmqC3pzuarKaspRi+X891Z4yVsFj
	cNCKUjPTw91mLMxjbn8j2BKthb8dDKHXOK8AO/82u/5SL+Ea9Q4IRljeccpNieCYpwMO
	INoeJnwiPudocXEkLFO825UmMAYYGcY3E//pYMKiqJ9vrNwLqNTWJvVHR2Ftgrkki/zB
	cVzypCWsPjH9wqOaJ/n6Sb2bfTInGL2qnQfSBY9QHbXXlU5fusJsW/wEtOTbFBdUho3h
	iW2pdob0PqMUJbIYTbH0k7JRjTJzLN0ZOPRJwIKEFLsKn8XX/ih6/PRs5jz3Fj0wIBbq
	KGUg==
MIME-Version: 1.0
X-Received: by 10.50.153.16 with SMTP id vc16mr703500igb.8.1381449671542; Thu,
	10 Oct 2013 17:01:11 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.64.20.229 with HTTP; Thu, 10 Oct 2013 17:01:11 -0700 (PDT)
In-Reply-To: <52572994.4050006@gna.org>
References: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>
	<52571E27.70308@gna.org>
	<CA+YB3raEO5Ek5EdkAuezyW+D3tj5-Aod2k+BRg5UWF_UWUHmtg@mail.gmail.com>
	<52572994.4050006@gna.org>
Date: Thu, 10 Oct 2013 21:01:11 -0300
X-Google-Sender-Auth: w0F2_ULyKOHQ0L5WaeYuMb0DoBQ
Message-ID: <CAP9ODKoaV71QNHnqfwqnajhORu=1m82YaUiFo41HhcvUn6E-Rg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Christian Gagneraud <chgans@gna.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Project 1.5_M5.rc6
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
X-List-Received-Date: Fri, 11 Oct 2013 00:01:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 10, 2013 at 7:26 PM, Christian Gagneraud <chgans@gna.org> wrote:
> On 11/10/13 11:02, Jeff Osier-Mixon wrote:
>>
>> Hi Chris - well-intended sarcasm isn't usually a problem, but I want
>> to make sure to address your concerns here. We would like to see a
>> meta-qt5 as well but so far one has not been submitted. If you would
>> like to submit one, I would be happy to put you in touch with the
>> right maintainers who can guide you through the process.
>
>
> Hi Jeff,
>
> Well-intended answer! ;) But i want to make sure to address your concerns
> here. I would like to see the meta-qt5 [1] in Yocto's QA process. If you
> would like to integrate it, I would be happy to put you in touch with the
> right maintainers who can guide you through the process.
>
> Chris.
>
> [1] https://github.com/meta-qt5

Hey, this was even easier.

I am one of meta-qt5 maintainers and I am sure Martin will be more
than happy to get it into the QA process. Jeff ... this was easy :-)

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

