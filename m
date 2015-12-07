Return-Path: <Michael.Baumann@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99AD4E00AB9; Mon,  7 Dec 2015 07:03:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.142 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 355 seconds by postgrey-1.32 at yocto-www;
	Mon, 07 Dec 2015 07:03:46 PST
Received: from smtp2.vector.com (smtp2.vector.com [217.89.139.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ECE7E0079A
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 07:03:46 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.vector.com (Postfix) with ESMTP id 6A6F9852AF
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 15:57:50 +0100 (CET)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp2.vector.com ([127.0.0.1])
	by localhost (smtp2.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c_-vyeN_kdXZ for <yocto@yoctoproject.org>;
	Mon,  7 Dec 2015 15:57:49 +0100 (CET)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp2.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 15:57:49 +0100 (CET)
Received: from VISTREX3.vi.vector.int ([169.254.1.58]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0235.001;
	Mon, 7 Dec 2015 15:57:49 +0100
From: "Baumann, Michael" <Michael.Baumann@vector.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to use PREEMPT-RT Header in Yocto
Thread-Index: AdEw/l7WcTufbcFFQc6cjXljkAoi2Q==
Date: Mon, 7 Dec 2015 14:57:48 +0000
Message-ID: <D3B58608AFC8B244BA0ACD53B2AE6125859B5268@vistrex3.vi.vector.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.73.159]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: 3E51BCDE-1FEC-41DC-B51D-7BE464BF236E
MIME-Version: 1.0
Subject: How to use PREEMPT-RT Header in Yocto
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
X-List-Received-Date: Mon, 07 Dec 2015 15:03:51 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everbody,

I am trying to use the PREEMPT-RT patch, therefore I bitbake an image with =
the linux-yocto-rt 4.1.8 kernel.=20
The linux-yocto-rt kernel is built and runs in qemux86.=20
Now I try to build an application which uses the sched_setattr to set sched=
uling policy SCHED_DEADLINE from <sched.h>.=20
My Bitbake fails to build this application because of wrong header files e.=
g.=20

error: storage size of 'scheduling_attribut' isn't known
    struct sched_attr scheduling_attribut;
and
warning: implicit declaration of function 'sched_setattr'

in my created SDK (bitbake <image> -c populate_sdk) I have this /usr/includ=
e/sched.h file:  http://pastebin.com/gaXejv6j
I would have expect to find this file http://git.yoctoproject.org/cgit/cgit=
.cgi/linux-yocto-4.1/tree/include/linux/sched.h

How do I use the correct header files from PREEMPT-RT patch in my yocto bui=
ld environment?

Regards,
Michael

