Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75847E00C95; Thu, 25 Oct 2018 03:38:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BDB6E00C93
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 03:38:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w9PAbwZQ011296
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Oct 2018 03:38:08 -0700
Received: from [128.224.22.63] (128.224.22.63) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Thu, 25 Oct 2018 03:37:47 -0700
To: =?UTF-8?Q?Urs_F=c3=a4ssler?= <urs.fassler@bbv.ch>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"bruce.ashfield@gmail.com" <bruce.ashfield@gmail.com>
References: <20181022090723.13828-1-urs.fassler@bbv.ch>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <48731278-b544-2e0c-ab69-af122b2b190c@windriver.com>
Date: Thu, 25 Oct 2018 06:37:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20181022090723.13828-1-urs.fassler@bbv.ch>
Subject: Re: [yocto-docs][PATCH v2] kernel-dev: note about the change detection of kernel feature files
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
X-List-Received-Date: Thu, 25 Oct 2018 10:38:53 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 10/22/18 5:07 AM, Urs Fässler wrote:
> It is not the expected behavior that changes on the .cfg files only
> referenced from .scc files are not detected.

This looks good to me.

Also note that I have an outstanding bugzilla to see if I can invalidate
stamps, etc, when these elements change .. so at that point, I'd be able
to fixup this documentation section.

Bruce

> 
> Signed-off-by: Urs Fässler <urs.fassler@bbv.ch>
> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> ---
>   documentation/kernel-dev/kernel-dev-common.xml | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
> index 83b02b1c1..2e421e7ba 100644
> --- a/documentation/kernel-dev/kernel-dev-common.xml
> +++ b/documentation/kernel-dev/kernel-dev-common.xml
> @@ -2623,6 +2623,10 @@
>               <filename>.scc</filename> file in the
>               <filename>SRC_URI</filename> statement to reference multiple kernel
>               features.
> +            <note>
> +                Bitbake only detects changes on files listed in
> +                <filename>SRC_URI</filename>.
> +            </note>
>           </para>
>   
>           <para>
> 


