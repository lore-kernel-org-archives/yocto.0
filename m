Return-Path: <scott.m.rifenbark@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F6BE007AF
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 05:15:27 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2013 05:15:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,840,1378882800"; d="scan'208";a="326067881"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Dec 2013 05:15:26 -0800
Received: from [10.254.12.50] (unknown [10.254.12.50])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 859EF6A400F
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 05:15:24 -0800 (PST)
Message-ID: <52A1CDEA.5050303@linux.intel.com>
Date: Fri, 06 Dec 2013 05:15:22 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1386254684-26972-1-git-send-email-david.nystrom@enea.com>
In-Reply-To: <1386254684-26972-1-git-send-email-david.nystrom@enea.com>
Subject: Re: [yocto-docs][PATCH] Revert "ref-manual: Added sdk-pms to Distro Feature list."
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
X-List-Received-Date: Fri, 06 Dec 2013 13:15:28 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

David,

This patch did not format well when I sent to my Linux box.  I cannot 
apply it.  I can apply it by hand or you can try and form the patch 
again and re-send it to the yocto@yoctoproject.org mailing group.

Thanks,
Scott

On 12/5/2013 6:44 AM, David Nyström wrote:
> This reverts commit f8076f1916cc52647b129922c1b1646ad6df8ff9.
>
> sdk-pms is always included, with commit:
> Module: openembedded-core.git
> Branch: master-next
> Commit: 80a8ecf91181f2fbec1a45231615b12949327970
> URL:    http://git.openembedded.org/?p=openembedded-core.git&a=commit;h=80a8ecf91181f2fbec1a45231615b12949327970
>
>
> Signed-off-by: David Nyström <david.nystrom@enea.com>
> ---
>   documentation/ref-manual/ref-features.xml | 6 ------
>   1 file changed, 6 deletions(-)
>
> diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-manual/ref-features.xml
> index 11e3731..f5641c6 100644
> --- a/documentation/ref-manual/ref-features.xml
> +++ b/documentation/ref-manual/ref-features.xml
> @@ -177,12 +177,6 @@
>                       supports it.</para></listitem>
>                   <listitem><para><emphasis>wifi:</emphasis> Include WiFi support
>                       (integrated only).</para></listitem>
> -                <listitem><para><emphasis>sdk-pms:</emphasis> Include Package
> -                    Management Tools in the
> -                    <filename>nativesdk</filename> toolchain tarball.
> -                    Including these tools allows for easy sandbox use when
> -                    creating the root filesystem while using the SDK tarball.
> -                    </para></listitem>
>               </itemizedlist>
>           </para>
>       </section>


