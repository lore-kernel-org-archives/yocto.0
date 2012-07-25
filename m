Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17923E00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 01:35:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jul 2012 01:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="197792856"
Received: from unknown (HELO helios.localnet) ([10.252.121.26])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2012 01:35:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Jul 2012 09:35:39 +0100
Message-ID: <1421990.rCJzEhUFFh@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB16174C3D@IRSMSX102.ger.corp.intel.com>
References: <CAE9DZURnyoa3MxRnq=ByFdcwjTyfGg1CRGW8r=kPTzYXfxTjaw@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB16174C3D@IRSMSX102.ger.corp.intel.com>
MIME-Version: 1.0
Subject: Re: hob issues
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
X-List-Received-Date: Wed, 25 Jul 2012 08:35:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 25 July 2012 06:25:22 Iorga, Cristian wrote:
> Dallas Clement wrote on Tuesday, July 24, 2012:
>> I've having some difficulty running hob on Debian "wheezy/sid".  When I
>> enter "hob" from the command line, an X-window opens, but none of the
>> controls have any text labels.  Also, none of the drop-down lists are
>> populated.
>> 
>> I also see this message on the command prompt:
>> 
>> Gtk-Message: Failed to load module "canberra-gtk-module"
>> 
>> I installed libcanberra-gtk3-0, which didn't make any difference.
>
> After installing libcanberra-gtk3-0, hob still gives the same error message
> while starting? (i.e. Gtk-Message: Failed to load module
> "canberra-gtk-module")

FYI, when I run Hob on my system I get this message as well but not the issue 
with no text being displayed, so I don't think it is related.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

