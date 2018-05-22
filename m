Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C01FE009BC; Mon, 21 May 2018 19:13:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46E1FE008D2
	for <yocto@yoctoproject.org>; Mon, 21 May 2018 19:13:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w4M2CaKR016996
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 21 May 2018 19:12:51 -0700
Received: from server.local (128.224.21.50) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 21 May 2018 19:12:25 -0700
To: <mingli.yu@windriver.com>, <mark.asselstine@windriver.com>,
	<yocto@yoctoproject.org>
References: <1526623601-452418-1-git-send-email-mingli.yu@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <ae987aaf-6f0d-bd48-e207-f5dcfad4c699@windriver.com>
Date: Mon, 21 May 2018 22:12:24 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1526623601-452418-1-git-send-email-mingli.yu@windriver.com>
Subject: Re: [meta-openstack][PATCH] python-requests: remove PREFERRED_VERSION limit
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
X-List-Received-Date: Tue, 22 May 2018 02:13:05 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

merged.

Bruce

On 2018-05-18 2:06 AM, mingli.yu@windriver.com wrote:
> From: Mingli Yu <Mingli.Yu@windriver.com>
> 
> * Previously, add PREFERRED_VERSION for python-requests
>    as we want to use version >=2.10.0 and the full commit
>    message as below:
> 
>    commit 185eccef8964632f5b255265a0a8e59fe5858397
>    Author: Mark Asselstine <mark.asselstine@windriver.com>
>    Date:   Fri Jan 20 16:59:31 2017 -0500
> 
>      python-requests: use version from meta-openembedded
> 
>      We want to use a version >=2.10.0 as required by python-keystoneauth1
>      so set a PREF so we don't get the older version found in
>      meta-virtualization and used by docker.
> 
>      Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
>      Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> 
> * Now meta-oe upreved python-requests to 2.18.4, remove
>    PREFERRED_VERSION limit to avoid bitbake messages like:
> 
>    "NOTE: preferred version 2.13.0 of python-requests not available"
> 
> Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
> ---
>   meta-openstack/conf/layer.conf | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/meta-openstack/conf/layer.conf b/meta-openstack/conf/layer.conf
> index 55df509..c376d58 100644
> --- a/meta-openstack/conf/layer.conf
> +++ b/meta-openstack/conf/layer.conf
> @@ -31,7 +31,6 @@ PREFERRED_VERSION_python-futures = "3.0.3%"
>   PREFERRED_VERSION_python-django = "1.8.6"
>   PREFERRED_VERSION_python-netaddr = "0.7.19"
>   PREFERRED_VERSION_python-sqlalchemy = "1.0.16"
> -PREFERRED_VERSION_python-requests = "2.13.0"
>   PREFERRED_VERSION_python-eventlet = "0.20.0"
>   PREFERRED_VERSION_python-warlock = "1.2.0"
>   PREFERRED_VERSION_python-jsonschema = "2.6.0"
> 


