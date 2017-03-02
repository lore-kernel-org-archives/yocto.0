Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1FBDE00A1E; Thu,  2 Mar 2017 08:20:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B7F1E00AAA
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:20:13 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C464468A01C; Thu,  2 Mar 2017 16:20:12 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 307E768A019;
	Thu,  2 Mar 2017 16:20:10 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 64297674023C;
	Thu,  2 Mar 2017 17:20:09 +0100 (CET)
To: yocto@yoctoproject.org
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <925afa2e-4624-af4b-b5f5-b191c6f40080@mlbassoc.com>
Date: Thu, 2 Mar 2017 17:20:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 16:20:26 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-02 17:14, SatyaNarayana Sampangi wrote:
> Thanks Leonardo Sandoval and Ross,
>
> I am using beagle bone black, for which meta-ti layer and poky versions compatible is daisy 1.6 as mention in the
> official website of yocto. If I upgrade the poky to the latest version, then compatibity will be lost. Pls help me out here.
>

Not sure where you got that information, but the BeagleBoneBlack works just
fine with much more recent branches.  I'm using current master, but morty
should be fine.

> On Thu, Mar 2, 2017 at 9:18 PM, Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com
> <mailto:leonardo.sandoval.gonzalez@linux.intel.com>> wrote:
>
>     On Thu, 2017-03-02 at 19:56 +0530, SatyaNarayana Sampangi wrote:
>     > Hi Paul,
>     >
>     >
>     > I am not finding the devtool script under the
>     > /${HOME}/yocto/poky/scripts, so I copied that script from the website
>     > and changed the permissions.
>     >
>     >
>     > I did sourcing also,
>     >
>     >
>     when you said 'sourcing' you mean you prepare the environment with the
>     oe-init-build-env? Looks to me that you are missing this step.
>
>
>     > but when I run the script, I am getting
>     >
>     >
>     >
>     >
>     > devtool
>     > Traceback (most recent call last):
>     >   File "/home/satya/yoctoBSP/poky/scripts/devtool", line 38, in
>     > <module>
>     >     from devtool import DevtoolError, setup_tinfoil
>     > ImportError: No module named 'devtool'
>     >
>     >
>     > Can you pls help me here. whereI am going wrong.
>     >
>     >
>     > Thanks in Advance,
>     >
>     >
>     > Regards,
>     > Satya
>     > --
>     > _______________________________________________
>     > yocto mailing list
>     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     > https://lists.yoctoproject.org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

