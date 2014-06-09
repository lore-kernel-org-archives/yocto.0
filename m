Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ABDFE00BEC; Mon,  9 Jun 2014 16:11:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9BA47E00BE3
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 16:11:26 -0700 (PDT)
Received: (qmail 23739 invoked by uid 1003); 9 Jun 2014 23:11:25 -0000
Received: from unknown (HELO ?10.16.32.86?) (philip@opensdr.com@64.186.172.226)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	9 Jun 2014 23:11:25 -0000
Message-ID: <53963F1C.6040608@balister.org>
Date: Mon, 09 Jun 2014 16:11:24 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Marlon Smith <marlon.smith10@gmail.com>, yocto@yoctoproject.org
References: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
In-Reply-To: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
X-Enigmail-Version: 1.6
Subject: Re: Why use Yocto?
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
X-List-Received-Date: Mon, 09 Jun 2014 23:11:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/09/2014 03:52 PM, Marlon Smith wrote:
> Hi everyone,
> 
> I'm developing a product that will run on a custom i.MX6 board and I'm
> trying to decide whether to use Yocto or Ubuntu (there's a version of
> Ubuntu packaged for the Wandboard that will run on our board).  The
> board will run our own custom app, and we'll modify the Linux kernel to
> support our hardware.
> 
> Ubuntu seems like it would be ready to go - just put it on an SD card,
> boot the board, compile the app and create a new SD card image from the
> result to use for manufacturing.
> 
> Yocto seems like it would be easier to remove unneeded packages from,
> and easier to cross-compile the application for.  This means we could
> have a smaller SD card image in the end.
> 
> What are your thoughts on this?

How would you handle GPL compliance with Ubuntu? The Yocto project helps
you track all the sources (and their licenses), patches and build
scripts used to create your images. This data is critical for true GPL
compliance.

Philip


> 
> Thanks
> 
> Marlon
> 
> 
> 

