Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AB58E008FF; Thu,  5 Mar 2015 05:49:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3766DE008DD
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 05:48:07 -0800 (PST)
Received: by oifu20 with SMTP id u20so11697837oif.11
	for <yocto@yoctoproject.org>; Thu, 05 Mar 2015 05:48:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=wStKqjpyMH49i7OQu/bd8yJVpbfX/XWm/scMhfZDb/w=;
	b=NwBmkylmUoLMAbIBYkL8fCltLRg0QQCsP7vV0X48FB8lV3xhSpoebwq3vO0dTfURgj
	1XXERW1KhYE6aKFCpvWTrjyuj866pJhWv3/x14AR4JJ+hq/ccUtpshzFGjxgnnJPPVjb
	TpfNn2c0z87bHLygcG8DJ7l2D5SO+VaIExHdzOrbPBTaEb9W01MBhonejm54pLQZuU66
	Xb07WwMyzpgCSHXtb/eQ6IUgfaWEUV2cZD7gZ3rKWfhPst8qevBszxyVcwyxWQgqL1sX
	sQeY48CO+Ug+fFtOxcKZ/rmUoeTzOYBYFBbI/Km6EGr5E142/EpbHMlj0aiAFN3p5qf7
	2pAA==
X-Gm-Message-State: ALoCoQk/51OtvUG+Fbrw51iPB81b+bXnYiZd8UxpkMLjjj4WY8lXpsatR/gt1pTbwhSeCTauzJqn
X-Received: by 10.202.197.204 with SMTP id v195mr6617171oif.54.1425563286748; 
	Thu, 05 Mar 2015 05:48:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.187.3 with HTTP; Thu, 5 Mar 2015 05:47:46 -0800 (PST)
In-Reply-To: <54F85DB5.4000901@mlbassoc.com>
References: <54F798FD.4090200@mlbassoc.com>
	<CAJTo0Lb+8aUN8Ufgx-5W6zfs=V_CK=eY2DgeeGeGJUyz0u22gA@mail.gmail.com>
	<54F8492B.2010205@mlbassoc.com>
	<CAJTo0LbHPUc7Xrmx06o3w4Yaf7xynR1Pb33U75ONzvziC0Wuww@mail.gmail.com>
	<54F851F5.8070409@mlbassoc.com> <54F85B4C.4040403@mlbassoc.com>
	<CAP71Wjz4H2c971qGEZCgW2_pbP-Vs2rpQhiDNy_OWOhQqpz7MA@mail.gmail.com>
	<54F85DB5.4000901@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 5 Mar 2015 14:47:46 +0100
Message-ID: <CAP71WjxLNWnEcGtbFDkm6af1MK5LkpPZhujcZ5mN49jRf=MkYg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: New gst-player
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
X-List-Received-Date: Thu, 05 Mar 2015 13:49:10 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 5, 2015 at 2:44 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2015-03-05 06:40, Nicolas Dechesne wrote:
>>
>> On Thu, Mar 5, 2015 at 2:34 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>> Sadly, it doesn't build with the libav we have in OE-core :-(
>>>
>>> BTW, I measured the current used by my board (i.MX6Q)
>>>    mplayer2 => 1.8A
>>>    gst-play => 2.1A
>>> Given that I normally run my board with a 2.0A wall brick,
>>> it's no wonder that it dies when I run gst-play.
>>
>>
>> ouch. that's quite a difference. when you play video this is no just
>> about the decoders, but also how video is rendered. can you
>> check/compare what's the overall pipeline, including any processing
>> done on the video buffers (YUV) after the decoder (including up/down
>> scaling, color conversion, ...).
>
>
> How would I get that info (short of hacking the library)?


for Gstreamer you can print/display the actual pipeline by doing:

export GST_DEBUG_DUMP_DOT_DIR=/tmp

and then run your standard Gstreamer application, it will create .dot
files in /tmp (you can use another folder), at each stage of the
pipeline, you can print/share the pipeline when transitioning from
PAUSE to PLAYING. The .dot file can be converted to a nice graph,
using graphviz tool (e.g. dot -Tpng -O xxx.dot)

that will give you all the information about the multimedia pipeline.

for mplayer, i don't know how to get the same info..

