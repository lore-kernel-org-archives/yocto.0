Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D855FE00C14; Wed, 21 Mar 2018 08:39:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CD78E009A7
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:39:48 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id j137-v6so7429301ita.1
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DbzRhrhB8sS+zLETpENKeLWU1URlsSe6gimFSAD6yos=;
	b=aPrZO8Cr2hO8QZYQRUhAi9tSiSp1JfVw+Jnl4PE5qUo2/XxoP8HLhPr+UxPUik+2Aw
	Dzu4YBAHwDJjMHibfJ9D09Myj0/1ww32VwKrX3Nfk0hcWckiPH2XMaYqk3taj3PlwCWp
	ZNReZbzRpxslqxpQBUcSifxfcfd0DLyaqlHrZlwhRlBe2Z5EJURZOZ0UBpbpNeHuP1f9
	ewQQUDALRWgXVDKzkl/vQY9/TS5yseF+tshG2cROfrF+jTxsmg3kqTb4juloyRgtgqX2
	zxObz/RcsJUSIccCW83uVlJefoGQmjCPYcnU3J3jzhE7g2M3QTsdb2r1KqxeLSpI1xIt
	AxFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DbzRhrhB8sS+zLETpENKeLWU1URlsSe6gimFSAD6yos=;
	b=lYyeh3uvgYWfVuVcdeW5JNx1S02Ae6akmqwXlG03ocryqlqAp1QS0CdWruWXkZqsHG
	fnSV+O+/6FAoNwxVSI9i9Yh4poTANfpz0hDonhd8xKeJdnC2xVCzMuMnb3Nt8X4w3BsZ
	EnnFzmOLOwzXSSxhZeuJWlOpEvEmD+fl8Gc2ATdxASLSxH5RrOuRh2yQ2In3QYw3z7RP
	dh3055omrAxFCdji+OH1y0uGm+Jggte5KEJgVHuKLGBefWIHRUB7NqugBzT352akr1k0
	CqOvyt5lDkW51zGsAQBQe2eOuHhPr49A/bMRc4vvYNkN7bnF5zmQ55GTY1/UXJy5cSoC
	EjTA==
X-Gm-Message-State: AElRT7Ed9S2AM2JojsG811z60nz5sfTpgA33PBrjESIpo4CnwkVul78J
	dQJUcPooMgHRme4OZQLoOTFNmBq1ebP+mKT358zR/g==
X-Google-Smtp-Source: AG47ELt0rOzuJluveLl44Gmi2HUrIBywPWRnlijkEdROVzaUFtVAmOLmNXSc+h7om7a4uH66AVYKbMDYiT2iPPdKBmE=
X-Received: by 2002:a24:f685:: with SMTP id
	u127-v6mr4536387ith.131.1521646788160; 
	Wed, 21 Mar 2018 08:39:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Wed, 21 Mar 2018 08:39:27 -0700 (PDT)
In-Reply-To: <CAOT_U5bzcqTXOd43+redZi+1UWN7rW2fZuSeqkpSvLamDWy8_g@mail.gmail.com>
References: <CAOT_U5Y+GLS1VU_hJs0fi1_Z0xDcL5eYMAzpgknD1aJ-GbKwiQ@mail.gmail.com>
	<CAJTo0LYrM=Amzk731zxmpx5wqaKCiRnA5NQ74nC=y3WSa2BN1Q@mail.gmail.com>
	<CAOT_U5bzcqTXOd43+redZi+1UWN7rW2fZuSeqkpSvLamDWy8_g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Mar 2018 15:39:27 +0000
Message-ID: <CAJTo0La6iV6ZSQ5Ecys1LzUCsk14ckSukq+bRjAoiaBmAuLmCw@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Building BlueZ from git in Yocto
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
X-List-Received-Date: Wed, 21 Mar 2018 15:39:49 -0000
Content-Type: text/plain; charset="UTF-8"

If you look at the patch headers, you'll see that none of them are
tagged as backports.

Ross

On 21 March 2018 at 15:35, Alan Martinovic <alan.martinovic@senic.com> wrote:
> Hey Ross, thanks for the clarification.
>
> The issues reoccurred because I modified the recipe not to include any patches,
> falsely assuming that all of them were BlueZ backports and none is actually
> a Yocto specific change.
>
> On Wed, Mar 21, 2018 at 4:23 PM, Burton, Ross <ross.burton@intel.com> wrote:
>> On 21 March 2018 at 15:15, Alan Martinovic <alan.martinovic@senic.com>
>> wrote:
>>>
>>>
>>> Building it with Yocto results in the mentioned error:
>>>
>>> | ../git/src/genbuiltin hostname wiimote autopair policy   a2dp avrcp
>>> network input hog  gap scanparam deviceinfo  battery > src/builtin.h
>>> | ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp irmc pbap mas
>>> mns > obexd/src/builtin.h
>>> | /bin/bash: obexd/src/builtin.h: No such file or directory
>>> | Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
>>> | make: *** [obexd/src/builtin.h] Error 1
>>> | make: *** Waiting for unfinished jobs....
>>> | ERROR: oe_runmake failed
>>> | WARNING: exit code 1 from a shell command.
>>>
>>>
>>> It seems that for some reason in Yocto, make can't redirect into
>>> `obexd/src/builtin.h` while
>>> it does so successfully for native build.
>>
>>
>> Yocto will be doing an out-of-tree build with high parallelism, neither of
>> which you are likely doing yourself.
>>
>> The hint is "no such file or directory" for a file it is writing *to*.  This
>> means the parent doesn't exist, in this case obexd/src/.
>>
>> This is a typical race in out-of-tree and parallel builds, where genbuiltin
>> is racing against other commands to create the directory.  The fix is to
>> ensure that whatever rule calls genbuiltin actually does a mkdir first.
>>
>> We have a fix for this already in oe-core:
>>
>> http://git.openembedded.org/openembedded-core/tree/meta/recipes-connectivity/bluez5/bluez5/out-of-tree.patch
>>
>> So I imagine you're using an old release of Yocto.  I sent this patch to the
>> linux-bluetooth list in April 2016 but it was either moderated away or
>> missed.
>>
>> Ross

