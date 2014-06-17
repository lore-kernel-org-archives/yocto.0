Return-Path: <bds@bsmucker.eu.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F82DE00C0A; Tue, 17 Jun 2014 08:42:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.86.168.183 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mxout-08.mxes.net (mxout-08.mxes.net [216.86.168.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70E4EE00AFD
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 08:42:00 -0700 (PDT)
Received: from [192.168.0.11] (unknown [50.52.53.248])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id BAF0B50A84
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 11:41:59 -0400 (EDT)
Message-ID: <53A061C1.9040906@bsmucker.eu.org>
Date: Tue, 17 Jun 2014 08:41:53 -0700
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>
	<2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>
Subject: How to copy recipe and have different target names
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
X-List-Received-Date: Tue, 17 Jun 2014 15:42:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I would like to have yocto generate two copies of busybox, one 
statically-linked and one dynamically linked. So I try to make a copy of 
the busybox recipe and give it a new name like busybox-s_xxxxx.bb

But my knowlege of yocto comes up short and I get lots of errors.

Is there a way to do this cleanly?  Or should I be trying to do a 
different approach?

Thanks,

Brian

