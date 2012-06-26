Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BDFBE0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 09:00:28 -0700 (PDT)
Received: by vcbfo14 with SMTP id fo14so64383vcb.35
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 09:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=/GSPsPNpBzC57v8KEa2TYjQpmNbOckBEYSWU1jTONWo=;
	b=f9v2l9Ku8ZmRvs9WGRlvN5WEaJrO4xzBi+I2sKaWR6IdAPGdZshIdniayrvu5X5mWK
	yy22s3cEKACZjTTbc++vyA6uXf+bpj9R6yBOlpBuKaDnPCSZsP0tKkNxb8X3fkSrDXUP
	3Z5KMI7iqlQfx9rx4SUlIwtWWklJm9JI1hwioBcIbAjVjTMuutsLdp6RFYDzpS64wkh6
	KwRlZLfGli/5DRWUx4FfYCBLgPXfXNAed1Vsnlg3KFQZzZaqWrJ6GRMZ18vD/pxnUkKO
	IUw2uiaN4IF0pvRw2V7UshVEqxGutIse9jXCAH9Q8qIH52BFfo/CZIatAKfOkK/Bv8rY
	Rrjg==
Received: by 10.52.98.8 with SMTP id ee8mr9463812vdb.58.1340726427862;
	Tue, 26 Jun 2012 09:00:27 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	ek5sm55432530vdb.5.2012.06.26.09.00.26 (version=SSLv3 cipher=OTHER);
	Tue, 26 Jun 2012 09:00:26 -0700 (PDT)
Message-ID: <4FE9DC9B.2090104@gmail.com>
Date: Tue, 26 Jun 2012 12:00:27 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <4FE9CCAD.7080003@gmail.com> <4FE9CD04.60604@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A130B2@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A130B2@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Development Manual Appendix B question
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
X-List-Received-Date: Tue, 26 Jun 2012 16:00:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/26/2012 10:56 AM, Rifenbark, Scott M wrote:
> Bruce,
>
> Should the example note this?  Would it be best to specifically say to uncomment that SRC_URI line?
>
> Scott
I think some text needs to be added. I uncommented the SRC_URI line and 
I still fail building the image.  The failure is related to kernel tools:

ERROR: kern-tools-native: md5 data is not matching for 
file://git/tools/kgit;beginline=5;endline=9;md5=e2bf4415f3d843f43d2e22b0d91a6fee
ERROR: kern-tools-native: The new md5 checksum is 
d8d1d729a70cd5f52972f8884b80743d
ERROR: kern-tools-native: Check if the license information has changed in
ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
ERROR: Function failed: do_qa_configure


Jim A

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Bruce Ashfield
> Sent: Tuesday, June 26, 2012 7:54 AM
> To: jfabernathy
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>
> On 12-06-26 10:52 AM, jfabernathy wrote:
>> In the example in The Developement Manual v1.2 in Appendix B Section
>> B.1.7, it states that you need to put in the statement:
>>
>> KSRC_linux_yocto_3_2 ?="/home/scottrif/linux-yocto-3.2.git"
>>
>> into the appropriate .bbappend file way now in the poky-extra directory
>> structure. If I look at that file, |linux-yocto_3.2.bbappend| , I seen a
>> SRC_URI line, immediately after our inserted KSRC statement, that is
>> commented out:
>>
>> # SRC_URI =
>> "git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>>
>> Should that line be uncommented or is the SRC_URI already defaulted
>> somewhere to use the newly defined KSRC_linux_yocto_3_2 variable?
> It should be uncommented. I commented them by default, since the extras
> repository is a bit of a collection ground. If they are uncommented, and
> combined with the AUTOREV also set in the file, you are forced to fix
> all files, versus just the one you want.
>
> Cheers,
>
> Bruce
>
>> Jim A
>>
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



