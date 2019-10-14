Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE74FE00C9B; Mon, 14 Oct 2019 07:29:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79738E00924
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 07:29:55 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9EETrvV029342
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 09:29:54 -0500
To: yocto@yoctoproject.org
References: <CY4PR15MB187891A4521D2DE0C68BF9C3FD940@CY4PR15MB1878.namprd15.prod.outlook.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <0c4504b3-bdac-da1e-b4ef-ec9b04a1123f@kernel.crashing.org>
Date: Mon, 14 Oct 2019 09:29:52 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <CY4PR15MB187891A4521D2DE0C68BF9C3FD940@CY4PR15MB1878.namprd15.prod.outlook.com>
Subject: Re: No SELinux security context (/etc/crontab)
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
X-List-Received-Date: Mon, 14 Oct 2019 14:29:56 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

There SE Linux policy included in meta-selinux is just a starting point.  It's
expected that you will have to update/customize it.

With that said, these types of issues, we will accept patches for them.

--Mark

On 10/10/19 5:06 AM, Oriya, Raxesh wrote:
> Hi,
> 
>  
> 
> I have enabled SELinux in my yocto project(warrior branch) but *cron *is not
> functioning because of some SELinux context isuue. I am using *minimum* SELinux
> policy. Here is the error from `/var/log/messages`
> 
>  
> 
>     Oct  9 04:50:01 panther2 cron.info crond[261]: ((null)) No SELinux security
> context (/etc/crontab)       
> 
>     Oct  9 04:50:01 panther2 cron.info crond[261]: (root) FAILED (loading cron
> table)                      
> 
>  
> 
> Here are some contexts for relevant files,
> 
>  
> 
>     root@panther2:~# ps -efZ | grep cron
> 
>     system_u:system_r:kernel_t:s0   root       464     1  0 04:54 ?    00:00:00
> /usr/sbin/crond -n
> 
>  
> 
>     root@panther2:~# ls -lZ /etc/crontab
> 
>     -rw-------. 1 root root system_u:object_r:unconfined_t:s0 653 Oct  9  2019
> /etc/crontab
> 
>  
> 
>     root@panther2:~# ls -lZ /usr/sbin/crond
> 
>     -rwxr-xr-x. 1 root root system_u:object_r:unlabeled_t:s0 68160 Oct  9  2019
> /usr/sbin/crond
> 
>  
> 
> Any help? Thanks !!
> 
>  
> 
> Regards,
> 
> Thanks
> 
> 

