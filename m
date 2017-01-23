Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70EB7E003DB; Mon, 23 Jan 2017 11:51:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_SORBS_SPAM
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [192.103.53.11 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51EDEE0033D
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 11:51:18 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v0NJpH4K032056
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 23 Jan 2017 11:51:17 -0800
Received: from [147.11.116.223] (147.11.116.223) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 23 Jan 2017 11:51:16 -0800
To: Patrick Ohly <patrick.ohly@intel.com>, <yocto@yoctoproject.org>
References: <cover.d80eadf93cc834138baf753dee75bd75faefc003.1485180600.git-series.patrick.ohly@intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <93665f38-8cee-4bd3-3b44-2a5030aa93dd@windriver.com>
Date: Mon, 23 Jan 2017 14:51:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <cover.d80eadf93cc834138baf753dee75bd75faefc003.1485180600.git-series.patrick.ohly@intel.com>
Subject: Re: [yocto-kernel-cache][PATCH 0/1] features: enable tpm
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
X-List-Received-Date: Mon, 23 Jan 2017 19:51:22 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/23/2017 09:11 AM, Patrick Ohly wrote:
> This was tested with the yocto-4.8 branch and linux-yocto 4.8.17 under
> qemu with TPM provided by swtpm, but can and should also get merged
> into the yocto-4.9 and master branches.
>
> The feature intentionally enables all current TPM drivers. A real
> production kernel should be more selective.
>

Looks good to me. I've staged the change and will send SRCREV
updates later.

This missed a cc' to linux-yocto, but I noticed it regardless :D

Bruce

> Patrick Ohly (1):
>   meta: add TPM feature
>
>  features/tpm/tpm.cfg | 18 ++++++++++++++++++
>  features/tpm/tpm.scc |  4 ++++
>  2 files changed, 22 insertions(+)
>  create mode 100644 features/tpm/tpm.cfg
>  create mode 100644 features/tpm/tpm.scc
>
> base-commit: 3edb4de355873d32da9307a011adea2542bd05a7
>


