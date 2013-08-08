Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8581FE006E9
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 04:49:07 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B6E44F81203; Thu,  8 Aug 2013 05:49:04 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 21C8EF811EE;
	Thu,  8 Aug 2013 05:49:01 -0600 (MDT)
Message-ID: <520385B1.5070400@mlbassoc.com>
Date: Thu, 08 Aug 2013 05:49:05 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <520108A5.7090806@mlbassoc.com>
	<52010B1F.3060901@communistcode.co.uk>
	<52010D4E.4090009@windriver.com>
	<52010FA8.1000101@communistcode.co.uk>
	<52011DDF.5090807@windriver.com>
	<5201320D.1010506@mlbassoc.com> <520142D9.30209@r-finger.com>
	<694BCD52-4C60-41C6-8D5D-BCD1BA5BA512@coote.org>
In-Reply-To: <694BCD52-4C60-41C6-8D5D-BCD1BA5BA512@coote.org>
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
X-List-Received-Date: Thu, 08 Aug 2013 11:49:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-08 03:58, Tim Coote wrote:
>
> On 6 Aug 2013, at 19:39, Tomas Frydrych <tf+lists.yocto@r-finger.com> wrote:
>
>> On 06/08/13 18:27, Gary Thomas wrote:
>>> On 2013-08-06 10:01, Mark Hatle wrote:
>>>> On 8/6/13 10:00 AM, Jack Mitchell wrote:
>>>>> On 06/08/13 15:50, Mark Hatle wrote:
>>>>>> On 8/6/13 9:41 AM, Jack Mitchell wrote:
>>>>>>> On 06/08/13 15:31, Gary Thomas wrote:
>>>>>>>> My embedded device needs to send out email.
>>>>>>>>
>>>>>>>> I've looked around a bit and I don't see any recipes for a
>>>>>>>> mail sender, e.g. sendmail or postfix, for Yocto (OE-core).
>>>>>>>>
>>>>>>>> Have I missed something?  Does anyone have any suggestions?
>>>>>>>>
>>>>>>>> Surely my application isn't the first that wants to send email...
>>>>>>>>
>>>>>>>
>>>>>>> Would recipes-extended/msmtp do the job? Do you need to run the whole
>>>>>>> mail stack or is pushing out emails to an smtp server adequate?
>>>>>>>
>>>>>>
>>>>>> msmtp is provided specifically to be able to send email out.  It should
>>>>>> produce a binary called "sendmail" that is capable of simply sending
>>>>>> email (and conforming to LSB requirements.)
>>>>>>
>>>>>> --Mark
>>>>>
>>>>> Colour me impressed, I didn't realise it was also a drop-in for
>>>>> sendmail.
>>>>
>>>> Drop in replacement for the 'sendmail' command, but it's not a drop-in
>>>> for 'sendmail' the software.  (It only has sending capabilities from
>>>> what I've been told, which is all that
>>>> is required for the LSB certification.)
>>>
>>> And almost enough for my needs.  Amanda wants to use an MTA that
>>> works like the desktop 'mail', e.g.
>>>   mail -s "subject" TO <body
>>> I wrote a simple wrapper to use msmtp/sendmail and it works fine.
>>
>> I can confirm mstp works very well, and with all the necessary bells and
>> whistles like TLS. If you need more complex messages (e.g.,
>> attachments), then libgmime makes composing the email messages to pipe
>> into mstmtp quite easy.
>>
>> Tomas
>>
> Am I being very obtuse if I think that an embedded device should not be able to send email as it's embedded, which means disconnected from the rest of the world?  Or have we reached the stage where the overlap between yocto and a mainstream distro is vanishingly small?

It's a bit narrow to think that an embedded device is not connected
to anything else!  The term "embedded" is normally taken to mean
dedicated to some [set of] purposes.  There is nothing to say that
the embedded device does not or need not communicate with other
systems and sending an email seems quite reasonable to me.  See
   http://en.wikipedia.org/wiki/Embedded_computer_system

Here's an example:  I have a complex solar electric system on my
house.  Part of this system is the system-wide controller which
monitors the power line and also communicates  with the power
inverters (that actually create the A/C electricity for the system).
The system controller periodically sends a report upstream so that
I (and others) know it's status, how much power has been produced,
etc.  This report is sent via ethernet - it uses HTTP, but could
just as easily be built using email messages since it's one-way
only.  This is very much an embedded system.  It does only one
thing (a small collection of tasks), i.e. monitor the solar generating
system at my house and being connected and communicating to other
entities, possibly even sending email, is very much a part of how it works.

My reason for asking this question in the first place (how to send
email from my Yocto based device) is just as straight forward.  I
have a specialized NASD device which I'm using as a system-wide backup.
This is a powerful machine - P1022 PowerPC with many TB of high speed
RAID disks, etc - but it's also "embedded" in that I don't expect it
to do anything other than manage those disks and let me communicate
with it.  I'm running Amanda which is a powerful automated backup
system on the box.  It runs automatically/autonomously and sends
reports of what happened to me at my desk, via email.

Examples are everywhere; connected systems are the future (and the
now)!  Some circles even want your fridge and washing machine to
be networked and I can't see calling them anything other than
embedded...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

