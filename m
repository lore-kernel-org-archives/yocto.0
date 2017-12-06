Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E9ADE00D67; Wed,  6 Dec 2017 10:26:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 325C6E00D61
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 10:26:52 -0800 (PST)
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Dec 2017 10:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,369,1508828400"; 
   d="scan'208";a="489043"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 06 Dec 2017 10:26:51 -0800
To: Paul Knopf <pauldotknopf@gmail.com>, yocto@yoctoproject.org
References: <CAKmWj-1VsGcpHSeLc9k57e8WxM8OF9R=0Avh9-sRURE0ptR+dg@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <aa403c18-20db-1887-f44a-21e552f4a693@linux.intel.com>
Date: Wed, 6 Dec 2017 20:27:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAKmWj-1VsGcpHSeLc9k57e8WxM8OF9R=0Avh9-sRURE0ptR+dg@mail.gmail.com>
Subject: Re: Allowing a local command to be executed in a recipe.
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
X-List-Received-Date: Wed, 06 Dec 2017 18:26:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/06/2017 07:55 PM, Paul Knopf wrote:
> I have a local utility that is manually installed on our dev/build machines.
> 
> How do I configure Yocto to let me use this local command? It is located 
> in /usr/local/bin.
> 
> Lets say the command is "my-command".


Write a recipe for the command, and include a "my-command-native" 
dependency into recipes that need it. Then no one has to manually 
install it.

(yes, yocto has a whitelist for host commands somewhere, but changing it 
is wrong)

Alex

