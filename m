Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42629E00543; Fri,  8 Aug 2014 09:57:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C0FBE0034B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 09:57:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s78GvQCO006467
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 8 Aug 2014 09:57:26 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Fri, 8 Aug 2014 09:57:26 -0700
Message-ID: <53E50175.1070703@windriver.com>
Date: Fri, 8 Aug 2014 11:57:25 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <53E4F720.4070608@mlbassoc.com>
In-Reply-To: <53E4F720.4070608@mlbassoc.com>
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
X-List-Received-Date: Fri, 08 Aug 2014 16:57:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/8/14, 11:13 AM, Gary Thomas wrote:
> I built an SDK (using populate_sdk) from the latest master.
> When I tried to install it, I got a ton of errors:
>     root@Zeus:~# /work/tmp/poky-eglibc-i686-arm-toolchain-1.6+snapshot-20140808.sh
>     Enter target directory for SDK (default: /opt/poky/1.6+snapshot-20140808):
>     You are about to install the SDK to "/opt/poky/1.6+snapshot-20140808". Proceed[Y/n]?
>     Extracting SDK...done
>     Setting it up...xargs: argument line too long
>     find: `file' terminated by signal 13
>     find: `file' terminated by signal 13
>     ...
>     find: `file' terminated by signal 13
>
> When I looked into this, it's happening in the relocate_sdk.sh script.
> Here are the relevant lines (via -D):
>     + /opt/poky/1.6+snapshot-20140808/relocate_sdk.sh
>     + '[' 0 -ne 0 ']'
>     + find /opt/poky/1.6+snapshot-20140808/sysroots/i686-pokysdk-linux -type f -exec file '{}' ';'
>     + grep ':.*\(ASCII\|script\|source\).*text'
>     + awk -F: '{printf "%s\0", $1}'
>     + xargs -0 sed -i -e s:/opt/poky/1.6+snapshot-20140808:/opt/poky/1.6+snapshot-20140808:g
>     xargs: argument line too long
>
> Since I'm not relocating the SDK, can I just ignore these errors?
> Wouldn't it be a bit safer to use 'xargs -n256 ...' to limit the
> command line length?
>
> Note: I'm not sure where the 'relocate_sdk.sh' script comes from
> or else I'd give it a go myself.

You will end up relocating the SDK, even if you use the default install path. 
Just the nature of how we had to implement the relocation.

And yes, I suspect the right answer is we need to set a limit on the xargs. 
(I'm kind of surprised that we didn't already have a limit set!)

--Mark

> Thanks
>


