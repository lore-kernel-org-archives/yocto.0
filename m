Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D286AE0092E; Mon,  2 Feb 2015 07:32:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC725E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 07:32:09 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 64638F811E0; Mon,  2 Feb 2015 08:32:08 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 402A7F811DB;
	Mon,  2 Feb 2015 08:32:07 -0700 (MST)
Message-ID: <54CF9877.8070607@mlbassoc.com>
Date: Mon, 02 Feb 2015 08:32:07 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7B6FE55CD594D7478CED8A39DF3BFC0A5E74429D@UT40SVCWEM001.atk.com>
	<54CF9646.8030103@mlbassoc.com>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E7442CE@UT40SVCWEM001.atk.com>
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7442CE@UT40SVCWEM001.atk.com>
Subject: Re: COMPATIBLE_HOST
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
X-List-Received-Date: Mon, 02 Feb 2015 15:32:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-02 08:28, Moore, Thomas (FtWorth) wrote:
> Gary,
>
> It seems like COMPATIBLE_MACHINE would have values such as genericx86, qemux86-64, or beaglebone. If that's true, I don't think I want to use COMPATIBLE_MACHINE as my recipes are only dependent on the architecture.

You can also use architecture here - basically anything that is an override can be used.
Similar to Ross' answer, I think this should work:
   COMPATIBLE_MACHINE = '(i.86|x86_64)'

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Gary Thomas
> Sent: Monday, February 02, 2015 9:23 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] COMPATIBLE_HOST
>
> On 2015-02-02 08:17, Moore, Thomas (FtWorth) wrote:
>> I have a binary recipe that is only compatible with x86 and x86_64 systems. I *think* specifying the COMPATIBLE_HOST in my recipe would be a good idea. However, I've been unable to find any documentation, or even a good description, of this variable. Can someone help me out here?
>
> I think you really need to use COMPATIBLE_MACHINE instead.
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

