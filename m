Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29706E00BC0; Tue, 25 Jul 2017 08:25:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.187 listed in dnsbl.sorbs.net]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0D22E00B76
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 08:25:25 -0700 (PDT)
Received: from oxbsltgw13.schlund.de ([172.19.249.30]) by
	mrelayeu.kundenserver.de (mreue005 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0MYJFd-1d4ruO2yZN-00VAnN; Tue, 25 Jul 2017 17:25:17 +0200
Date: Tue, 25 Jul 2017 16:25:17 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <1558360909.204127.1500996317120@email.1and1.co.uk>
In-Reply-To: <754678217.203078.1500994847726@email.1and1.co.uk>
References: <097a01d3054f$89a3b940$9ceb2bc0$@ln-systems.com>
	<CAJTo0LZDPfqeZhpg1uZ+s5tis_rPj-MN6D1jFc76aUA02LmSZQ@mail.gmail.com>
	<838512139.316467.1500993599795@email.1and1.co.uk>
	<CAJTo0LYTp4j9kGBqtPXT6X+Z1JZUWJRrYmgUe8GU8DtPKcPNkg@mail.gmail.com>
	<754678217.203078.1500994847726@email.1and1.co.uk>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.2-Rev34
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:aNZv/l/O+0/HCItBGxqYjqjdAZBn6XxFkivSYjzegirr/u0nq4T
	lOsk0Ffi3Q6CSrIn1RyKHycIDYWGNyzQL6N4ZKKHrJsrKN2N5pnxwxYLu4YMFPWlbVRn/Jm
	5HQL/UqggEdZpCklkTltfJ/EEiBti/1pSF8fWdtw+W6/fpL4Vv02KxYkoAlE+WSBUblRdzO
	ZsJ4foRp1/wEYVVWIbCxg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:G9aQjy5C550=:Q3T4S6Po63qh5rQ/x4B4Ej
	d2CzSIeNclmRI9Z3/xNf9RtGDImTRH6e7tN6WbGmwUwdfSH3W4mSGHGUFgPkrwYSZGJn+LS3N
	5BM+YzUUkw0J6LeLwdfvBBN0DfJ4ry57rw+AKnlg3Dw1S8thr+ZsY/uTU1e7dbjcVBbpsyQ7Y
	2wJORHXwGgYnf4f/Kx5L/f4QBijKpVUC2HDp5nCt3x2VTdpNJ7HCGVsMcLM8SWjQexwMpi+np
	tKGtFoKCr7Mcegv8M8cyG+WCTyquzuUnfe5NNIVOSGh91z6DGGWCA+Z2wf4dHThIdwGkqUjp5
	1ceqBm5qFKCQgb7WcUmxCT8NtX6x0GMi4K6MawgrTQ9HrJbPMdZf8G4R5MhU/G3r6Dhp8x8Lk
	Ssgg/i8+9SiGTQsNznNcG2xQZTPCwHpdn/4bt+OdchdXVxRtFL7pnkaSQUC45gTa57N+xy6UC
	OzPGQa+MCct6UP2QYad4jp4YVE56Z8pDLuvtggBE0XJ7rnWwUigIcH7rcklJZXj184Gue9aIp
	ridt8rxvJE86pfkbCfpSIOYWmA1/A8I+fwFqVnczCShORpYiiGUQJyO9Jqi5gK/0cqXBtGv3M
	qg2REsgi8xjoEXlPh+TVMJAyUNsuGS+HQxerp/fj3fE8qMH387NY+eC6symuBjC4blxmDnmqS
	tvgIhbjnER+J8zzQXDC8TFJG+5WowgSVxHwRyWxoYCyiHModtWDG5eETZ/RSfAJ+cHEQjfDFk
	NxEP0pZ8xpD7BfzPN1RQ8veD1sxXa4POUCfNs9ZhS+4kAY8JVUshL4YtJ5w=
Cc: yocto@yoctoproject.org
Subject: Re: Problems with 'configure' on own recipe [after moving to morty]
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Jul 2017 15:25:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 25 July 2017 at 16:00 Colin Helliwell <colin.helliwell@ln-systems.com> wrote:
> 
> Ah yes, that's true Ross - I should be able to try that approach instead.
> 

However.... there's obviously been a lot of changes from 1.4 to 1.8 and hence something to be said for a fresh recipe rather than mega-appending an older one..? (Well, there certainly would be if it worked....!)
And, as I say, the recipe works on krogoth [cleanly rebuilt today and definitely the same git version] - something subtly changed in some or other class perhaps, but not obvious to me.

> > On 25 July 2017 at 15:57 "Burton, Ross" <ross.burton@intel.com> wrote:
> > 
> > On 25 July 2017 at 15:39, Colin Helliwell <colin.helliwell@ln-systems.com> wrote:
> > 
> > > That is in fact what I blagged as the starting point for 'my' recipe, but then evolved it so as to use the github head. For my particular [embedded] platform I also need to switch off some of the configure options.
> > 
> > Sounds like a bbappend should be able to fiddle SRC_URI and some PACKAGECONFIGs right?
> >

