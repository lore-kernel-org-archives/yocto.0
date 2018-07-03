Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E2F2E0109F; Tue,  3 Jul 2018 04:57:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5773DE010AD
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 04:57:16 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w63BvCiS026233
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 3 Jul 2018 12:57:14 +0100
Message-ID: <d5fddbeff192e143d7a67ff9415011b80f630745.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: techi eth <techieth@gmail.com>, Paulo Neves <ptsneves@gmail.com>
Date: Tue, 03 Jul 2018 12:57:12 +0100
In-Reply-To: <CAJw2sSApH8GgP=GGXJzhBRmqaw=QW-BaFWtxZcpxDWwfzkuDQg@mail.gmail.com>
References: <CAJw2sSBnJWCWV84FDV=L4JX6EQg80Z-HvMAOnkCwKXaZboZCuQ@mail.gmail.com>
	<CAJw2sSDJOKV-aXrUEjmHGvQ7NxPmnMKgJn3njY_hAEka4HGrQg@mail.gmail.com>
	<CAJO0J4i-ZRFBkrr5Lpr4uZ8DxFEmO-H0h_RCN6Ps+cFkaujPgQ@mail.gmail.com>
	<CAJw2sSApH8GgP=GGXJzhBRmqaw=QW-BaFWtxZcpxDWwfzkuDQg@mail.gmail.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Basehash value changed issue
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
X-List-Received-Date: Tue, 03 Jul 2018 11:57:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-07-02 at 17:37 +0530, techi eth wrote:
> I have not got success of building my first image so it happen's to
> me always. I also tried deleting tmp,cache folder & re-build again
> but problem persist.
> Is it something to do with timestamps ?
> 
> I do see below patch & applied changes but problem persist.
> http://cgit.openembedded.org/openembedded-core/commit/?id=4af13a4855c
> 74cea9cf6c168fd73165d7094bf93

do_rootfs[vardepsexclude] = "TIME DATE DATETIME"

The above means stop the do_rootfs *function* depending on those
values. It is not a task wide exclusion, its limited to that function
only. I suspect there is some other function in your build depending on
these values and you need:

<function_name>[vardepsexclude] = "TIME DATE DATETIME"

but which function is including these is something you'll need to
figure out.

Running bitbake-dumpsig on the do_rootfs sigdata file should be able to
tell you that.

Cheers,

Richard

