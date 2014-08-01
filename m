Return-Path: <ruud.den.bekker@cordis.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5721CE006EE; Fri,  1 Aug 2014 06:40:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Aug 2014 06:40:44 PDT
Received: from cordis.nl (smtp.cordis.nl [212.61.137.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5082E005BB
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 06:40:44 -0700 (PDT)
MIME-Version: 1.0
x-mimeole: Produced By Microsoft Exchange V6.5
Date: Fri, 1 Aug 2014 15:37:14 +0200
Message-ID: <21598C768CAB7B46B75C18783A59ACEE271E2D@cordissvr01.Cordis.local>
In-Reply-To: <53DB66D8.3060500@dynamicdevices.co.uk>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [yocto] Build Tizen with yocto work-flow
Thread-Index: Ac+tcEmxWoD9Q0eLSseF2yYcjuj+QwAHSn3Q
References: <53DA58C9.50705@open.eurogiciel.org><53DB6430.8090608@dynamicdevices.co.uk><53DB660B.6040700@open.eurogiciel.org>
	<53DB66D8.3060500@dynamicdevices.co.uk>
From: "Ruud den Bekker" <ruud.den.bekker@cordis.nl>
To: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>,
	"ronan" <ronan.lemartret@open.eurogiciel.org>
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: Build Tizen with yocto work-flow
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
X-List-Received-Date: Fri, 01 Aug 2014 13:40:48 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We have done some preliminary testing with Mono for ARM.
Works fine for our application (no graphics).

Regards,

Ruud

-----Original Message-----
From: yocto-bounces@yoctoproject.org
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Alex J Lennon
Sent: Friday, August 01, 2014 12:07 PM
To: ronan
Cc: yocto@yoctoproject.org; general@lists.tizen.org
Subject: Re: [yocto] Build Tizen with yocto work-flow


On 01/08/2014 11:03, ronan wrote:
> Hi Alex
>
>>
>> I'm interested in trying this out. Presumably it should be trivial to

>> add Mono support by pulling in meta-mono?
>>
>> Have you looked at this on ARM target platforms at all? e.g. i.MX6 ?
>
> No, we did not test it for ARM yet, but it's in the pipe.
>
> If try a ARM build, we would be interested in your feed back.
>
> Regarding Mono, it shouldn't be an issue.=20

Thanks. I'll see if I can take a look here on an RPi or an i.MX6 then
and let you know how it goes.

Cheers,

Alex

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

