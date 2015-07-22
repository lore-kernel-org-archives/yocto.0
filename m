Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83B31E009BE; Tue, 21 Jul 2015 17:18:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59C45E0096A
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 17:18:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8E5A1F811DB; Tue, 21 Jul 2015 18:18:31 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3D069F811DA;
	Tue, 21 Jul 2015 18:18:31 -0600 (MDT)
Message-ID: <55AEE157.3080408@mlbassoc.com>
Date: Tue, 21 Jul 2015 18:18:31 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <2002608397.24159.1437517860551.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <2002608397.24159.1437517860551.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: core-image-sato raspberrypi2
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
X-List-Received-Date: Wed, 22 Jul 2015 00:18:36 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-21 16:31, Edward Vidal wrote:
> Hi all,
> I created a rpi-basic-img for RaspberryPi 2 which was created and booted okay. I am using
> meta-yocto-bsp    = "fido:0f8d89ce66cfffccc9911d6c61470a585173b79d"
> meta-raspberrypi  = "master:7457bf182c8fd550ec877ecd786a3edd16e65495".
>
> Can the core-image-sato be created for the RaspBerry 2 B?
>
> First i tried bitbake core-image-sato which was getting errors.  Then I bitbake core-image-sato -c fetchall.
> NOTE: Tasks Summary: Attempted 626 tasks of which 626 didn't need to be rerun and all succeeded.
>
> Does this mean that all the depends have been downloaded?
>
> Now when I run  I am missing checking for EGL... no in libepoxy do I need another layer before building core-image-sato?

Exactly what is the error (cut & paste it in the reply)?
I just ran this with no errors...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

