Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3A17E006AD
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 11:25:47 -0700 (PDT)
Received: from dlelxv30.itg.ti.com ([172.17.2.17])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q62IPi0D022472;
	Mon, 2 Jul 2012 13:25:44 -0500
Received: from DFLE70.ent.ti.com (dfle70.ent.ti.com [128.247.5.40])
	by dlelxv30.itg.ti.com (8.13.8/8.13.8) with ESMTP id q62IPiWs028074;
	Mon, 2 Jul 2012 13:25:44 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle70.ent.ti.com
	(128.247.5.40) with Microsoft SMTP Server id 14.1.323.3; Mon, 2 Jul 2012
	13:25:44 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.102.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q62IPi3f021885;	Mon, 2 Jul 2012 13:25:44 -0500
Message-ID: <4FF1E7A7.3030006@ti.com>
Date: Mon, 2 Jul 2012 14:25:43 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1340763740.43451.YahooMailNeo@web121605.mail.ne1.yahoo.com>	<4370319.CbK9Nk4c9m@helios>	<EA4EED0E-61CA-415E-AA6E-E708D7859323@dominion.thruhere.net>
	<1917420.7HU16QZsXx@helios>
In-Reply-To: <1917420.7HU16QZsXx@helios>
Cc: yocto@yoctoproject.org
Subject: Re: How to include libstdc++ in an image?
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
X-List-Received-Date: Mon, 02 Jul 2012 18:25:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/30/2012 06:29 PM, Paul Eggleton wrote:
> On Saturday 30 June 2012 23:56:18 Koen Kooi wrote:
>> But do note that if you ship libstdc++ without anything linking to it you
>> forego on the linking exception to the GPL. That is general is a Very Bad
>> Thing(TM), so ship a helloword.cpp binary to keep the fsf happy. As an
>> added bonus the helloworld will drag in the lib automatically.
>
> [citation needed]
>

I agree with Koen.

I have had discussion with the FSF and others in the open source 
compliance arena.  The first sentence appears to be the prevailing 
interpretation.  I have asked the FSF to clarify its position on the FAQ 
but no luck so far.

Bill

