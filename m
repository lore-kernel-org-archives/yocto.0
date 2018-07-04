Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7056E011B6; Wed,  4 Jul 2018 00:52:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C164AE011B6
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 00:52:04 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w647pxP1008441
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 4 Jul 2018 08:52:00 +0100
Message-ID: <b9d1bb59d864d8720b7d1398c36a5d6e6d262a20.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 04 Jul 2018 08:51:59 +0100
In-Reply-To: <AA9B40170ABA1047B45E714CB2B866B7068DE9A6@PGSMSX103.gar.corp.intel.com>
References: <1530582284-6467-1-git-send-email-aaron.chun.yew.chan@intel.com>
	,<bbf68c28f4d23fb85f282f59190fd898e93e87ef.camel@linuxfoundation.org>
	<AA9B40170ABA1047B45E714CB2B866B7068DE9A6@PGSMSX103.gar.corp.intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-ab-helper] utils.py: Resolved unicode data expansion
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
X-List-Received-Date: Wed, 04 Jul 2018 07:52:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Aaron,

On Wed, 2018-07-04 at 06:42 +0000, Chan, Aaron Chun Yew wrote:
> This morning I had the new autobuilder setup from scratch with the
> latest patch you just check out, thanks for that and rollout the fix
> below manually. Everything else is clean and I did what you asked me
> to.
> However this did not resolved the data expansion when called
> utils.getconfig("REPO_STASH_DIR, ourconfig), this applies when you
> invoke ourconfig["REPO_STASH_DIR"]. Both yields the same errors.
> We assume the  JSON dumps are properly handled in ourconfig[c] when
> we handles config[c] but that is not the case. I do see there is a
> growing issues as your strategy to use nested JSON, however 
> we wont be able to handle all of these conditions needed when nested
> JSON becomes complex. Anyway, i'll leave it you decide what will be
> best course of action.

I had another look at this as we shouldn't be seeing unicode items in
this in python3. I've realised that clobberdir is using python2. If you
change clobberdir to use python3 does this mean the unicode part of the
patch is no longer needed? I think that may be the real problem!

Cheers,

Richard

