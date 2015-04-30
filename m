Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 665D1E009D8; Thu, 30 Apr 2015 05:31:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AB3CE00993
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 05:31:00 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5325FF811E2; Thu, 30 Apr 2015 06:31:00 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CB994F811E1;
	Thu, 30 Apr 2015 06:30:59 -0600 (MDT)
Message-ID: <5542209A.1090201@mlbassoc.com>
Date: Thu, 30 Apr 2015 06:31:22 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <552BB2C6.6040001@mlbassoc.com>
	<CAK18fxHadZWN6nxj6R8DpQhEN86jRjEj6Y-f_b0wbXhOfttT=g@mail.gmail.com>
In-Reply-To: <CAK18fxHadZWN6nxj6R8DpQhEN86jRjEj6Y-f_b0wbXhOfttT=g@mail.gmail.com>
Subject: Re: [meta-raspberrypi] virtual/libgles1
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
X-List-Received-Date: Thu, 30 Apr 2015 12:31:15 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-30 05:11, Andrei Gherzan wrote:
> Hello Gary,
>
> I see that rpi doesn't provide gles1 in none of the graphics providers. So the only solution that I see for now is to have a new recipe (similar to mesa-gl) which will provide only
> gles1. Or, we can bbappend mesa to be used and provide only gles1 (this could be pretty hacky).

Fair enough.  I'll take a look at this when I have a chance (no promises...)

> On Mon, Apr 13, 2015 at 2:12 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     How can I get virtual/libgles1 on the RaspberryPi?  libgles2
>     is provided by "userland" but that package does not provide
>     libgles1.  If I add a dependency on libgles1 (e.g. libva),
>     then there is a conflict which tries to install both mesa
>     and mesa-gl.
>
>     Looking for ideas...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

