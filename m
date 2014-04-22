Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C4C5E00AE2
	for <yocto@yoctoproject.org>; Mon, 21 Apr 2014 18:36:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3M1acJX012442
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 21 Apr 2014 18:36:39 -0700 (PDT)
Received: from [147.11.117.86] (147.11.117.86) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Mon, 21 Apr 2014 18:36:31 -0700
Message-ID: <5355C79C.1020704@windriver.com>
Date: Mon, 21 Apr 2014 20:36:28 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <5353BA79.3060206@dynamicdevices.co.uk>
In-Reply-To: <5353BA79.3060206@dynamicdevices.co.uk>
Subject: Re: Question about rebuilding RPM package index for updated RPMs when bitbake completes
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
X-List-Received-Date: Tue, 22 Apr 2014 01:36:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/20/14, 7:15 AM, Alex J Lennon wrote:
> Hi,
>
> I'm trying to put in place a development workflow using the PR server,
> RPM package feeds and smart update/install on a target.
>
> I see that when I modify and rebuild my recipe, foo, the PR server
> increments its count within the RPM filename, but the RPM feed data
> doesn't seem to update.
>

...

> So if I am understanding the above correctly, when I make a change to a
> recipe and build it, PR automatically
> updates, the old RPM is removed and the new RPM added to the feed
> directory. However the package index
> for the feed is not updated.
>
> So if at that point I try to make use of the feed on a target I am
> likely to find something is broken.

The feed is normally indexed (createrepo) either when you manually run the 
package-index operation, or when you construct a filesystem.  Until you do that, 
the feed directories are transient.

> If that is true would it make sense to leave the old RPM in the feed
> directory until package-index
> is re-ran, or to run package-index automatically at the end of a build
> when RPMs have changed?

I -never- export the feed directories from the project directory.  Instead, I 
copy the packages from the feed directory to where I share them, and then run 
the indexer against the external repository.  This preserves the older versions 
and also makes the new ones available.

To run the indexer I have to configure and run it manually...

PATH=/home/mhatle/build-6.0-RCPL-test/build/tmp/sysroots/x86_64-linux/bin:/home/mhatle/build-6.0-RCPL-test/bitbake/tmp/sysroots/x86_64-linux/usr/bin:$PATH
/home/mhatle/build-6.0-RCPL-test/bitbake/tmp/sysroots/x86_64-linux/usr/bin/createrepo 
--update -q <path to feed>

So for qemux86_64, I end up running the above three times.  all, x86_64 and 
qemux86_64.

Then on the target I just do:

smart update
smart upgrade -y

--Mark

> Thanks,
>
> Alex
>
>
>


