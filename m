Return-Path: <s.mueller-klieser@phytec.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFBA5E00DCE; Wed, 31 Jan 2018 01:09:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.6.246.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 323 seconds by postgrey-1.32 at yocto-www;
	Wed, 31 Jan 2018 01:09:38 PST
Received: from root.phytec.de (mail.phycore.de [217.6.246.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2D99E007B3
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 01:09:38 -0800 (PST)
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 34197A005D3
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 10:04:26 +0100 (CET)
Received: from [172.16.26.109] ([172.16.26.109])
	by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
	with ESMTP id 2018013110041336-123739 ;
	Wed, 31 Jan 2018 10:04:13 +0100 
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: =?UTF-8?Q?Stefan_M=c3=bcller-Klieser?= <s.mueller-klieser@phytec.de>
Organization: PHYTEC Messtechnik GmbH
Message-ID: <ca499a4d-6c1b-341d-6e66-5c1b37e7f1d6@phytec.de>
Date: Wed, 31 Jan 2018 10:04:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
	17, 2016) at 31.01.2018 10:04:13,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17,
	2016) at 31.01.2018 10:04:13,
	Serialize complete at 31.01.2018 10:04:13
X-TNEFEvaluated: 1
Subject: php extensions
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
X-List-Received-Date: Wed, 31 Jan 2018 09:09:40 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=utf-8
Content-Language: en-US

Hi everyone,

I am trying to get to run the php redis extension with current master
and php 7.1.9 from meta-oe. There are no other php extensions in
openembedded yet.
I am using the default php.ini and just add the redis.so. Everything
seems to work fine except that php does not load any extension. php -m
shows a lot of php modules, those seem to be compiled in. Running php-cli
with strace shows that there is no access at all to the extension directory.
Has anyone a hint where to look?

Thanks! Stefan

