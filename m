Return-Path: <Noel.Vellemans@visionBMS.com>
Received: from mail206.messagelabs.com (mail206.messagelabs.com
	[85.158.139.211])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E1F7DE00566
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2011 07:28:21 -0700 (PDT)
X-Env-Sender: Noel.Vellemans@visionBMS.com
X-Msg-Ref: server-8.tower-206.messagelabs.com!1317392898!60363791!1
X-Originating-IP: [195.134.156.204]
X-StarScan-Version: 6.3.6; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 15348 invoked from network); 30 Sep 2011 14:28:19 -0000
Received: from gateway.loepfe.com (HELO gateway.loepfe.com) (195.134.156.204)
	by server-8.tower-206.messagelabs.com with SMTP;
	30 Sep 2011 14:28:19 -0000
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Fri, 30 Sep 2011 16:28:11 +0200
Message-ID: <1531E53627F1F749B4FE809BF2A4EB6702ADC504@WETMEX10.loepfe.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [yocto] Virtual keyboard ?
thread-index: Acx/enlwtqFwAz3lSbaUqDXPz1GCVwAAJjtwAACE8iA=
From: "Vellemans, Noel" <Noel.Vellemans@visionBMS.com>
To: <yocto@yoctoproject.org>
Subject: FW: Virtual keyboard ?
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
X-List-Received-Date: Fri, 30 Sep 2011 14:28:22 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

=20
Hi Gary,

Tweaked my arm configuration (with touch-screen) as you said and, ok I
see a virtual keyboard poping-up as YOU expected. So far so good.

But now I'm facing another question that I would like to try.

I would like to open a web-page (BUT do not have WEB-browser on this
yocto-1.0 build, correct me if I'm wrong {please} ) I wonder what will
happen if I touch an edit-field located on the 'bottom' of the screen
(this is where the virtual key-board-pops-up)?

Do you have (or know wher to find) any INFO onhow this 'auto-pupop' of
the virtual keyboard is working (in other words how does the key-board
getting triggered to be shown/hidden) ?

Regards Noel.


PS: sorry for forgetting the CC to the mailing list.






-----Original Message-----
From: Gary Thomas [mailto:gary@mlbassoc.com]
Sent: 30Sep11 16:09
To: Vellemans, Noel
Subject: Re: [yocto] Virtual keyboard ?

On 2011-09-30 08:05, Vellemans, Noel wrote:
> Ok, I'll give it a try...
>
> At this time I'm running an ARMV7 build on imx537 cpu (w. a mouse and=20
> keyb), but I'll tweak the config and connect a Touch-screen to it ..
> To give it a try.
>
> Thanks for the response

Good luck.  Note: it's polite to copy replies on the mailing list so
that everyone can see it and benefit from the discussion.

> -----Original Message-----
> From: Gary Thomas [mailto:gary@mlbassoc.com]
> Sent: 30Sep11 15:54
> To: Vellemans, Noel
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Virtual keyboard ?
>
> On 2011-09-30 07:31, Vellemans, Noel wrote:
>> Hi all,
>>
>> I have a question where I can not find an direct answer to on the
> Yocto-web/wiki.
>>
>> I wonder if the Yocto-arm-sato build supports a device that has
> no-REAL keyboard but only a touch-screen.
>>
>> If so, does the VIRTUAL-keyboard pup-op automatically, if you touch
> something that is editable (like in android and/or meego) ?
>
> Yes, this works fine.  You just need to set these in
> /etc/formfactor/machconfig:
>     HAVE_TOUCHSCREEN=3D1
>     HAVE_KEYBOARD=3D0
>
>> NOTE : I've been playing with the Yocto-1.0 build into qemu and I do
> not find how to 'REMOVE' the virtual keyboard once it is visible on=20
> screen.
>
> If it comes up by demand, it will go away when you press enter.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

