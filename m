Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4445E00543; Fri,  8 Aug 2014 10:10:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00, URI_HEX autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.1 URI_HEX URI: URI hostname has long hexadecimal
	sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B70C9E0034B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 10:10:50 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3D975F811FC; Fri,  8 Aug 2014 11:10:50 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9CBE7F811FB;
	Fri,  8 Aug 2014 11:10:49 -0600 (MDT)
Message-ID: <53E504B7.2030400@mlbassoc.com>
Date: Fri, 08 Aug 2014 11:11:19 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <53E4F720.4070608@mlbassoc.com> <53E50175.1070703@windriver.com>
In-Reply-To: <53E50175.1070703@windriver.com>
Subject: Re: Errors when installing SDK
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
X-List-Received-Date: Fri, 08 Aug 2014 17:10:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-08-08 10:57, Mark Hatle wrote:
> On 8/8/14, 11:13 AM, Gary Thomas wrote:
>> I built an SDK (using populate_sdk) from the latest master.
>> When I tried to install it, I got a ton of errors:
>>     root@Zeus:~# /work/tmp/poky-eglibc-i686-arm-toolchain-1.6+snapshot-20140808.sh
>>     Enter target directory for SDK (default: /opt/poky/1.6+snapshot-20140808):
>>     You are about to install the SDK to "/opt/poky/1.6+snapshot-20140808". Proceed[Y/n]?
>>     Extracting SDK...done
>>     Setting it up...xargs: argument line too long
>>     find: `file' terminated by signal 13
>>     find: `file' terminated by signal 13
>>     ...
>>     find: `file' terminated by signal 13
>>
>> When I looked into this, it's happening in the relocate_sdk.sh script.
>> Here are the relevant lines (via -D):
>>     + /opt/poky/1.6+snapshot-20140808/relocate_sdk.sh
>>     + '[' 0 -ne 0 ']'
>>     + find /opt/poky/1.6+snapshot-20140808/sysroots/i686-pokysdk-linux -type f -exec file '{}' ';'
>>     + grep ':.*\(ASCII\|script\|source\).*text'
>>     + awk -F: '{printf "%s\0", $1}'
>>     + xargs -0 sed -i -e s:/opt/poky/1.6+snapshot-20140808:/opt/poky/1.6+snapshot-20140808:g
>>     xargs: argument line too long
>>
>> Since I'm not relocating the SDK, can I just ignore these errors?
>> Wouldn't it be a bit safer to use 'xargs -n256 ...' to limit the
>> command line length?
>>
>> Note: I'm not sure where the 'relocate_sdk.sh' script comes from
>> or else I'd give it a go myself.
>
> You will end up relocating the SDK, even if you use the default install path. Just the nature of how we had to implement the relocation.
>
> And yes, I suspect the right answer is we need to set a limit on the xargs. (I'm kind of surprised that we didn't already have a limit set!)

If you can point me at where that file comes from (a simple
search didn't help), I'll give it a try and propose a patch.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

