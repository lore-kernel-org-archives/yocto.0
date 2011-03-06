Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39BAE4C80093
	for <yocto@yoctoproject.org>; Sat,  5 Mar 2011 18:52:40 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p260qYaj015276;
	Sat, 5 Mar 2011 16:52:34 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 5 Mar 2011 16:52:33 -0800
Received: from bruce-ashfields-macbook.local ([128.224.20.149]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 5 Mar 2011 16:52:33 -0800
Message-ID: <4D72DACE.6050209@windriver.com>
Date: Sat, 05 Mar 2011 19:52:30 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <iktkgj$rpj$1@dough.gmane.org> <4D725AB1.8040309@linux.intel.com>
In-Reply-To: <4D725AB1.8040309@linux.intel.com>
X-OriginalArrivalTime: 06 Mar 2011 00:52:33.0801 (UTC)
	FILETIME=[C7749790:01CBDB98]
Cc: gmane@reliableembeddedsystems.com, yocto@yoctoproject.org
Subject: Re: yocto supported freescale eval boards
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
X-List-Received-Date: Sun, 06 Mar 2011 00:52:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-03-05 10:45 AM, Darren Hart wrote:
> On 03/05/2011 07:22 AM, Robert Berger wrote:
>> Hi,
>>
>> A customer asked for a training with a freescale eval board and I would
>> like to use yocto for it.
>>
>> What I found from the documentation is, that the MPC8313E-RDB Reference
>> Platform is supported. I'm a bit confused by a list, which can be found
>> on the Freescale website:
>>
>> http://www.freescale.com/webapp/sps/site/prod_summary.jsp?code=MPC8313E-RDB&tab=Buy_Parametric_Tab&pspll=1&fromSearch=false
>>
>>
>> It says:
>> MPC8313E-RDB,Hardware Only 8313E PROCESSOR BD (SOCK Hardware Not
>> Recommended for New Design)
>>
>> MPC8313E-RDB-T, MPC8313E-RDB-U, MPC8313E-RDB-UT, MPC8313E-RDBB seem to
>> be still supported. What's the difference? What would you recommend?
>>
>>
>> Besides the PPC the iMX31ADS seems to be supported as well.

The imx31ads is supported by older non linux-yocto recipes, so it
may have some bit rot at the moment. Until it gets refreshed onto
a linux-yocto base, your mileage will vary with it.

>>
>> What would you recommend? Are there more Freescale eval boards going to
>> be supported by yocto in the near future?
>
>
> We're currently using the following board.
>
> http://search.digikey.com/scripts/DkSearch/dksus.dll?PName?Name=MPC8315E-RDBA-ND&Site=US&Lang=EN

Confirmed. This is the board we are currently using.

>
>
> I don't know which upcoming boards are likely to be adopted, perhaps
> Bruce (CC'd) will have some ideas?

There are definitely plans to update/refresh the FSL/e500 board
options. Unofficially there's a whole set of boards that will
work fine, and there's a good pool of good quality BSPs that are
viable options.

I hesitate to say more, since nothing has been quite chosen yet
and I'd be speculating or worse misleading at this point. But
a newer e500 based board is something that will arrive once
everything falls into place.

That being said, I can suggest/help with the addition of any of
a number of FSL powerpc based boards, it all depends on what
the requirements are for the board. Does it just have to
be readily available ? Less than 'x' dollars ? Any particular
peripheral support ?

Cheers,

Bruce

>


