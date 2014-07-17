Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A579E00777; Thu, 17 Jul 2014 05:46:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C13DFE006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 05:46:27 -0700 (PDT)
Received: (qmail 958 invoked by uid 1003); 17 Jul 2014 12:46:25 -0000
Received: from unknown (HELO ?192.168.1.122?)
	(philip@opensdr.com@71.171.49.245)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	17 Jul 2014 12:46:25 -0000
Message-ID: <53C7C5A0.60201@balister.org>
Date: Thu, 17 Jul 2014 08:46:24 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: maciej.borzecki@open-rnd.pl, yocto@yoctoproject.org
References: <1405599916.4781.2.camel@localhost.localdomain>
In-Reply-To: <1405599916.4781.2.camel@localhost.localdomain>
X-Enigmail-Version: 1.6
Subject: Re: wic status
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
X-List-Received-Date: Thu, 17 Jul 2014 12:46:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/17/2014 08:25 AM, Maciek Borzecki wrote:
> Hi,
> 
> There used to be an entry about wic in development manual back in 1.5.2:
> http://www.yoctoproject.org/docs/1.5.2/dev-manual/dev-manual.html

I'm not sure where the docs are, but people are responding to bug
reports about wic with patches :)

https://bugzilla.yoctoproject.org/show_bug.cgi?id=6513

Philip

> 
> This entry is gone in current documentation and there seems to be no
> mention of wic at all:
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
> 
> Does this mean that wic is deprecated? If so what is the current method
> of creating partitioned images?
> 
> I'm a bit confused as it seems meta-raspberrypi keeps maitaining
> sdcard_image-rpi.bbclass, Freescale has their image_types_fsl.bbclass.
> In meta-ti, there was this commit:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/commit/?id=2b524321a25c35c5f987b8331e41b49d3b2e2d2b that effectively removed sdclass_image.bbclass, indicating that wic is the new way.
> 

