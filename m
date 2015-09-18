Return-Path: <danw@gnome.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98AC8E00BBF; Fri, 18 Sep 2015 13:49:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 361 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Sep 2015 13:49:27 PDT
Received: from mysterion.org (mysterion.org [66.228.43.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72035E0049B
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 13:49:27 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>, Sander Visser <sander@visser.se>
References: <1960827785.38335.1441967539008.JavaMail.zimbra@visser.se>
	<CAJTo0LZY5kfRN3Ed1tBicPSX3yZOYExcO=U6eiccv2AkO4pE+g@mail.gmail.com>
From: Dan Winship <danw@gnome.org>
Message-ID: <55FC7769.8030307@gnome.org>
Date: Fri, 18 Sep 2015 16:43:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZY5kfRN3Ed1tBicPSX3yZOYExcO=U6eiccv2AkO4pE+g@mail.gmail.com>
X-Mailman-Approved-At: Mon, 21 Sep 2015 07:42:20 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libsoup license
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
X-List-Received-Date: Fri, 18 Sep 2015 20:49:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/18/2015 04:07 PM, Burton, Ross wrote:
> To be honest libsoup isn't very clear
...
> Dan: exactly what license is libsoup under?  LGPL v2 precisely, or LGPL
> v2 or greater?

I don't know either. :-)

It was initially written at a time when Ximian was explicitly using the 
"v2 only" license on evolution (because reasons), so it's possible that 
libsoup was intended to be v2 only, since it was more-or-less part of 
evolution. But then, Novell relicensed evolution to v2+ later on, so 
presumably, if libsoup actually was v2-only at that point (which it may 
not have been), then surely Novell *intended* to also make libsoup v2+, 
despite not having said so. So... "maybe it used to be v2+" + "probably 
it was intended to have been changed to v2+ later if it wasn't already" 
+ "certainly everything written since 2007 was intended to be v2+" == 
"probably definitely it's v2+ now" ? That's totally how the law works, 
right?

-- Dan


