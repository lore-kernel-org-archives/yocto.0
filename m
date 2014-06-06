Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D727E00985; Fri,  6 Jun 2014 14:32:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1480FE0070F
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 14:32:26 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E66D9F811ED; Fri,  6 Jun 2014 15:32:25 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AFB87F811D9;
	Fri,  6 Jun 2014 15:32:24 -0600 (MDT)
Message-ID: <53923371.4060002@mlbassoc.com>
Date: Fri, 06 Jun 2014 15:32:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAGM0ZdRC1fBMcVjBXdeV5bG7Pe7LcFACzhTP0J2fvRdaMYSiGg@mail.gmail.com>	<CAJTo0Lai3oqLkziVE_-+NK6MLMjcjh2biGNaESzPyeH9ztkeLg@mail.gmail.com>	<CAGM0ZdS=Ey035Po91o-sd+pKo4KJgVGj3d4NExF9huP9YCtzkQ@mail.gmail.com>
	<CAGM0ZdSBSM_enFcgEZ_3-AHRzCZVf07gK_0n5E3Zg55ZvB85Ug@mail.gmail.com>
In-Reply-To: <CAGM0ZdSBSM_enFcgEZ_3-AHRzCZVf07gK_0n5E3Zg55ZvB85Ug@mail.gmail.com>
Subject: Re: List of Binary Files from a recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jun 2014 21:32:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-06-06 15:25, Bharath Chandra wrote:
> Hi Ross,
>
> Using rpm, I was able to trace back recipe files for all the files except for files in a folder called as media. When I try to trace for any file inside media, it does not show me
> any package name. Could anyone please tell me what is this media folder??

/media is where alternative devices, e.g. a USB stick, are mounted.
The contents of /media are not part of the main root file system, thus
you won't find them in any package manager database.

> On Thu, Jun 5, 2014 at 4:47 PM, Bharath Chandra <ellurubharath29@gmail.com <mailto:ellurubharath29@gmail.com>> wrote:
>
>     Hi Ross,
>
>     Thank you for the response.
>     rpm -qf <filename> would give us the package name.
>
>     Thanks,
>     Bharath
>
>
>     On Thu, Jun 5, 2014 at 4:13 PM, Burton, Ross <ross.burton@intel.com <mailto:ross.burton@intel.com>> wrote:
>
>         On 5 June 2014 21:50, Bharath Chandra <ellurubharath29@gmail.com <mailto:ellurubharath29@gmail.com>> wrote:
>         > I am working on a reverse enginnering project and I want to know by looking
>         > at an executable , the recipe file from which it is generated. So, first I
>         > need to understand by using what commands in a recipe file, we can generate
>         > an executable.
>
>         If you actually need to know what recipe produced a binary without
>         instrumenting the binaries, then use the package manager: they all
>         have a command to tell you what binary package installed a file, and
>         from the binary package  you can determine the source package, and
>         that's got the same name as the recipe.
>
>         Ross
>
>
>
>
>     --
>     Thanks & Regards,
>     Bharath Chandra Elluru.
>     Contact Number:785-979-4875 <tel:785-979-4875>.
>
>
>
>
> --
> Thanks & Regards,
> Bharath Chandra Elluru.
> Contact Number:785-979-4875.
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

