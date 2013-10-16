Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EDE3E01688
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 04:50:29 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id w62so560890wes.21
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 04:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0mvsQJlkzXUSrMGbGwBVvlaKqIx4Nb9IhEpTDzmjhIQ=;
	b=sra2UDcZr3dqTN/yoaxprl2sat5PV25ynVGSYelT9cepLqDonP7yKaZhvyuWoGRP/B
	AztGuOuFp9BAWmO7yeVzR/3pv3jBz965f9NOBxlODqyIR42tpa/48RjgrGFEr06dQF9A
	D6w6DoBZ3bwXh6IZQ598arTPspPBpVnEqM9Kem2ue4QF4MIYxj8wzhTXAeqAgxUcuGHd
	PKpqVS2WxUF5Dtzh19Gm4NfJKu+6UuReRjH4hf3XbLPr9Enws+7qT1ZtV2XYHRmxLxZ5
	P0ONTHBgOo56tCQ5XbLvkzvLtuqEgEnIQ0FAfdqVXOp4KI/vWjFELV//yAwu7vaiQSsT
	CEDw==
MIME-Version: 1.0
X-Received: by 10.180.187.51 with SMTP id fp19mr24180795wic.1.1381924228094;
	Wed, 16 Oct 2013 04:50:28 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Wed, 16 Oct 2013 04:50:27 -0700 (PDT)
In-Reply-To: <3510100.mPPqXHWdjg@helios>
References: <CABHD4K9CTm3f-p66+aNgb-3ba168G4OveAkU8mPqtLruw1CEgQ@mail.gmail.com>
	<CABHD4K_gCtTMpO17BBstkjbKj_B9iJWMdchf2A_O2D+UZVpybg@mail.gmail.com>
	<CABHD4K_Q5Wmrbam4_XxK2zRUWvZF7Z7AYKV=YuzUp8SnZ+nc-Q@mail.gmail.com>
	<3510100.mPPqXHWdjg@helios>
Date: Wed, 16 Oct 2013 17:20:27 +0530
Message-ID: <CABHD4K-h4EnzmKL_==bMFNZK57EkGb+J255GoWj352fUZpMW7g@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How /etc/passwd packed into my final image
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
X-List-Received-Date: Wed, 16 Oct 2013 11:50:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hmm..Paul could you guide us for other way  Method of modifying in base-passwd
Why our changes are not reflected there?

On Wed, Oct 16, 2013 at 5:17 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Amit,
>
> On Wednesday 16 October 2013 17:01:11 Amit Tomer wrote:
>> I trying adding INHERIT += "extrausers" to my local.conf file but getting
>>
>> ERROR: Unable to parse extrausers: ParseError in configuration
>> INHERITs: Could not inherit file classes/extrausers.bbclass
>
> OK, I guess you are using an older version that does not have this facility.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

