Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDF0BE0079E; Thu, 16 Oct 2014 11:27:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E405CE00744
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 11:27:04 -0700 (PDT)
Received: by mail-yk0-f173.google.com with SMTP id 200so1389294ykr.32
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 11:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=T7Nmk7ktCA3DyGQKas61XLj/B2lCJzOeYM4CX4toZvw=;
	b=Vq9QYNPvkkl4dtPjZqdrNSo5YILAWaDRcl945yBx+5ILLzp4KKPfctPj64ffVURgyS
	u6AJkHsI5v3V16Y0y5CmgZOZXa4+nhO0bI/N7/aSwypRmZjfB5ZQjPgn2wWKAWtTTGBb
	JmpptH12dyJXEKHSA1AG6tpcchtmLT5mqAkSFYj8H6WrRpVF2dWkhd5/rY29H0GKQcDE
	rCBWAl3xNbnTlYcweMccaxTaufbs9M+gnz8/23VtP8+1csjOVObRxyzk+dITUlpKS82t
	kHQIkfOFYIDmgnjpB6kT4GVqi2U+5vcjckVKpSafp06GroSjlp7ue9dRhQv6Ti6jVqKQ
	d5cg==
MIME-Version: 1.0
X-Received: by 10.236.109.131 with SMTP id s3mr3793847yhg.67.1413484023570;
	Thu, 16 Oct 2014 11:27:03 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.172.8 with HTTP; Thu, 16 Oct 2014 11:27:03 -0700 (PDT)
In-Reply-To: <CAJTo0LYNjC6knwruug3cNP6DTwYGvBzDAxgseUnaVWRx0d+Y0g@mail.gmail.com>
References: <3230301C09DEF9499B442BBE162C5E482576880D@SESTOEX04.enea.se>
	<CAJTo0La=7QNS53qZDgShj+9yr6Ge0hyk9HFAdS+Ue0bZAkck4A@mail.gmail.com>
	<CAJTo0La9iMQ4ZiSuTFo35271c2McpzkSvugOEqL6dBNoncdkZQ@mail.gmail.com>
	<CAJTo0LYNjC6knwruug3cNP6DTwYGvBzDAxgseUnaVWRx0d+Y0g@mail.gmail.com>
Date: Thu, 16 Oct 2014 15:27:03 -0300
X-Google-Sender-Auth: uOtdN-0yODrN7MVxTcHLnLmaVbY
Message-ID: <CAP9ODKrgD2WDQFd=-xPw6NvV-W-CLkVhzXMH_jAmES7z83JOXw@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [OE-core] Truly scary SSL 3.0 vuln to be revealed soon:
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
X-List-Received-Date: Thu, 16 Oct 2014 18:27:06 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 16, 2014 at 1:45 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 15 October 2014 16:31, Burton, Ross <ross.burton@intel.com> wrote:
>> There's a openssl 1.0.1j out now (fixing FOUR (!) CVEs, including
>> "disabling SSLv3 didn't work"...).  I think considering the situation
>> we'd take the upgrade for dizzy, even though we've frozen.  Anyone
>> volunteering to take lead of upgrading dizzy to 1.0.1j and backporting
>> the relevant patches to the previous releases? (eg daisy is on
>> 1.0.1g).
>
> For anyone else interested, I've currently got 1.0.1j patches for
> dizzy in testing.  There's been debate over whether we backport the
> fixes to daisy's 1.0.1g, or upgrade as the number of fixes is
> growing...

I think the upgrade is the way to go. We are likely to break 1.0.1g
someday during backporting of security fixes.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

