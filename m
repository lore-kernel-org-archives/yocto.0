Return-Path: <agikling@lasx.com>
Received: from omx.cbeyond.com (omx.cbeyond.com [50.20.30.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A282E017CA
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 14:26:50 -0800 (PST)
X-SBRS: 5.2
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: omx06bay.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AtsBABbBelIyFB4LmGdsb2JhbABYA4JmWU0GuzyDJkuBPA4BAQEBAQgJDQcUIQeCJQEBAQMBAQEBNxEBAgcRCBAHBAIBCAcKAwEBAQEKAhIJByEGAQkBFAkIAgQTCBUEh04DCQYBBAMFsSkBg2UNiWuMZxqBDxCBCAYbFwYLgw+BEAOVPmODGosjA4hbgXE5
X-IronPort-AV: E=Sophos;i="4.93,647,1378872000"; d="scan'208";a="72584042"
Received: from mts.cbeyond.com (HELO EXHUB101.mmeprod.cbeyond) ([50.20.30.11])
	by omx.cbeyond.com with ESMTP; 06 Nov 2013 17:26:48 -0500
Received: from EXHUB105.mmeprod.cbeyond (10.128.38.104) by
	EXHUB101.mmeprod.cbeyond (10.128.38.100) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 6 Nov 2013 17:26:48 -0500
Received: from EXMBX203A.mmeprod.cbeyond ([fe80::5407:bff7:b5c8:4633]) by
	EXHUB105.mmeprod.cbeyond ([::1]) with mapi id 14.03.0123.003;
	Wed, 6 Nov 2013 17:26:48 -0500
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: yocto Digest, Vol 38, Issue 29
Thread-Index: AQHO2zymXLo006P8RUeuMIE4K9d/i5oYxPvQ
Date: Wed, 6 Nov 2013 22:26:48 +0000
Message-ID: <4C79E62053892D47A6419B29F941677A6E61B396@EXMBX203A.mmeprod.cbeyond>
References: <mailman.4398.1383775598.2694.yocto@yoctoproject.org>
In-Reply-To: <mailman.4398.1383775598.2694.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [69.198.178.141]
MIME-Version: 1.0
Subject: Re: yocto Digest, Vol 38, Issue 29
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
X-List-Received-Date: Wed, 06 Nov 2013 22:26:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Brian,

Yes the meta-intel x86-64 should work.  I wouldn't count on the infrared wo=
rking out of the box though.  Chances are getting the appropriated graphics=
 drivers to work with Yocto will also be difficult and probably won't work =
out of the box.  All the NUC's peripherals might work if you install Ubuntu=
 - but I'd even give that a 40% chance of failing to support everything you=
 need for your home theater computer.

If this is your first go at Yocto, I'd try getting the build system to run =
on an older x86 computer that you're not interested in using as your home t=
heater PC.  Otherwise you're going to probably get frustrated if/when Yocto=
 doesn't totally support the NUC...

But if you're not planning on this being a home theater PC, by all means, h=
ave at it!  If Yocto has issues now, many of them will get fixed eventually=
 as more of the NUC devices come online.

Just my 2 cents.

~Andy Gikling=20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of yocto-request@yoctoproject.org
Sent: Wednesday, November 06, 2013 4:07 PM
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 38, Issue 29

Send yocto mailing list submissions to
	yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
	https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
	yocto-request@yoctoproject.org

You can reach the person managing the list at
	yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific than "R=
e: Contents of yocto digest..."


Today's Topics:

   1. Re: FW: curious about ref manual, sec 6.1.11,
      oe-init-build-env-memres (Saul Wold)
   2. Re: FW: curious about ref manual, sec 6.1.11,
      oe-init-build-env-memres (Robert P. J. Day)
   3. Bitbake Commander Content Assist on bbappend files
      (Jate Sujjavanich)
   4. My first Yocto Project (Brian Duffy)
   5. Changing Config for linux-raspberrypi (John Whitmore)
   6. Re: Changing Config for linux-raspberrypi (Robert P. J. Day)
   7. Re: My first Yocto Project (Sean Liming)


----------------------------------------------------------------------

Message: 1
Date: Wed, 06 Nov 2013 12:38:13 -0800
From: Saul Wold <sgw@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 	Yocto
	discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] FW: curious about ref manual, sec 6.1.11,
	oe-init-build-env-memres
Message-ID: <527AA8B5.8060603@linux.intel.com>
Content-Type: text/plain; charset=3DISO-8859-1; format=3Dflowed

On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:
> Anyone know this?
>
>> -----Original Message-----
>> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>> Sent: Wednesday, November 06, 2013 10:48 AM
>> To: Rifenbark, Scott M
>> Subject: curious about ref manual, sec 6.1.11,=20
>> oe-init-build-env-memres
>>
>>
>>   i've never used that memory-resident version of bitbake -- it's not=20
>> clear from that section whether you need to start bitbake running=20
>> before you run that script.
>>
Running that scripts will start the server at the default port of 12345 and=
 setup the default "build" directory.

>>   that is, it's not really *explicitly* explained whether running=20
>> that script with a port number *starts* the bitbake server. does it?
>>
Yes, running the script with a port number will start the server using that=
 port number.

The bitbake -m command will Stop the server.

Sau!

>> rday
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


------------------------------

Message: 2
Date: Wed, 6 Nov 2013 15:41:02 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Saul Wold <sgw@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] FW: curious about ref manual, sec 6.1.11,
	oe-init-build-env-memres
