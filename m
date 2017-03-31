Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0D47E00A71; Fri, 31 Mar 2017 00:37:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B103E009DA
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 00:36:58 -0700 (PDT)
Received: from oxbsltgw13.schlund.de ([172.19.249.30]) by
	mrelayeu.kundenserver.de (mreue103 [212.227.15.179]) with ESMTPSA
	(Nemesis) id 0Lsf1t-1cABO53V6H-012GII for <yocto@yoctoproject.org>;
	Fri, 31 Mar 2017 09:36:56 +0200
Date: Fri, 31 Mar 2017 08:36:56 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org
Message-ID: <77506290.327975.1490945816640@email.1and1.co.uk>
In-Reply-To: <6783352e-1f5e-e1fe-9979-96b5cb4f82d9@linux.intel.com>
References: <061b01d2a9e4$f065d990$d1318cb0$@ln-systems.com>
	<6783352e-1f5e-e1fe-9979-96b5cb4f82d9@linux.intel.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev32
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:36PMZgTR8HTJ2oML85Abemfr33OYj6v+/xEzXZ6sgU2PXutTytW
	P8QH0rJ96CNoTN/CovcFpR7dO7D2dBMAgDQCOZ4P99RbfqKags1tABsM2+TtSPmHD1UDK+u
	k3Q7tXivo4YLtuNyfPPpjO6C8hQT+iuLqtoeQCKh9of8IjafCOTzUllq4zFtraX8Axo6Ktn
	jUNCY4ZKXSwvqKGYSB5fQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:usPRtGqessM=:MTroLGdPs4aOgBvtcX0Tba
	ZiNIuBSx++ojpA8GN0fR9EcVW4AxFQnLX3F3WMHvykGDtbsw73OZP55lvGVLMJrFH4bTW/mH/
	8usVVF5KbqiTEdyz+JsGY4CQR1lLp21LEG/HMgH6rIonXC1V4lx1/0cw29dnuVwSy6SPEngnt
	Urzg/w4A+1jaN62o3wkse409e0xcdJ4PHeXbw5mH6PWxVJ0POilEvqv5HYyWiHz4BgyJxUZoc
	4qYPJuGuF1jWiTMPnlBHIKkOC6qqAbv/SN+EPbcHepcq7QRI0sFyknFLPtKue+JbLCXBw0h8u
	QjdiohJo/JW+00riLiGOFTTICqgdJ3+qRP6aC2KQvEdnt1D+gFK11Ivmc/fZkt6oAIwtFbkti
	dGpSIvgK7UPovXHJ9NZ1caWbixQtRXZ2Zn53Knc+WgkcYf7IO0RkhE6tm625MR7XQ0usQqmzy
	DiFigLse5pM+s+2V7N0mdrmQy6NzlbZmeQUd+d/EXt5H/zWuQMs8+ZMZkSZ0M4gkLbsWr2fy5
	XM6mGQA0chnVjg8yVEZP+QLL5enu+sB1iA/15a79r/0zOiPa+YOs8iwYAIoO0/Qa09KhYxKFU
	WnMoEdrCYiWcieNZQlmLDNjg1WJ4cznhCpKb7K+xeLDRVrx36zeD4kejm2aEXuRv1FN9Y4OYg
	uRid7l4vvRalphhZQ2tsm9u5SSaP581n/2CQLSqhRHr0lVWis5G2wNJFJY/ja8lIctfDDC+64
	yX4NsjWhZrSqEHVc
Subject: Re: gobject introspection needing pygobject (cross-compilation)
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
X-List-Received-Date: Fri, 31 Mar 2017 07:37:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 31 March 2017 at 08:26 Alexander Kanavin <alexander.kanavin@linux.intel.com> wrote:
> 
> On 03/31/2017 09:06 AM, colin.helliwell@ln-systems.com wrote:
> 
> > I've got a few packages in my image which need gobject introspection.
> > (x86-64 host, ARM target)
> > One is building fine, but the other - NetworkManager - is failing to
> > generate the introspection data because it can't analyse the cross-compiled
> > library. Apparently it uses pygobject in doing this, and thus needs a
> > version of that for the target architecture.
> > Are there steps I can take to achieve this? I guess it needs some 'qemu'
> > technique as with other the G-I support mechanisms?
> 
> I guess you have read and understood the section in the Yocto manual
> dedicated to this?
> 

Project Dev Manual 5.7?  Yep, have read that. In fact, I've been able to enable g-i on ModemManager, and on NetworkManager 1.4 - but there's something new about 1.6/1.8 that's throwing this problem.

> To provide useful help, I need to see specifics. What is the error
> message you are getting? Where are your recipes, and which one is failing?
>

Sure. I'll put together additional info.

