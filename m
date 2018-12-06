Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7480E00C93; Thu,  6 Dec 2018 00:57:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [149.210.149.73 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 479 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Dec 2018 00:57:07 PST
Received: from outbound2.mail.transip.nl (outbound2.mail.transip.nl
	[149.210.149.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BA7AE007B3
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2018 00:57:07 -0800 (PST)
Received: from submission5.mail.transip.nl (submission5.mail.transip.nl
	[149.210.149.125])
	by outbound2.mail.transip.nl (Postfix) with ESMTP id 439TmM0CKxzYdXj;
	Thu,  6 Dec 2018 09:49:07 +0100 (CET)
Received: from webmail.frontend (web1.mail.transip.nl [149.210.149.96])
	by submission5.mail.transip.nl (Postfix) with ESMTPA id 439TmK6F8Pz7tMT;
	Thu,  6 Dec 2018 09:49:05 +0100 (CET)
MIME-Version: 1.0
Date: Thu, 06 Dec 2018 09:49:05 +0100
From: Herman van Hazendonk <me@herrie.org>
To: Mauro Ziliani <mauro@faresoftware.it>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <aba073ef-c202-92d7-4945-7928988ac65b@faresoftware.it>
References: <aba073ef-c202-92d7-4945-7928988ac65b@faresoftware.it>
Message-ID: <d5082be298459ae695d80d0fa20adffb@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission5.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	s=transip-a; d=herrie.org; t=1544086145; h=from:reply-to:subject:to:
	cc:references:in-reply-to:date:mime-version:content-type;
	bh=I1RMXLox9OONoHmJeXqInN9IcGmjLffC8rZSM/VxdS4=;
	b=l6080rh0ztjaWN6BYYYRn8F67WUH6iMcnsOCUqh1w8D++rqbwxRupptHjN5yFKSmuiBhZy
	GHaPtf3MTXVZ51ph4lN6ZmkhIhuCKMW4U8dihf5cqU7tJTa1ZlACqUDNGrav0u0w92DrrQ
	jugVakDq1axLDxb6w7wcy2E55g+VCdGbaN4lxSrCmrx4jtBIFxLd13YSs8gbWtwt10yjYJ
	oNPgz6I+TXqd/ELCWUBrfK+VjUKxnkpIx4j9DPZOgwkwls0f+hxAhBfB6CWEZQuppzV9mL
	WysCt2VwpQTWO43OS5sQzz1ZPmtJXFNrGmm2DcvhgB0KIG0W9Z7rZlFbGFxkWw==
X-Report-Abuse-To: abuse@transip.nl
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: connmand+dbus. Which alternatives?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Dec 2018 08:57:11 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi Mauro,

You can always try to get a newer version of connmand and dbus 
integrated into your build. Often some of these issues are solved in a 
newer version.

Thud provides 1.35 
(https://github.com/openembedded/openembedded-core/tree/thud/meta/recipes-connectivity/connman) 
and master 1.36 
(https://github.com/openembedded/openembedded-core/tree/master/meta/recipes-connectivity/connman) 
and dbus 1.12.10 from 
https://github.com/openembedded/openembedded-core/tree/thud/meta/recipes-core/dbus

Best regards,
Herman

On 2018-12-06 07:50, Mauro Ziliani wrote:
> Hi all.
> 
> I'm working on a imx6dl sabresd project with an usb wifi dongle (edimax
> EW7811un)
> 
> My app uses Connman by DBus to manage ethernet and wifi connections.
> 
> Normally the sytstem works well. Sometimes, randomly, the system freeze
> or the app crashes.
> 
> I made many test and this happens when the system is connected to a 
> SSID.
> 
> So I suspect that the problem is in connamd_1.31+dbus_1.10.6
> 
> 
> I'm using Yocto fsl 4.1.5-2.0.1 qith Qt5 5.6.2
> 
> 
> Can you suggest me an alternative to connmand?
> 
> 
> Best regards,
> 
>   MZ