Message-ID: <alpine.DEB.2.02.1311061540140.23267@oneiric>
Content-Type: TEXT/PLAIN; charset=3DUS-ASCII

On Wed, 6 Nov 2013, Saul Wold wrote:

> On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:
> > Anyone know this?
> >
> > > -----Original Message-----
> > > From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> > > Sent: Wednesday, November 06, 2013 10:48 AM
> > > To: Rifenbark, Scott M
> > > Subject: curious about ref manual, sec 6.1.11,=20
> > > oe-init-build-env-memres
> > >
> > >
> > >   i've never used that memory-resident version of bitbake -- it's=20
> > > not clear from that section whether you need to start bitbake=20
> > > running before you run that script.
> > >
> Running that scripts will start the server at the default port of=20
> 12345 and setup the default "build" directory.

  i suspected as much, but the way that section is worded, that isn't clear=
. thanks.

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


------------------------------

Message: 3
Date: Wed, 6 Nov 2013 15:55:03 -0500
From: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: [yocto] Bitbake Commander Content Assist on bbappend files
Message-ID:
	<6C2434209962DC46B88345CA85C334A201CABA955A2F@Courier.syntech.org>
Content-Type: text/plain; charset=3D"us-ascii"

Hover content assist works for me with .bb files, but not .bbappend files u=
nder Eclipse with bitbake commander plugin. Should it?

Jate S.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20131106/3e=
f0fab8/attachment-0001.html>

------------------------------

Message: 4
Date: Wed, 6 Nov 2013 16:34:16 -0500
From: Brian Duffy <brduffy@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] My first Yocto Project
Message-ID:
	<CAHrDPkoYpQw1UZ-aK5Jg33LrtCXoz9C3tF6H5if32Vgh_iKVgQ@mail.gmail.com>
Content-Type: text/plain; charset=3D"iso-8859-1"

I would like to get my feet wet with this thing. I am thinking of purchasin=
g this nuc ...

http://www.intel.com/content/www/us/en/nuc/nuc-kit-d34010wyk.html

Can I use the the standard x86-64 BSP to get it working? What about the inf=
rared sensor etc. Does that require further customization to get working?

thnx

Brian

--
Duff
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20131106/39=
4a34fd/attachment-0001.html>

------------------------------

Message: 5
Date: Wed, 6 Nov 2013 21:40:41 +0000
From: John Whitmore <arigead@gmail.com>
To: yocto@yoctoproject.org
Subject: [yocto] Changing Config for linux-raspberrypi
Message-ID: <20131106214039.GA16472@griso.site>
Content-Type: text/plain; charset=3Dutf-8

Was struggling with the documentation on making chages to the config file u=
sed by the raspberrypi linux kernel. I'd got my own layer with a two line a=
ppend file:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}"
KERNEL_DEFCONFIG =3D "defconfig"

