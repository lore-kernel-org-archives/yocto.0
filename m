Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B7AE0049B
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 02:47:09 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q959l2Hr015683;
	Fri, 5 Oct 2012 10:47:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13966-01; Fri,  5 Oct 2012 10:46:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q959krQF015655
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 5 Oct 2012 10:46:54 +0100
Message-ID: <1349430416.15658.10.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rudolf Streif <rudolf.streif@linux.com>
Date: Fri, 05 Oct 2012 10:46:56 +0100
In-Reply-To: <CA+gsK-qzq5dK4QwOq1kw1U8tNbhDt-UZsRha-_ZKu0Kw8AWFAg@mail.gmail.com>
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
	<CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
	<6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
	<CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
	<1A527469-CEF5-434E-8604-540899C8BA04@gamestop.com>
	<CA+gsK-qzq5dK4QwOq1kw1U8tNbhDt-UZsRha-_ZKu0Kw8AWFAg@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The BitBake equivalent of "Hello, World!"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Oct 2012 09:47:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-04 at 20:00 -0700, Rudolf Streif wrote:
> Disclaimer: I am no Bitbake expert. I just put this together by
> rummaging through the Bitbake code for a couple of minutes. I am
> reasonably confident that what I am saying below is rather accurate
> but the Bitbake experts know better.
> 
> 
> 
>         Indeed it is.  One of my first tasks will be to *remove* as
>         much as possible from this until the only thing it does is
>         print out "Hello, World!"  I'll be happy to share my results
>         if anyone is interested.

>
> You can just do a recipe and overwrite do_build() in it e.g.
> 
> 
> python do_build() {
>     bb.note("Hello World")
> }
>         
That would print:

NOTE: Hello World

and would probably only sent it to the task logfile.

bb.plain("Hello World")

would make it to the console though :)

[...]



>         1) Must a "task function" be a Python function?  Or will a
>         bash function do?
> 
> 
> Tasks must be Python functions. 
>         
> 
No, they can be shell functions too.

Cheers,

Richard



