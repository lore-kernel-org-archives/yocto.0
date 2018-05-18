Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4FA9E009E2; Thu, 17 May 2018 22:55:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46D3DE009B9
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 22:55:21 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id c11-v6so3935840plr.5
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 22:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=E9eB6YniNXrdIsXZ7/XGjBVKU4Wp+sNG3UQcTMO7PRY=;
	b=HXJ0xghH82RZ9XWQYi38g9AIsxJ3+WfMaHUGVyNiIV8aUQGi73Ko6r+xcRG3Ng+HHj
	0uOex7Z8Wu1DnIuVNX2Q3a/MNMnM0HhUOEW7gdc1WyLysKWVnnEhjYeDDwJIlJ5emsbX
	t+QPzcr+mqDfbTtk3cisufGB+UOMLF89zDSRLClMqqNBQUkX8bzfK3RGMsTemKGozXXs
	kN16t45kFeNncYbDFZdBy2/COVMKcAHhnXltIt+dqWt2WboE5Dgb1fzI9Ug1jrTaavR+
	3Ys871bh9hB72HoxE+s9lhfuEmpr10P77oVeClvBDaFcBu7Fd9E3/AjDkILNMkVX+opX
	vpwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=E9eB6YniNXrdIsXZ7/XGjBVKU4Wp+sNG3UQcTMO7PRY=;
	b=RCBKNeNliEuwe1x5BpTlDKHZK/uByjbFZbJix2KrvMKPHWEWqfNY67G0dLfdnnMVie
	jUHwcQbxulbwHYYoZw19H0eQ9MApH9VekGMrnf6Uwv8kwWpi7wm2CQcOgeHerJGrt4AY
	k82/HvBzqsBJ30v+1OwB+irvr9TUkfNJTgTuXxtq0YniUxi0LTF/nl2HAnPN/ayyUtVC
	49/SF1ihPIhRLaDJavx5HMBiA9sIsr0YW8KTlu9B/GupGaHOjZXc+zRJGviCzEfg1kuD
	PhuOFLBc4MSBZhTqsdUekxgNiaDzsq0wiDAZwHNxDSe/xs5dfvtyiC5wch/zR3eYBr9a
	NWlg==
X-Gm-Message-State: ALKqPwd0gdaZneFNWAjYwpNpphX4xh1V0En1+hd8GQk8adhwPCfUUDgR
	tBwScG9Du8rb9mcoL5A332wzwoNSFjbig4gbD/A=
X-Google-Smtp-Source: AB8JxZot2IIOo2OpS8cZOnbLNGY3UJod5J7V/gs+i1DbpdBl+5zg7zARXCfZHcWJ+Li6Hn0rL0HuP2ENk3PjOF8Ebzg=
X-Received: by 2002:a17:902:14d:: with SMTP id
	71-v6mr8098398plb.275.1526622921112; 
	Thu, 17 May 2018 22:55:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:8b91:0:0:0:0 with HTTP; Thu, 17 May 2018 22:54:50
	-0700 (PDT)
In-Reply-To: <20180517104640.GA1398@jama>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama> <20180517104640.GA1398@jama>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 17 May 2018 22:54:50 -0700
Message-ID: <CAMKF1soKXsC6_FG2g116KusAf=rBMDoi0mdfjdKtYKeASS+Whw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Fri, 18 May 2018 05:55:22 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 17, 2018 at 3:46 AM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Thu, May 10, 2018 at 09:11:45PM +0200, Martin Jansa wrote:
>> > > 5) nativesdk-libxcrypt fails to build (not sure which change caused
>> > > this, it build OK with sumo since the -std=gnu99 addition.
>> > > ../git/crypt-sunmd5.c:189:13: error: 'snprintf' output may be truncated
>> > > before the last format character [-Werror=format-truncation=]
>> > >               "$" CRYPT_ALGNAME "," ROUNDS "%u$%s$",
>> > >               ^~~
>> > >
>> >
>> > something new, I will look into reproducing this.
>
> The fix from you worked for me, thanks!

There is a followup here which now doesnt need local patch

http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/master&id=0924a69244892097f60adbf6c7f576375bea7870

> Just FYI if someone needs similar fix, backporting this:
> https://patchwork.kernel.org/patch/9170055/
>
> fixed the issue for me, now I have successful kernel build.
>
> The failing code was always in put_user calls, e.g. kernel/exit.s was showing:
> @ 1581 "kernel-source/kernel/exit.c" 1
>         .ifnc r0,r0; .ifnc r0r0,fpr11; .ifnc r0r0,r11fp; .ifnc r0r0,ipr12; .ifnc r0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif
>         .ifnc r5,r2; .ifnc r5r2,fpr11; .ifnc r5r2,r11fp; .ifnc r5r2,ipr12; .ifnc r5r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif
>         .ifnc r1,r1; .ifnc r1r1,fpr11; .ifnc r1r1,r11fp; .ifnc r1r1,ipr12; .ifnc r1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif
>         bl      __put_user_4
> @ 0 "" 2
>
> with the error triggered on the middle line.
> /tmp/ccHq8ugv.s: Assembler messages:
> /tmp/ccHq8ugv.s:1179: Error: .err encountered
> /tmp/ccHq8ugv.s:1331: Error: .err encountered
> /tmp/ccHq8ugv.s:4617: Error: .err encountered
> /tmp/ccHq8ugv.s:6222: Error: .err encountered
> /tmp/ccHq8ugv.s:8705: Error: .err encountered
> /tmp/ccHq8ugv.s:14486: Error: .err encountered
> /tmp/ccHq8ugv.s:14646: Error: .err encountered
> /tmp/ccHq8ugv.s:14806: Error: .err encountered
> /tmp/ccHq8ugv.s:14966: Error: .err encountered
> /tmp/ccHq8ugv.s:15126: Error: .err encountered
> /tmp/ccHq8ugv.s:15286: Error: .err encountered
>
> That leaves only few issues in our internal components and strange failure with perf which fails to include various header files:

perf is building file for qemux86 on o-core
I wonder if this is an issue related to your
kernel version.


>
> Cheers,

