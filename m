Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95440E0139E
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 01:29:31 -0800 (PST)
Received: from [192.168.0.58] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 071F62844D;
	Mon, 20 Feb 2012 08:39:30 +0000 (GMT)
Message-ID: <4F42127E.6090106@communistcode.co.uk>
Date: Mon, 20 Feb 2012 09:29:34 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120217 Thunderbird/10.0.2
MIME-Version: 1.0
To: Andrea Galbusera <gizero@gmail.com>
References: <4F2133BB.8090408@communistcode.co.uk>
	<43D8289B-2551-43ED-AC5F-5C571A22990E@beagleboard.org>
	<4F21409C.9080807@communistcode.co.uk>
	<4F21487D.3030406@mlbassoc.com> <4F2154AA.5040103@mlbassoc.com>
	<4F215A28.4030409@communistcode.co.uk>
	<4F215DF0.4020503@mlbassoc.com> <4F216C3F.6040901@mlbassoc.com>
	<4F217046.2090306@mlbassoc.com> <4F217135.209@communistcode.co.uk>
	<CAFZh4h8EjS6NSVgcUDnF0+AbUYk4Fga0Ek6hnMXWcHjLMozAqg@mail.gmail.com>
	<CAC+thW2MvyiELxcy5PUh9r2NrjEkvPyLZW5qDbUbt7Tu7F2Rbg@mail.gmail.com>
In-Reply-To: <CAC+thW2MvyiELxcy5PUh9r2NrjEkvPyLZW5qDbUbt7Tu7F2Rbg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: BeagleBone with meta-ti layer
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
X-List-Received-Date: Mon, 20 Feb 2012 09:29:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 20/02/12 06:39, Andrea Galbusera wrote:
> Hi,
>
> On Thu, Jan 26, 2012 at 4:38 PM, Brian Hutchinson<b.hutchman@gmail.com>  wrote:
>> I grabbed a bag of chips and a beverage ... watching this thread!  I'm
>> right behind you guys so thanks for blazing the trail.  I have other
>> TI parts to work with but starting with first BeagleBoard (&
>> BeagleBone) since that is the reference.
>
> Was this an happy ending story? Where you guys successful in building
> meta-ti layer under Yocto umbrella?
>
> Regards,
> Andrea

It's still in the air at the moment. Texas Instruments are going through 
a process to abstract meta-ti layer into a pure BSP and cut out all the 
distro specific features. When this is complete then it will be good to 
go in Yocto.

If you look at the archives of the meta-ti mailing list there has been 
extensive discussions on it recently.

Cheers,
Jack.

