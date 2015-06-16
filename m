Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82510E00A4C; Tue, 16 Jun 2015 03:47:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC5D4E009E6
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 03:47:35 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 90962F811E7; Tue, 16 Jun 2015 04:47:35 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2F12CF811E3;
	Tue, 16 Jun 2015 04:47:35 -0600 (MDT)
Message-ID: <557FFED9.40205@mlbassoc.com>
Date: Tue, 16 Jun 2015 04:47:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <557ED498.50406@mlbassoc.com>
	<557F287D.6010406@mlbassoc.com>	<557F6B89.5010506@mlbassoc.com>
	<1510925.QRRL9HzgZN@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1510925.QRRL9HzgZN@peggleto-mobl.ger.corp.intel.com>
Subject: Re: sstate black hole?
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
X-List-Received-Date: Tue, 16 Jun 2015 10:47:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-06-16 02:37, Paul Eggleton wrote:
> On Monday 15 June 2015 18:19:21 Gary Thomas wrote:
>> I followed this down to an i.MX6 specific package which is
>> in DEPENDS:
>>     Variable PROVIDES value changed from
>>     '${PN}  virtual/wayland-egl virtual/libgal-x11 virtual/egl
>> virtual/libopenvg virtual/libg2d virtual/libgl virtual/libgles1
>> virtual/libgles2' to
>>     '${PN}  virtual/wayland-egl virtual/libgal-x11 virtual/egl
>> virtual/libopenvg virtual/libg2d virtual/libgl virtual/libgles1
>> virtual/libgles2 virtual/libgl virtual/libgles1 virtual/libgles2'
>>
>> Why aren't these considered the same (duplicate elements and/or order)
>> should not matter for PROVIDES.  Is there some way we could get bitbake
>> to collapse this and remove the duplicates?
>>
>> I found that this happens in
>> meta-fsl-arm:recipes-graphics/imx-gpu-viv/imx-gpu-viv.inc which contains
>> these lines:
>>     PROVIDES += "virtual/wayland-egl virtual/libgal-x11 virtual/egl
>> virtual/libopenvg virtual/libg2d"
>> PROVIDES_append_mx6q  = " virtual/libgl virtual/libgles1 virtual/libgles2"
>> PROVIDES_append_mx6dl  = " virtual/libgl virtual/libgles1 virtual/libgles2"
>> PROVIDES_append_mx6sx  = " virtual/libgl virtual/libgles1 virtual/libgles2"
>>
>> Some i.MX6 targets, nitrogen6x in particular, has overrides for both mx6q
>> and mx6dl, hence the duplication.
>>
>> Note: I removed the extra override (for testing) and found that
>> now the packages built by target A can be shared via sstate with
>> target B (at least the few I tested)
>
> I agree this would be nice, but for this to work we'd probably need to
> introduce a typing system within bitbake so that it can understand that this
> variable is a space-separated list. That is something we will probably do at
> some point for a variety of reasons, but I don't know that it's something we
> will get to soon.

Is there some way to solve this in the recipe itself?  I can see that
it needs to make sure that those values are provided for each of the
[sub]class of processor, but is there a way to write it so that they
are only added once?  Perhaps a little bit of Python magic?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

