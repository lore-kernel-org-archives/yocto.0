Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22457E00C1C; Wed,  7 Nov 2018 01:01:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.7 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85F58E00C19
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 01:01:32 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	wA791RBH019674
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 7 Nov 2018 09:01:28 GMT
Message-ID: <6b62c08ad4adc471b983b226f0fd8acea0857236.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chen Qi <Qi.Chen@windriver.com>, yocto@yoctoproject.org
Date: Wed, 07 Nov 2018 09:01:26 +0000
In-Reply-To: <1541138580-15360-1-git-send-email-Qi.Chen@windriver.com>
References: <1541138580-15360-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.2 at dan
X-Virus-Status: Clean
Subject: Re: [patchtest-oe][PATCH] test_patch_cve.py: fix cve tag checking logic
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
X-List-Received-Date: Wed, 07 Nov 2018 09:01:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-11-02 at 14:03 +0800, Chen Qi wrote:
> The current logic for checking cve tag is not correct. It errors
> out if and only if the patch contains a line which begins with
> CVE-YYYY-XXXX and contains nothing else.
> 
> It will not error out if the patch contains no CVE information, nor
> will it error out if the patch contains line like below.
> 
> 'Fix CVE-YYYY-XXXX'
> 
> I can see that the cve tag checking logic tries to ensure the patch
> contains something like 'CVE: CVE-YYYY-XXXX'. So fix to implement
> such
> logic.
> 
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>  tests/test_patch_cve.py | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)

Thanks, good find.

I've merged this and I believe the instance should have it applied now
too.

Cheers,

Richard


