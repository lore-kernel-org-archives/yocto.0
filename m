Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6821FE00E39; Thu,  5 Sep 2019 20:31:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E50F6E00D83
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2019 20:31:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x863VnI0007509
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Sep 2019 20:31:49 -0700 (PDT)
Received: from [128.224.162.195] (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 5 Sep 2019 20:31:48 -0700
To: Joe MacDonald <joe@deserted.net>
References: <1567673824-29926-1-git-send-email-yi.zhao@windriver.com>
	<20190905115704.GA37987@deserted.net>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <2606575f-1667-40b6-3611-74cdb8a78388@windriver.com>
Date: Fri, 6 Sep 2019 11:31:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905115704.GA37987@deserted.net>
X-Originating-IP: [128.224.162.195]
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] selinux-autorelabel: disable enforcing mode before relabel
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
X-List-Received-Date: Fri, 06 Sep 2019 03:31:51 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 9/5/19 7:57 PM, Joe MacDonald wrote:
> [[meta-selinux][PATCH] selinux-autorelabel: disable enforcing mode before relabel] On 19.09.05 (Thu 16:57) Yi Zhao wrote:
>
>> The commit b0d31db104d9a4e94bc1409c2ffcc1d82f4a780f introduced an issue
>> when first boot with bootparams="selinux=1 enforcing=1". At first boot,
>> all files are unlabeled including /sbin/fixfiles. The relabel operation
>> is not permitted under enforcing mode. Set /sys/fs/selinux/enforce to 0
>> to ensure the enforcing mode is disabled before relabel.
> Did you try this with '/usr/sbin/setenforce 0' instead?  The rationale
> makes sense but going straight at sysfs like that isn't the right
> approach intuitively.  If that's not working, please just include a bit
> of an explanation for why this is the best option.

It also works with setenforce.

I referred to the selinux-autorelabel script on Fedora 30, it uses `echo 
"0" > /sys/fs/selinux/enforce` to disables enforcing mode:

cat /usr/libexec/selinux/selinux-autorelabel

[snip]
      32 relabel_selinux() {
      33     # if /sbin/init is not labeled correctly this process is 
running in the
      34     # wrong context, so a reboot will be required after relabel
      35     AUTORELABEL=
      36     . /etc/selinux/config
      37     echo "0" > /sys/fs/selinux/enforce
      38     [ -x /bin/plymouth ] && plymouth --quit
      39
[snip]


//Yi


>
> Thanks.
> -J.
>
>> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> ---
>>   recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
>> index 154dad1..cb40971 100644
>> --- a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
>> +++ b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
>> @@ -13,6 +13,7 @@ fi
>>   # If /.autorelabel placed, the whole file system should be relabeled
>>   if [ -f /.autorelabel ]; then
>>   	echo "SELinux: /.autorelabel placed, filesystem will be relabeled..."
>> +	echo "0" > /sys/fs/selinux/enforce
>>   	${FIXFILES} -F -f relabel
>>   	/bin/rm -f /.autorelabel
>>   	echo " * Relabel done, rebooting the system."
>> -- 
>> 2.7.4
>>

