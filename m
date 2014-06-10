Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB541E00BAE; Tue, 10 Jun 2014 11:22:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id F3F88E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:22:17 -0700 (PDT)
Received: (qmail 16494 invoked by uid 1003); 10 Jun 2014 18:22:16 -0000
Received: from unknown (HELO ?10.16.32.86?) (philip@opensdr.com@64.186.172.226)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	10 Jun 2014 18:22:16 -0000
Message-ID: <53974CD7.4020805@balister.org>
Date: Tue, 10 Jun 2014 11:22:15 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Marlon Smith <marlon.smith10@gmail.com>, yocto@yoctoproject.org
References: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
In-Reply-To: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
X-Enigmail-Version: 1.6
Subject: Re: Best way to "freeze" Yocto for production
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
X-List-Received-Date: Tue, 10 Jun 2014 18:22:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/10/2014 10:31 AM, Marlon Smith wrote:
> Hi everyone,
> 
> We've decided to use Yocto in our company's product!  And I have a
> question:
> 
> Since Yocto is updated pretty frequently, at some point we'll need to
> freeze everything and keep a permanent copy so that we can make small
> changes/bug fixes without having to worry about anything being changed
> outside of our control.  My current theory is that we'll do a bitbake -c
> fetchall, then zip up the entire Yocto directory and save it somewhere
> so we'll always have a static copy.  We'll place our application and
> custom bsp layer under a separate Git repository, and then to do a build
> we'll just combine everything together and run bitbake on the whole
> thing.
> 
> Is there a better or recommended way of doing this?

This is how I provide a stable base for people doing SDR work with OE.

https://github.com/balister/oe-gnuradio-manifest/tree/daisy

I'm sure you'll get several other suggestions also.

Pick what works best for your team.

Philip

> 
> Thanks again, and I'm excited to start working with Yocto!
> 
> Marlon
> 
> 
> 

