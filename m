Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 537EEE00B76; Tue, 20 Jun 2017 05:08:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f193.google.com (mail-yb0-f193.google.com
	[209.85.213.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D50BEE009A0
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 05:08:11 -0700 (PDT)
Received: by mail-yb0-f193.google.com with SMTP id j65so6168868ybj.3
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 05:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OJbW2qOgwl2Hm7xdBO3JZM6takrT+Oyb4pVR1B7n0U0=;
	b=IA/wBaaMv9tWR9wtqgSXBxX5qLGAxDAS66rcmtc9FJvxd0SKJOX81A11a0hhZ8EgVH
	klsWdoEM8+KvVpb/USxJEnhHhHsxj1G3K1q3+NEialciJLQR4Gx2X1Pi24nuDQWibbr9
	F7GjZk0g34lE8xqhd1l+gw5grQmUPT+KIZ4tDRBC8A+457CRqO94RsHlqiNB/jxZSKsl
	1iUDseS3WA9y3YoZv+f/8BrVhXX2pit9laaQZieJVGLpwyLY/1pcOs0KIlHhGtRDidwu
	yIG2XbngsEnAZnzbPnBpwG8HSlXEZw2QAwnfs3fMoZNLkR3t18BhVxuvsz+MbhASuMME
	itFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OJbW2qOgwl2Hm7xdBO3JZM6takrT+Oyb4pVR1B7n0U0=;
	b=kbK2UIY+0iqR3RkFBGUQAD7Vf9cXnquQ9gx7IL2wn7SYVx4MQCXl6d24pQAeXGvHoo
	6mgzjKv0+VvUf9Ww38poNp8qTOLc2gEO8/+DGlD9UTLrg7hQFUjNDHZngb56ylSJ03P3
	R7xeh4xnONAHsKsBQLkbG/54O/i3PGi7OOLuUYovNgx4v0CVVxfOqTzix+bSKxhuTpgZ
	Nh5T0P2CcsK/LytOvS10m6P49xKDlPzTau4IBv6wNpouFOXJpLmO/UBs5hy/A39LxZCr
	wBFnZ/Wababsj4biqqzTH2ZSY+4m6c9xOJ3GA4C+pYSTEHr76CFRwZd79J58JjnWnKT4
	z7/A==
X-Gm-Message-State: AKS2vOxvx4rJtITVswm9LARl+0NRGPK6tGX0tq6we4ERrTjzkfmtyYfx
	O3UJlYAWvj/7Y/3F/XPY4oaN84yJT2yv
X-Received: by 10.37.163.166 with SMTP id e35mr22498462ybi.74.1497960491050;
	Tue, 20 Jun 2017 05:08:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.204.196 with HTTP; Tue, 20 Jun 2017 05:08:10 -0700 (PDT)
In-Reply-To: <617def0d-4e2a-0fdf-27f7-8cfc52b899a8@windriver.com>
References: <20170619134545.16674-1-nathan@nathanrossi.com>
	<617def0d-4e2a-0fdf-27f7-8cfc52b899a8@windriver.com>
From: Nathan Rossi <nathan@nathanrossi.com>
Date: Tue, 20 Jun 2017 22:08:10 +1000
Message-ID: <CA+aJhH0MS_qp+HRwy0H4B_2FpkXSnBVuPZFfh7=cDhWneQjuWg@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross][PATCH] src/rtld: Add MicroBlaze support based on glibc-2.24
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
X-List-Received-Date: Tue, 20 Jun 2017 12:08:14 -0000
Content-Type: text/plain; charset="UTF-8"

On 20 June 2017 at 00:20, Mark Hatle <mark.hatle@windriver.com> wrote:
> I've merged this to the cross_prelink_staging (and master_staging, even though
> it's a no-op there).  The change seems fairly obvious to me.
>
> Can you verify it is working properly as merged into cross_prelink_staging, then
> I'll move it to the full cross_prelink and master.

Tested the cross_prelink_staging branch and verified that it behaves
as expected.

Sorry I forgot to add the ChangeLog entry. However when you added it
you used 2016 for the year.

On a side note, once merged into the cross_prelink branch do you see
any issues with updating the SRCREV in oe-core?

Thanks,
Nathan

>
> --Mark
>
> On 6/19/17 8:45 AM, Nathan Rossi wrote:
>> Add definitions/config to support MicroBlaze, using glibc-2.24 as
>> reference.
>>
>> Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
>> ---
>>  src/rtld/dl-tls.c |  5 +++++
>>  src/rtld/rtld.c   | 12 ++++++++++++
>>  2 files changed, 17 insertions(+)
>>
>> diff --git a/src/rtld/dl-tls.c b/src/rtld/dl-tls.c
>> index 8b972ff126..2da6bc5c66 100644
>> --- a/src/rtld/dl-tls.c
>> +++ b/src/rtld/dl-tls.c
>> @@ -133,6 +133,11 @@ rtld_determine_tlsoffsets (int e_machine, struct r_scope_elem *search_list)
>>        tls_tcb_size = 0;
>>        break;
>>
>> +    case EM_MICROBLAZE:
>> +      tls_dtv_at_tp = 1;
>> +      tls_tcb_size = 8;
>> +      break;
>> +
>>      default:
>>        /* Hope there's no TLS!  */
>>        for (i = 0; i < search_list->r_nlist; i++)
>> diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
>> index 8d7d760a57..3196981247 100644
>> --- a/src/rtld/rtld.c
>> +++ b/src/rtld/rtld.c
>> @@ -215,6 +215,15 @@ parse_opt (int key, char *arg, struct argp_state *state)
>>     | (((type) == R_NIOS2_COPY) * ELF_RTYPE_CLASS_COPY)          \
>>     | (((type) == R_NIOS2_GLOB_DAT) * ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(EM_ALTERA_NIOS2)))
>>
>> +/* From glibc-2.24: sysdeps/microblaze/dl-machine.h */
>> +# define microblaze_elf_machine_type_class(type) \
>> +  (((type) == R_MICROBLAZE_JUMP_SLOT || \
>> +    (type) == R_MICROBLAZE_TLSDTPREL32 || \
>> +    (type) == R_MICROBLAZE_TLSDTPMOD32 || \
>> +    (type) == R_MICROBLAZE_TLSTPREL32) \
>> +    * ELF_RTYPE_CLASS_PLT \
>> +   | ((type) == R_MICROBLAZE_COPY) * ELF_RTYPE_CLASS_COPY)
>> +
>>  int
>>  elf_machine_type_class (int type, int machine)
>>  {
>> @@ -243,6 +252,8 @@ elf_machine_type_class (int type, int machine)
>>       return sparc64_elf_machine_type_class(type);
>>      case EM_ALTERA_NIOS2:
>>       return nios2_elf_machine_type_class(type);
>> +    case EM_MICROBLAZE:
>> +     return microblaze_elf_machine_type_class(type);
>>
>>      default:
>>        printf ("Unknown architecture!\n");
>> @@ -284,6 +295,7 @@ machine_no_rela (int machine)
>>      case EM_SPARC32PLUS:
>>      case EM_SPARCV9:
>>      case EM_ALTERA_NIOS2:
>> +    case EM_MICROBLAZE:
>>        return 0;
>>      default:
>>        return 1;
>>
>

