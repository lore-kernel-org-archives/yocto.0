Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F46DE00825; Wed, 18 Feb 2015 08:41:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8FCBE00815
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 08:41:10 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 73DC9F811D8; Wed, 18 Feb 2015 09:41:09 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0E17DF811D7;
	Wed, 18 Feb 2015 09:41:09 -0700 (MST)
Message-ID: <54E4C0C0.9080701@mlbassoc.com>
Date: Wed, 18 Feb 2015 09:41:36 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>	<2971571.L9pmXd2OeC@peggleto-mobl5.ger.corp.intel.com>
	<CAP2S6e51cy-ZB9uq9-frL6WDB8EWyYmaCxd0y5uHHUD_+H-gxw@mail.gmail.com>
In-Reply-To: <CAP2S6e51cy-ZB9uq9-frL6WDB8EWyYmaCxd0y5uHHUD_+H-gxw@mail.gmail.com>
Subject: Re: How to switch kernel version without touching PREFERED VERSION
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
X-List-Received-Date: Wed, 18 Feb 2015 16:41:12 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-18 09:33, Valentin Le bescond wrote:
> Hi Paul, thank you.
>
> I tryed editing /meta-wolfson/conf/layer.conf or /build/conf/layer.conf, adding :
> PREFERED_VERSION_linux-raspberrypi = "3.10.%"
>
> but neither worked (still using 3.12)
>
> I endded up editing meta-raspberrypi's machine configuration and it works fine.
>
> It's good, but that means I will need to apply this change to every building machine I will use, or fork the meta-raspberrypi repo, witch is another story.
> I was hoping to keep everything inside my wolfson layer. too bad.
>
> Thanks again.

Is this the actual line you used?  It should be
   PREFERRED_VERSION_linux-raspberrypi = "3.10.%"

Note the spelling.

Also, if you want to make a change like this, use local.conf.
It really doesn't belong in any layer.conf

BTW, what's your reason for using an older kernel?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

