Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B96E01423
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 23:04:12 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id ib11so6066615vcb.8
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 23:04:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=opBLAQVXKc5OgoYjnM2jileRZkIqR48cX86f0LS3gsg=;
	b=fkhNc/H6PXf9MO/NTQ0LUf/+IU9MOKW9a9/oxAGP6WDMMtfpMvTMSfuliEgOW2tGzN
	6vz35/+YAbkbccAQLKRxPi5SplNCY+H+v22uH405FY/LZ1KFhLHVNY1P/aWVmC4j32GI
	7qgG7dlvZJ6QnEWzvsXU+Ck1+Wr63QatYg8ERyFS26wKyJ7QD5CkVgQ3brg670mH58fm
	wyrjoeKG/HnlNzY5YulqkhwlFEq5uhtJPZfmw2BaJ1NsswR7JPQNTHTRL96eYCs0AThl
	a7rNU1GKQ6IzgIs++zzWiH904lYnmNaZJSChE5Y/51zWLOrQtOUHM26sk6C30AA7n3Xx
	D/aw==
MIME-Version: 1.0
X-Received: by 10.52.165.36 with SMTP id yv4mr599596vdb.31.1369807452122; Tue,
	28 May 2013 23:04:12 -0700 (PDT)
Received: by 10.52.120.108 with HTTP; Tue, 28 May 2013 23:04:12 -0700 (PDT)
In-Reply-To: <71F928C2-5030-4F57-804F-C08917813221@intel.com>
References: <CAPhnLPAFOj05bXLUpq3qPws=8XO2excp4XgkiMkxnVWv-b7hDQ@mail.gmail.com>
	<71F928C2-5030-4F57-804F-C08917813221@intel.com>
Date: Tue, 28 May 2013 23:04:12 -0700
Message-ID: <CAPhnLPDe6DTScPtxbjfG97PUbBBNur9ofHYLctxWGC1g7VAyDA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
X-Gm-Message-State: ALoCoQlN1Q+MqfTjuRzzolGtDj23vkd2mKMn0b7n3ge4Sv5i0gz7U0xm8i468+wiTPfrwnsZDkR/
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: Re: Weekly build now available for QA
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
X-List-Received-Date: Wed, 29 May 2013 06:04:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, May 28, 2013 at 10:38 PM, Georgescu, Alexandru C
<alexandru.c.georgescu@intel.com> wrote:
> Hi Beth,
> Can you include the eclipse-plugin commit as well?
> Thanks,

Whoops. Sorry about that:

eclipse-plugin: ff4ccb4d65243f2a28eb89c72e9b425702b6c3aa

> Alex
>
> Sent from my iPad
>
> On May 29, 2013, at 1:57, "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com> wrote:
>
>> All,
>>
>> The weekly build is available for QA. Please being QA on the following:
>>
>> Download: http://autobuilder.yoctoproject.org/pub/nightly/20130528-2
>>
>> poky 676fd3f394a0c0576b63c77ed2184bf5f42c29b6
>> meta-fsl-arm ab56b11ba65bfa3bb5d123a51510e6d5c9f65e36
>> meta-fsl-ppc 52b906c448f275719f241c634fe6e412e917b67a
>> meta-intel 2ba2e0ea55bab687134b452a5db81d189b820f59
>> meta-qt3 4c27cce6688aa39852f3cba5e7b80ec279019605
>>
>> Thanks!
>>
>> --
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

