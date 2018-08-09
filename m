Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45B20E00B5E; Thu,  9 Aug 2018 13:43:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDF41E009AC
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 13:43:33 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w79KhQOp015909
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 9 Aug 2018 21:43:28 +0100
Message-ID: <3e057c7d3483b73bb8507678edb06b001b771185.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Frazer, Will" <Will.Frazer@eurotech.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 09 Aug 2018 21:43:26 +0100
In-Reply-To: <AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com>
References: <AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: Yocto userbase in numbers?
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
X-List-Received-Date: Thu, 09 Aug 2018 20:43:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2018-08-09 at 17:19 +0000, Frazer, Will wrote:
> I was asked recently what a ballpark figure for the number of systems
> running distributions built with yocto might be and I could not find
> anything.
>  
> I realise it’s almost impossible to tell since technically everyone
> builds a different distro, but I don’t suppose anyone has come across
> any estimates anywhere ?

Its really hard to know. Someone did try to write a list of the
companies using the project based on mailing list questions, bugzilla
and job adverts and the list was over 700 companies and growing. Some
of the companies are large and have significant numbers of devices in
the field.

Even if you just look at the fields the project is used in based on the
project's members like Comcast, the automotive industry (e.g.
Automotive Grade Linux), several major OS vendors (Windriver, Mentor
Graphics, Montavista, ENEA) and in TVs (LG), the deployment of the
project is significant. How many devices any of those companies ship
based on Yocto Project derived Linux would be an interesting number to
try and work out. Its very much an iceberg, you only see part of it...

Cheers,

Richard

