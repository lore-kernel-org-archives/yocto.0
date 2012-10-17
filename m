Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F29A1E0027E
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:14:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Oct 2012 08:14:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,601,1344236400"; d="scan'208";a="228759383"
Received: from unknown (HELO [10.255.14.120]) ([10.255.14.120])
	by orsmga002.jf.intel.com with ESMTP; 17 Oct 2012 08:14:05 -0700
Message-ID: <1350486845.1710.40.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Tim O'Callaghan <tocallaghan@meyn.com>
Date: Wed, 17 Oct 2012 10:14:05 -0500
In-Reply-To: <12F9B0C37BAC49429468AA27112A5F5B37B94DF4@DB3PRD0510MB368.eurprd05.prod.outlook.com>
References: <12F9B0C37BAC49429468AA27112A5F5B37B94DF4@DB3PRD0510MB368.eurprd05.prod.outlook.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to avoid re-creating a recipe (+my meta-bucket approach)
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
X-List-Received-Date: Wed, 17 Oct 2012 15:14:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-10-17 at 08:39 +0000, Tim O'Callaghan wrote:
> Hi,
> 
> After seeing the lmsensors thread float by I thought it about time I started the discussion on how people manage to avoid re-inventing recipes, and to get the ball rolling, I thought I would describe mine.
> 
> As I do not have the any idea what recipes may be kicking about, I devised what I call the meta-bucket approach. It is pretty simple, I have a script that clones every existing OE/Yocto repository I know about into one easily grep-able place[1]. 
> 
> The to the main question, how are others managing this?
> 
> Best regards,
> 
> Tim.
> [1] https://github.com/timoc/meta-bucket
> 

I do a similar thing - clone all the repos I can think of, and then have
OpenGrok index them all.  That makes everything available as a fully
searchable cross-referenced set of web pages.  Couldn't live without
it...

http://hub.opensolaris.org/bin/view/Project+opengrok/

Tom

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



