Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B858CE00747
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 11:37:01 -0700 (PDT)
Received: from [10.0.0.1] (177.221.broadband4.iol.cz [85.71.221.177])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 0BAA39571
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 19:36:59 +0100 (BST)
Message-ID: <520142D9.30209@r-finger.com>
Date: Tue, 06 Aug 2013 19:39:21 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.11) Gecko/20121122 Icedove/10.0.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <520108A5.7090806@mlbassoc.com>
	<52010B1F.3060901@communistcode.co.uk>
	<52010D4E.4090009@windriver.com>
	<52010FA8.1000101@communistcode.co.uk>
	<52011DDF.5090807@windriver.com> <5201320D.1010506@mlbassoc.com>
In-Reply-To: <5201320D.1010506@mlbassoc.com>
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
X-List-Received-Date: Tue, 06 Aug 2013 18:37:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/08/13 18:27, Gary Thomas wrote:
> On 2013-08-06 10:01, Mark Hatle wrote:
>> On 8/6/13 10:00 AM, Jack Mitchell wrote:
>>> On 06/08/13 15:50, Mark Hatle wrote:
>>>> On 8/6/13 9:41 AM, Jack Mitchell wrote:
>>>>> On 06/08/13 15:31, Gary Thomas wrote:
>>>>>> My embedded device needs to send out email.
>>>>>>
>>>>>> I've looked around a bit and I don't see any recipes for a
>>>>>> mail sender, e.g. sendmail or postfix, for Yocto (OE-core).
>>>>>>
>>>>>> Have I missed something?  Does anyone have any suggestions?
>>>>>>
>>>>>> Surely my application isn't the first that wants to send email...
>>>>>>
>>>>>
>>>>> Would recipes-extended/msmtp do the job? Do you need to run the whole
>>>>> mail stack or is pushing out emails to an smtp server adequate?
>>>>>
>>>>
>>>> msmtp is provided specifically to be able to send email out.  It should
>>>> produce a binary called "sendmail" that is capable of simply sending
>>>> email (and conforming to LSB requirements.)
>>>>
>>>> --Mark
>>>
>>> Colour me impressed, I didn't realise it was also a drop-in for
>>> sendmail.
>>
>> Drop in replacement for the 'sendmail' command, but it's not a drop-in
>> for 'sendmail' the software.  (It only has sending capabilities from
>> what I've been told, which is all that
>> is required for the LSB certification.)
> 
> And almost enough for my needs.  Amanda wants to use an MTA that
> works like the desktop 'mail', e.g.
>   mail -s "subject" TO <body
> I wrote a simple wrapper to use msmtp/sendmail and it works fine.

I can confirm mstp works very well, and with all the necessary bells and
whistles like TLS. If you need more complex messages (e.g.,
attachments), then libgmime makes composing the email messages to pipe
into mstmtp quite easy.

Tomas


-- 
http://sleepfive.com

