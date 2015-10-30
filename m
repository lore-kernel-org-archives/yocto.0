Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE678E00B68; Fri, 30 Oct 2015 08:10:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f172.google.com (mail-yk0-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F0CE00B5A
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 08:10:52 -0700 (PDT)
Received: by ykft191 with SMTP id t191so78416161ykf.0
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 08:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=tKY60fwJ7n7LD4cYojExWjYJOjlRFpoD4+Z+CmnIIfY=;
	b=lgv9MeQxL3uUM0c0JYVqJHJSPB8PEjf2iHOfIIQZzZksDhr2C/n8acRyBdYNE1HLuo
	Fyax9Zh/j/uvz/+rY0MO4rHlI+z4W5Wbc7gyfhEKEka1nJCuwuOTA9JMe8EIvcCyZV09
	Xjh+IcPnBD8rElTV0i8Vd+0RD2xJrv7LI/QgEUCnRpWKBQeAF5RpQj4QseGMqWXgPt5+
	6DGxtcYVu/JYv6JiIu6BqMcshwjvuUiW9QXHJAllJHuwckRrW1/0fef+Cqu+sXHxm+t0
	pKlAfXUg1ozn1BodbQllmG5/kC6Ngnnv3Px0qPboGLMQfT6C9njR9nfWkjRH1Fknkf0g
	8zYw==
MIME-Version: 1.0
X-Received: by 10.129.108.80 with SMTP id h77mr6276829ywc.317.1446217851935;
	Fri, 30 Oct 2015 08:10:51 -0700 (PDT)
Received: by 10.129.155.134 with HTTP; Fri, 30 Oct 2015 08:10:51 -0700 (PDT)
In-Reply-To: <563364F1.1050901@windriver.com>
References: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
	<3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoFn5tQ7TO07WpqHi0sR7kOKpNsmi=_MOnsNf=4J47_7mJQ@mail.gmail.com>
	<CAF3SDA4v=-43Ege2hxyc-61RJXA8U2yqQKD2VQmy5D016W7USA@mail.gmail.com>
	<CAGMdoFnz_0sw1KDvH2Drx-k_qpF87SEmMtq7sNLXTNRJMcT9uw@mail.gmail.com>
	<56321AB5.1050108@windriver.com>
	<CAGMdoF=2QJd1DEH7f7p7sRcMP56vz_pGx8VFUOANWt+fiMShTQ@mail.gmail.com>
	<563364F1.1050901@windriver.com>
Date: Fri, 30 Oct 2015 13:10:51 -0200
Message-ID: <CAF3SDA7AKCpamRBD49jCZ7R7qo_ZxMbTJ4+nc7jd1HO7-QbmFw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel defconfig configuration
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
X-List-Received-Date: Fri, 30 Oct 2015 15:10:56 -0000
Content-Type: text/plain; charset=UTF-8

I saw that REMOTEPROC is selected by other *_REMOTEPROC config
options. It seems a driver to handle another process on same board,
right?
It seems also that other architetures select REMOTEPROC, so if you're
creating a new board with a remote processor I guess that you will
need to
create a remote processor driver and add CONFIG_YOURARCH_REMOTEPROC to
drivers/remoteproc/Kconfig, and make that selects REMOTEPROC as
OMAP_REMOTEPROC does
for example.


Best regards,

2015-10-30 10:39 GMT-02:00 Bruce Ashfield <bruce.ashfield@windriver.com>:
> On 15-10-29 03:06 PM, Edward Wingate wrote:
>>
>> On Thu, Oct 29, 2015 at 6:10 AM, Bruce Ashfield
>> <bruce.ashfield@windriver.com> wrote:
>>>
>>> That's the kernel's configuration subsystem at play, it still has to
>>> process the the defconfig (which was placed as .config before starting
>>> the kernel build). Invalid options are removed, others are selected
>>> by Kconfigs, etc. So what you end up with is the processed .config and
>>> your old one in .config.old.
>>
>>
>> Ah, OK, it's possible the option I wanted (CONFIG_REMOTEPROC) is not
>> available for my machine (imx6/wandboard) and so removed.  Where can I
>> look to see if a config option is valid for a particular
>> machine/architecture?
>
>
> I'm working on some patches that will show you that as part of the
> configuration audit task (there's potentially a library I can
> leverage) .. but for now, either looking at the Kconfig's or running
> menuconfig are the best (brute force) way to find what is missing.
>
> Bruce
>
>>
>> Thanks for the help.
>>
>



-- 
"Do or do not. There is no try"
  Yoda Master

