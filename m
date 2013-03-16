Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F2F1E0121B
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2013 01:17:08 -0700 (PDT)
Received: by mail-wg0-f53.google.com with SMTP id fn15so3782051wgb.32
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2013 01:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=qsSlU+/NYeZ2XGJce/xSQn9Nafoi6AcGPSHrx2M5qZo=;
	b=E/m8vcZd1E/9/QFUAyJPnpRj6zanlhz+8/zx7btY1e2JXC8DvXiufTDU9c5Y9WRUG5
	K4apsRb81WqdV2XdNFhjccfV5YkVbhFx5ue7PKdgESEMDdE7GSdnZ0LIwkzafPcsrbiJ
	KFwlmtW9hXFe7TfBSY3jUYpHydkiSqJtMZGjArztRkvxSHrPwZvcPeyv5JmtWEztPQvX
	/cM7nPdiwSgOsFuMSZ3kNB79kXMyiBKDWmPiKJZKhj/BR2VptTj0e4BF6PpM3/B8F4IA
	sYOmPcJKPsuaJyEjRnEV6I5z9hMTZbLFfTsxCOgchW2gwILhhYNS31Yfqs0LkxQYd/h5
	sIPw==
X-Received: by 10.180.75.110 with SMTP id b14mr7274809wiw.21.1363421827027;
	Sat, 16 Mar 2013 01:17:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sat, 16 Mar 2013 01:16:46 -0700 (PDT)
In-Reply-To: <CACzyEJ_rkzc1udoPsb2Nh34n8DPefGpp5Xvh=8E-w5d5TumBSg@mail.gmail.com>
References: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
	<CAJTo0LY52qE3QMO_FffY3GOkt2VDd+bNbYkX130y3wv34zu5iA@mail.gmail.com>
	<CACzyEJ_rkzc1udoPsb2Nh34n8DPefGpp5Xvh=8E-w5d5TumBSg@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Sat, 16 Mar 2013 01:16:46 -0700
Message-ID: <CACzyEJ8nphA7Li_SOK3BaDT+1qfVKTdxDsncyD5N2C8jYB0G5g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Sat, 16 Mar 2013 08:17:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

Wither further more testing, even at
"e609afe4d747059480b406602cab90b7c36a0572", I still get the neard
error.

I suspect my sstate or working files, since this error comes at
package generation.
So I did "-c cleansstate" "-c cleanall" then run it with Richard fix
as my master head (7803f5f98cf4d12d59ac793d9eb0048b701cafb7)

It still gives me an error.

So at this point, I will wait to see if any one is seen this recently.

Thank you.

Insop


On Fri, Mar 15, 2013 at 10:55 PM, Insop Song <insop.song@gmail.com> wrote:
> On Fri, Mar 15, 2013 at 10:45 PM, Burton, Ross <ross.burton@intel.com> wrote:
>> On 15 March 2013 22:37, Insop Song <insop.song@gmail.com> wrote:
>>> I am using HEAD of master, and I have this error after I use commit
>>>
>>> "
>>> commit 1ceb13dda11645229053fc4840954333f8910ba4
>>> Author: Martin Jansa <martin.jansa@gmail.com>
>>> Date:   Wed Mar 13 20:04:51 2013 +0100
>>> "
>>>
>>> Could anyone know about this?
>>
>> Are you sure you're using head?  This should have been fixed with this commit:
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4022
>>
>> Ross
>
> Thank you for the information.
> Yes, I am on master, see this from my log in previous email.
> I have the fix for the bug (4022) in my master, but that don't fix it,
> until I my my head to "e609afe4d747059480b406602cab90b7c36a0572"
>
>> meta
>> meta-yocto        = "master:1ceb13dda11645229053fc4840954333f8910ba4"
>> meta-realtime     = "schedtool:a766d16a1cf4da3c2dd13b8c7e53f89775733187"
>> meta-yocto-bsp    = "master:1ceb13dda11645229053fc4840954333f8910ba4"
>
> Thank you,
>
> Insop

