Return-Path: <chgans@googlemail.com>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64D28E01653
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 19:08:07 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id fa1so3636629pad.19
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 19:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=ANp2GGSJvsto8OMk7Ml/aWKpAaiZWsiJqbwSL9n/nBk=;
	b=hnW+Lm8U7o4qKAeC2YG7c0cjT1c44yUNAz00kRGXOhv1zfAk+OGdUHvRvHSqigf5KC
	cXGv63IgQFG9hAdoxeUEAmfZyvk2F0Z5FomH584wnW9ojXJ6lVl2+Y2UKK64VoQvLnEl
	H52sQsWp6590XP8FbNEuT5N8HhDPLVs9bhsvg4M/NmFCq35vUOBM11JyxCQ8zmEVDsdk
	431Bx1OZJ2mQW0hegvW3QvJE5UhhqVidV1u3Q8N0dViwA7ab1GcRfsvwhhp/CqW/yD0C
	N3S2SqxsiWrKdbefuCm7ply/2OjFitgsuDdZebpEfFXFqdv7e8F4tN8+PIEh3Q9WZqh0
	FUgA==
X-Received: by 10.66.136.131 with SMTP id qa3mr18836767pab.77.1381457287267;
	Thu, 10 Oct 2013 19:08:07 -0700 (PDT)
Received: from krys-red.trunet.local ([210.48.94.225])
	by mx.google.com with ESMTPSA id y5sm56197102pbs.18.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Oct 2013 19:08:06 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <52575D83.9010405@gna.org>
Date: Fri, 11 Oct 2013 15:08:03 +1300
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>	<52571E27.70308@gna.org>	<CA+YB3raEO5Ek5EdkAuezyW+D3tj5-Aod2k+BRg5UWF_UWUHmtg@mail.gmail.com>	<52572994.4050006@gna.org>	<CAP9ODKoaV71QNHnqfwqnajhORu=1m82YaUiFo41HhcvUn6E-Rg@mail.gmail.com>	<CA+YB3rZOFCTdJ0wtVa_qTt1QRZuT=nE2MZ2EXEqUs55Lyfiruw@mail.gmail.com>	<52575854.6080302@linux.intel.com>
	<CAP9ODKooi3-gBELD86fsipqc98FCJt_jMPBNjd9gndaZjpefMw@mail.gmail.com>
In-Reply-To: <CAP9ODKooi3-gBELD86fsipqc98FCJt_jMPBNjd9gndaZjpefMw@mail.gmail.com>
Subject: Re: Yocto Project 1.5_M5.rc6
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
X-List-Received-Date: Fri, 11 Oct 2013 02:08:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/13 14:55, Otavio Salvador wrote:
> On Thu, Oct 10, 2013 at 10:45 PM, Saul Wold <sgw@linux.intel.com> wrote:
>>
>> Sorry for the top post here. The real reason we still have Qt3 is because
>> it's required part of the LSB spec.  OE-Core contains Qt4 and we know that
>> meta-qt5 exists from Otavio and Martin.
>>
>> I know that Richard and Paul have been watching what's going on with
>> meta-qt5.
>
> The biggest missing feature at meta-qt5 is the lacking of toolchain
> support; I am still looking for someone to sponsor me to work on this
> (as it is not a small task), a critical need from my side for it or
> someone step on and do it :)

Yes, and ideally it would be nice if this toolchain would be easy to use 
with QtCreator.
Some weeks ago, I had a look at writing a Yocto plugin for QtCreator 
(using Danny/Qt4), and the biggest problem was how you "activate" the 
toolchain, sourcing the env setup is good when you work in a shell, but 
it would be better if the toolchain comes with a machine friendly 
manifest file, this would allow as well to use several yocto toolchains 
(eg, for different architectures/machines) from within QtCreator.

My 2 cents.

Chris

