Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DEA8E006B5; Mon, 25 Aug 2014 15:57:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E785CE004FF
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 15:57:00 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id fp1so21222035pdb.19
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 15:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=B2DqeTFXMk3FGb8m4UbTt+4RAqcgKLV8YJNjjkvh1IQ=;
	b=KBdsePQUl5x55b6Tzs6YMh7/KSHEduCLO3NgsiM5aCRpH+lRvrMB8QImMNbD3Z0WQX
	8NiRgKcsqXdkPNkK4Js5GRNKjEkQP8idtq0spUqCO3D78EKzENT8BhBppEqB89i+mZFy
	BGoJ0zI+s1TDtxVfvhOqK+p1yJvqYZYUPzjLNX7sCvvE+TRhWrUT6vkkFSC/KKS+HMhS
	GjJTTxn3Be6HB48oTaOIracsMc1xPXKQqOOAU+0U0g9p4e2JbXYwLH7Av04x7iKZ+esr
	8mCcFFKo8J4m42Nd1d/rgOLHGguNlArPpC1oIybTd22YJ5So55z3u/2f0pKcEnfy3aBP
	UceQ==
X-Received: by 10.68.164.164 with SMTP id yr4mr32304699pbb.57.1409007419968;
	Mon, 25 Aug 2014 15:56:59 -0700 (PDT)
Received: from ?IPv6:2601:c:9380:601:5c06:ce57:88ad:3611?
	([2601:c:9380:601:5c06:ce57:88ad:3611])
	by mx.google.com with ESMTPSA id ry9sm830172pbc.94.2014.08.25.15.56.58
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Aug 2014 15:56:58 -0700 (PDT)
Message-ID: <53FBBF39.7010909@gmail.com>
Date: Mon, 25 Aug 2014 15:56:57 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: "raj.khem@gmail.com >> Khem Raj" <raj.khem@gmail.com>
References: <53FA6F09.6040502@gmail.com>
	<CADkTA4PeNvAuv8SDfUNtpsTT_25OHvTMRbuFtAe2-gJZQxB4rA@mail.gmail.com>
In-Reply-To: <CADkTA4PeNvAuv8SDfUNtpsTT_25OHvTMRbuFtAe2-gJZQxB4rA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New kernel error after syncing
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
X-List-Received-Date: Mon, 25 Aug 2014 22:57:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Khem

it was the config option not being set..

seems like a kernel bug to me.. kconfig or otherwise.

thanks for the help.
- Armin

On 08/24/2014 05:14 PM, Bruce Ashfield wrote:
> On Sun, Aug 24, 2014 at 7:02 PM, akuster808 <akuster808@gmail.com> wrote:
>>
>> Hello,
>>
>> Is anyone else seeing kernel build issue on 3.14 with the resent updates?
>>
>>
>> I am getting the following errors on ppc64 (standard/qemuppc). x86-64 built
>> fine (core-image-minimal). building ppc now.
>
> Hopefully qemuppc is building 32 bit :) .. but outside of that, I was
> able to build 3.14
> fine on Friday.  But I just started another build to see if something
> snuck past in the
> recent feature merges.
>
> Bruce
>
>>
>> |   LD      init/built-in.o
>> | mm/built-in.o: In function `.vm_cgroup_css_alloc':
>> | vm_cgroup.c:(.text+0x7103c): undefined reference to `.res_counter_init'
>> | vm_cgroup.c:(.text+0x71090): undefined reference to `.res_counter_init'
>> | mm/built-in.o: In function `.vm_cgroup_read_u64':
>> | vm_cgroup.c:(.text+0x711c4): undefined reference to
>> `.res_counter_read_u64'
>> | mm/built-in.o: In function `.vm_cgroup_charge_memory_mm':
>> | (.text+0x71348): undefined reference to `.res_counter_charge'
>> | mm/built-in.o: In function `.vm_cgroup_uncharge_memory_mm':
>> | (.text+0x713a0): undefined reference to `.res_counter_uncharge'
>> | mm/built-in.o: In function `.vm_cgroup_charge_shmem':
>> | (.text+0x71508): undefined reference to `.res_counter_charge'
>> | mm/built-in.o: In function `.vm_cgroup_uncharge_shmem':
>> | (.text+0x71560): undefined reference to `.res_counter_uncharge'
>> | make[2]: *** [vmlinux] Error 1
>> | make[1]: *** [sub-make] Error 2
>> | make: *** [all] Error 2
>>
>> - armin
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

