Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2D4BE013A6
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 00:24:44 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q3J7Ocn1016048
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 19 Apr 2012 09:24:38 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q3J7Ob5W016044;
	Thu, 19 Apr 2012 09:24:37 +0200
Date: Thu, 19 Apr 2012 09:24:37 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120419072437.GB30737@giant>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com> <20120413084702.GA9382@giant>
	<4F883B0D.1010605@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F883B0D.1010605@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
X-List-Received-Date: Thu, 19 Apr 2012 07:24:45 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Darren Hart wrote:
> Right, gnuplot likes evenly spaced values of BB and PM. So you could
> have done: 8,12,16,24,28,32

I did that, and uploaded it to the wiki: 
  https://wiki.yoctoproject.org/wiki/Build_Performance#parallelism

Looks like 24/32 is the sweet spot for this system, for this build.

-- 
Björn

