Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D29A0E00C91; Fri,  1 Apr 2016 00:40:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.233.247 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 8024 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Apr 2016 00:40:18 PDT
Received: from mx5-01.smtp.antispamcloud.com (mx5-01.smtp.antispamcloud.com
	[95.211.233.247])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 310CBE00C31
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 00:40:18 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx5.antispamcloud.com with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1alrbF-0004uR-Ga
	for yocto@yoctoproject.org; Fri, 01 Apr 2016 07:26:30 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 1 Apr 2016 07:26:25 +0200
To: <yocto@yoctoproject.org>
References: <1459459621-21610-1-git-send-email-anibal.limon@linux.intel.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <56FE0680.9010700@topic.nl>
Date: Fri, 1 Apr 2016 07:26:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1459459621-21610-1-git-send-email-anibal.limon@linux.intel.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t6mx
	j3Zz/WM/IwRyPjIHIwAXWZWrORzNaINladCZR9uhpuD4mud/TIboEq4ovai9VDwJWw42swm4bO6g
	acpMpzLbEWQul8jYZE5z9NUVDUznD9L4veS2SLTKKi5K86iWp4tPQ9EZ460enwJ68lpU/dEoCWaf
	hBjRdrnDmZHbf9aZDCq8wFgy6Q7I/fBbnJPntxOHoTZceShavfZuPJruAC9bg0BHSpuuXE1G31mg
	wJ8udj5qQk2EvmoC22/NQEvGRDZresKgeMd9wkjIpUXlPksbZ4eu78HN+DBOKbGFnL+e4utZ50Lq
	mpBDD4hUQzcqZF9DgapRa+CnumGRKq/RmyqZ3JKVmi72ocgY5kMQSjs7Ix0xv1uMGk/ZT58HSmvl
	0yGx9XPq2sEqDWryScIHN68+dvusjRV96oP1cmFb05OH7Vl7Ac1gO8Xx3c3fodm7ipiXQ8C08u4I
	JG7YkRAZkxDfUy6xfZdyLRnwP1q5wC1er9U6TAMU6TeVmCqsvII7Opa7V8NXPSB4yY8R8OtQcPFk
	sTNbP8ft2Kx6crc5UKTuEc/6pf48JTtXR8FsFNU8mA==
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJXhXyDRoOQM5J3kcUr0HrMvJUWjZ8+qhjyB23tbDuyLOYL8Ff78gYsez
	4Rl08xudmXi4esCQ0R1MchVjt7wblGlvhFgW0MjUMRkF5sMCDfftTXNFDzN17hnrWeZYOJvLq0Ic
	WjZ+XcEjj/7Pkld0zkmvziDInX9WdMov2kn2yXjdwv61T+KDYyYtREgszdyFwv8IxCB3p/oCKvxr
	eyISh3JGb7OS5oVgiO+kDxZrVPLz3MmEGC2PrUKqLq5WmHK+Nw==
X-Originating-IP: 88.159.208.100
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 88.159.208.100
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=88.159.208.100@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.0095060246805)
X-Recommended-Action: accept
Subject: Re: [PATCH][opkg-utils] opkg-build: Exit when fail to list files.
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
X-List-Received-Date: Fri, 01 Apr 2016 07:40:23 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 31-03-16 23:27, An=C3=ADbal Lim=C3=B3n wrote:
> We have an issue when ls segfaults in some cases [1] so it's
> better to detect the failure at this level instead of continue
> the build process.
>
> [YOCTO #8926]
>
> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8926#c0
>
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
>   opkg-build | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/opkg-build b/opkg-build
> index 98008b6..a9ccad2 100755
> --- a/opkg-build
> +++ b/opkg-build
> @@ -53,6 +53,10 @@ pkg_appears_sane() {
>   		echo "*** Warning: The following files have names ending in '~'.
>   You probably want to remove them: " >&2
>   		ls -ld $tilde_files
> +		if [ $? -ne 0 ]; then

Instead of using $? you could just use the result of "ls" directly, i.e.:

if ! ls -ld $tilde_files; then


> +			echo "*** Error: Fail to list files have names ending in '~'."
> +			exit 1
> +		fi
>   		echo >&2
>   	    else
>   		echo "*** Removing the following files: $tilde_files"
> @@ -66,6 +70,10 @@ You probably want to remove them: " >&2
>   		echo "*** Warning: The following files have a UID greater than 99.
>   You probably want to chown these to a system user: " >&2
>   		ls -ld $large_uid_files
> +		if [ $? -ne 0 ]; then
> +			echo "*** Error: Fail to list files have a UID greater than 99."
> +			exit 1
> +		fi
>   		echo >&2
>   	fi
>   =09
>



Kind regards,

Mike Looijmans
System Expert

TOPIC Embedded Products
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






