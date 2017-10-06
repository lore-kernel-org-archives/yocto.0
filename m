Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A53DE00CA2; Fri,  6 Oct 2017 09:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay3-2.pub.mailoutpod1-cph3.one.com
	(mailrelay3-2.pub.mailoutpod1-cph3.one.com [46.30.212.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEFCAE00C35
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 09:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=u2Myn83NhV0qqKqqIZw0/NF5r/s6KQ2DtadFRDLkk/s=;
	b=yi0Prna4SkKE7mdwDF1vUXGOv/Mh1zhy0dZe/NBetKKdeBeOkLXOjWU1zsiaMLNRJlMHUNKOxjbpJ
	IX46sc7mU9b7jS1+KEV1hIKO0WFoiDGL5Bj1+cNIoNDcNGaPAWbDgPUSvThVQLDkDo0JMleyMxK2WR
	bVM/XMIXgIbrDjMY=
X-HalOne-Cookie: 39935b5d178d1dd1ac5cec5d3c9aac6808ce431d
X-HalOne-ID: 14815c39-aab2-11e7-9212-b82a72d06996
Received: from [192.168.178.20] (unknown [77.177.36.19])
	by smtpfilter3.public.one.com (Halon) with ESMTPSA
	id 14815c39-aab2-11e7-9212-b82a72d06996;
	Fri, 06 Oct 2017 16:19:08 +0000 (UTC)
To: yocto@yoctoproject.org
References: <BY1PR17MB012060F2B72863B46932C421F1710@BY1PR17MB0120.namprd17.prod.outlook.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <60625f12-854c-0390-bcd5-935650f089ce@embexus.com>
Date: Fri, 6 Oct 2017 18:19:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <BY1PR17MB012060F2B72863B46932C421F1710@BY1PR17MB0120.namprd17.prod.outlook.com>
Subject: Re: read-only-rootfs causes systemd-tmpfiles-setup.service failure ( symlink(../run/lock, /var/lock) failed: Read-only file system)
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
X-List-Received-Date: Fri, 06 Oct 2017 16:19:12 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


Hi,

On 06.10.2017 15:40, richard_allen@keysight.com wrote:
> I am build an image with read-only-rootfs
> When enabled, during startup I get a
>
> [FAILED] Failed to start Create Volatile Files and Directories.
> See 'systemctl status systemd-tmpfiles-setup.service' for details.
>
>
>
> ● systemd-tmpfiles-setup.service - Create Volatile Files and Directories
>     Loaded: loaded (/lib/systemd/system/systemd-tmpfiles-setup.service; static; vendor pre
> set: enabled)
>     Active: failed (Result: exit-code) since Fri 2017-09-01 19:16:27 UTC; 3min 52s ago
>       Docs: man:tmpfiles.d(5)
>             man:systemd-tmpfiles(8)
>    Process: 945 ExecStart=/bin/systemd-tmpfiles --create --remove --boot --exclude-prefix=
> /dev (code=exited, status=1/FAILURE)
>   Main PID: 945 (code=exited, status=1/FAILURE)
>
> Sep 01 19:16:27 dso systemd[1]: Starting Create Volatile Files and Directories...
> Sep 01 19:16:27 dso systemd-tmpfiles[945]: symlink(../run/lock, /var/lock) failed: Read-only file system
> Sep 01 19:16:27 dso systemd-tmpfiles[945]: "/var/tmp" already exists and is not a directory.
> Sep 01 19:16:27 dso systemd-tmpfiles[945]: "/var/log" already exists and is not a directory.
> Sep 01 19:16:27 dso systemd[1]: systemd-tmpfiles-setup.service: Main process exited, code=exited, status=1/FAILURE
> Sep 01 19:16:27 dso systemd[1]: Failed to start Create Volatile Files and Directories.
> Sep 01 19:16:27 dso systemd[1]: systemd-tmpfiles-setup.service: Unit entered failed state.
> Sep 01 19:16:27 dso systemd[1]: systemd-tmpfiles-setup.service: Failed with result 'exit-code'.
>
>
> Not clear if I should be worried about this.
> If so, what should be done?
> Thanks
>
>
> Richard C. Allen
> Keysight Technologies
> richard_allen@Keysight.com
>
can you show your /etc/fstab ?

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com


