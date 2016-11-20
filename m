Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53CA2E00C40; Sat, 19 Nov 2016 20:47:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 128FFE008E3
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 20:47:48 -0800 (PST)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])
	by msfrf2612.sfr.fr (SMTP Server) with ESMTP id 70F851C000C4D;
	Sun, 20 Nov 2016 05:47:46 +0100 (CET)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2612.sfr.fr (SMTP Server) with ESMTPSA;
	Sun, 20 Nov 2016 05:47:43 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>
Date: Sun, 20 Nov 2016 05:47:33 +0100
Message-ID: <002c01d242e9$3ab17fd0$b0147f70$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AdJC6SV8xZ/h4uieS+6VUrqZdX/Qbg==
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Sun, 20 Nov 2016 04:47:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Khem,

Sorry for that, hopefully it's fixed now.

Herve

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com]=20
Sent: samedi 19 novembre 2016 18:31
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Trevor Woerner <twoerner@gmail.com>; yocto@yoctoproject.org
Subject: Re: [yocto] ***SPAM*** [raspberrypi] raspi3 vs raspi2

Thanks Herve,

Btw. can you fix your filters so it does not show SPAM in your replies ?
it breaks the thread chains.

On Sat, Nov 19, 2016 at 2:54 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> Hi,
>
> I'm in the process of pushing something that should hopefully do that =
- and more.
> I hope I can finish pushing it in the next few days.
>
> Cheers,
>
> Herve
>
>> On 19 nov. 2016, at 05:20, Trevor Woerner <twoerner@gmail.com> wrote:
>>
>> Hi,
>>
>> I was wondering if there were any plans to create a=20
>> MACHINE=3Draspberrypi3 that treats the raspi3 like the CortexA53 that =

>> it is instead of generating images that are backwards compatible with =
the CortexA7 that is the raspi2?
>>
>> Best regards,
>>    Trevor
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


