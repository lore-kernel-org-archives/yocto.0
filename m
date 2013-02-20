Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id BFA9FE00550
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 10:59:52 -0800 (PST)
Received: by mail-qc0-f171.google.com with SMTP id d1so414959qca.30
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 10:59:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=iFyGK8zrMd5FafMI+TLEh3QfJx+LXTUF5/dYpr2HL3c=;
	b=KamM/PlyBMtEqMCA01YSUx7Tlk7fh9UfpUfCOHKmi4elFf+FhJf+6d9dmvXTgrB3Tf
	K6a93TE2+OPMQdlxnLQ/WlSPG7n2JuUN+AsGf0FXCrhcnyiR3hfyLEqmJlJjtCH5xdA9
	d9cy48gt667qsbI31q6sadM8Q1EXC/XDsQNZk32ZG0ig7oD1FwCTo+V9zoVODVosst0Y
	gYE056wGoKBn2JDu9D79jaEBnTZGrMn6Y5yWH/rS+CQVz8ONv+mceRoHehJwlgBB18Gi
	TRGqtZ2Fdxm6rHYH6n/D6J5RIitB8c8QWk9Zmd7fsy2oXIiEXG3Bxp2vKMGkyizVodmw
	TvsQ==
MIME-Version: 1.0
X-Received: by 10.224.209.10 with SMTP id ge10mr2888069qab.10.1361386791844;
	Wed, 20 Feb 2013 10:59:51 -0800 (PST)
Received: by 10.49.85.167 with HTTP; Wed, 20 Feb 2013 10:59:51 -0800 (PST)
In-Reply-To: <1361364668.13247.14.camel@ted>
References: <CAPhnLPDViQzWOD2kHQ7g=omLutmNdBJ1eqzCzMnS6kBNo87+UA@mail.gmail.com>
	<1361364668.13247.14.camel@ted>
Date: Wed, 20 Feb 2013 10:59:51 -0800
Message-ID: <CAPhnLPCiMH0ZZi2EJFfv-HfbbB3JVtfFUE=B5XZ6+W=2xB-pbA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Gm-Message-State: ALoCoQmddPCMt3KvTfrHtviez1/Ty8O9lugCjZpozt1kWnnnhk6SG8lqvCeOcNDFhS3Yn1UT79ah
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	yocto <yocto@yoctoproject.org>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Weekly build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Feb 2013 18:59:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Feb 20, 2013 at 4:51 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Tue, 2013-02-19 at 21:01 -0800, Flanagan, Elizabeth wrote:
>> I'm currently at ELC and am going to be a little slow with email.
>> However, tonight I will be building M4 rc1. We are looking pretty
>> green and had been hoping to use the last build for rc1, but we want
>> to get it a little closer as to have it all green. I will be building
>> it from current master head and will branch/tag in the morning. If you
>> maintain a layer that I don't have branch access for, please create
>> the milestone branch for it from the git hashes I send out in the
>> morning. Thanks.
>
> We continued to have a build issue which I traced back to the recent
> bitbake fetcher changes. I've reverted a part of that and rebuilt master
> and its looking even better than the previous build, lots of green. I
> think we'll therefore be going with that revision
> (7d22ef28e64de06b6238d0ef9b664c0bee6efa46) for M4-rc1, assuming the rest
> builds out ok.

It looks like we have a good buildout. I'll get branches
prepared/tagged and pushed later today. Please begin testing
http://autobuilder.yoctoproject.org/pub/nightly/20130220-2.

-b

>
> Cheers,
>
> Richard
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

