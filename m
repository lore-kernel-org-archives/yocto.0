Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58608E00B81; Tue,  2 Oct 2018 07:45:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D11E00B6C
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2018 07:45:19 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w92EicGI025716
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 2 Oct 2018 07:44:48 -0700
Received: from server.local (128.224.21.102) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Tue, 2 Oct 2018 07:44:27 -0700
To: =?UTF-8?Q?Urs_F=c3=a4ssler?= <urs.fassler@bbv.ch>, <yocto@yoctoproject.org>
References: <20181001124209.12503-1-urs.fassler@bbv.ch>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <93a276f8-7465-ffd9-9279-44aacd1c2337@windriver.com>
Date: Tue, 2 Oct 2018 10:44:27 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181001124209.12503-1-urs.fassler@bbv.ch>
Subject: Re: [yocto-docs][PATCH] kernel-dev: document the change detection of kernel feature files
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
X-List-Received-Date: Tue, 02 Oct 2018 14:45:30 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2018-10-01 8:42 AM, Urs Fässler wrote:
> Recommend to add recipe-space features to SRC_URI so that changes to them
> are detected automatically.
> 
> Signed-off-by: Urs Fässler <urs.fassler@bbv.ch>
> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> ---
>   documentation/kernel-dev/kernel-dev-common.xml | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
> index 83b02b1c1..6289ce8d4 100644
> --- a/documentation/kernel-dev/kernel-dev-common.xml
> +++ b/documentation/kernel-dev/kernel-dev-common.xml
> @@ -2623,6 +2623,9 @@
>               <filename>.scc</filename> file in the
>               <filename>SRC_URI</filename> statement to reference multiple kernel
>               features.
> +            Since BitBake only detects changes on files listed in
> +            <filename>SRC_URI</filename>, it is best to add all

This is not necessarily true. It would be better stated that if you
are modifying the .cfg files in the layer directly, you should list
them on the SRC_URI to have the changes picked up by bitbake.

It is not a matter of "best", so it should be stated that way.

> +            <filename>.cfg</filename> to <filename>SRC_URI</filename>.
>           </para>
>   
>           <para>
> @@ -2674,10 +2677,10 @@
>                       </para></listitem>
>                   <listitem><para>
>                       <emphasis>Add the Feature File to <filename>SRC_URI</filename>:</emphasis>
> -                    Add the <filename>.scc</filename> file to the
> +                    Add the <filename>.cfg</filename> and <filename>.scc</filename> file to the
>                       recipe's <filename>SRC_URI</filename> statement:
>                       <literallayout class='monospaced'>
> -     SRC_URI_append = " file://test.scc"
> +     SRC_URI_append = " file://test.cfg file://test.scc"

This is wrong. You should not have both on the SRC_URI

Bruce

>                       </literallayout>
>                       The leading space before the path is important as the
>                       path is appended to the existing path.
> 


