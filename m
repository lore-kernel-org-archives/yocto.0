Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D5C0E00C69; Tue, 29 Sep 2015 13:51:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6393BE00957
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 13:51:27 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 312D2F811DA; Tue, 29 Sep 2015 14:51:27 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AF149F81188;
	Tue, 29 Sep 2015 14:51:26 -0600 (MDT)
To: yocto@yoctoproject.org
References: <167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40@EX2010-CO-02.AERO.BALL.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <560AF9DA.6080103@mlbassoc.com>
Date: Tue, 29 Sep 2015 14:51:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40@EX2010-CO-02.AERO.BALL.com>
Subject: Re: PSPLASH PPC Colors
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
X-List-Received-Date: Tue, 29 Sep 2015 20:51:34 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-29 14:26, Smith, Daniel W wrote:
> All,
>
> Has anyone else noticed that the splash screen colors are wrong on PPC?
>
> I installed a custom splash screen with modified colors.  It looks fine on qemuarm but on qemuppc the splash screen color are all wrong.   Whites and blacks are all yellow, blues
> are red etc.
>
> Is there an endianness issue with the way that psplash make-image-header.sh creates the splash screen when targeting PPC?  Any ideas on how to fix it.

I'm not sure how to fix it, but it would seem that if these
pixel values are set up on a [little-endian] PC, they might
well be wrong on a [big-endian] PowerPC.

Does this happen on qemuppc or only on real hardware?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

