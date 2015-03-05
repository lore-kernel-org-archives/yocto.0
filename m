Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62211E008CC; Thu,  5 Mar 2015 04:54:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AABEE00718
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 04:54:08 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 74279F811DE; Thu,  5 Mar 2015 05:54:08 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C1FA9F811DA;
	Thu,  5 Mar 2015 05:54:07 -0700 (MST)
Message-ID: <54F851F5.8070409@mlbassoc.com>
Date: Thu, 05 Mar 2015 05:54:13 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <54F798FD.4090200@mlbassoc.com>
	<CAJTo0Lb+8aUN8Ufgx-5W6zfs=V_CK=eY2DgeeGeGJUyz0u22gA@mail.gmail.com>
	<54F8492B.2010205@mlbassoc.com>
	<CAJTo0LbHPUc7Xrmx06o3w4Yaf7xynR1Pb33U75ONzvziC0Wuww@mail.gmail.com>
In-Reply-To: <CAJTo0LbHPUc7Xrmx06o3w4Yaf7xynR1Pb33U75ONzvziC0Wuww@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 05 Mar 2015 12:54:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-05 05:45, Burton, Ross wrote:
>
> On 5 March 2015 at 12:16, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     Using gstreamer1.0-libav seems to work, but it's really power hungry
>     (i.e can cause my board's power supply over current!).  Does this
>     plugin just hook into libav?  I've tried playing the same file using
>     mplayer (which does use libav) and it doesn't have the same power
>     issues.
>
>
> Yes, gstreamer1.0-libav is a wrapper around libav.  gstreamer1.0-libav does default to using an internal copy of libav instead of the system one, but that's a PACKAGECONFIG away
> from being changed - assuming that it builds - and might help.

Thanks, I'll give it a go.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

