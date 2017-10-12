Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 962D1E00C78; Thu, 12 Oct 2017 11:47:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay3-2.pub.mailoutpod1-cph3.one.com
	(mailrelay3-2.pub.mailoutpod1-cph3.one.com [46.30.212.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACAA7E00A9C
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 11:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=jR+bdtEbX/TjxmjG0X+3+Ix9d32xsB22plUNd46jgus=;
	b=GUTO7b7EGbO+6IDsRJt5AOzvUV8R8zweGiZHJenm95RQ80bXjz9QO37rtU45iaeW0nfrh5135zxq8
	ivSX38KO1BKJVcNNTaFg+GsYDzHumycBfOUGOee/zmgzsZhDqC2Bvm9SFQMYLwLjHrGfCtbxcRQw/Z
	vZ8/B0fKFftR6tag=
X-HalOne-Cookie: 68f9c7bd475255dcecd7d11f62ec04775e6bb220
X-HalOne-ID: d62c684e-af7d-11e7-9212-b82a72d06996
Received: from [192.168.178.20] (unknown [89.12.11.151])
	by smtpfilter3.public.one.com (Halon) with ESMTPSA
	id d62c684e-af7d-11e7-9212-b82a72d06996;
	Thu, 12 Oct 2017 18:47:46 +0000 (UTC)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9de83734-99a4-580b-4306-746108cbdb9b@embexus.com>
	<18e01836-129a-0259-ff7a-1a7d21d1f380@rsi-elektrotechnik.de>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <35e6c4b3-e48a-f2b6-b595-f1c6868e9b2a@embexus.com>
Date: Thu, 12 Oct 2017 20:47:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <18e01836-129a-0259-ff7a-1a7d21d1f380@rsi-elektrotechnik.de>
Subject: Re: Yocto Image with custom directory layout
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
X-List-Received-Date: Thu, 12 Oct 2017 18:47:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,


On 12.10.2017 20:34, Josef Holzmayr wrote:
> Hi
>
> On 12.10.2017 19:07, Ayoub Zaki wrote:
>> Hi,
>> I would like to generate an image that contains a custom directories 
>> layout for expl:
>>
>>
>> foo/
>> ├── bar1
>> │   └── bar2
>> │       ├── config
>> │       └── data
>> └── work
>>      └── var
>>          └── lib
>>              ├── config
>>              └── data
>>
>> It should contains only those directories an nothing else, is there 
>> anyway to achieve that ? without using ROOTFS_POSTPROCESS_COMMAND.
>
> Should be possible if your image installs only your specific recipes 
> that populate those directories. Means: no packagegroup-core-boot, no 
> base-passwd, no.... -> then nothing should bring along other directories.
I tried that but it does pull other packages even if I set in my image:

IMAGE_FEATURES = ""
IMAGE_LINGUAS = ""
PACKAGE_INSTALL = "my-layout-recipe"

Regards

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com


