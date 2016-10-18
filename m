Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FF67E00D33; Tue, 18 Oct 2016 07:04:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 574 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Oct 2016 07:04:27 PDT
Received: from thoth.sbs.de (thoth.sbs.de [192.35.17.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB739E00B34
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 07:04:26 -0700 (PDT)
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
	by thoth.sbs.de (8.15.2/8.15.2) with ESMTPS id u9IDsqnO030175
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 15:54:52 +0200
Received: from [139.16.78.254] (MD1FZU9C.ww002.siemens.net [139.16.78.254])
	by mail2.sbs.de (8.15.2/8.15.2) with ESMTPS id u9IDsq35006958
	(version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 15:54:52 +0200
To: yocto@yoctoproject.org
References: <F38A866CD026F746A3BF0928A84397BE3E7D843C@AZ-FFEXMB01.global.avaya.com>
	<20161018121653.ygnkvl3yhbt4hvn5@ad.chargestorm.se>
From: Pascal Bach <pascal.bach@siemens.com>
Message-ID: <e89faa16-e912-f60e-bf12-e96db2e1e79e@siemens.com>
Date: Tue, 18 Oct 2016 15:54:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161018121653.ygnkvl3yhbt4hvn5@ad.chargestorm.se>
Subject: Re: Set ${WORKDIR}/build to ${S}
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
X-List-Received-Date: Tue, 18 Oct 2016 14:04:31 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit


there a way to tell do_configure to use ${S} and not ${WORKDIR}/build.

> Sure set
> B = "${S}"
Instead of setting this I suggest using "inherit autotools-brokensep" this clearly indicates that out of tree builds are broken

Pascal

