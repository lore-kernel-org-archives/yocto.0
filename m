Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 641F3E009E7; Fri,  1 Nov 2019 16:31:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAE44E0097D
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 16:31:04 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Nov 2019 16:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,257,1569308400"; d="scan'208";a="231401657"
Received: from koernerm-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.41.216])
	by fmsmga002.fm.intel.com with ESMTP; 01 Nov 2019 16:31:02 -0700
To: =?UTF-8?Q?Alan_Martinovi=c4=87?= <alan.martinovic@gmail.com>
References: <CAHTPtPFJqQnPrH3WwKetfU8GN3YD6okYK=R-HyMPzQ9Ym44JTA@mail.gmail.com>
	<313f9bdb-d016-5701-00cf-8f3dccbf211d@intel.com>
	<CAHTPtPGqQCu7XY3KaYZGojtfRHdWxi-LFh9noPSGBiNrk9yu8w@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <e57141d2-28fd-d2d3-b6c2-501a31b87fc6@intel.com>
Date: Fri, 1 Nov 2019 23:31:01 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAHTPtPGqQCu7XY3KaYZGojtfRHdWxi-LFh9noPSGBiNrk9yu8w@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Debugging custom python code in recipes
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
X-List-Received-Date: Fri, 01 Nov 2019 23:31:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 01/11/2019 21:30, Alan Martinović wrote:
> Cool, thanks.
> 
> This one seems to be the most up to date from the python debugger wrappers:
> https://github.com/ionelmc/python-remote-pdb

Entirely worth writing a proper class and pushing a layer somewhere.

> The `shell_wait()` in your bbclass is related to the pdb() functionality?

No, it's just a way of making shell tasks pause for inspecting the state 
of the build tree during a task.  I was debugging some nasty packaging 
failures...

Ross

