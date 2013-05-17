Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1806DE01529
	for <yocto@yoctoproject.org>; Fri, 17 May 2013 09:48:57 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id ox1so4135317veb.22
	for <yocto@yoctoproject.org>; Fri, 17 May 2013 09:48:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=H+3VAa7oW41EuCHijaT4fWBp0XEF3iLwrvvzFf0k/mg=;
	b=YZEAUTfUe/tWVocXWQYj8qi6gFTSMKUvujPckwkA9P+UGs/tB07FlqedVu5/69xkyU
	Lsfy5x4kx8RKgetU+91HvMqnTna6bj3W3cC7pgKVv0DYvMNVAD3oycKZEWsP8DzOC4B7
	G2dsnEE/TT1YeztzmQeXAdYB6eOthZvhvm5KG36gVORgVendC7LypRN39IUBhvOYjvaq
	Dt//ncjC7eCjyYWCUazm7yaSfCQVN5eIs5QiYlP1bNmDFm0QqCBFMp0Z8lrBKsp51QsX
	oIPo3GBREA/ex+MSeG4qtWqiqB+lnFQDQYpQnu0VtMywzsRx9VRMjYX6P4boCSi99As9
	6G4A==
MIME-Version: 1.0
X-Received: by 10.52.93.233 with SMTP id cx9mr25642083vdb.112.1368809336202;
	Fri, 17 May 2013 09:48:56 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Fri, 17 May 2013 09:48:56 -0700 (PDT)
In-Reply-To: <1368615721.11746.3.camel@firebird.rb.intel.com>
References: <1368613962-22807-1-git-send-email-stefanx.stanacar@intel.com>
	<CAJTo0LatQiXSBAakkzswEMfZRKe_cSA8ExjL-qZpY64C9ge_Wg@mail.gmail.com>
	<1368615721.11746.3.camel@firebird.rb.intel.com>
Date: Fri, 17 May 2013 09:48:56 -0700
Message-ID: <CAPhnLPAhMZeQcz69W=0bLL9Y_Fqaxnf=x3Xk1FpoDkOBqezkjw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQkE545Pf3JcTLqAzK85yY8f+iLFoZaqdmo7W51rRGF+p8zYVVnqbZ6aeCKz/AXgCOxh4MOS
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] nightly-qa-extras: fix image config options
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
X-List-Received-Date: Fri, 17 May 2013 16:48:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

Pulled and deployed. Thank you

-b

On Wed, May 15, 2013 at 4:01 AM, Stanacar, StefanX
<stefanx.stanacar@intel.com> wrote:
>
>
> On Wed, 2013-05-15 at 11:36 +0100, Burton, Ross wrote:
>> On 15 May 2013 11:32, Stefan Stanacar <stefanx.stanacar@intel.com> wrote:
>> > Remove the dmesg sanity as it requires copying a file which
>> > won't work on a r/o image.
>>
>> Is this copying the dmesg.sh to the target?  Why not copy the file
>> into /tmp, which will be read-write?
>
> Yes, dmesg sanity test calls Test_Target_Pre which copies dmesg.sh
> in /opt/test. That's the default in qemuimage-testlib. I don't see why
> dmesg can't be changed to do it differently. Anyway until that changes
> in master, the AB shouldn't run it.
>
>>
>> Ross
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

