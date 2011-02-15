Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CC984C80093
	for <yocto@yoctoproject.org>; Tue, 15 Feb 2011 04:00:38 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FA0aG4023673;
	Tue, 15 Feb 2011 10:00:36 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23161-10; Tue, 15 Feb 2011 10:00:32 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FA0R1H023667
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Feb 2011 10:00:27 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
In-Reply-To: <4D59E0E0.7020704@intel.com>
References: <4D59E0E0.7020704@intel.com>
Date: Tue, 15 Feb 2011 10:00:25 +0000
Message-ID: <1297764025.4945.167.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] Build statistics base
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
X-List-Received-Date: Tue, 15 Feb 2011 10:00:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-14 at 18:11 -0800, Elizabeth Flanagan wrote:
> This is an initial commit of buildstats.bbclass. This generates a
> directory structure in build/tmp/buildstats which contains basic build
> statistics on a build run.
> 
> What we capture:
> CPU usage on a build and task level
> Time run overall and for each tast
> Size of the uncompressed rootfs
> If the build has failures, what package failed and during what task
> 
> Overall build stats are kept in
> build/tmp/buildstats/<buildname-MACHINE>/<timestamp>/build_stats
> with package statistics kept in <pkg_name>/<task>.
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: eflanagan/buildstats
>   Browse:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/buildstats
> 
> Thanks,
>     Beth Flanagan <elizabeth.flanagan@intel.com>

Merged to master, thanks Beth!

Richard


