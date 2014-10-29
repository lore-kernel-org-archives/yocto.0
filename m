Return-Path: <Jian.Liu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E089BE0082F; Tue, 28 Oct 2014 18:52:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82166E007BA
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 18:52:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s9T1q1LG018858
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Oct 2014 18:52:01 -0700 (PDT)
Received: from [128.224.163.134] (128.224.163.134) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 28 Oct 2014 18:52:00 -0700
Message-ID: <545047CA.4040806@windriver.com>
Date: Wed, 29 Oct 2014 09:50:02 +0800
From: Liu Jian <jian.liu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>
References: <544E11CF.6010701@windriver.com>
	<CANyK_8eHtCb+a_a1fx16R3Nw0WVBU5mh6TFxSOwx06mRWdjuGA@mail.gmail.com>
	<CANyK_8e8u5V3m33GQ8yFjcBFrWMHu05Yup_qJjg8tu-qDW584g@mail.gmail.com>
	<544EF91D.1030306@windriver.com>
	<CANyK_8eRCTfCOEi80_kFhEEQcreEWmxy=9jVG_kw6XviZCLJFA@mail.gmail.com>
In-Reply-To: <CANyK_8eRCTfCOEi80_kFhEEQcreEWmxy=9jVG_kw6XviZCLJFA@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	opkg-devel <opkg-devel@googlegroups.com>
Subject: Re: [opkg-devel] Re: [OE-core] [PATCH] opkg-utils: update-alternatives fails for "[" and "[[" in busybox
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
X-List-Received-Date: Wed, 29 Oct 2014 01:52:12 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Paul,

Thanks very much for your help.
I will send the right one later.

Many thanks!
Jian

于 2014年10月28日 17:28, Paul Barker 写道:
> On 28 October 2014 02:02, Liu Jian <jian.liu@windriver.com> wrote:
>> Hi Paul,
>>
>> Thanks to your correction.
>>
>> Could you please tell me the mailing lists? I use this mailing lists
>> following the
>> guidance of
>> http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/tree/CONTRIBUTING.
>>
>> You told me that URL in your last mail. So should I follow the instruction
>> in it?
>>
>> Thanks very much!
>>
>> Jian
>>
> The mailing lists you sent the patch to are correct for opkg-utils.
> The patch you sent modified the opkg-utils recipe within OpenEmbedded
> rather than modifying opkg-utils itself. As opkg and opkg-utils are
> part of the Yocto Project, we prefer to fix problems in the upstream
> repositories rather than maintaining patches within OpenEmbedded.
>
> To submit a patch for opkg-utils, you need to clone from
> git://git.yoctoproject.org/opkg-utils, apply and commit your changes
> with a Sign-off as you have done for OpenEmbedded. So the patch will
> apply to the opkg-utils repository rather than the openembedded-core
> repository. Then send that patch to the mailing lists. I'd recommend
> sending via 'git send-email' rather than using your normal email
> client as that will ensure the patch doesn't get corrupted.
> Alternatively, for opkg and opkg-utils I accept patches attached to a
> regular email as a .patch file.
>
> Many thanks,
>

-- 
Jian Liu
Email: jian.liu@windriver.com
Office Phone: 86-10-84778539


