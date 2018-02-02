Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39FF9E00DC3; Fri,  2 Feb 2018 02:16:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF146E00D6A
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 02:16:45 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Feb 2018 02:16:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,448,1511856000"; d="scan'208";a="14495667"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 02 Feb 2018 02:16:43 -0800
To: =?UTF-8?Q?Marek_S=c5=82omiany?= <marekslomiany@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAJCDnYZz0HLgoJUmZhis0n=Kh1Xy2Z06dAA=8ai5GvdH03Ob4w@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <a5e654bf-e8b9-c175-c97e-ba0caca93b44@linux.intel.com>
Date: Fri, 2 Feb 2018 12:16:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJCDnYZz0HLgoJUmZhis0n=Kh1Xy2Z06dAA=8ai5GvdH03Ob4w@mail.gmail.com>
Subject: Re: Remove nfs packages from image
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
X-List-Received-Date: Fri, 02 Feb 2018 10:16:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/02/2018 10:06 AM, Marek Słomiany wrote:
> I am using yocto rocko, with custom distro (based on poky), and custom 
> image inheriting core-image bbclass.
> I was asked to get rid of nfs-client and nfs-server (and generaly 
> nfs-anything) from our image. If I'm right it comes with core-image.bbclass.
> I have tried using IMAGE_INSTALL_remove, DISTRO_FEATURES_remove, 
> IMAGE_FEATURES_remove and few others in different places (like: image 
> recipe, build/conf/local.conf) and there was no outcome, the nfs 
> server/client were always there.
> Packages I was trying to point in those *_remove commands where "fns" 
> "nfs-utils" "nfs-server" "nfs-client" and "packagegroup-core-nfs".
> Could you please give me a hint how to get rid of those?

You can run bitbake -e <image> and check the output to see how the nfs 
package group gets pulled into the image. Generally, you need to make 
sure nfs-client and nfs-server are not in IMAGE_FEATURES, and define it 
at the source, rather than try to patch it after the fact via 
_remove-type hacks. Not sure why it doesn't work for you.

Alex

