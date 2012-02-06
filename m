Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDB14E004D2
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 13:56:55 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Feb 2012 13:56:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="107074631"
Received: from unknown (HELO [10.7.199.63]) ([10.7.199.63])
	by orsmga002.jf.intel.com with ESMTP; 06 Feb 2012 13:56:54 -0800
Message-ID: <4F304CA6.2010800@linux.intel.com>
Date: Mon, 06 Feb 2012 13:56:54 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CB558AF2.739A%belen.barros.pena@intel.com>
In-Reply-To: <CB558AF2.739A%belen.barros.pena@intel.com>
Cc: "Metthey, Mikael" <mikael.metthey@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob 1.2 design - visuals
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
X-List-Received-Date: Mon, 06 Feb 2012 21:56:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/02/12 05:54, Barros Pena, Belen wrote:
>>> 3. Inherit colour scheme from applied OS theme in host computer
>> Is it to say we use the default colors from OS, and don't specify any
>> color?
>> For example, Jessica wants progress bars to be green but in Ubuntu it
>> should be orange.
>> If so, Belen, I agree with you.
>
> Yes, I think that's what Joshua recommended, and I can see why it makes
> sense. Joshua, could you confirm when you have a chance?

Indeed, that's precisely what I'm recommending. Further, when we need to 
colour a widget that isn't usually coloured in the theme (like the 
red/green colouring of build items in the hobv1) we should try and use a 
colour from the palette defined in the current theme to avoid issues 
like #1701[1][2] and another example from the wild[3][4].

I found a reasonable resource on the how and why[5].

> If we decide to implement this way, people will need to understand that
> this applies to all UI elements without exceptions. Any particular
> requests (like Jessica's) could be looked at on a case by case basis.

But should be well justified, and generated from the host theme's palette.

Cheers,
Joshua

1. http://bugzilla.pokylinux.org/attachment.cgi?id=276
2. http://bugzilla.pokylinux.org/show_bug.cgi?id=1701
3. http://itmages.ru/image/view/52705/9663bad0
4. http://redmine.yorba.org/issues/2483
5. http://ometer.com/gtk-colors.html
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

