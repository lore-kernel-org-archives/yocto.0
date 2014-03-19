Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AE05E00B28
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:38:04 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id ij19so9310446vcb.38
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:38:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=GO2er8Gh5VRDfl/n2ATYxAxHvSPYV1WEyeixIqU23eU=;
	b=nCf9wnhDaLk6ROjPCM+Qs8JsUVEiyKW+GlrxicKbBYqCNYJ6Uh925bI8iGMrmLN7yn
	a2URSuioBkhXbEyxhigmcf++b+n48rBTr2UBSU8oVIaVIoHDSqMklgLZQdbMtNgeuFkZ
	A5wkj6MR4wmgvebkMVeZjoon5LRyrJdKywo5qL+36R9/VzWTHOGm2m+k2xBRaNt+Ryy6
	5P1qLAn5h3O2HQJv2W88WCe8XpXZeNZRQCLYWpIcPPsFDy1zhJlfer+riFLY1ZUNFPyK
	UxUu9mVwadivvBdE+pWiGnKEECfYIVIy45fD4BsZDguLlUKz15rQa2TdIoHjHnTzC9Wi
	KA4w==
X-Gm-Message-State: ALoCoQmLRXhmyhXZdo2g4tdusqEcKNUPCyywXI2U/qu35HTZzuULKWaEY/TqRknAn6g4qy6JSe/k
MIME-Version: 1.0
X-Received: by 10.58.123.70 with SMTP id ly6mr2170040veb.26.1395243484301;
	Wed, 19 Mar 2014 08:38:04 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 19 Mar 2014 08:38:04 -0700 (PDT)
In-Reply-To: <CAJTo0Lap6EmDrEcjermih=_=y5cg5gG_vX9tgnTSB8hG_=4pgw@mail.gmail.com>
References: <1395237814.3808.118.camel@ted>
	<CAJTo0Lap6EmDrEcjermih=_=y5cg5gG_vX9tgnTSB8hG_=4pgw@mail.gmail.com>
Date: Wed, 19 Mar 2014 08:38:04 -0700
Message-ID: <CAPhnLPBzkibdPsSmR8KOAYAaUXKML4w2BSzOjj9hP5059qMT9g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/2] buildslave-janitor: Add in try/except handling to make calls robust against failure
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
X-List-Received-Date: Wed, 19 Mar 2014 15:38:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Agreed. Pulling them. Thanks.

-b

On Wed, Mar 19, 2014 at 7:28 AM, Burton, Ross <ross.burton@intel.com> wrote:
> Both patches look good, Reviewed-by: Ross Burton <ross.burton@intel.com>
>
> Ross
>
> On 19 March 2014 14:03, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>> There is a suspicion that the command can fail causing the janitor trash
>> removal process to exit. This adds in some exception handling to deal
>> with this. It include a timeout to stop it entering nasty loops.
>>
>> This combined with the previous patch should let us figure out what
>> error conditions its hitting.
>>
>> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>> ---
>>  bin/buildslave-janitor | 15 ++++++++++-----
>>  1 file changed, 10 insertions(+), 5 deletions(-)
>>
>> diff --git a/bin/buildslave-janitor b/bin/buildslave-janitor
>> index 153f18d..2cfef86 100755
>> --- a/bin/buildslave-janitor
>> +++ b/bin/buildslave-janitor
>> @@ -66,11 +66,16 @@ def trash_processor(trashdir):
>>          print("Not prepared to use a trashdir of /")
>>          return
>>      while True:
>> -        files = os.listdir(trashdir)
>> -        if files:
>> -            os.system("ionice -c 3 rm %s -rf" % trashdir)
>> -        else:
>> -            time.sleep(30*60) # 30 minutes
>> +        try:
>> +            files = os.listdir(trashdir)
>> +            if files:
>> +                os.system("ionice -c 3 rm %s -rf" % trashdir)
>> +            else:
>> +                time.sleep(30*60) # 30 minutes
>> +        except Exception as e:
>> +            print("Exception %s in trash cleaner" % str(e))
>> +            time.sleep(60) # 1 minute timeout to prevent crazy looping
>> +            pass
>>      return
>>
>>  def mirror_processor(mirrordir):
>>
>>
>>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

