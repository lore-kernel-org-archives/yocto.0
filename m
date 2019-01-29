Return-Path: <kristupas.savickas@teltonika.lt>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83EA5E00CE2; Mon, 28 Jan 2019 23:09:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [92.61.46.25 listed in list.dnswl.org]
Received: from mail.teltonika.lt (mail.teltonika.lt [92.61.46.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 194CDE006F1
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 23:09:11 -0800 (PST)
Received: from [192.168.90.159] (88-119-152-93.static.zebra.lt [88.119.152.93])
	by mail.teltonika.lt (Postfix) with ESMTPSA id 71CDA2460632
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 09:09:10 +0200 (EET)
To: yocto@yoctoproject.org
From: Kristupas Savickas <kristupas.savickas@teltonika.lt>
Message-ID: <64da2270-974e-564f-a4a9-69ecb8611f3a@teltonika.lt>
Date: Tue, 29 Jan 2019 09:09:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
Subject: Triggering rebuild on a recipe when MACHINE changes
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
X-List-Received-Date: Tue, 29 Jan 2019 07:09:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

I have a few recipes that should rebuild when value of MACHINE variable 
changes. How can this be accomplished? I tried using do_compile[vardeps] 
+= "MACHINE", but this didn't seem to have any affect.

-- 
Pagarbiai,
Linux programuotojas
Kristupas Savickas
+370 633 36795


