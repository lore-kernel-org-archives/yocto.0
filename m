Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 458FAE00CE4; Wed, 23 Jan 2019 13:29:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC8C9E00C29
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 13:29:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0NLSo2V019544
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 23 Jan 2019 13:29:06 -0800
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 23 Jan 2019 13:28:47 -0800
To: "Smith, Virgil (US)" <Virgil.Smith@flir.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <b4bcd0b5992346bd8512a00ff6caf425@flir.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <f1a31b6f-4a7f-7a8b-d7dc-0c79c6e98529@windriver.com>
Date: Wed, 23 Jan 2019 16:28:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <b4bcd0b5992346bd8512a00ff6caf425@flir.com>
X-Originating-IP: [172.25.44.4]
Cc: Peter Balazovic <balazovic.peter@gmail.com>
Subject: Re: Yocto Project support for Numeric/Scientific Python
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
X-List-Received-Date: Wed, 23 Jan 2019 21:29:49 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 1/23/19 2:54 PM, Smith, Virgil (US) wrote:
> Is there a current or relatively recent recipe for SciPy and related 
> libraries?

People have worked on it at least once before but found some problems
with blas and atlas:
 
https://lists.yoctoproject.org/pipermail/yocto/2018-March/thread.html#40348

I'd say that there is interest.
I CCed Peter who started one of the threads
and BCCed 5 other people who seemed to be interested
since I didn't want to drag them all into the thread.


> 
> Further and more importantly, is having a maintainer for (recipes for) 
> those libraries a priority for the active members of the Project?
> (i.e. does interest rise above the general welcoming of participants to 
> periodically asking “Hey has anyone put out a call to fill this slot?” 
> if/when the slot is vacant).

It's always nice to have a maintainer but community members sometimes
keep recipes up to date even if they aren't direct users.

> 
> BTW: If this is the wrong list for this query, please let me know.

It a reasonable list for general discussion.
If you get to a point where patches are being submitted,
it should probably go to another list such as:

> 
> Why?  We are trying to gauge community interest before making long term 
> plans.
> 
> We would like to know if this horse is at all likely to have healthcare 
> before betting on it (without sacrificing other patients to obtain the 
> proper veterinary degree and keep up practice to treat it ourselves).
heh.

Thanks!
../Randy

> 
> NOTE:  I see from the RRS emails that Derek Straka is currently 
> maintaining the python-numpy recipe.  THANK YOU!
> 
> 
> ------------------------------------------------------------------------
> 
> Notice to recipient: This email is meant for only the intended recipient 
> of the transmission, and may be a communication privileged by law, 
> subject to export control restrictions or that otherwise contains 
> proprietary information. If you receive this email by mistake, please 
> notify us immediately by replying to this message and then destroy it 
> and do not review, disclose, copy or distribute it. Thank you in advance 
> for your cooperation.
> 


-- 
# Randy MacLeod
# Wind River Linux

