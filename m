Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0E5EE00720; Wed,  2 Mar 2016 08:25:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 175FBE00443
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 08:25:05 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20160302162504120_0485
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 16:25:04 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [127.0.0.1] (port=37043 helo=localhost)
	by astoria.ccjclearline.com with esmtpa (Exim 4.80)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ab9bO-0001no-2W; Wed, 02 Mar 2016 11:26:18 -0500
Received: from 216.191.234.70 ([216.191.234.70]) by
	astoria.ccjclearline.com (Horde Framework) with HTTP; Wed, 02 Mar 2016
	11:26:17 -0500
Message-ID: <20160302112617.11376ovftcuo0zok@astoria.ccjclearline.com>
Date: Wed, 02 Mar 2016 11:26:17 -0500
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <20160302092250.86651hrgh71xijb4@astoria.ccjclearline.com>
In-Reply-To: <20160302092250.86651hrgh71xijb4@astoria.ccjclearline.com>
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.11)
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto@yoctoproject.org
Subject: Re: what's the recommended way to extend FILESOVERRIDES to add a powerpc CPU?
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
X-List-Received-Date: Wed, 02 Mar 2016 16:25:06 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Quoting "Robert P. J. Day" <rpjday@crashcourse.ca>:

>   currently working on a layer for building for three powerpc-based  
> target boards:
>
>   * mach1 (8260-based)
>   * mach2, mach3 (8360-based)
>
> i wanted to use FILESOVERRIDES to be able to distinguish between patches
> that were:
>
>   * machine-specific
>   * CPU-specific (8260 or 8360)
>   * common across all powerpc targets
>
> however, a quick check shows me that TRANSLATED_TARGET_ARCH contains
> only "powerpc", so that FILESOVERRIDES starts with:
>
>   "powerpc:machine-name:..."

   never mind, found what i was after:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-MACHINEOVERRIDES

rday



