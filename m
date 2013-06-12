Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37491E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 13:06:22 -0700 (PDT)
Received: by mail-la0-f44.google.com with SMTP id er20so8401494lab.17
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 13:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=8q/N9hEhVvgmrdbY8RvM5FqGK/20fmsTYLwSIzvhgnw=;
	b=I/3Kgdl9Z33Jg0uZf10AAXFZEHkRRiuKtlsqmx1MlcQLW+7x+2RPRpOVkEkqb4E6uq
	iARf4yIg4MU1XMGEl1s3qYbd1DDrRA+KImzIF3FdjrYWZVfs6Z7zlq4mZfxkgehw7K1e
	oCEMkVEX3aZBktOCp++6yvQVwLfsmwidueVY5QLGIon468MxBHj4NpVHg3no2h0zDgrx
	BJNyfD5P9FhcioSg7gd63RewZ9MkZ4V3l3mDhngEmpNEYAvZUfImtlHxd25YZAalZRXP
	XsnJNvkqPKqXrI1t5BSXHk0hm5j7OKc8q5wiy78wKraZ5+9VaTXsH9dm6Ssx85pflkC+
	pMvw==
X-Received: by 10.152.170.162 with SMTP id an2mr3386604lac.3.1371067581300;
	Wed, 12 Jun 2013 13:06:21 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPSA id t17sm9624143lbd.11.2013.06.12.13.06.19
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 12 Jun 2013 13:06:20 -0700 (PDT)
Message-ID: <51B8D4BA.2020109@gmail.com>
Date: Wed, 12 Jun 2013 22:06:18 +0200
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130509 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <CAFyqS9qOXTV-8vRDuff0_JN=4ZobqbwqSbLm1MNQtTHNEPP3Qg@mail.gmail.com>
	<CAPhnLPBsH=Oibe5X3vDeVn9gxq3Msjn_ogZaU6dRm4W0uGYRCw@mail.gmail.com>
In-Reply-To: <CAPhnLPBsH=Oibe5X3vDeVn9gxq3Msjn_ogZaU6dRm4W0uGYRCw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yet another LIC_FILES_CHKSUM question
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
X-List-Received-Date: Wed, 12 Jun 2013 20:06:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-06-12 7:55, Flanagan, Elizabeth wrote:
> On Wed, Jun 12, 2013 at 6:05 AM, Hans Beckérus <hans.beckerus@gmail.com> wrote:
>> In what way does LIC_FILES_CHKSUM correlate to what is specified in LICENSE?
>> LIC_FILES_CHKSUM *must* be specified unless LICENSE is set to CLOSED.
>> But, what if the package does not itself provide a license type file?
>> Is it then ok to simply leave LIC_FILES_CHKSUM = "" ?
> That's kind of a tricky situation. I'm not a lawyer, but I haven't
> actually seen an actual instance where there was a stated open source
> license that wasn't also in the source. If there is then the correct
> path is to probably put actual license text in the upstream as I can
> imagine all sorts of legal issues with this. Any lawyers care to field
> this on?
>
> -b
Hi Elizabeth, I understand you are not a lawyer ;) I did not really 
expect one either.
Let's tweak the question into something slightly different. Assume that 
LICENSE is saying eg. GPLv2, but the COPYING file provided by the 
package says GPLv3? Iow, there is a mismatch between the what the recipe 
says and what the package tells you.
I am a little bit confused to how LICENSE and LIC_FILES_CHKSUM really 
works together? Why do we need two different ways of telling what 
license we use or actually expect? Or is LICENSE checked against the 
files pointed to by LIC_FILES_CHKSUM? Should it not always be the 
file(s) stored in the upstream package that dictates what license should 
be applied?

Hans

>> Also, I could see that there was an Erlang Public License file
>> available in poky. But the file is named ErlPL-1.1 and there were no
>> maps attached to it, this patch will add that.
>>
>> Hans
>>
>> diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
>> index 3cb143c..ffed997 100644
>> --- a/meta/conf/licenses.conf
>> +++ b/meta/conf/licenses.conf
>> @@ -101,9 +101,14 @@ SPDXLICENSEMAP[AFL-1] = "AFL-1.2"
>>   SPDXLICENSEMAP[AFLv2] = "AFL-2.0"
>>   SPDXLICENSEMAP[AFLv1] = "AFL-1.2"
>>
>> +#Erlang variations
>> +SPDXLICENSEMAP[ErlPLv1.1] = "ErlPL-1.1"
>> +SPDXLICENSEMAP[ErlPL1.1] = "ErlPL-1.1"
>> +
>>   #Other variations
>>   SPDXLICENSEMAP[EPLv1.0] = "EPL-1.0"
>>
>> +
>>   # Additional license directories. Add your custom licenses
>> directories this path.
>>   # LICENSE_PATH += "${COREBASE}/custom-licenses"
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


