Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B973E00863; Sat,  1 Nov 2014 16:25:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7D32E00857
	for <yocto@yoctoproject.org>; Sat,  1 Nov 2014 16:25:42 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id rl12so3427438iec.10
	for <yocto@yoctoproject.org>; Sat, 01 Nov 2014 16:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=GIRUx4WN13YSST/yqzu+V/KAn3qcbbPVvv6gQTexqdI=;
	b=u80SF/pOUpEUBes3+vzW8bxFvv8IUlm6ecpCJ3UpBkRXsRR+Uu17cCCLAj4M12dxqi
	dQVpx+0RGEavYPUaqeSQxm/qbZIRsusSiK8x1EklBnE2jeiQrU9IhsjSV+l8SGEd6m/A
	fd32E6rwER3CUenAFSfNNR68v7wl1kMMALyR/dqQKLV79HBTEDzhOo5mK5KrZ4X/3HJG
	gjc7p6YTk5VgZ/ArCUXYuSOG11n+lSNiCyP3XZvrs5xGByLyu1+yNflLc+1jmCmiBR4T
	VBfzwxAaneHg9JvlLo0Jz6JU34KQsAPGgPfqUQSaxB2NB6D3glrBv/sp+RHnudhOyByy
	JK3Q==
X-Received: by 10.50.70.34 with SMTP id j2mr6517011igu.47.1414884341354;
	Sat, 01 Nov 2014 16:25:41 -0700 (PDT)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id 40sm7283856iom.43.2014.11.01.16.25.40
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 01 Nov 2014 16:25:40 -0700 (PDT)
Message-ID: <54556BF4.2020803@gmail.com>
Date: Sat, 01 Nov 2014 19:25:40 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <54551DFF.6060000@gmail.com> <54552CB3.30002@gmail.com>
	<1851809.saLbNT2Y4Q@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1851809.saLbNT2Y4Q@peggleto-mobl5.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Angstrom Build Fails
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
X-List-Received-Date: Sat, 01 Nov 2014 23:25:49 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

This isn't a network issue as I can fetch Yocto sources from other servers without 
any problems.
Cheers Nick 

On 14-11-01 04:54 PM, Paul Eggleton wrote:
> On Saturday 01 November 2014 19:55:47 Sven Ebenfeld wrote:
>> Looks like problems with gitorious.org again.
>> You should either find a mirror again or wait if the problem solves
>> itself. Unfortunately I don't know, which git repository this recipe
>> (opie) needs so I don't know if a mirror exists.
>>
>> Am 01.11.2014 18:53, schrieb nick:
>>> Exception: ExpansionError: Failure expanding variable SRCPV, expression
>>> was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
>>> Fetcher failure: Fetch command failed with exit code 128, output: fatal:
>>> unable to connect to gitorious.org:
>>> gitorious.org: Name or service not known
> 
> "Name or service not known" - that suggests a DNS failure - are you sure you 
> don't have local network issues?
> 
> Cheers,
> Paul
> 

