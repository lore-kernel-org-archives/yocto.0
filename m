Return-Path: <Michael.Baumann@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0E91E00D97; Mon,  8 Feb 2016 08:12:10 -0800 (PST)
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
Received: from smtp2.vector.com (smtp2.vector.com [217.89.139.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E5A2E0086B
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 08:12:07 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.vector.com (Postfix) with ESMTP id 492F4852C9
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 17:12:06 +0100 (CET)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp2.vector.com ([127.0.0.1])
	by localhost (smtp2.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-4yrM0a8G07 for <yocto@yoctoproject.org>;
	Mon,  8 Feb 2016 17:12:05 +0100 (CET)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp2.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 17:12:05 +0100 (CET)
Received: from VISTREX4.vi.vector.int ([169.254.2.171]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0279.002;
	Mon, 8 Feb 2016 17:12:05 +0100
From: "Baumann, Michael" <Michael.Baumann@vector.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to create a named_pipe in my image
Thread-Index: AdFiglSzvesxSbrsQM6AJUZMTpd6SQAB90Pw
Date: Mon, 8 Feb 2016 16:12:04 +0000
Message-ID: <D3B58608AFC8B244BA0ACD53B2AE612598EEF622@vistrex4.vi.vector.int>
References: <D3B58608AFC8B244BA0ACD53B2AE612598EEF5C6@vistrex4.vi.vector.int>
In-Reply-To: <D3B58608AFC8B244BA0ACD53B2AE612598EEF5C6@vistrex4.vi.vector.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.72.45]
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 23
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: 081ABA8B-6B32-4949-9D43-A409B057DB18
MIME-Version: 1.0
Subject: Re: how to create a named_pipe in my image
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
X-List-Received-Date: Mon, 08 Feb 2016 16:12:11 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

To make my question more precise:

mkfifo in the do_install() section works. I can see the named pipe in build=
/tmp-glibc/work/*/*/*/ but my bitbake hangs in the  do_package_write_ipk an=
d do_package_qa tasks.
Possibly it's because named pipes cannot be packed into an archive? If yes,=
 how can I circumvent this?

Regards
Michael

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Baumann, Michael
>Sent: Monday, February 08, 2016 4:07 PM
>To: yocto@yoctoproject.org
>Subject: [yocto] how to create a named_pipe in my image
>
>Hi,
>
>I try to create a named pipe (fifo) for my target filesystem.
>I tried it in my <image>.bb file in the do_install() section with "mkfifo
><path_to_pipe_in_target_fs>"
>
>Any ideas gratefully received.
>
>Regards
>Michael
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

