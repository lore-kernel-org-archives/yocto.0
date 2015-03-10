Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB1DE00777; Tue, 10 Mar 2015 06:30:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B823E00754
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 06:30:04 -0700 (PDT)
Received: from [192.168.0.40] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 7FA1960004B9;
	Tue, 10 Mar 2015 15:30:02 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1425994202; bh=MJAjqaehV3QXHmxfANvtGLri06QQaNCexPzjgYnbZlU=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=LZFovlnJjnlrPIN8jx/cRbxQlIAnGNwLVLaGLJiSHZMbtP+yYIULfhKjmcpiTIcGs
	cS4AOPctN1n7qxNUOwDGleLGmI15rMzfea4kSG6ohp7UsE9cz5amFQKFMsudPX6/QJ
	hWihQ3mt7v/gaIyKAwiVGG1e0KJx5gRclbZCabS8=
Message-ID: <54FEF1DA.4010402@mail.bg>
Date: Tue, 10 Mar 2015 15:30:02 +0200
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.5.0
MIME-Version: 1.0
To: Francois Muller <francois@concept-embarque.fr>
References: <54FDF2EE.6070509@mail.bg>	
	<BD661189-005C-48AE-804D-31A33CB14583@gmail.com>
	<54FDFAFE.7020707@mail.bg>	
	<CAJTo0LY3N=QsDhweBuSU9UEPV0j9YU=O1gaX=Dw0rAtrf0cQJw@mail.gmail.com>
	<1425931669.5166.45.camel@concept-embarque.fr>
In-Reply-To: <1425931669.5166.45.camel@concept-embarque.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 2 images with single Bitbake recipe
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
X-List-Received-Date: Tue, 10 Mar 2015 13:30:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Francois,

On 03/09/2015 10:07 PM, Francois Muller wrote:
> Hi,
>
> You may have a look at meta-intel-iot-devkit
> <http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-devkit/> layer
> that does what you expect, I think.
> It produces:
>
>   * iot-devkit-image-quark.ext3
>   * core-image-minimal-initramfs-quark.cpio.gz
>   * bzImage
>
> in the same run.

Thanks, I'll check this out.

Regards,
Nikolay

