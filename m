Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26EE4E00CBC; Wed,  9 May 2018 00:02:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA81EE009AC
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 00:02:23 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 May 2018 00:02:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,381,1520924400"; d="scan'208";a="54387575"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 09 May 2018 00:02:21 -0700
To: =?UTF-8?Q?Iv=c3=a1n_Castell?= <icastell@nayarsystems.com>
References: <CAALXFYw5fYE+JBAO4hrXFO-L3wyE6DRzP-yFWbPvKX6S1eRePw@mail.gmail.com>
	<da5f1fde-171e-09cb-f51c-13a6e147c3ed@linux.intel.com>
	<CAALXFYwpsMmKzyO47CzFxj_3FMT+zZja4OdTNtFfoD4=QT0Ehw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <f6a9d6bb-1b5f-d3b7-a6a9-03500b03fb3a@linux.intel.com>
Date: Wed, 9 May 2018 09:56:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAALXFYwpsMmKzyO47CzFxj_3FMT+zZja4OdTNtFfoD4=QT0Ehw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Native curl and SSL CA certificates
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
X-List-Received-Date: Wed, 09 May 2018 07:02:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 05/09/2018 09:29 AM, Iván Castell wrote:
> But I am not fetching nor installing packages over the network during 
> image creation. I just build an image using local recipes (standard 
> procedure). One of those local recipes sets up a remote repository for 
> rpm packages (adding /etc/yum.repos.d/yocto-adv-rpm.repo to the final 
> image). The purpose of that remote repository is using it to update rpm 
> packages on target devices when they are running in production.
> 
> In fact, I don't understand why yocto needs to synchronize that cache 
> for 'yocto-adv-rpm' repo during build time. It doesn't have any sense 
> for me. But the fact is that when the ca-certificates.crt is properly 
> installed, the build process ends fine. If that file is not properly 
> installed, the build process fails with the error reported in my 
> previous message.

During image creation dnf is run several times, and it picks up its own 
configuration from the target rootfs. It is definitely not recommended 
to change that configuration behind dnf's back via installed recipes.

The supported way to configure remote repositories is via PACKAGE_FEED_URIS:
https://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-runtime-package-management

Alex

