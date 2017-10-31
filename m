Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C650E00CC2; Tue, 31 Oct 2017 04:27:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay1-3.pub.mailoutpod1-cph3.one.com
	(mailrelay1-3.pub.mailoutpod1-cph3.one.com [46.30.212.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 049FFE00C44
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 04:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding;
	bh=XphedX8U77FGC7YQW/qzJ3Q6wCsEAY98hm5H6D9dm4w=;
	b=QPhXC3GAeKk0drd6XUFgehbU72uOc3tVVaP7k2l47HtL5DTDMSvtE6wc1uYB9CFCFhTLqsT9l8cJe
	iVRCGT0eIlYcLUECRV1F+dkNqFkTNyB4692brrKh+BOty5+n8JPUKSH0qRhMutfrVXbsmR1vOlb8lx
	jIidCpwGDVVFdYp4=
X-HalOne-Cookie: f67dc966d61f85e531508d7e0ca83ddb679905b5
X-HalOne-ID: 87413825-be2e-11e7-b1f8-d0431ea8a283
Received: from [192.168.178.20] (unknown [89.12.123.142])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 87413825-be2e-11e7-b1f8-d0431ea8a283;
	Tue, 31 Oct 2017 11:27:50 +0000 (UTC)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <481c8b41-8497-ac4d-eaa7-d06291b41845@embexus.com>
Date: Tue, 31 Oct 2017 12:27:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: Bitwise Operations in BBClass
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
X-List-Received-Date: Tue, 31 Oct 2017 11:27:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,

I'm trying to get a bitwise operation working in a bitbake bblcass 
function but no luck so far :

my_function() {

     SZ="`wc -c < ${1}`"

     ALIGN_SZ=$(((${SZ} + 0x1000 - 1) & ~ (0x1000 - 1)))

     .......

}

Bitbake complains with :

ERROR: ExpansionError during parsing 
/opt/Projects/Yocto/meta-somelayer/recipes-kernel/linux/linux-imx_4.1.15.bb: 
Failure expanding variable my_function: NotImplementedError: $((


Any suggestions how to tackle this problem ?

Thank you !

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


