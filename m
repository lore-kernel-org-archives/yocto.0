Return-Path: <TOlausson@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25B83E00BEA; Tue, 28 Nov 2017 07:02:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Nov 2017 07:02:17 PST
Received: from ORO-EDGE-02.luxoft.com (oro-edge-02.luxoft.com [109.166.244.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D004E00B1E
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 07:02:17 -0800 (PST)
Received: from ORO-HUBT-02.luxoft.com (172.30.115.36) by
	oro-edge-02.luxoft.com (172.30.19.22) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Tue, 28 Nov 2017 17:01:10 +0200
Received: from [172.31.241.160] (172.31.241.160) by ORO-HUBT-02.luxoft.com
	(172.30.115.101) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Tue, 28 Nov 2017 17:01:11 +0200
To: Tobias Olausson <tobias.olausson@pelagicore.com>, <yocto@yoctoproject.org>
References: <13e28abd-e0b3-3203-2fbe-e0e3961a7d16@pelagicore.com>
From: Tobias Olausson <TOlausson@luxoft.com>
Message-ID: <b93cd9af-3de9-9d7a-6208-1f400d7ed83e@luxoft.com>
Date: Tue, 28 Nov 2017 16:01:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <13e28abd-e0b3-3203-2fbe-e0e3961a7d16@pelagicore.com>
X-Originating-IP: [172.31.241.160]
X-Mailman-Approved-At: Tue, 28 Nov 2017 07:54:31 -0800
Subject: Re: rpm/dnf issues when building an SDK
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
X-List-Received-Date: Tue, 28 Nov 2017 15:02:20 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hey all,

Just for any future users that encounter the same issues, it's a bug in
utils.py for bitbake, for which there is a patch submitted here:
https://patchwork.openembedded.org/patch/144399/

Applying the patch as follows:
patch -d /path/to/poky -p1 <
/path/to/0001-bitbake-lib-bb-utils-fix-movefile-copy-to-dir-fallba.patch

Makes the SDK build succeed on all my machines.

//Tobias


On 11/13/2017 06:13 PM, Tobias Olausson wrote:
> Hey,
>
> I have a weird issue when generating an SDK for the image I'm building.
> Somehow, I end up with the following errors:
>
> $ bitbake -c populate_sdk core-image-pelux-minimal
> ERROR: core-image-pelux-minimal-1.0-r0 do_populate_sdk: unable to place
> /home/vagrant/pelux_yocto/build/tmp/work/intel_corei7_64-pelux-linux/core=
-image-pelux-minimal/1.0-r0/sdk/image/etc/rpmrc
> in final SDK location
> ERROR: core-image-pelux-minimal-1.0-r0 do_populate_sdk: unable to place
> /home/vagrant/pelux_yocto/build/tmp/work/intel_corei7_64-pelux-linux/core=
-image-pelux-minimal/1.0-r0/sdk/image/etc/dnf/dnf.conf
> in final SDK location
>
> I have no idea why, and re-running the populate_sdk step succeeds
> without any tasks being run, and even after those errors, an sdk is
> produced, but I end up with 2 errors and a non-zero exit code. A quick
> check easily reveals that the files it wanted to place in "final SDK
> location" are non-existent, so the error as such makes sense.
>
> In my CI system I build this using vagrant with docker as the provider,
> and it's only then I notice this issue. When building locally (with
> docker or otherwise) there are no such issues. The CI system (and when I
> build locally) are ubuntu and debian, respectively. The error is present
> in the CI setup regardless of having rpm on the host machine or not.
>
> I couldn't find any info on other people having the same problem, and I
> start feeling stuck on this because it only fails in some environments,
> it seems.
>
> Cheers,
>
> Tobias Olausson
> Software Engineer
>
> PELAGICORE | Experience Change
> http://www.pelagicore.com/
>
> Registered Office Gothenburg, Sweden
> Registration No. 556780-4199
>
> PELAGICORE a part of LUXOFT


________________________________

This e-mail and any attachment(s) are intended only for the recipient(s) na=
med above and others who have been specifically authorized to receive them.=
 They may contain confidential information. If you are not the intended rec=
ipient, please do not read this email or its attachment(s). Furthermore, yo=
u are hereby notified that any dissemination, distribution or copying of th=
is e-mail and any attachment(s) is strictly prohibited. If you have receive=
d this e-mail in error, please immediately notify the sender by replying to=
 this e-mail and then delete this e-mail and any attachment(s) or copies th=
ereof from your system. Thank you.

