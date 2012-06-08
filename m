Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E6AFE006D9
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2012 09:41:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Jun 2012 09:41:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="150186024"
Received: from unknown (HELO [10.7.198.154]) ([10.7.198.154])
	by orsmga001.jf.intel.com with ESMTP; 08 Jun 2012 09:41:46 -0700
Message-ID: <4FD22B4B.3050206@linux.intel.com>
Date: Fri, 08 Jun 2012 09:41:47 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CBF7C947.109A2%belen.barros.pena@intel.com>
In-Reply-To: <CBF7C947.109A2%belen.barros.pena@intel.com>
Cc: "Lock, Joshua" <joshua.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob implementation: vanilla or branded?
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
X-List-Received-Date: Fri, 08 Jun 2012 16:41:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/06/12 07:28, Barros Pena, Belen wrote:
 > Vanilla 5 - branded 0 :)
 >
 > Shane, Dongxiao and Alex: from an implementation point of view, I guess
 > this means eliminating any hardcoded UI-related values (button 
colours and
 > styles, for example). Joshua: if you have a rough idea of the things that
 > will need to be changed from the work you did before the 1.2 release,
 > please let us know.

I have a link to an old article that suggests techniques for getting 
colours from the GTK+ theme:

http://ometer.com/gtk-colors.html

It's pretty old but I believe the GTK+2 pieces are still appropriate for 
Hob.

On top of that using gtk.Table is bad, using hard coded sizes for text, 
widgets, etc. is bad.

Pango markup supports proportional font sizes (large, larger) like CSS 
and I'd suggest those be used.

I think we should keep the existing icons, though.
 > What do you think?

I'm definitely in favour of that.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project
         Intel Open Source Technology Centre

