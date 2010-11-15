Return-Path: <ron@ronsgallery.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 264544C80B71
	for <yocto@yoctoproject.org>; Mon, 15 Nov 2010 09:16:50 -0600 (CST)
Received: by gwb20 with SMTP id 20so1325324gwb.35
	for <yocto@yoctoproject.org>; Mon, 15 Nov 2010 07:16:49 -0800 (PST)
Received: by 10.150.52.7 with SMTP id z7mr9538172ybz.352.1289834209538;
	Mon, 15 Nov 2010 07:16:49 -0800 (PST)
Received: from [192.168.1.61] (c-71-206-171-15.hsd1.va.comcast.net
	[71.206.171.15])
	by mx.google.com with ESMTPS id x21sm37485yhc.35.2010.11.15.07.16.44
	(version=SSLv3 cipher=RC4-MD5); Mon, 15 Nov 2010 07:16:45 -0800 (PST)
Message-ID: <4CE14EDD.8060503@ronsgallery.com>
Date: Mon, 15 Nov 2010 10:16:45 -0500
From: Ron Olson <ron@ronsgallery.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4CE042CA.1000809@fosstel.com>	<B08D4353009C0E4FB5FE1A4D0041EBC4BEA763@orsmsx001.amr.corp.intel.com>
	<4CE07943.9080204@fosstel.com>
In-Reply-To: <4CE07943.9080204@fosstel.com>
Subject: Re: bitbake problems when testing pre-built images
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
X-List-Received-Date: Mon, 15 Nov 2010 15:16:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I second the point about updating the instructions.  The whole point of 
the quick start instructions is to let one quickly get their feet on the 
ground.  When the documentation is in error, it costs people time and 
frustration.  I spent a couple hours working in the dark since this is 
new to me, until I finally found a work-around, when the exercise should 
have taken minutes.

My suggestion would be that you dry-run documentation such as this, 
using people that have *no* yocto or openembedded background.  After 
all, that's the target audience for a 'quick start' page.

Thanks,
Ron


> Thank you Jessica, it worked.
>
> May I suggest to update the wiki? As written, the instructions there 
> do not work, at least for the section "Using Pre-Built Binaries and 
> QEMU".
>
> Thanks again,
>


