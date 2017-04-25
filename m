Return-Path: <Nathan_Lynch@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D99E3E00B01; Tue, 25 Apr 2017 15:35:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA02FE00867
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 15:35:48 -0700 (PDT)
Received: from svr-orw-mbx-02.mgc.mentorg.com ([147.34.90.202])
	by relay1.mentorg.com with esmtp 
	id 1d393k-0001mi-0r from Nathan_Lynch@mentor.com ;
	Tue, 25 Apr 2017 15:35:48 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-02.mgc.mentorg.com
	(147.34.90.202) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Tue, 25 Apr 2017 15:35:45 -0700
From: Nathan Lynch <nathan_lynch@mentor.com>
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LaLOhPcz8DYQ4wGzVXrP7Qs_Fa7jgrx76wCDAuR8eoWfQ@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
	<CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
	<CAJTo0La+bGDBuJ42yVy79hW2iN3ZhpeyjXrhUApLn-PAi6PYBw@mail.gmail.com>
	<87a875qxeg.fsf@largeson.i-did-not-set--mail-host-address--so-tickle-me>
	<CAJTo0LaLOhPcz8DYQ4wGzVXrP7Qs_Fa7jgrx76wCDAuR8eoWfQ@mail.gmail.com>
Date: Tue, 25 Apr 2017 17:35:43 -0500
Message-ID: <87fugwyv28.fsf@largeson.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-ClientProxiedBy: svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201) To
	svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Tue, 25 Apr 2017 22:35:55 -0000
Content-Type: text/plain

"Burton, Ross" <ross.burton@intel.com> writes:

> On 24 April 2017 at 23:00, Nathan Lynch <nathan_lynch@mentor.com> wrote:
>
>> Does adding this patch to lttng-modules work around it?
>>
>
> Yes, it fixes the build here.  I'll throw it at the autobuilder now, can
> you send a patch with a commit message that isn't "someone told me to try
> this"? :)

Done:
http://lists.openembedded.org/pipermail/openembedded-core/2017-April/136086.html

