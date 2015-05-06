Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 072C1E00820; Wed,  6 May 2015 13:24:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92235E00477
	for <yocto@yoctoproject.org>; Wed,  6 May 2015 13:24:55 -0700 (PDT)
Received: by pabsx10 with SMTP id sx10so19010911pab.3
	for <yocto@yoctoproject.org>; Wed, 06 May 2015 13:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=sRPO5wZH7dvc2ZJ+ZbOQiQWD25yweEzFnD4kI6fwwMw=;
	b=n8UsuKBAuf6USOk8xoDwhkgnM2MVfGrubFio3Os85AxLEncymuNimSzi/E+ibq8c2a
	vCgnCopkIszr3kPbwWTbwU3BxWF37iTDXMc+2DpuKOa6dKjBENIoLTKt2hd6qeCCU++j
	wllYQ8RmNpVFOpmgRMdQk1I6FA20I01sap1pzHGqVDZVC1RhBmgrlxWay9na/8D0FYU7
	mKwOkS3IzC2tXg+9JRXjB712rvO+XoFIV4n6XFT3B/1B5nUl8lEwz5bzH3+14/PRy8mN
	tYSFOBcBRrm3wCbDub2EL4kDS9hAeillO3c41NmBZCucKvKpAEe0VQLuMrOXij1OC3WH
	4f4g==
X-Received: by 10.66.150.196 with SMTP id uk4mr912025pab.54.1430943894688;
	Wed, 06 May 2015 13:24:54 -0700 (PDT)
Received: from [10.22.11.251] (64.2.3.194.ptr.us.xo.net. [64.2.3.194])
	by mx.google.com with ESMTPSA id as1sm2670444pbc.39.2015.05.06.13.24.52
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 May 2015 13:24:53 -0700 (PDT)
Message-ID: <554A7893.3060701@gmail.com>
Date: Wed, 06 May 2015 13:24:51 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: openembedded-devel@lists.openembedded.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <55483F50.5020803@gmail.com> <554A76F1.8050407@gmail.com>
In-Reply-To: <554A76F1.8050407@gmail.com>
Subject: Re: [oe] Odroid-xu3 support
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
X-List-Received-Date: Wed, 06 May 2015 20:24:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 05/06/2015 01:17 PM, Trevor Woerner wrote:
> On 05/04/15 23:56, akuster808 wrote:
>> I have added support for the Odroid XU3 board. This layer can be found
>> at  https://github.com/akuster/meta-odroid. It supports XFCE graphics
>> and has sdcard image support.
>
> Sounds great!
>
Thanks.

> In addition to your meta-odroid there are also:
> https://github.com/stoupa-cz/meta-odroid
> https://github.com/MarkusEich/meta-odroid
>
> Yours supports: odroid-xu3
> stoupa-cz supports: odroid-c1, odroid-u2, odroid-xu
> MarkusEich supports: odroid-u2, odroid-xu
>
> It'd be nice if someone could put together one "meta-odroid" that would
> support them all ;-)

Yep. looking into that.

Or at least it'd be nice if at least one of them
> was found via the layer index ;-)

that is the goal.

regards,
Armin
>

