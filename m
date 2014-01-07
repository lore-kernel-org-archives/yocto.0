Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 040B7E006CA
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2014 12:01:34 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 963D3F8120D; Tue,  7 Jan 2014 13:01:34 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id DAF4EF8120B;
	Tue,  7 Jan 2014 13:01:33 -0700 (MST)
Message-ID: <52CC5D2C.60908@mlbassoc.com>
Date: Tue, 07 Jan 2014 13:01:48 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <52CC0D59.20008@mlbassoc.com>
In-Reply-To: <52CC0D59.20008@mlbassoc.com>
Subject: Re: build tools problem
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
X-List-Received-Date: Tue, 07 Jan 2014 20:01:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-01-07 07:21, Gary Thomas wrote:
> I'm using the meta-toolchain on a old system to get up to date
> git+python.  Sadly, the python is incomplete, in particular
> the 'htmlntitydefs' is missing.  This leads to an error when
> trying to build the chromium browser:
>
> | gyp: Error importing pymod_do_mainmodule (grit_info): No module named htmlentitydefs while loading dependencies of
> /home/local/p8301_test/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/chromium/29.0.1518.2-r0/chromium-29.0.1518.2/build/all.gyp while trying to load
> /home/local/p8301_test/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/chromium/29.0.1518.2-r0/chromium-29.0.1518.2/build/all.gyp
>
> How can I update the meta-toolchain to fix this problem?  This is
> the version I'm using:
>    http://downloads.yoctoproject.org/releases/yocto/yocto-1.5/toolchain/i686/

A related question is how can I force the chromium recipe to use the
python built/installed via python-native, since that version does have
all of the packages I need.  I tried just adding 'python-native' to the
chromium*.bb file, without any change.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

