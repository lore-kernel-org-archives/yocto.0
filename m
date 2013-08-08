Return-Path: <tim+yoctoproject.org@coote.org>
Received: from mercury.coote.org (mail.coote.org [46.65.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64DB5E01480
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 12:54:18 -0700 (PDT)
Received: by mercury.coote.org (Postfix, from userid 500)
	id 5537A4373; Thu,  8 Aug 2013 20:54:17 +0100 (BST)
Received: from [127.0.0.1] (fw.coote.org [172.17.1.1])
	by mercury.coote.org (Postfix) with ESMTP id 9E5434373;
	Thu,  8 Aug 2013 20:54:15 +0100 (BST)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Tim Coote <tim+yoctoproject.org@coote.org>
In-Reply-To: <520385B1.5070400@mlbassoc.com>
Date: Thu, 8 Aug 2013 20:54:20 +0100
Message-Id: <43FCA025-46FC-4A83-8946-81385EAC3D57@coote.org>
References: <520108A5.7090806@mlbassoc.com>
	<52010B1F.3060901@communistcode.co.uk> <52010D4E.4090009@windriver.com>
	<52010FA8.1000101@communistcode.co.uk> <52011DDF.5090807@windriver.com>
	<5201320D.1010506@mlbassoc.com> <520142D9.30209@r-finger.com>
	<694BCD52-4C60-41C6-8D5D-BCD1BA5BA512@coote.org>
	<520385B1.5070400@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1508)
X-Spambayes-Classification: ham; 0.00
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 08 Aug 2013 19:54:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 8 Aug 2013, at 12:49, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-08-08 03:58, Tim Coote wrote:
>>=20
>> On 6 Aug 2013, at 19:39, Tomas Frydrych <tf+lists.yocto@r-finger.com> =
wrote:
>>=20
>>> On 06/08/13 18:27, Gary Thomas wrote:
>>>> On 2013-08-06 10:01, Mark Hatle wrote:
>>>>> On 8/6/13 10:00 AM, Jack Mitchell wrote:
>>>>>> On 06/08/13 15:50, Mark Hatle wrote:
>>>>>>> On 8/6/13 9:41 AM, Jack Mitchell wrote:
>>>>>>>> On 06/08/13 15:31, Gary Thomas wrote:
>>>>>>>>> My embedded device needs to send out email.
>>>>>>>>>=20
>>>>>>>>> I've looked around a bit and I don't see any recipes for a
>>>>>>>>> mail sender, e.g. sendmail or postfix, for Yocto (OE-core).
>>>>>>>>>=20
>>>>>>>>> Have I missed something?  Does anyone have any suggestions?
>>>>>>>>>=20
>>>>>>>>> Surely my application isn't the first that wants to send =
email...
>>>>>>>>>=20
>>>>>>>>=20
>>>>>>>> Would recipes-extended/msmtp do the job? Do you need to run the =
whole
>>>>>>>> mail stack or is pushing out emails to an smtp server adequate?
>>>>>>>>=20
>>>>>>>=20
>>>>>>> msmtp is provided specifically to be able to send email out.  It =
should
>>>>>>> produce a binary called "sendmail" that is capable of simply =
sending
>>>>>>> email (and conforming to LSB requirements.)
>>>>>>>=20
>>>>>>> --Mark
>>>>>>=20
>>>>>> Colour me impressed, I didn't realise it was also a drop-in for
>>>>>> sendmail.
>>>>>=20
>>>>> Drop in replacement for the 'sendmail' command, but it's not a =
drop-in
>>>>> for 'sendmail' the software.  (It only has sending capabilities =
from
>>>>> what I've been told, which is all that
>>>>> is required for the LSB certification.)
>>>>=20
>>>> And almost enough for my needs.  Amanda wants to use an MTA that
>>>> works like the desktop 'mail', e.g.
>>>>  mail -s "subject" TO <body
>>>> I wrote a simple wrapper to use msmtp/sendmail and it works fine.
>>>=20
>>> I can confirm mstp works very well, and with all the necessary bells =
and
>>> whistles like TLS. If you need more complex messages (e.g.,
>>> attachments), then libgmime makes composing the email messages to =
pipe
>>> into mstmtp quite easy.
>>>=20
>>> Tomas
>>>=20
>> Am I being very obtuse if I think that an embedded device should not =
be able to send email as it's embedded, which means disconnected from =
the rest of the world?  Or have we reached the stage where the overlap =
between yocto and a mainstream distro is vanishingly small?
>=20
> It's a bit narrow to think that an embedded device is not connected
> to anything else!  The term "embedded" is normally taken to mean
> dedicated to some [set of] purposes.  There is nothing to say that
> the embedded device does not or need not communicate with other
> systems and sending an email seems quite reasonable to me.  See
>  http://en.wikipedia.org/wiki/Embedded_computer_system
>=20
> Here's an example:  I have a complex solar electric system on my
> house.  Part of this system is the system-wide controller which
> monitors the power line and also communicates  with the power
> inverters (that actually create the A/C electricity for the system).
> The system controller periodically sends a report upstream so that
> I (and others) know it's status, how much power has been produced,
> etc.  This report is sent via ethernet - it uses HTTP, but could
> just as easily be built using email messages since it's one-way
> only.  This is very much an embedded system.  It does only one
> thing (a small collection of tasks), i.e. monitor the solar generating
> system at my house and being connected and communicating to other
> entities, possibly even sending email, is very much a part of how it =
works.
>=20
> My reason for asking this question in the first place (how to send
> email from my Yocto based device) is just as straight forward.  I
> have a specialized NASD device which I'm using as a system-wide =
backup.
> This is a powerful machine - P1022 PowerPC with many TB of high speed
> RAID disks, etc - but it's also "embedded" in that I don't expect it
> to do anything other than manage those disks and let me communicate
> with it.  I'm running Amanda which is a powerful automated backup
> system on the box.  It runs automatically/autonomously and sends
> reports of what happened to me at my desk, via email.
>=20
> Examples are everywhere; connected systems are the future (and the
> now)!  Some circles even want your fridge and washing machine to
> be networked and I can't see calling them anything other than
> embedded...
I can fully appreciate why yocto can be a suitable tool for this =
scenario - especially if it's a familiar tool. I was only positing that, =
maybe, some of the yocto projects seem to be pulling in the types of =
package that could reasonably be considered for a "a general-purpose =
computer" (to quote the wikipedia article).  If an embedded computer is =
connected enough, maybe it would make sense to handle the package =
dependencies using the per-work done by a 'general purpose' distro, and =
the config management using the devops techniques (especially 'treat =
infrastructure as code') to decouple hardware failure from the build and =
configure process.

I'm interested to see how the approaches evolve.

Tim=

