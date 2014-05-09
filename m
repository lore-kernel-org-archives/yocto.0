Return-Path: <briank@RUSSOUND.COM>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 513F1E0073A; Fri,  9 May 2014 12:49:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from Pegasus.RUSSOUND.COM (unknown [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DF16E00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 12:49:23 -0700 (PDT)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Fri, 9 May 2014 15:49:10 -0400
Received: from HERMES.RUSSOUND.com (10.0.0.8) by HERMES.RUSSOUND.com
	(10.0.0.8) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Fri, 9 May 2014 15:49:04 -0400
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Fri, 9 May 2014 15:49:04 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: Bryan Evenson <bevenson@melinkcorp.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-atmel] at91sam9x5ek: "no machine record defined"
	failure for core-image-minimal
Thread-Index: Ac9riCi/qecn3Y3qQzK51aCH65HnbgAJ5HKAAAc038AAAtMygAABuO0AAAg78VA=
Date: Fri, 9 May 2014 19:49:03 +0000
Message-ID: <4b6ac99409c747a5900923653a4308eb@HERMES.RUSSOUND.com>
References: <f9f1c263a9ab4a3085bf1a696f31aec6@HERMES.RUSSOUND.com>
	<536CDE17.40806@windriver.com>
	<bab902e58d8041a793958d1432e41e86@HERMES.RUSSOUND.com>
	<536D2169.80103@windriver.com>
	<9c24fdddb3e54b61b8ec208a3e0e0bf5@BLUPR05MB037.namprd05.prod.outlook.com>
In-Reply-To: <9c24fdddb3e54b61b8ec208a3e0e0bf5@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.60]
x-brightmail-tracker: H4sIAAAAAAAAC+NgFnrFqsTGxcLFwMCha2CYG2zQcar/L6fF/WunWSwmLG1lcmAKYIhizcxLyq9IYM3ov7iLpeBwcMW81sfMDYyH/bsYuTiEBBYzSjya0cPYxcgJ5OxglNj8vgDEZhYwlbjytZEFwlaUuHCvAcxmE1CXeLF3CitIs4jAREaJLwsPgCWEBXIkjqzcCzZIRCBX4uH+GcwQtp/EpBcbwWwWARWJd8d/soHYvAJOEvu6TrBAXNHJJLHg/0wmkASnQJjExN0tYEMZBcQkvp9awwRxhbjErSfzwWwJAQGJJXvOM0PYShK9t99BxX0klu17wQSxQFDi5MwnLBBxM4m9D5ZA1ehJfG6az97FyAFkB0ocOKAAYZpKXH0fDFFhK7FnxkQmiLCzxLwb9RBhK4lr56eyQtjaEttf7YOydSQ2XVsFtUhe4v+9+ywwYyZcXgZ1pKzE6WuL2CDsAIlli6+xTGBUm4UU0rOQQnoWkn9nIfllASPLKkZhD9cgX9dgvaDQ4GD/UD8XveT83E2MkHQgt4Px7w37Q4ySHExKorxrNXKDhfiS8lMqMxKLM+KLSnNSiw8xSnDwKInwWusD5XiLCxJzizPTYVIyHBxKErzyICnBotT01Iq0zJyS1CKI9ClGSSlx3t96QEkBkL6M0jy43CVGUSlhXlVNoBxPQWpRbmYJRPwWozDHQyYhlrz8vFQpoBMZgECD8RWjOAejkjCvM8ginsy8ErgTXgFdxwR0na9+Nsh1JYkIKakGxlmztpVdMlSQ1PXN73/wy8osk+vJta5vk6PkGztqznxbIB3F8aW5kKPgZHaSnm0TQ9BT2YMhc2wYKpQur+wT3jJts3fXDn27GPEZPUqMh35p/J41UTnV75rFGtbih6xJ3yxrtib8s8vNqA1TV8tnmJFn9fb75tvy05lXqbCXh/TZfOQxuJ2qxFKckWioxVxUnAgAxELqYX0DAAA=
MIME-Version: 1.0
Subject: Re: [meta-atmel] at91sam9x5ek: "no machine record defined" failure for core-image-minimal
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
X-List-Received-Date: Fri, 09 May 2014 19:49:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bryan,

Thanks for the tip. Any chance you tried assigning the PREFFERED_VERSION to=
 3.6.9 and using the linux4sam meta-atmel layer as is?

I'll definitely check out your layer. I was hoping the at91sam9x5ek would j=
ust build so that I could start tweaking it to define a machine works for i=
ts little brother, the at91sam9g20ek.

I'm coming from an older 2.6.30 kernel that used a board file instead of th=
e device tree and was planning to use the demo build from meta-atmel and so=
me small mods to give myself a crash course on device tree development. Loo=
ks like the learning curve might have steepened a bit.

Thanks,
Brian

-----Original Message-----
From: Bryan Evenson [mailto:bevenson@melinkcorp.com]=20
Sent: Friday, May 09, 2014 3:31 PM
To: Bruce Ashfield; Brian Karcz; yocto@yoctoproject.org
Subject: RE: [yocto] [meta-atmel] at91sam9x5ek: "no machine record defined"=
 failure for core-image-minimal

Brian,

I'm currently using a fork of the meta-atmel layer for my at91sam9g25 board=
.  If I remember when they added at91sam9x5 support for meta-atmel, I think=
 the layer was on kernel 3.6.9 and now it's on 3.10.  There's been a lot of=
 machine and device tree related configuration changes for this chipset bet=
ween 3.6.9 and 3.10, so that configuration might not work for 3.10.

The configuration I'm currently using is over at https://github.com/evenson=
bryan/meta-atmel/tree/master/recipes-kernel/linux/files/at91sam9x5ek/linux-=
3.10-at91.  It also has some patches I added in to pick up some missing per=
ipheral support for my system.  You may want to give that a try and see if =
it helps.

Regards,
Bryan


