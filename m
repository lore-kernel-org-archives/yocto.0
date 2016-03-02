Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2428AE00D41; Tue,  1 Mar 2016 21:43:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62434E00D13
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 21:43:05 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1aazYB-0005qu-41; Wed, 02 Mar 2016 05:42:20 +0000
To: Alejandro del Castillo <alejandro.delcastillo@ni.com>
References: <1455921936-24140-1-git-send-email-alejandro.delcastillo@ni.com>
	<56D61E9D.5020607@ni.com>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56D67D70.6010608@twobit.us>
Date: Tue, 1 Mar 2016 21:43:12 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <56D61E9D.5020607@ni.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org, Xin.Ouyang@windriver.com
Subject: Re: [meta-selinux][PATCH] busybox: explicitly set temporary shell scripts to be executable
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
X-List-Received-Date: Wed, 02 Mar 2016 05:43:21 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 03/01/2016 02:58 PM, Alejandro del Castillo wrote:
> I first started looking at busybox postinst (modified on meta-selinux) since I
> am getting errors during "opkg upgrade buysbox". The errors that I am getting
> are of the form:
> 
> update-alternatives: Error: not linking /bin/gunzip to
> /usr/lib/busybox/bin/gunzip since /bin/gunzip exists and is not a link
> 
> Which only happen for utilities that don't have any alternative installed after
> removing busybox, hence no symlink. Utilities that do have an alternative
> installed are correctly processed, for example:
> 
> update-alternatives: Linking /usr/bin/ar to /usr/bin/x86_64-nilrt-linux-ar
> 
> The root problem is that meta-selinux on commit
> 521ca9c9cf370840e9f8c808a7955aa5da7c356e replaced the temporary symlink creation
> on postinst with sh wrappers, which breaks update-alternatives when it tries to
> update symlinks (which are now sh wrappers).
> 
> Is there a reason why the postinst needs to be different on the selinux version
> of busybox? If the postinst is just creating temporary symlinks which will go
> away once the update-alternatives block later on the script runs, do we need the
> sh wrappers?

Thanks for the additional context Alejandro. I don't have enough history
yet to pull answers to stuff like this out at will though. Hopefully
someone with the right background will chime in. Either way I'll circle
back once the easy stuff in the backlog is done and we'll try to sort
something out.

Philip

> On 02/19/2016 04:45 PM, Alejandro del Castillo wrote:
>> During an on target upgrade, the postinst script is creating scripts
>> that call buysbox, to avoid missing commands errors. However, the
>> scripts permissions are not set explicitly, relying on the mask.
>>
>> Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
>> ---
>>  recipes-core/busybox/busybox_%.bbappend | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/recipes-core/busybox/busybox_%.bbappend b/recipes-core/busybox/busybox_%.bbappend
>> index b4935b2..2e806af 100644
>> --- a/recipes-core/busybox/busybox_%.bbappend
>> +++ b/recipes-core/busybox/busybox_%.bbappend
>> @@ -78,6 +78,7 @@ pkg_postinst_${PN} () {
>>  						# we can use busybox here because even if we are using splitted busybox
>>  						# we've made a symlink from /bin/busybox to /bin/busybox.nosuid.
>>  						busybox echo "#!/bin/busybox$suffix" > $link
>> +                                                /bin/busybox.nosuid chmod 755 $link
>>  					fi
>>  				done < /etc/busybox.links$suffix
>>  			fi
>>
> 


