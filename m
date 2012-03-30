Return-Path: <SRS0=PGs/tu=CF=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout16.eigbox.net (bosmailout16.eigbox.net [66.96.184.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92C37E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 10:27:39 -0700 (PDT)
Received: from bosmailscan07.eigbox.net ([10.20.15.7])
	by bosmailout16.eigbox.net with esmtp (Exim) id 1SDfbv-0004sy-2d
	for yocto@yoctoproject.org; Fri, 30 Mar 2012 13:27:39 -0400
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan07.eigbox.net with esmtp (Exim)
	id 1SDfbs-0001QW-Gu; Fri, 30 Mar 2012 13:27:36 -0400
Received: from bosauthsmtp09.eigbox.net ([10.20.18.9])
	by bosimpout02.eigbox.net with NO UCE
	id rtTd1i0040BkY8i01tTdga; Fri, 30 Mar 2012 13:27:37 -0400
X-Authority-Analysis: v=2.0 cv=BexvJMR2 c=1 sm=1
	a=ezw8LHFQp/lSHt//sRtX8Q==:17 a=mn2ndCrYJZwA:10 a=Na1N3YiFAQsA:10
	a=G2WrdEGbwP8A:10 a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10
	a=SRvliW3Vm_kPYbrkRQkA:9 a=wPNLvfGTeEIA:10
	a=+tcVrJynzLVJ9yqDAOBWjQ==:117
X-EN-OrigOutIP: 10.20.18.9
X-EN-IMPSID: rtTd1i0040BkY8i01tTdga
Received: from pool-108-25-202-179.atclnj.east.verizon.net ([108.25.202.179]
	helo=[192.168.1.3]) by bosauthsmtp09.eigbox.net with esmtpa (Exim)
	id 1SDfbs-0008KU-QV; Fri, 30 Mar 2012 13:27:37 -0400
Message-ID: <4F75ED03.3030205@mindchasers.com>
Date: Fri, 30 Mar 2012 13:27:31 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120310 Thunderbird/11.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <CAC+thW2bpSsoHOC2feOEowp1POB2zFG4eSDiiKs6xa7xP+qwDg@mail.gmail.com>
	<4F75EB5C.3020909@windriver.com>
In-Reply-To: <4F75EB5C.3020909@windriver.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.202.179
X-EN-OrigHost: pool-108-25-202-179.atclnj.east.verizon.net
Cc: yocto@yoctoproject.org
Subject: Re: Suspicious warnings while beta testing yocto 1.2
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
X-List-Received-Date: Fri, 30 Mar 2012 17:27:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/30/2012 01:20 PM, Bruce Ashfield wrote:
> There are a few outstanding items for 1.2 as part of M4 .. one of
> them is squashing the remaining configuration values that are
> causing warnings.

I'm also seeing some kernel config errors for the MPC8315 while beta 
testing.  Should I ignore or pursue?

BTW, when I'm not beta testing, I work from the mainline and my own config.



