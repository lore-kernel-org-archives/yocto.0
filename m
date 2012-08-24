Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B434E002AB
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 23:51:56 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q7O6pnfc030542
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 24 Aug 2012 08:51:49 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q7O6pnfu030541;
	Fri, 24 Aug 2012 08:51:49 +0200
Date: Fri, 24 Aug 2012 08:51:49 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20120824065149.GB18993@giant>
References: <1345731602-47313-1-git-send-email-bjst@enea.com>
	<1345731602-47313-2-git-send-email-bjst@enea.com>
	<1925298.QoNRmVcqIq@helios>
MIME-Version: 1.0
In-Reply-To: <1925298.QoNRmVcqIq@helios>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] Add -ptest package group
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
X-List-Received-Date: Fri, 24 Aug 2012 06:51:57 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Paul Eggleton wrote:
> > +DEPCHAIN_POST = "-dev -dbg -ptest"
> 
> Is this really what you want? Surely the tests for a particular piece of 
> software are mostly independent of those of its dependencies?

You're right, that change is not necessary. I misunderstood the purpose of DEPCHAIN_POST.

-- 
Björn

