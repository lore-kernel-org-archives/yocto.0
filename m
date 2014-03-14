Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A92FE00B17
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 08:52:36 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B82EBF811FE; Fri, 14 Mar 2014 09:52:35 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3789BF811FD;
	Fri, 14 Mar 2014 09:52:34 -0600 (MDT)
Message-ID: <532325C9.7070306@mlbassoc.com>
Date: Fri, 14 Mar 2014 09:52:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Federico Vitali <fede.vitali@gmail.com>, 
	Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>	<CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>	<CAD78y+4tJLHEGAd6NZ-S=XU7j_J9=-pFb5vYRxF7gZb52Qkq-Q@mail.gmail.com>	<5322C771.8070601@mlbassoc.com>	<CAP71WjzXHvngY_gk5_jdC4jDD5DhFBR7pfL_GDUMOVfHc9Cpag@mail.gmail.com>	<CAD78y+5oXeVFhmq8QYiftL+SXLY0SuPx=PS2gWE1-+a6aVimMg@mail.gmail.com>	<CAP71Wjx9ab3bf_6=k-oocYTo0vZuy+oBbq=kTWGQBibsHonyNw@mail.gmail.com>
	<CAD78y+4_m_MsukuwAYyGc-8N_TeUxUwJ96zX9gJnOQBiWBVFuQ@mail.gmail.com>
In-Reply-To: <CAD78y+4_m_MsukuwAYyGc-8N_TeUxUwJ96zX9gJnOQBiWBVFuQ@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: What is the best practice for customizing libraries included in yocto distribution?
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
X-List-Received-Date: Fri, 14 Mar 2014 15:52:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-03-14 09:45, Federico Vitali wrote:
> It worked! Thank you so much! Now I have to go out, I have only to understand
> a couple of things...
> 
> 1. how to make bitbake understand that I've only changed one or more file, now I have
> to do bitbake -c clean gst-plugins-base && bitbake gst-plugins-base

If you've only changed a file or two, try this instead:
  $ bitbake gst-plugins-base -C compile

If you made a change that requires rerunning the 'configure' step,
just use that instead of 'compile'.

> 2. how to debug via Eclipse.
> 
> Thank you again!
> 
> 
> Federico
> 
> 
> 
> 2014-03-14 11:18 GMT+01:00 Nicolas Dechesne <nicolas.dechesne@linaro.org <mailto:nicolas.dechesne@linaro.org>>:
> 
>     Frederico,
> 
>     On Fri, Mar 14, 2014 at 11:09 AM, Federico Vitali <fede.vitali@gmail.com <mailto:fede.vitali@gmail.com>> wrote:
>     > Thank you Nicholas and Gary! I'm quite experienced in linux embedded
>     > developement, but I'm new to yocto / openembedded.
>     > Nicolas, can you please explain me how to use my sources separate from OE
>     > build dir tree and still using oe built system?
>     > Do I have to edit the sources directly in builddir/tmp/work/etcetera or can
>     > I keep it separate?
> 
>     Please have a look at
> 
>     http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-externalsrc
>     http://www.yoctoproject.org/docs/1.5.1/dev-manual/dev-manual.html#building-software-from-an-external-source
> 
>     let us know if you have additional questions
> 
> 

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

