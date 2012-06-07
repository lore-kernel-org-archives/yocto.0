Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9EDE9E013BB
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2012 12:44:52 -0700 (PDT)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.247.3; Thu, 7 Jun 2012
	21:44:50 +0200
Message-ID: <4FD104D3.6040007@enea.com>
Date: Thu, 7 Jun 2012 21:45:23 +0200
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAH6UwN1QU45F0AqmHZhvG+afFy22bRNsR7buL0yqTOsSEk3xQQ@mail.gmail.com>
	<4FD0FE67.6090801@enea.com>
In-Reply-To: <4FD0FE67.6090801@enea.com>
X-Originating-IP: [172.16.140.132]
Subject: Re: Recipe question - source directory of depency parent
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
X-List-Received-Date: Thu, 07 Jun 2012 19:44:53 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Oops,

That should be ${STAGING_KERNEL_DIR}

Br,
David

On 06/07/2012 09:17 PM, David Nystr=C3=B6m wrote:
> Have a look at:=20
> poky/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb
> Use ${KERNEL_STAGING_DIR} to locate kernel sources.
>
> Br,
> David
>
> On 06/07/2012 09:12 PM, Jim Rucker wrote:
>> I'm creating a bitbake recipe for a package that is a loadable=20
>> module, but
>> it requires the linux source directory in order to build. I added the
>> virtual/kernel package as our "DEPENDS", but when I run bitbake -e=20
>> for my
>> target I don't see an environment variable that specifies where the=20
>> source
>> is for the virtual/kernel package. Is there a way to get this, or am=20
>> doing
>> this wrong? I put the .bb recipe in the same
>> meta-ourco/recipes-kernel/linux directory that has the .bb which=20
>> builds the
>> linux kernel for our target, but in its own file, with its own=20
>> "PROVIDES"
>> variable.
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


