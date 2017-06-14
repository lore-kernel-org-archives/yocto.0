Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8B8DE00B8F; Wed, 14 Jun 2017 13:50:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F02F8E00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 13:50:17 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id k71so5179336pgd.2
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 13:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=2pD/vikaBUeFI69x/f3I26/roBacoinL7g+Cd29VCbk=;
	b=VvM94CKBj/kfNhWCXnhaD51eDOXA0dDNHgK7cdbZ9X4/eQLJz0z+3RIO+BCBlo/BZW
	L6wDzf5TFdUqbHXxinLlsien+1TPcMB+uY+G0TOym43MPztuVfqlv1xkNQXKUp2PaYy4
	UUMKDxmXRGWB6wqs3viTX9U6xp5xtCbnnW6d2910gakX/L+OkWvffxlQ8jWL3agu93IJ
	8bl/tyGJqbmDAlvV16BKywmT5N3dZ097GEIKkMjr9gQ/Lkuw5c5UWOyds9l3o0/bQUXq
	Jo6LuWgvyaeBsJM4czU9gmVMaJeRK4BPJ3cYJb2dGjK/YOz3+VGFDLTfzF2aIvkoK4l0
	obJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=2pD/vikaBUeFI69x/f3I26/roBacoinL7g+Cd29VCbk=;
	b=HmQrkqGMiou16iYvMXc9oTZnBUR+6n5Tc1le1Q50dySVzxCFZfFWoracEE6dCeRhCF
	EN/AbYtA2VKpXTx0w7kMN/aUwPnNT6Yn2A7oOSiOhgKifyH7Nzqmhw9ISVMkkgw0wjTZ
	Ss3vut1nseoa4z4Qy1gcSrZGSVEflVUit7IB7N1rNstXLWoIu5Bm2jnZOdUz5yxTXi5e
	tTUzYLHXdY8NFmhojrutXQCwOqzh5PnaX8VW5hqgM2Uwxk0BKJBxaWwPn8iuZzCl1Irr
	/6F3YT0ueQkcDZQux5rXoRF2a9YrxxCboXpqUGLSzryo0y7ehPTGogUrFlU6LmdnJnrm
	Gsqw==
X-Gm-Message-State: AKS2vOzUbpAX5dLUluV/0rW1rqV15uF0YpvKIAbdmCkxMU3KJkphfHGf
	GH3+hrjqwtObKNv5sWg=
X-Received: by 10.98.73.205 with SMTP id r74mr1747473pfi.151.1497473416606;
	Wed, 14 Jun 2017 13:50:16 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:6485:daa7:356c:e921])
	by smtp.gmail.com with ESMTPSA id
	p186sm1301286pga.32.2017.06.14.13.50.15 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Jun 2017 13:50:15 -0700 (PDT)
To: yocto@yoctoproject.org
References: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
	<20170614082258.GA36175@mbabyjoh-desk.ger.corp.intel.com>
	<20170614092057.amc6kambns3nvcoq@ad.chargestorm.se>
	<e34fa94e-eedf-5c8f-6636-3acc9eb6fd4a@tibbo.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <1f9893f8-6fe1-0991-1e07-52345683535b@gmail.com>
Date: Wed, 14 Jun 2017 13:52:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <e34fa94e-eedf-5c8f-6636-3acc9eb6fd4a@tibbo.com>
Subject: Re: do_rootfs failed with message about host system(?) locale
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
X-List-Received-Date: Wed, 14 Jun 2017 20:50:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 6/14/17 3:46 AM, Dvorkin Dmitry wrote:
> ERROR: MyIMG-1.0-r1 do_rootfs: [log_check] MyIMG: found 2 error messages
> in the logfile:
> [log_check] Failed to set locale, defaulting to C
> [log_check] Failed to set locale, defaulting to C

Do you have locale setup correctly on your build host ?

> 
> ERROR: MyIMG-1.0-r1 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/dv/workspace/tpp.17/poky/x.tpp/tmp/work/tpp-tps-linux-gnueabi/MyIMG/1.0-r1/temp/log.do_rootfs.30451
> 
> ERROR: Task
> (/home/dv/workspace/tpp.17/poky/meta-tibbo/recipes-core/images/MyIMG.bb:do_rootfs)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 5400 tasks of which 5394 didn't need to
> be rerun and 1 failed.
> 
> the complete logfile is there:
> https://paste.fedoraproject.org/paste/s~SuKagYWMH2wmJLB6ckFQ
> 
> I got read of any errors in my image. The only thing is my host PC
> locale. But if I set
> export LANG=en_US
> export LC_ALL=en_US
> before running bitbake it doesn't help.
> 
> 


