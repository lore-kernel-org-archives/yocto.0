Return-Path: <lists@webconect.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D30B0E00C51; Tue, 14 Jun 2016 13:04:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout015.mail.hostpoint.ch (mxout015.mail.hostpoint.ch
	[217.26.49.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DA65E00C49
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 13:04:19 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout015.mail.hostpoint.ch with esmtp (Exim 4.84 (FreeBSD))
	(envelope-from <lists@webconect.ch>) id 1bCuZN-000GZw-Os
	for yocto@yoctoproject.org; Tue, 14 Jun 2016 22:04:17 +0200
Received: from 77-58-230-166.dclient.hispeed.ch ([77.58.230.166]
	helo=webconect.local) by asmtp013.mail.hostpoint.ch with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.84 (FreeBSD))
	(envelope-from <lists@webconect.ch>) id 1bCuZN-000GQC-Lq
	for yocto@yoctoproject.org; Tue, 14 Jun 2016 22:04:17 +0200
X-Authenticated-Sender-Id: lists@webconect.ch
Date: Tue, 14 Jun 2016 22:00:31 +0200
From: Elias Diem <lists@webconect.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <20160614200031.GA30292@webconect.local>
Mail-Followup-To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20160614071518.GA14846@webconect.local> <575FDF49.20902@elfin.de>
	<20160614175123.GA20223@webconect.local>
	<F14AEF751653024287138321000C846A011AC06022@BOS-MAIL1.zone1.flir.net>
MIME-Version: 1.0
In-Reply-To: <F14AEF751653024287138321000C846A011AC06022@BOS-MAIL1.zone1.flir.net>
Subject: Re: Customization for nginx
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
X-List-Received-Date: Tue, 14 Jun 2016 20:04:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline

Hi Virgil

On 2016-06-14, Smith, Virgil wrote:

>"How do you prefer a provider out of two different versions of a package?"
>
>PREFERRED_VERSION
>http://www.yoctoproject.org/docs/2.1/mega-manual/mega-manual.html#var-PREFERRED_VERSION

Thanks. Worked fine.


-- 
Greetings
Elias



