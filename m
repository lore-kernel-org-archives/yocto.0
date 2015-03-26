Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71921E00832; Thu, 26 Mar 2015 12:59:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CC09E0056E
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 12:59:32 -0700 (PDT)
Received: by igcxg11 with SMTP id xg11so2145224igc.0
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 12:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=85U3N62ZzZPQZT7a7//OonHyuzRS3RpjsxE4/5rnZNw=;
	b=a3i59nyRw+ApjtE2V6u7/g2aQTJeOqFAPExGBK6O975VSAIx9oCYkbve/f3LB+18HI
	/K2FRF+Ji4nioDUJGqlsk5YtybiH+RlRKJ06N5/Md5QxXdN+o8qyWGWcb4OWLu7WRoWu
	0wdS/6gfSHBNGgHRmRAMtqFSmXJMua05TJU+bHEIkOTGvvA9ziPrjEVsjEmSQl3/NdU4
	xvTrVXh4lkkuubGD2DOzGafCpKN8BM55L0P+ZaAUseZGOSZGxEB/IRwS2XAZe6gdfFRR
	2JPtMaJXvISC1cqP71Awj8J6fyo5TN2IdXzvyXtTOMTj1gm/rC55/maXHiM8RtE8/TVG
	B6jA==
MIME-Version: 1.0
X-Received: by 10.43.69.68 with SMTP id yb4mr39946433icb.96.1427399972210;
	Thu, 26 Mar 2015 12:59:32 -0700 (PDT)
Received: by 10.50.249.133 with HTTP; Thu, 26 Mar 2015 12:59:32 -0700 (PDT)
In-Reply-To: <79C05072-0DDF-4DEE-9DEA-FC2758FBDBCD@gmail.com>
References: <CAK5mtewFh6rqfCkpUkBsuWJiZujgDvdSJS00ogKuDan133kCdg@mail.gmail.com>
	<79C05072-0DDF-4DEE-9DEA-FC2758FBDBCD@gmail.com>
Date: Thu, 26 Mar 2015 13:59:32 -0600
Message-ID: <CAK5mtexhUxCB9mdwoJBybkxnUyzfafQh_ukGvVkEVByL1ND6jw@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GCC 4.9 to 5.0
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
X-List-Received-Date: Thu, 26 Mar 2015 19:59:37 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 25, 2015 at 11:38 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Mar 25, 2015, at 9:28 AM, Victor Rodriguez <vm.rod25@gmail.com> wrote:
>>
>> HI everyone
>>
>> Does anybody knows if there is a best known method/plan/test suite for
>> moving from one version of gcc to another ?
>>
>
> we generate cross testing driver in the build tree for gcc-cross which should help
> in running the dejagnu in cross env. Unfortunately it has stopped working after libgcc
> was separated out. So it might need some fix. but you should see <cross>-testgcc script
> generated in build tree.


Thanks a lot for the help .. I am not doing cross compiling. However
all these help is really appreciated

Regards


>> I am in the middle of that painful task and wonder if yocto community
>> has a plan every time yocto do this switch
>>
>> Thanks a lot for all the help
>>
>> Regards
>>
>> Victor Rodriguez
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

