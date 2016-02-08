Return-Path: <Michael.Baumann@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EDB3E00D98; Mon,  8 Feb 2016 07:14:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_50,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.141 listed in list.dnswl.org]
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4871]
X-Greylist: delayed 475 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Feb 2016 07:14:48 PST
Received: from smtp1.vector.com (smtp1.vector.com [217.89.139.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3801BE00D95
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 07:14:48 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.vector.com (Postfix) with ESMTP id 418783730CB
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 16:06:50 +0100 (CET)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp1.vector.com ([127.0.0.1])
	by localhost (smtp1.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iXIfEvnivj-v for <yocto@yoctoproject.org>;
	Mon,  8 Feb 2016 16:06:49 +0100 (CET)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp1.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 16:06:49 +0100 (CET)
Received: from VISTREX4.vi.vector.int ([169.254.2.171]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0279.002;
	Mon, 8 Feb 2016 16:06:49 +0100
From: "Baumann, Michael" <Michael.Baumann@vector.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to create a named_pipe in my image
Thread-Index: AdFiglSzvesxSbrsQM6AJUZMTpd6SQ==
Date: Mon, 8 Feb 2016 15:06:48 +0000
Message-ID: <D3B58608AFC8B244BA0ACD53B2AE612598EEF5C6@vistrex4.vi.vector.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.72.45]
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 23
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: C7E34878-D956-49E8-A95B-4D7D111C6B0F
MIME-Version: 1.0
Subject: how to create a named_pipe in my image
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
X-List-Received-Date: Mon, 08 Feb 2016 15:14:49 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I try to create a named pipe (fifo) for my target filesystem.=20
I tried it in my <image>.bb file in the do_install() section with "mkfifo <=
path_to_pipe_in_target_fs>"

Any ideas gratefully received.

Regards=20
Michael

