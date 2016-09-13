Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B933E0045D; Tue, 13 Sep 2016 10:38:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1096E0043F
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 10:38:28 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bjrey-00014q-IK
	for yocto@yoctoproject.org; Tue, 13 Sep 2016 19:38:16 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Tue, 13 Sep 2016 20:38:09 +0300
Message-ID: <aef32f6b-410a-ff60-c939-d9d2023d7416@reliableembeddedsystems.com>
References: <CAO=ipHJmBkH7=h7PKZpm8vZT63-nftLhzm=FYmyUX21Ufb3a_Q@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
In-Reply-To: <CAO=ipHJmBkH7=h7PKZpm8vZT63-nftLhzm=FYmyUX21Ufb3a_Q@mail.gmail.com>
Subject: Re: Creating a core image with openCV
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
X-List-Received-Date: Tue, 13 Sep 2016 17:38:30 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I use multi-v7 kernel for the zedboard and create a custom packagegroup 
which contains openCV[1] which I add to the image.

[1] 
https://github.com/RobertBerger/meta-mainline/blob/jethro-training-v4.4.x/multi-v7-ml/recipes-core/packagegroups/packagegroup-opencv.bb

Regards,

Robert



