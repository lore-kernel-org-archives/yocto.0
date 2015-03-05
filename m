Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F82BE008CC; Thu,  5 Mar 2015 05:44:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8478E00718
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 05:44:17 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BD273F811E0; Thu,  5 Mar 2015 06:44:16 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 36196F811E0;
	Thu,  5 Mar 2015 06:44:16 -0700 (MST)
Message-ID: <54F85DB5.4000901@mlbassoc.com>
Date: Thu, 05 Mar 2015 06:44:21 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <54F798FD.4090200@mlbassoc.com>
	<CAJTo0Lb+8aUN8Ufgx-5W6zfs=V_CK=eY2DgeeGeGJUyz0u22gA@mail.gmail.com>
	<54F8492B.2010205@mlbassoc.com>
	<CAJTo0LbHPUc7Xrmx06o3w4Yaf7xynR1Pb33U75ONzvziC0Wuww@mail.gmail.com>
	<54F851F5.8070409@mlbassoc.com> <54F85B4C.4040403@mlbassoc.com>
	<CAP71Wjz4H2c971qGEZCgW2_pbP-Vs2rpQhiDNy_OWOhQqpz7MA@mail.gmail.com>
In-Reply-To: <CAP71Wjz4H2c971qGEZCgW2_pbP-Vs2rpQhiDNy_OWOhQqpz7MA@mail.gmail.com>
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
X-List-Received-Date: Thu, 05 Mar 2015 13:44:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-05 06:40, Nicolas Dechesne wrote:
> On Thu, Mar 5, 2015 at 2:34 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> Sadly, it doesn't build with the libav we have in OE-core :-(
>>
>> BTW, I measured the current used by my board (i.MX6Q)
>>    mplayer2 => 1.8A
>>    gst-play => 2.1A
>> Given that I normally run my board with a 2.0A wall brick,
>> it's no wonder that it dies when I run gst-play.
>
> ouch. that's quite a difference. when you play video this is no just
> about the decoders, but also how video is rendered. can you
> check/compare what's the overall pipeline, including any processing
> done on the video buffers (YUV) after the decoder (including up/down
> scaling, color conversion, ...).

How would I get that info (short of hacking the library)?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

