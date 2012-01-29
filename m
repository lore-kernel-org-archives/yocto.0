Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7FF1E00599
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2012 02:48:22 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0TAmA1r008693;
	Sun, 29 Jan 2012 10:48:10 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07750-02; Sun, 29 Jan 2012 10:48:03 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0TAlxuZ008687
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 29 Jan 2012 10:48:00 GMT
Message-ID: <1327834082.7807.11.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Sun, 29 Jan 2012 10:48:02 +0000
In-Reply-To: <2431052.r2DnJ7okSu@helios>
References: <ED3E0BCACD909541BA94A34C4A164D4C40237014@post.tritech.se>
	<2431052.r2DnJ7okSu@helios>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org,
	Mats =?ISO-8859-1?Q?K=E4rrman?= <Mats.Karrman@tritech.se>,
	openembedded-devel@lists.openembedded.org
Subject: Re: [oe] exmap-console access forbidden
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
X-List-Received-Date: Sun, 29 Jan 2012 10:48:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2012-01-28 at 14:58 +0000, Paul Eggleton wrote:
> On Friday 27 January 2012 09:34:26 Mats Kärrman wrote:
> > Does anyone know why the downloads server at yoctoproject.org has the source
> > tars of exmap-console as "Access Forbidden"? Other tars from the same
> > server is OK to download.
> 
> I seem to be able to download the tarballs from 
> http://downloads.yoctoproject.org/releases/exmap-console/... are you still 
> experiencing this problem?

I did forward the email to Michael and Beth who looked into it and did
find and resolve a permissions problem. I think they were trying to
figure out the root cause before replying.

Anyhow, it should be resolved now.

Cheers,

Richard


