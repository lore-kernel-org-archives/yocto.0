Return-Path: <SRS0=Djvbk1=CS=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout06.eigbox.net (bosmailout06.eigbox.net [66.96.188.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E747CE00746
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 21:39:42 -0700 (PDT)
Received: from bosmailscan12.eigbox.net ([10.20.15.12])
	by bosmailout06.eigbox.net with esmtp (Exim) id 1SIBor-0003Qh-Vg
	for yocto@yoctoproject.org; Thu, 12 Apr 2012 00:39:42 -0400
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan12.eigbox.net with esmtp (Exim)
	id 1SIBor-00014j-5i; Thu, 12 Apr 2012 00:39:41 -0400
Received: from bosauthsmtp14.eigbox.net ([10.20.18.14])
	by bosimpout02.eigbox.net with NO UCE
	id wsfh1i0010JCtq201sfhsT; Thu, 12 Apr 2012 00:39:41 -0400
X-Authority-Analysis: v=2.0 cv=BexvJMR2 c=1 sm=1
	a=ca8V9l48i+6lF+TbartITQ==:17 a=mn2ndCrYJZwA:10 a=5XsFQGJ3Uf0A:10
	a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10 a=xQ8PauEUn42gztwZG2YA:9
	a=wPNLvfGTeEIA:10 a=AnsiuLKgxXFeB68GILQVjQ==:117
X-EN-OrigOutIP: 10.20.18.14
X-EN-IMPSID: wsfh1i0010JCtq201sfhsT
Received: from pool-108-11-41-42.atclnj.east.verizon.net ([108.11.41.42]
	helo=[192.168.1.3]) by bosauthsmtp14.eigbox.net with esmtpa (Exim)
	id 1SIBoq-00080H-Sd; Thu, 12 Apr 2012 00:39:41 -0400
Message-ID: <4F865C88.3080102@mindchasers.com>
Date: Thu, 12 Apr 2012 00:39:36 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
In-Reply-To: <4F862237.50200@linux.intel.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.11.41.42
X-EN-OrigHost: pool-108-11-41-42.atclnj.east.verizon.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 12 Apr 2012 04:39:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/11/2012 08:30 PM, Darren Hart wrote:
> SSDs are one way to
> go, but we've been known to chew through them and they aren't priced as
> consumables.

Hi Darren,

Could you please elaborate on "been known to chew through them"?

Are you running into an upper limit on write / erase cycles?  Are you 
encountering hard (or soft) failures?

Thanks,

Bob



