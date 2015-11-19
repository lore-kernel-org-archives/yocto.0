Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A8B4E007AE; Thu, 19 Nov 2015 09:01:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 839F2E0049B
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 09:01:20 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7B6DDF811E5; Thu, 19 Nov 2015 10:01:20 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 29814F8119A;
	Thu, 19 Nov 2015 10:01:20 -0700 (MST)
To: yocto@yoctoproject.org
References: <564DFBEA.5070104@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <564E0070.3090708@mlbassoc.com>
Date: Thu, 19 Nov 2015 10:01:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <564DFBEA.5070104@mlbassoc.com>
Subject: Re: Query configuration
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
X-List-Received-Date: Thu, 19 Nov 2015 17:01:24 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-11-19 09:42, Gary Thomas wrote:
> I have a recipe that needs to make sure a global setting is
> in place (used by a different recipe).  How can I test for
> this variable/setting in my recipe and issue a warning/error
> if it is not?
>
> Thanks for any ideas
>

Never mind - it occurred to me to see if some other recipe had
such checks and I found some and was able to add this to my recipe:

# Make sure SPI will is enabled
python do_check_variables() {
     ENABLE_SPI_BUS = d.getVar('ENABLE_SPI_BUS', True)
     if ENABLE_SPI_BUS != '1':
        bb.fatal("PiFace module can't work without SPI support - Add ENABLE_SPI_BUS='1' to local.conf")
}
addtask check_variables before do_fetch

Not sure if this is the best way but it suffices.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

