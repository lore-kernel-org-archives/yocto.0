Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2261E0162F
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 06:41:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Oct 2013 06:41:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,522,1378882800"; d="scan'208";a="376648109"
Received: from unknown (HELO helios.localnet) ([10.252.121.12])
	by azsmga001.ch.intel.com with ESMTP; 18 Oct 2013 06:41:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Date: Fri, 18 Oct 2013 14:41:49 +0100
Message-ID: <3555616.QMPuVAba6x@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CABwVrCoYn7Yju7Mw4NHYzEkJQaBS5_p0ENeV4adMBpmoUA+C5Q@mail.gmail.com>
References: <CABwVrCoYn7Yju7Mw4NHYzEkJQaBS5_p0ENeV4adMBpmoUA+C5Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: external variable
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
X-List-Received-Date: Fri, 18 Oct 2013 13:41:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Friday 18 October 2013 15:19:57 jan alexandru vaduva wrote:
> Is there any way of defining a variable into a recipe and use it in another.
> I tried: export VAR="value" but when I tested it`s existence in devshell it
> did not exist(echo $VAR).

No, this is not possible. The only way you can share data between recipes like 
this is to write it into a file within the sysroot, or rely on it being 
specified for both recipes at the configuration level (although you've suggested 
the latter won't work for your situation).

Can you elaborate on what exactly you're trying to achieve?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

