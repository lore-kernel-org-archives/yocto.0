Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B396E008FB; Thu, 20 Nov 2014 04:04:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2E9AE0087D
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 04:04:38 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XrQTT-0005tn-Ay
	for yocto@yoctoproject.org; Thu, 20 Nov 2014 13:04:35 +0100
Received: from ppp005054121147.access.hol.gr ([5.54.121.147])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 13:04:35 +0100
Received: from gmane by ppp005054121147.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 13:04:35 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 20 Nov 2014 14:04:20 +0200
Message-ID: <546DD8C4.6010800@reliableembeddedsystems.com>
References: <546BB9EF.4040807@balister.org>	<CAJTo0LaKHeK+hL_s9z-pPT6dnzCR5mw4MgOkg4Zch=S=dWWGMA@mail.gmail.com>	<20141118230324.GA2477@jama>
	<546CB505.2070807@balister.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp005054121147.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
In-Reply-To: <546CB505.2070807@balister.org>
Cc: Yocto Project <public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
Subject: Re: Layer model doomed, unless we all work together
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
X-List-Received-Date: Thu, 20 Nov 2014 12:04:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 11/19/2014 05:19 PM, Philip Balister wrote:
> 
> http://layers.openembedded.org/layerindex/branch/master/duplicates/?l=91&l=123&l=30&l=147&l=168&l=148&l=31&l=65&l=66&l=32&l=124&l=164&l=67&l=149&l=77&l=101&l=118&l=33&l=3&l=34&l=142&l=169&l=35&l=137&l=171&l=139&l=108&l=162&l=81&l=82&l=95&l=125&l=145&l=146&l=114&l=4&l=36&l=68&l=140&l=83&l=132&l=5&l=154&l=120&l=84&l=6&l=93&l=112&l=7&l=37&l=167&l=38&l=8&l=98&l=39&l=165&l=40&l=105&l=69&l=9&l=10&l=110&l=107&l=11&l=12&l=13&l=14&l=41&l=15&l=99&l=151&l=170&l=85&l=42&l=43&l=113&l=159&l=16&l=78&l=92&l=103&l=157&l=97&l=119&l=70&l=152&l=153&l=71&l=126&l=115&l=136&l=44&l=45&l=163&l=17&l=102&l=150&l=46&l=18&l=19&l=79&l=2&l=138&l=174&l=20&l=21&l=128&l=129&l=130&l=131&l=47&l=104&l=48&l=135&l=22&l=173&l=121&l=23&l=160&l=49&l=106&l=24&l=50&l=117&l=143&l=87&l=51&l=52&l=25&l=133&l=116&l=53&l=72&l=122&l=73&l=54&l=55&l=172&l=88&l=109&l=56&l=57&l=100&l=26&l=155&l=90&l=58&l=144&l=59&l=60&l=74&l=61&l=75&l=158&l=134&l=62&l=111&l=27&l=76&l=28&l=141&l=1&l=64
> 
> Although that url might fail, you get the idea how to use the tool better :)

The url works for me;)

You just mention duplicated classes and recipes here, but there are more
things which should be cleaned up ;)

The worst thing about Yocto/poky/OE is, that people can do and do things
in many mysterious ways. Looking through various meta-layers you don't
see a "common coding style", which means that you either need to twist
your brain to understand what others did, or write things from scratch.

I guess we should first publish "best practices" and then try to enforce
them in a first step with maybe with something like "WARN_QA" and
"ERROR_QA" and/or extend oelint.

What do you think?

> 
> Philip
> 

Regards,

Robert


..."Stroustroup writes in the ARM: C programmers think that memory
allocation is too important to be left to the computer, Lisp programmers
think that memory allocation is too important to be left to the programmer."

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



