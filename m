Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D694E004E4
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 14:07:32 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BCD3F1660321; Mon,  3 Oct 2011 15:07:28 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D26F516601F4;
	Mon,  3 Oct 2011 15:07:27 -0600 (MDT)
Message-ID: <4E8A240F.1040600@mlbassoc.com>
Date: Mon, 03 Oct 2011 15:07:27 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <4BD43A85686FC34D819098DB1C3999D9018A8A048F@orsmsx502.amr.corp.intel.com>
In-Reply-To: <4BD43A85686FC34D819098DB1C3999D9018A8A048F@orsmsx502.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: ISO image does not boot
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
X-List-Received-Date: Mon, 03 Oct 2011 21:07:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-03 14:56, Bodke, Kishore K wrote:
> Hi All ,
>
> I tried booting Yocto ISO image for Romley. It crashed .
>
> Attached is the screen shot .
>
> Does anybody booted the yocto Image on meta-intel, other than USB?

This is a long known problem - http://bugzilla.pokylinux.org/show_bug.cgi?id=686

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

