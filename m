Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FE60E0142F
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 06:41:35 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 231D4F811EC; Tue, 29 May 2012 07:41:35 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9DCA2F811EB;
	Tue, 29 May 2012 07:41:33 -0600 (MDT)
Message-ID: <4FC4D20D.5060602@mlbassoc.com>
Date: Tue, 29 May 2012 07:41:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <BLU0-SMTP194504711819C3FD84E79DFB9050@phx.gbl>
	<4FC4CE49.4010300@linux.intel.com>
In-Reply-To: <4FC4CE49.4010300@linux.intel.com>
Subject: Re: How to use Software support layers such as "meta-browser" in a yocto image?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 May 2012 13:41:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-29 07:25, Mihai Lindner wrote:
> On 05/29/2012 04:07 PM, jack wrote:
>> Hello, all!
>> Who can tell me how could I use the /Software support layers /that provided by http://www.openembedded.org/wiki/LayerIndex into my own yocto image? For example, how could I use "meta-browser" during image building?
>> Thanks!

> Hello,
>
> Clone it into your ./poky/ directory, alongside the other meta directories in ./poky/, and reference it in ./build/conf/bblayers.conf file, BBLAYERS variable (after you sourced oe-init-build-env).
> Happy baking!
>

Note: layers can be anywhere, so there's no need to put it into
your "poky" tree.  Just specify the full path in your bblayers.conf

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

