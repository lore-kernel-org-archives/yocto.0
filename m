Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10DDCE00D6C; Sun, 17 Dec 2017 02:32:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.30.212.12 listed in list.dnswl.org]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay3-3.pub.mailoutpod1-cph3.one.com
	(mailrelay3-3.pub.mailoutpod1-cph3.one.com [46.30.212.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A1FCE00AB0
	for <yocto@yoctoproject.org>; Sun, 17 Dec 2017 02:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=HnkNdiqk/BiWWK6RjkgxHH8eT8ALGH+lTMwHfCRphCA=;
	b=ak2r8HWRlyXHVuUHNVpE2+jpI4rS3dc3TjnUD7Wwtm8MdWMCO9ymeeTWXFw2mKrwiCVq+cKj4A/Kz
	Z48OHboXmFgpq4rD41pDzqL74+13iSDmTe37NhPfDz0Nj0WEAjQdQh8Iai6CWyxJn7+Nuv6Vz0CXAz
	5JZQFStTutj/FOKk=
X-HalOne-Cookie: 3cefceeadcdb000b18c7b35487521ba0208122f5
X-HalOne-ID: 847cb38b-e315-11e7-ab98-d0431ea8bb03
Received: from [192.168.1.72] (unknown [145.236.64.43])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 847cb38b-e315-11e7-ab98-d0431ea8bb03;
	Sun, 17 Dec 2017 10:32:01 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAJ2oMhLFidrcPag+5rHwMfXDuhCdB-hoQOedPngDjbhSJDWt6Q@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <2a0f5822-253c-ef24-474a-f60cdfbf0e5c@embexus.com>
Date: Sun, 17 Dec 2017 11:32:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAJ2oMhLFidrcPag+5rHwMfXDuhCdB-hoQOedPngDjbhSJDWt6Q@mail.gmail.com>
Subject: Re: disable x11 totally
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
X-List-Received-Date: Sun, 17 Dec 2017 10:32:06 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

you can disable it by adding to your local.conf:

DISTRO_FEATURES_remove = "x11"


On 17.12.2017 07:47, Ran Shalit wrote:
> Hello,
>
>   I use fb dsitro, and I  was surprised that we still get xterm in hdmi
> output. How can I disable it ?
>
> Regards,
> Ran

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com
VAT No.  : DE313902634


