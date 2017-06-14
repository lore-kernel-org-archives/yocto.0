Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10879E00B8F; Wed, 14 Jun 2017 13:59:49 -0700 (PDT)
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
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB71AE00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 13:59:47 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id v18so5285238pgb.1
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 13:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=K3X+nRUPO9Igyt15smnLk8JUsg+W8GqQ5cOi+HXs6Zg=;
	b=Nh6VJMOzyKpFBaSloRsqbtbk7RgrTkrAy+YxZ2jWode3RZ3PjSQIcwf68A+CLvWDOk
	/Uqc9V1LdN8bhhLacNEzQIglIcSSpGAtKM7WI+yiS+Vjp++ymD7oBdsf2aNmWmTy1+xY
	waAqDEkgkoa2Cf/kVyLlclX2dUzlN699GV2elD4vd5GL2iIXgs0FsmtNyefC4WbFPiq+
	cMIOwDmAjSwtFsObqiOf5l6XTN6gNDT2Qe0yDi9Fsoqu0MrDDK55BhHFbqe9+CKTQOUM
	vc51m27uQOPzlcWywZANkoKuWtP+HC4CsQByb9+kMRVIasKL1yWEO4b3MHgAxbqPmqP3
	Lddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=K3X+nRUPO9Igyt15smnLk8JUsg+W8GqQ5cOi+HXs6Zg=;
	b=k6rLTzGncu7aBNIqe5/umIHkPYXpGYqo5x5X5j50+7Rny0Rc+PqbNpR3OcbjYevQC5
	vFCWakbgGVZaNxBomX41JgNOeCnL4GWO1Mc9Yji0kVtVJkWa6Ns5F0Gj3X5XZYesrWA4
	7OsXgNVt3+0zVZCubJ/itPQ0rJECYAkeJDxDVIamctFcIpox2QtrADAARBu8+09XkXbE
	AGbu/pY6AYCqeWQx5vrIpHDh9ta7nbiGFrYmH610n4vYyPn2CRmQE71gYcQDUV5Lwaxc
	X1aRgji4M2Ucsvr9axBO5aeUykBk066XXOhWq34sqYQfe3qus/+lYf85KaGgW7IROL8t
	aDFA==
X-Gm-Message-State: AKS2vOxF3poiwegRi7dqwQ2w/fghUh7YMtMg3ePVrzjwkIsIopkseCih
	NH05eAWbEEuPKHWFjIs=
X-Received: by 10.99.127.78 with SMTP id p14mr1892001pgn.124.1497473986485;
	Wed, 14 Jun 2017 13:59:46 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:6485:daa7:356c:e921])
	by smtp.gmail.com with ESMTPSA id
	p76sm1680279pfa.53.2017.06.14.13.59.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Jun 2017 13:59:45 -0700 (PDT)
To: Dvorkin Dmitry <dvorkin@tibbo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <95908562-7fd4-dc4f-7ad1-df07140f7947@tibbo.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <f5f1f30d-529d-da41-0bcf-d9cd965f8bf1@gmail.com>
Date: Wed, 14 Jun 2017 14:01:35 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <95908562-7fd4-dc4f-7ad1-df07140f7947@tibbo.com>
Subject: Re: locale error at do_rootfs step
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
X-List-Received-Date: Wed, 14 Jun 2017 20:59:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 6/14/17 1:29 AM, Dvorkin Dmitry wrote:
> I'm using the newest master branch of poky, with DNF. Host PC locale is
> non-EN.
> 
> setting host PC LANG and LC_* to en_US doesn't help
> 
> Got a strange error:
> 
> 
> NOTE: Executing RunQueue Tasks
> ERROR: MyIMG-1.0-r1 do_rootfs: [log_check] MyIMG: found 2 error messages
> in the logfile:
> [log_check] Failed to set locale, defaulting to C
> [log_check] Failed to set locale, defaulting to C

Can you check where in do_rootfs() its calling locale ?

> 
> ERROR: MyIMG-1.0-r1 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/dv/workspace/tpp.17/poky/x.tpp/tmp/work/tpp-tps-linux-gnueabi/MyIMG/1.0-r1/temp/log.do_rootfs.11204
> 
> ERROR: Task
> (/home/dv/workspace/tpp.17/poky/meta-tibbo/recipes-core/images/MyIMG.bb:do_rootfs)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 5400 tasks of which 5384 didn't need to
> be rerun and 1 failed.
> 
> the complete logfile is attached.
> 
> 
> 
> 


