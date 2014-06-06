Return-Path: <kaiu@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D33EEE00985; Fri,  6 Jun 2014 13:00:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kaiu[at]gmx.de)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEA56E0070F
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 13:00:30 -0700 (PDT)
Received: from mail-wg0-f47.google.com ([74.125.82.47]) by mail.gmx.com
	(mrgmx103) with ESMTPSA (Nemesis) id 0MFctN-1Wyn4j3Y7J-00EbNX for
	<yocto@yoctoproject.org>; Fri, 06 Jun 2014 22:00:28 +0200
Received: by mail-wg0-f47.google.com with SMTP id k14so2336005wgh.18
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 13:00:28 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.180.90.141 with SMTP id bw13mr10922260wib.23.1402084828552; 
	Fri, 06 Jun 2014 13:00:28 -0700 (PDT)
Received: by 10.194.25.65 with HTTP; Fri, 6 Jun 2014 13:00:28 -0700 (PDT)
Date: Fri, 6 Jun 2014 22:00:28 +0200
Message-ID: <CAAKMwiq_erB=aq=n4nAQSM39U5UtW6D7QoNNETwSGQBTNG+UNg@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Provags-ID: V03:K0:ZZfnvuk46CKlgtABRrp4xqsCCvSZDLD94RKA0tR7MZFV6bUBZAi
	GKbz4R3Jc41KkqVbn4iAn0pnwXaoLOHHLESYsfqDdcIKxKCT1LZhszrOUCBMXIbaVnGPHjg
	59J8+ySib/dFy0vziFxg9ZsnpzAlV3TV1VQKHSlN5ivu/TIe9YiAZzkslzQbWnHQU0T7Jv2
	x1w2y5m0Gi7l3Z1rl5NtQ==
Subject: Newbee - patching kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kaiu@gmx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jun 2014 20:00:33 -0000
Content-Type: multipart/alternative; boundary=f46d043be1a626a5af04fb305079

--f46d043be1a626a5af04fb305079
Content-Type: text/plain; charset=UTF-8

Hi Bruce,

Thanx for your answer.

So can I write a recipe which just contains the patches an extends an
kernel-recipe?


k.

>* Hi,
*>>* Is there a way to create a separate layer that adds kernel patches to an
*>* existing machine?
*>* Is there a example to learn from?
*
Patching the kernel works just like patching any package, but there is a
specific section in the manual (which perhaps you've already read):
http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#patching-the-kernel

It contains examples as well as explanations.

Bruce


>>* friendly regards
*>* Kai Ulrich
*>>

--f46d043be1a626a5af04fb305079
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><pre>Hi Bruce,<br><br></pre><pre>Thanx for your answer.<br></pre><pre>So can I write a recipe which just contains the patches an extends an kernel-recipe?</pre><pre><br>k.<br><br>&gt;<i> Hi,
</i>&gt;<i>
</i>&gt;<i> Is there a way to create a separate layer that adds kernel patches to an
</i>&gt;<i> existing machine?
</i>&gt;<i> Is there a example to learn from?
</i>
Patching the kernel works just like patching any package, but there is a
specific section in the manual (which perhaps you&#39;ve already read):

<a href="http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#patching-the-kernel">http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#patching-the-kernel</a>

It contains examples as well as explanations.

Bruce


&gt;<i>
</i>&gt;<i> friendly regards
</i>&gt;<i> Kai Ulrich
</i>&gt;<i>
</i>&gt;<i>
</i>
</pre></div>

--f46d043be1a626a5af04fb305079--
