Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 021EFE009EC; Mon, 20 Jul 2015 09:00:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B88A9E00A26
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 09:00:36 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 6FB34F811DC; Mon, 20 Jul 2015 10:00:36 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 23E37F811DB;
	Mon, 20 Jul 2015 10:00:36 -0600 (MDT)
Message-ID: <55AD1B36.1060202@mlbassoc.com>
Date: Mon, 20 Jul 2015 10:00:54 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1483998023.951321.1437407441203.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1483998023.951321.1437407441203.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: RaspberryPi 2
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
X-List-Received-Date: Mon, 20 Jul 2015 16:00:48 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-20 09:50, Edward Vidal wrote:
> Hi all,
> Gary Thomas recommended installing apt-get install libsdl1.2. which helped with
> The libsdl-native error.   Is MACHINE ??= "raspberrypi2" a valid machine.

Yes, I use it all the time.  Make the assignment immediate/firm though:
   MACHINE = "raspberrypi2"

> bitbake rpi-basic-image
> ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
>      Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
>
>      Please set a valid MACHINE in your local.conf or environment
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>   As always any and all help is appreciated.
> Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

