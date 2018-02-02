Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C230DE00DD0; Fri,  2 Feb 2018 04:30:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E93F4E00D41
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 04:30:58 -0800 (PST)
Received: from null ([172.19.249.7]) by mrelayeu.kundenserver.de (mreue007
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MdRup-1eQkIP43t5-00ITs9;
	Fri, 02 Feb 2018 13:30:54 +0100
Date: Fri, 2 Feb 2018 12:30:53 +0000 (GMT)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	yocto@yoctoproject.org
Message-ID: <142314981.52710.1517574653923@email.1and1.co.uk>
In-Reply-To: <f03dfbe4-9f35-611c-c268-61f8fd39f68b@linux.intel.com>
References: <05b001d39c1f$b673d4c0$235b7e40$@ln-systems.com>
	<f03dfbe4-9f35-611c-c268-61f8fd39f68b@linux.intel.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev21
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:QIR/WDMWpewkRQj1xP5gBcql4PATugzmjZVut9HMOWHuaS9wMcV
	FKsfuNx9KkZBZTYMgjlAQd3dbUR6IZxkn6HoeRyBHY+yacE6M7PWrbV7+W6GphMe6L1dqud
	xaxLKzTJmPzEiY7OBAe25CBrKHNWbmzmiy5/+8i7TCB1HsJ1hKyhxfK5fFLphocNsUFKcvB
	972wqRClBQpTSCFGnePZw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:krTRNJW2K9Q=:6ukszLSkV5G3SipY/RvG4h
	mFcnvpzWQLzdcfug9N5j+oAQ6TD3ifa3sj1fllmm25+/X5SHcnomZWs4oEFaU/gEqzlAhh2Sj
	cq/CCasJautu5uEQEaWUFatujFkvhbmmhPdPkgsliFYwD6nMWoyU0N6IkszHKPJIJPsg4WuKW
	HBVqPfdZxqNa3UOu6Ce6EUtEq1ITFJbi8mZEa1svKIGPrGBoyFeDbyTmtBcV1TTfkXY+0ZsEK
	28c73T/C/wbjI14pf0PNk+/YbGPsoWRu3wcaxOLqiA2n+uTgAE7kFLfbRNlsB/5z/9VCOgBfA
	2lgmKNu7Rf100Cv55r5PD/WvK5YMAOP3LldN/w0v2fjt5VVB8cuLhL/mTo9CPNuUgYTk1BS7Q
	XC10PNRvQ3/RzHdmURtdumGK28ThQq30UFSYuAy0Gf6cNRTColNTbLeB6/xJFEuTHE+iaYcJu
	7mzQznuXSqztQ8MCDcgIqGqnPl2CZd6Udg0I6twMt+7bzjjbVw3ikldp9GdN5n8XwNKuN6YOj
	VXUHfNp4ZSo3IjNY87gSBLihXgu0LK0QtkKe1CwgL/pbwCt1eUKMmbEUUiVCY6p7q+NY37RTj
	M+s8npvbGM1x1p6gb5ZA0uW/8j5TclhzvLtnsW5upjcep4r8ELpZP38hfzZgLuWMowz4fQQhM
	ovXBJBerx6G2HAeoTGKPC3IbQ0kyzsNNz10wmxYNfMoMlclGbI1RZ2k/m1PN2dc53GguXSNhS
	JGPLSOm+syIsyfWNTbyQlhPMi9zrIiU0YsRjXsIj17Nkpoxiks7rjzedBCA=
Subject: Re: Getting a recipe's files from within an image recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Feb 2018 12:30:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 02 February 2018 at 12:24 Alexander Kanavin wrote:
> 
> 
> On 02/02/2018 02:16 PM, colin.helliwell@ln-systems.com wrote:
> > I have an app which has a config file, and I'd like my two images
> > (production and dev) to have different configs. Obviously it'd be neater to
> > keep the two config files within the recipe's directory structure.
> > I guess I can't do this in the app's recipe since it has no concept of what
> > image it might end up in. So I could have the the app's recipe deploy one of
> > the configs by default, and use a step in the 'other' image recipe to
> > overwrite it.
> > But is there a way to tell the image recipe where the app's workdir/srcdir
> > is? Something like ${WORKDIR}_MyRecipe
> > Or am I just going to have to hard-code the path in?
> 
> Maybe the easiest is to have two separate recipes for the two versions 
> of config and have images pull in one or the other?
> 
> Alex

Thanks Alex. I half-had that thought too, but was hoping to do it with the one 'src checkout' of the whole app rather than extra two. Not that that really matters, and it seems it may be the neatest and most robust solution.

