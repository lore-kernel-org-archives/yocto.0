Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75507E006C7; Tue, 13 Sep 2016 10:32:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E56D6E0043F
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 10:32:13 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bjrZ1-0004cu-Kw
	for yocto@yoctoproject.org; Tue, 13 Sep 2016 19:32:07 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Tue, 13 Sep 2016 20:31:50 +0300
Message-ID: <140dc7c6-d500-11a2-026f-54bdc5a7dc0c@reliableembeddedsystems.com>
References: <DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<1da73c18-5295-5524-4b80-05269193b9d8@windriver.com>
	<DB6PR0401MB26304EA907417D20A2333B56EEFF0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<8f11dcb6-91bc-c5c9-f79c-32e0fb684011@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
In-Reply-To: <8f11dcb6-91bc-c5c9-f79c-32e0fb684011@windriver.com>
Cc: "'yocto-EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org'"
	<public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
Subject: Re: Cortex-M4 build support
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
X-List-Received-Date: Tue, 13 Sep 2016 17:32:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Shouldn't it be possible to build a bare-metal Cortex-M4 compiler with 
the YP and build a small RTOS like FreeRTOS with this compiler?

Regards,

Robert


