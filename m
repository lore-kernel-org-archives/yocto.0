Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92B0EE01599
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 10:27:43 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BC88DF81210; Tue,  6 Aug 2013 11:27:41 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 503E4F8120E;
	Tue,  6 Aug 2013 11:27:39 -0600 (MDT)
Message-ID: <5201320D.1010506@mlbassoc.com>
Date: Tue, 06 Aug 2013 11:27:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <520108A5.7090806@mlbassoc.com>
	<52010B1F.3060901@communistcode.co.uk>
	<52010D4E.4090009@windriver.com>
	<52010FA8.1000101@communistcode.co.uk>
	<52011DDF.5090807@windriver.com>
In-Reply-To: <52011DDF.5090807@windriver.com>
Subject: Re: Sending mail from embedded device
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
X-List-Received-Date: Tue, 06 Aug 2013 17:27:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-06 10:01, Mark Hatle wrote:
> On 8/6/13 10:00 AM, Jack Mitchell wrote:
>> On 06/08/13 15:50, Mark Hatle wrote:
>>> On 8/6/13 9:41 AM, Jack Mitchell wrote:
>>>> On 06/08/13 15:31, Gary Thomas wrote:
>>>>> My embedded device needs to send out email.
>>>>>
>>>>> I've looked around a bit and I don't see any recipes for a
>>>>> mail sender, e.g. sendmail or postfix, for Yocto (OE-core).
>>>>>
>>>>> Have I missed something?  Does anyone have any suggestions?
>>>>>
>>>>> Surely my application isn't the first that wants to send email...
>>>>>
>>>>
>>>> Would recipes-extended/msmtp do the job? Do you need to run the whole
>>>> mail stack or is pushing out emails to an smtp server adequate?
>>>>
>>>
>>> msmtp is provided specifically to be able to send email out.  It should
>>> produce a binary called "sendmail" that is capable of simply sending
>>> email (and conforming to LSB requirements.)
>>>
>>> --Mark
>>
>> Colour me impressed, I didn't realise it was also a drop-in for sendmail.
>
> Drop in replacement for the 'sendmail' command, but it's not a drop-in for 'sendmail' the software.  (It only has sending capabilities from what I've been told, which is all that
> is required for the LSB certification.)

And almost enough for my needs.  Amanda wants to use an MTA that
works like the desktop 'mail', e.g.
   mail -s "subject" TO <body
I wrote a simple wrapper to use msmtp/sendmail and it works fine.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