I'd got my defconfig config file into the directory structure under my laye=
r.=20

.
??? conf
??? ??? layer.conf
??? recipes-kernel
    ??? linux
        ??? linux-raspberrypi
        ??? ??? defconfig
        ??? linux-raspberrypi_3.6.11.bbappend.jfw


So all looked good to me thankfully "<kergoth>" on the #yocto IRC Channel p=
ointed me to bitbake -e linux-raspberrypi and I was able to check stuff out=
. Took me a while but I eventually found the problem.

The origional recipe "linux-raspberrypi_3.6.11.bb" contains the lines:

do_configure_prepend() {
	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/d=
efconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONF=
IG} available."
}

So even though my append is changing the FILESEXTRAPATHS and KERNEL_DEFCONF=
IG values it makes no difference at all. Well luckily I did manage to chang=
e the name of KERNEL_DEFCONFIG so when the above "install" command was exec=
uted it produced errors all over the place. If that hadn't happened I'd hav=
e got a kernel with none of my changes and there'd have been naughty words.

So given that the text book approach to making changes to the kernel, outli=
ned in section "2.2.1. Creating the Append File" of the Linux Kernel Develo=
pment Manual has been subverted. How do I change the kernel config?

Can I do my own do_configure_prepend() in my bbappend to prepend the recipe=
's do_configure_prepend() and get my config file into the place it's going =
to install from? That sounds really messy to me but I'm new.

That seems the only alternative short of re-writing the linux-raspberrypi r=
ecipe which doesn't sound too good either.

If somebody could point me in the right direction on how to make changes to=
 the kernel in this case I'd be very grateful.

Thanks a million for any advice.=20



------------------------------

Message: 6
Date: Wed, 6 Nov 2013 16:47:21 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: John Whitmore <arigead@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Changing Config for linux-raspberrypi
Message-ID: <alpine.DEB.2.02.1311061646400.26091@oneiric>
Content-Type: TEXT/PLAIN; charset=3DUS-ASCII

On Wed, 6 Nov 2013, John Whitmore wrote:

> Was struggling with the documentation on making chages to the config=20
> file used by the raspberrypi linux kernel. I'd got my own layer with a tw=
o line append file:
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}"
                                              ^
                                              there should be a ":"

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


------------------------------

Message: 7
Date: Wed, 6 Nov 2013 14:06:23 -0800
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Brian Duffy'" <brduffy@gmail.com>, <yocto@yoctoproject.org>
Subject: Re: [yocto] My first Yocto Project
Message-ID: <000001cedb3c$6fc623a0$4f526ae0$@annabooks.com>
Content-Type: text/plain; charset=3D"us-ascii"

=20

For the NUC i3 4th Generation, I would use the 4th Generation BSP:

=20

https://www.yoctoproject.org/download/4th-generation-intel%C2%AE-core%E2%84=
%
A2-processors-mobile-intel%C2%AE-qm87-and-hm86-chipsets-formerly-shark=20

=20

Regards,

=20

Sean Liming

Owner

 <http://www.annabooks.com/> ablogo color - 500

Tel: 714-970-7523 / Cell: 858-774-3176

=20

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
]
On Behalf Of Brian Duffy
Sent: Wednesday, November 06, 2013 1:34 PM
To: yocto@yoctoproject.org
Subject: [yocto] My first Yocto Project

=20

I would like to get my feet wet with this thing. I am thinking of purchasin=
g this nuc ...

=20

http://www.intel.com/content/www/us/en/nuc/nuc-kit-d34010wyk.html

=20

Can I use the the standard x86-64 BSP to get it working? What about the inf=
rared sensor etc. Does that require further customization to get working?

=20

thnx

=20

Brian


=20

--
Duff=20

=20



---
This email is free from viruses and malware because avast! Antivirus protec=
tion is active.
http://www.avast.com
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20131106/6e=
e049ca/attachment.html>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: image001.jpg
Type: image/jpeg
Size: 2409 bytes
Desc: not available
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20131106/6e=
e049ca/attachment.jpg>

------------------------------

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 38, Issue 29
*************************************

