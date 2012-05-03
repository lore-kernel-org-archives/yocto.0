Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51694E00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 12:07:12 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E69EEF81269; Thu,  3 May 2012 13:07:10 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B3EE7F81268;
	Thu,  3 May 2012 13:07:06 -0600 (MDT)
Message-ID: <4FA2D75A.3040504@mlbassoc.com>
Date: Thu, 03 May 2012 13:07:06 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <880CAB78-91DC-46B5-A4BB-00D33FFA9624@gmail.com>
	<11827908.GWIN234cRG@helios> <4FA2A6A5.6030807@mlbassoc.com>
	<27A92832-EECC-4D6B-A77A-834E20FB4C75@gmail.com>
In-Reply-To: <27A92832-EECC-4D6B-A77A-834E20FB4C75@gmail.com>
Subject: Re: Build error: Could not inherit file classes/systemd.bbclass
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
X-List-Received-Date: Thu, 03 May 2012 19:07:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-03 12:22, Elvis Dowson wrote:
> Hi,
>
> On May 3, 2012, at 5:39 PM, Gary Thomas wrote:
>
>> On 2012-05-03 07:21, Paul Eggleton wrote:
>> I saw this checkin yesterday on meta-ti:
>> Module: meta-ti
>> Branch: refs/tags/v2012.05-yocto1.2
>> Tag: ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c
>> URL: http://arago-project.org/git/meta-ti.git/?a=tag;h=ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c
>>
>> Tagger: Denys Dmytriyenko <denys@ti.com <mailto:denys@ti.com>>
>> Date: Wed May 2 03:41:43 2012 -0400
>>
>> 2012.05 release, compatible with Yocto Project 1.2 Denzil
>>
>> So it looks like it should be close at least :-) I don't know how the
>> meta-ti repo on yoctoproject.org <http://yoctoproject.org> tracks the arago-project one...
>
> The meta-ti repo on yoctoproject.org <http://yoctoproject.org> tracks the arago-project one closely.
>
> The following bblayers.conf configuration worked
>
> BBFILES ?= ""
> BBLAYERS ?= " \
> /tool/yocto/poky/meta \
> /tool/yocto/poky/meta-yocto \
> /tool/yocto/meta-openembedded/meta-oe \
> /tool/yocto/meta-gumstix \
> /tool/yocto/meta-ti \
> /tool/yocto/meta-xilinx \
> "

IMO, you should be able to use meta-ti *without* meta-oe (I do anyway)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

