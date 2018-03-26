Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81D90E00C76; Sun, 25 Mar 2018 23:25:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25494E008D2
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2018 23:25:31 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Mar 2018 23:25:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,363,1517904000"; d="scan'208";a="41219728"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.20.224])
	([10.221.20.224])
	by fmsmga001.fm.intel.com with ESMTP; 25 Mar 2018 23:25:29 -0700
To: "Tan, Raymond" <raymond.tan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <F0CA9E243F4F424B836EAC30E41BF4CF781DDA28@PGSMSX104.gar.corp.intel.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <0cfff1a0-ea55-9f7f-05cf-5ed491720bfd@intel.com>
Date: Mon, 26 Mar 2018 14:25:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <F0CA9E243F4F424B836EAC30E41BF4CF781DDA28@PGSMSX104.gar.corp.intel.com>
Subject: Re: [wic.qcow2] qemu-system-x86-64 booting qcow2 image stalls
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
X-List-Received-Date: Mon, 26 Mar 2018 06:25:32 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Raymond,

On 03/25/2018 11:23 PM, Tan, Raymond wrote:
> Dear All,
> 
>  
> 
> I’m building an image with meta-intel layer, and machine set to
> intel-corei7-64, with additional IMAGE_FSTYPES set to “wic.qcow2”.
> 
> Upon running the image with the following command, the boot stalls with
> “Booting from Hard Disk…”
> 
>  
> 
> qemu-system-x86_64 core-image-sato-sdk.wic.qcow2 –m 512
> 
>  
> 
> The hddimg has no issue booting with flashing to usb with mkefidisk.sh,
> but this qcow2 image didn’t even boot till EFI,

Did you try runqemu core-image-sato-sdk.wic.qcow2 ovmf?

Thanks,
Anuj

