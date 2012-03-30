Return-Path: <SRS0=PGs/tu=CF=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout04.eigbox.net (bosmailout04.eigbox.net [66.96.186.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA385E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 10:11:19 -0700 (PDT)
Received: from bosmailscan07.eigbox.net ([10.20.15.7])
	by bosmailout04.eigbox.net with esmtp (Exim) id 1SDfM6-00062E-Ud
	for yocto@yoctoproject.org; Fri, 30 Mar 2012 13:11:18 -0400
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan07.eigbox.net with esmtp (Exim) id 1SDfM6-0005Od-7Y
	for yocto@yoctoproject.org; Fri, 30 Mar 2012 13:11:18 -0400
Received: from bosauthsmtp09.eigbox.net ([10.20.18.9])
	by bosimpout02.eigbox.net with NO UCE
	id rtBJ1i00A0BkY8i01tBJ3u; Fri, 30 Mar 2012 13:11:18 -0400
X-Authority-Analysis: v=2.0 cv=BexvJMR2 c=1 sm=1
	a=ezw8LHFQp/lSHt//sRtX8Q==:17 a=mn2ndCrYJZwA:10 a=Na1N3YiFAQsA:10
	a=woOm37eKF_sA:10 a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10
	a=i6OlHiZaFmDK_X1GNmUA:9 a=wPNLvfGTeEIA:10
	a=+tcVrJynzLVJ9yqDAOBWjQ==:117
X-EN-OrigOutIP: 10.20.18.9
X-EN-IMPSID: rtBJ1i00A0BkY8i01tBJ3u
Received: from pool-108-25-202-179.atclnj.east.verizon.net ([108.25.202.179]
	helo=[192.168.1.3]) by bosauthsmtp09.eigbox.net with esmtpa (Exim)
	id 1SDfM6-0004m6-CG
	for yocto@yoctoproject.org; Fri, 30 Mar 2012 13:11:18 -0400
Message-ID: <4F75E934.5060302@mindchasers.com>
Date: Fri, 30 Mar 2012 13:11:16 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120310 Thunderbird/11.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CB9A386E.BBFC%belen.barros.pena@intel.com>
In-Reply-To: <CB9A386E.BBFC%belen.barros.pena@intel.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.202.179
X-EN-OrigHost: pool-108-25-202-179.atclnj.east.verizon.net
Subject: Re: Yocto project quickstart information
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
X-List-Received-Date: Fri, 30 Mar 2012 17:11:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/29/2012 11:04 AM, Barros Pena, Belen wrote:
> Should we review the required packages details for the other distros to make sure they are up to date?

It might be worthwhile to also point out that additional packages are 
required to build the documentation.  It might be "nice" to document the 
list and keep it up to date (note, I believe the yocto project docs and 
bitbake doc require a different package set).

Also, these package lists would probably be better suited on the wiki 
where we all could mod it on the fly.







