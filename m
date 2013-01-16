Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17064E01484
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 05:46:08 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TvTFT-0006Y1-Al; Wed, 16 Jan 2013 13:41:47 +0000
Message-ID: <50F6AF06.3020908@dynamicdevices.co.uk>
Date: Wed, 16 Jan 2013 13:45:42 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: Ed Nelson <enelson1000@comcast.net>
References: <50E31E11.2090708@comcast.net>
	<50E73A16.4070303@dynamicdevices.co.uk>
	<50EA5C2E.9060701@comcast.net>
	<50EAB28F.6080506@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301071251510.1319@oneiric>
	<CAK18fxFLb3PsK0c=kBucStW_7OFj+UrxCg=g4b7M=D3MXCvw5A@mail.gmail.com>
	<alpine.DEB.2.02.1301071450500.21516@oneiric>
	<50F63E70.3000000@comcast.net>
In-Reply-To: <50F63E70.3000000@comcast.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi do_fetch failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Jan 2013 13:46:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 16/01/2013 05:45, Ed Nelson wrote:
> I finally got a response back from github ....
>
> Hi Ed,
>
> We tracked the issue down to an internal network timeout (it only 
> happens when `--quiet` is used, because git is silent on the network 
> while preparing the clone in that case). We've bumped up the limit, 
> and you should be able to clone now. Please let us know if you have 
> any more trouble.
>
> ....
>
> I have not tried it yet but hopefully they fixed the problem

I've just tried it and it is still failing -

WARNING: Failed to fetch URL 
git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27, 
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
Cloning into bare repository 
'/data_drive/RPiMonoSmoke/yoctoProject/raspberryPiBuild/downloads/git2/github.com.raspberrypi.linux.git'...

fatal: read error: Connection timed out
fatal: early EOF
fatal: index-pack failed

ERROR: Function failed: Fetcher failure for URL: 
'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'. 
Unable to fetch URL from any source.

Alex

>
> Thanks
> Ed


