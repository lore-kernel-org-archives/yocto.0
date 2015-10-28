Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DFB4E00B30; Wed, 28 Oct 2015 07:29:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail5.wrs.com (unknown [64.129.254.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58B90E007FE
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 07:29:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id t9SET65b018883
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 07:29:06 -0700
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Wed, 28 Oct 2015 07:29:06 -0700
To: <yocto@yoctoproject.org>
References: <CAEpurxGQ9YK6x=6MNAvAM3UrhOzXAE1XQA49261tsTDnj_cSVQ@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <5630DBB1.6010101@windriver.com>
Date: Wed, 28 Oct 2015 09:29:05 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAEpurxGQ9YK6x=6MNAvAM3UrhOzXAE1XQA49261tsTDnj_cSVQ@mail.gmail.com>
Subject: Re: Set root password with SHA512?
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
X-List-Received-Date: Wed, 28 Oct 2015 14:29:09 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 10/28/15 3:07 AM, Juha Vuorivirta wrote:
> I'm able to set the root password in /etc/shadow with adding
> ROOTFS_POSTPROCESS_COMMAND to .bb file. It seems that only DES works
> (yocto/oe-core etc. layers are pretty old though). Is it possible to enable
> SHA512 hashing for root password?
> Just replacing DES password with SHA512 is not enough, could not log in even
> password hash is correct in /etc/shadow file. Noticed that DES is default
> encryption method(in recipes-extended/shadow/...), how can I set it to SHA512,
> or is it even possible with this older set up?

If you are using PAM, you should be able to adjust the settings to enable SHA512
passwords.

I've not done it in a while, but this page might help you find the right settings.

https://wiki.archlinux.org/index.php/SHA_password_hashes

If you find things not working, please let us know.... it likely means they are
not using PAM and using their own password validation.

--Mark

> br,
> 
> 
> jv
> 
> 


