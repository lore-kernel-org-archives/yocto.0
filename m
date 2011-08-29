Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8665EE0124B
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2011 16:15:13 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B84041660199; Mon, 29 Aug 2011 17:15:12 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 347231660198;
	Mon, 29 Aug 2011 17:15:12 -0600 (MDT)
Message-ID: <4E5C1D80.3030607@mlbassoc.com>
Date: Mon, 29 Aug 2011 17:15:12 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <B5DD37CA-CC9E-47D1-867A-001473E601BA@keylevel.com>
In-Reply-To: <B5DD37CA-CC9E-47D1-867A-001473E601BA@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Best way to override EXTRA_OECONF
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
X-List-Received-Date: Mon, 29 Aug 2011 23:15:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-08-29 15:28, Chris Tapp wrote:
> I'm using libGL provided by mesa-xlib, which includes mesa-common.
>
> I also want to use libglu, but mesa-common says:
>
> EXTRA_OECONF = "--disable-glu \
>
> Is there a way I can override this without having to alter mesa-common.inc.
>
> Would a mesa-xlib.bbappend file with
>
> EXTRA_OECONF += "--enable-glu \
>
> do it?

Try something like this in your .bbappend file:
   EXTRA_OECONF := "${@oe_filter_out('--disable-glu', '${EXTRA_OECONF}', d)}"
   EXTRA_OECONF += "--enable-glu "

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

