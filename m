Return-Path: <wmills@ti.com>
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B345BE0030C
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2011 14:26:18 -0800 (PST)
Received: from dlep36.itg.ti.com ([157.170.170.91])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id pABMQD0r030261
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 11 Nov 2011 16:26:14 -0600
Received: from dlep26.itg.ti.com (smtp-le.itg.ti.com [157.170.170.27])
	by dlep36.itg.ti.com (8.13.8/8.13.8) with ESMTP id pABMQDrr024477;
	Fri, 11 Nov 2011 16:26:13 -0600 (CST)
Received: from DLEE74.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id pABMQDBf020222;
	Fri, 11 Nov 2011 16:26:13 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE74.ent.ti.com
	(157.170.170.8) with Microsoft SMTP Server id 14.1.323.3;
	Fri, 11 Nov 2011 16:26:13 -0600
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	pABMQDuP008921;	Fri, 11 Nov 2011 16:26:13 -0600
Message-ID: <4EBDA104.3040007@ti.com>
Date: Fri, 11 Nov 2011 17:26:12 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1110301030050.32341@localhost6.localdomain6>	<41DEA4B02DBDEF40A0F3B6D0DDB1237916E9FEFB@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1110311144500.7448@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1110311144500.7448@localhost6.localdomain6>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple questions about cleaning up the Quick Start Guide
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
X-List-Received-Date: Fri, 11 Nov 2011 22:26:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 10/31/2011 11:47 AM, Robert P. J. Day wrote:
> On Mon, 31 Oct 2011, Rifenbark, Scott M wrote:
>
>> Robert,
>>
>> Thanks for the stuff and the look here.  Regarding your first point
>> - I don't have a problem using the real link over the redirect.
>> The only things that come to mind are if they work why change them?
>> But, if the community wants the downloads.yoctoproject.org/releases
>> URL in there I can certainly go in and make changes to master.
>
>    yes, that's a judgment call, someone else can make that decision.
> obviously, not a critical change.
>

I think someone tried to "fix" the quick start based on Robert's input 
and it got broken instead.

The quick start I downloaded on Oct 21 was fine and said:

$ wget http://www.yoctoproject.org/downloads/poky/poky-edison-6.0.tar.bz2

The one I get today from
http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html 

does not work and says:

$ wget 
http://www.downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.tar.bz2

If you lose the "www." it should work.

