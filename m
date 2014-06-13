Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 686FFE00A2F; Fri, 13 Jun 2014 06:47:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 378FDE0073D
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 06:47:35 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DD2B4F811EE; Fri, 13 Jun 2014 07:47:34 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 47AE1F81199;
	Fri, 13 Jun 2014 07:47:34 -0600 (MDT)
Message-ID: <539B0100.5090603@mlbassoc.com>
Date: Fri, 13 Jun 2014 07:47:44 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAF_dkJB9T4VWSOma0sTeaec8js4-Bp58=s4AKRxT0JryCHp8NA@mail.gmail.com>
In-Reply-To: <CAF_dkJB9T4VWSOma0sTeaec8js4-Bp58=s4AKRxT0JryCHp8NA@mail.gmail.com>
Subject: Re: How to specify a default value for a variable in a recipe
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
X-List-Received-Date: Fri, 13 Jun 2014 13:47:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-06-13 07:08, Patrick Doyle wrote:
> OK, I've got to ask this, because it totally confuses me.  I wrote a
> recipe to build a custom application (gstreamer plugin, actually) that
> I wanted to fetch from our SCM.  Bitbake told me I needed to specify a
> source revision and even gave me a clue of what to put in.  Looking at
> the development manual, I decided I wanted to use the latest revision
> from our repository by default, so I added the following line to my
> recipe:
>
> SRCREV_default_pn-gstxbac = "${AUTOREV}"
>
> But now I'm curious.  Why couldn't I use (I haven't tried this yet)
>
> SRCREV_pn-gstxbac ?= "${AUTOREV}"

If this is in the gstxbac recipe itself, use the much simpler
   SRCREV ?= "${AUTOREV}"

>
> and even more confusingly, why isn't the syntax something more like:
>
> SRCREV_pn-gstxbac_default = "${AUTOREV}"
>
> What's going on here?
>
> Does one syntax (BLAH_default vs BLAH ?=) get evaluated early in the
> bitbake process and the other get evaluated late?
>
> Does the location of the letters "default" in a variable name matter?
>
> At some point, I really need to wrap my head around Bitbake, it's
> syntax, and how it operates and internalize all of that.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

