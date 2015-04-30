Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90DBCE007B6; Thu, 30 Apr 2015 15:21:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25EC8E0049A
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 15:21:06 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 6473BF811E1; Thu, 30 Apr 2015 16:21:06 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E4D49F811E1;
	Thu, 30 Apr 2015 16:21:05 -0600 (MDT)
Message-ID: <5542AAE9.5040001@mlbassoc.com>
Date: Thu, 30 Apr 2015 16:21:29 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5542706A.4070807@reliableembeddedsystems.com>	<554283F9.6030108@mlbassoc.com>	<554290FC.7040104@reliableembeddedsystems.com>	<CAJTo0LYFX96KpPv0_gYVt4i7-dukEpv38szbHO3MNbsNgHLhQQ@mail.gmail.com>
	<alpine.LFD.2.11.1504301723070.4064@localhost>
In-Reply-To: <alpine.LFD.2.11.1504301723070.4064@localhost>
Subject: Re: fido: funny ipk behavior
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
X-List-Received-Date: Thu, 30 Apr 2015 22:21:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-30 15:23, Robert P. J. Day wrote:
> On Thu, 30 Apr 2015, Burton, Ross wrote:
>
>>
>> On 30 April 2015 at 21:30, Robert Berger <gmane@reliableembeddedsystems.com> wrote:
>>        Nothing, since I forgot
>>
>>        EXTRA_IMAGE_FEATURES_append = " package-management"
>
>    um ... i think you only need refer to EXTRA_IMAGE_FEATURES; with
> that variable, i believe the "_append" part is superfluous.

Unless it's already being set somewhere else - this seems like
a safe way to make sure it gets set.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

