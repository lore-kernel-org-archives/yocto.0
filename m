Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77AEBE00CAA; Mon, 29 Apr 2019 00:23:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A7DEE00C44
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 00:23:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x3T7MRlu009864
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 29 Apr 2019 00:22:37 -0700
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Mon, 29 Apr 2019 00:22:16 -0700
To: Richard Weinberger <richard.weinberger@gmail.com>, <yocto@yoctoproject.org>
References: <CAFLxGvxbeZvadxguGoGHZSzeF2EnZ9EkR0aLVOh4FnyNi6VGmw@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <df7617cf-b6cd-dbf4-c3b7-7d283ab950d6@windriver.com>
Date: Mon, 29 Apr 2019 15:33:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvxbeZvadxguGoGHZSzeF2EnZ9EkR0aLVOh4FnyNi6VGmw@mail.gmail.com>
X-Originating-IP: [128.224.162.148]
Subject: Re: Disabling sshd is harder than it should be
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
X-List-Received-Date: Mon, 29 Apr 2019 07:23:10 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/26/2019 09:26 PM, Richard Weinberger wrote:
> My thud based system installs openssh-sshd but I want to have sshd
> disabled by default.
> So I checked the docs how to disabled a systemd service by default and
> found SYSTEMD_AUTO_ENABLE, perfect.
>
> After I put that into my bbappend file I figured that sshd is still
> enabled by default.
> With one difference, it was no longer present as sshd.socket, but as
> sshd.service.
> This seemed odd and after another hour I realized that now sshd is
> stared as good old sysvinist script. Hmm.
>
> To finally disable sshd by default I had to disable it via systemd
> _and_ sysvinit.
> Is this really the expected way? :-(
>
> For reference, this is my bbappend file which works:
> SYSTEMD_AUTO_ENABLE = "disable"
> INITSCRIPT_PARAMS_${PN}-sshd = "remove"
>

When selecting systemd as the init manager, the following line is 
recommended.
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
Then you should only need: SYSTEMD_AUTO_ENABLE = "disable"

Best Regards,
Chen Qi

