Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B40C7E00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 09:18:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Aug 2012 09:18:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,733,1336374000"; d="scan'208";a="194689161"
Received: from unknown (HELO [10.255.12.201]) ([10.255.12.201])
	by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2012 09:18:43 -0700
Message-ID: <1344442723.20775.2.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
Date: Wed, 08 Aug 2012 11:18:43 -0500
In-Reply-To: <4439C3C0562087488F139C696CD862A72C1FCE@SBS-MEDEC.medecbenelux.local>
References: <4439C3C0562087488F139C696CD862A72C1CD6@SBS-MEDEC.medecbenelux.local>
	<CAEsOVNewE-5HUwwe5euHztTLq1piN8fCbnh03gO4CeUFeQaQKA@mail.gmail.com>
	<4439C3C0562087488F139C696CD862A72C1F5D@SBS-MEDEC.medecbenelux.local>
	<CAEsOVNe6V2_DY9ZCCYu0qVWc=19OEZzVa=i+0qBeR-sDHnLS5Q@mail.gmail.com>
	<4439C3C0562087488F139C696CD862A72C1F99@SBS-MEDEC.medecbenelux.local>
	<alpine.DEB.2.02.1208081115390.12423@oneiric>
	<4439C3C0562087488F139C696CD862A72C1FCE@SBS-MEDEC.medecbenelux.local>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [SPAM] - Re: image recipe gives error: has no buildable providers - Email found in subject
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
X-List-Received-Date: Wed, 08 Aug 2012 16:18:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-08-08 at 15:50 +0000, Tim Verstraete wrote:
> Yes, this was automatically generate yocto-bsp create test-test1 arm
> 

Nah, yocto-bsp doesn't output things like what you have in your version
e.g. priority 25, missing spaces after the PATTERN variable, and yes,
the extra spaces in the middle of variables.  Somehow those things got
into your version, randomly or otherwise.  Here's what I get using the
above:

$ yocto-bsp create test-test1 arm

# We have a conf and classes directory, add to BBPATH                                                                                
BBPATH := "${BBPATH}:${LAYERDIR}"

# We have a recipes directory, add to BBFILES                                                                                        
BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \                                                                                
        ${LAYERDIR}/recipes-*/*/*.bbappend"

BBFILE_COLLECTIONS += "test-test1"
BBFILE_PATTERN_test-test1 := "^${LAYERDIR}/"
BBFILE_PRIORITY_test-test1 = "6"

> -----Original Message-----
> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca] 
> Sent: woensdag 8 augustus 2012 17:17
> To: Tim Verstraete
> Cc: McClintock Matthew-B29882; yocto@yoctoproject.org
> Subject: [SPAM] - Re: [yocto] image recipe gives error: has no buildable providers - Email found in subject
> 
> On Wed, 8 Aug 2012, Tim Verstraete wrote:
> 
> > Hi,
> >
> > What i see is that when i do bitbake-layers show_layers that it shows the correct layers and the correct priority of the layers.
> >
> > The layers.conf is the following
> >
> > # We have a conf and classes directory, add to BBPATH 
> > BBPATH := "${BBPATH}:${LAYERDIR}"
> >
> > # We have a recipes directory, add to BBFILES BBFILES := "${BBFILES} 
> > ${LAYERDIR}/recipes-*/*/*.bb \
> >         ${LAYERDIR}/recipes-*/*/*.bbappend"
> >
> >  BBFILE_COLLECTIONS += "test-test1"
> >  BBFILE_PATTERN_ test-test1:= "^${LAYERDIR}/"
> >  BBFILE_PRIORITY_ test-test1 = "25"
>                    ^ space?
> 
>   did you seriously copy and paste the above?  because it's just wrong.
> 
> rday
> 



